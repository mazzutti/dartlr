part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** Using the debug event interface, track what is happening in the parser
 *  and record statistics about the runtime.
 */
class Profiler extends BlankDebugEventListener {
  
  static final String DATA_SEP = "\t";
  static final String newline = 
      (Platform.operatingSystem == "windows") ? "\r\n" : "\n";

  static bool dump = false;
  static final String Version = "3";
  static final String RUNTIME_STATS_FILENAME = "runtime.stats";

  DebugParser _parser = null;

  int _ruleLevel = 0;
  Token _lastRealTokenTouchedInDecision;
  Set<String> _uniqueRules;
  List<String> _currentGrammarFileName;
  List<String> _currentRuleName;
  List<int> _currentLine;
  List<int> _currentPos;
  DoubleKeyMap<String,int, DecisionDescriptor> _decisions;    
  List<DecisionEvent> _decisionEvents;
  List<DecisionEvent> _decisionStack;
  int _backtrackDepth;  
  ProfileStats stats;

  Profiler([this._parser]) {
    this._uniqueRules = new HashSet<String>();
    this._currentGrammarFileName =  new List<String>();
    this._currentRuleName = new List<String>(); 
    this._currentLine = new List<int>();
    this._currentPos = new List<int>();
    this._decisions = new DoubleKeyMap<String,int, DecisionDescriptor>();
    this._decisionEvents = new List<DecisionEvent>();
    this._decisionStack = new List<DecisionEvent>();
    this.stats = new ProfileStats();
  }

  void enterRule(String ruleName, [String grammarFileName]) {
    this._ruleLevel++;
    this.stats.numRuleInvocations++;
    this._uniqueRules.add("$grammarFileName:$ruleName");
    this.stats.maxRuleInvocationDepth = 
        Math.max(this.stats.maxRuleInvocationDepth, this._ruleLevel);
    this._currentGrammarFileName.add( grammarFileName );
    this._currentRuleName.add( ruleName );
  }

  void exitRule(String ruleName, [String grammarFileName]) {
    this._ruleLevel--;
    this._currentGrammarFileName.removeLast();
    this._currentRuleName.removeLast();;
  }

  void examineRuleMemoization(IntStream input, 
            int ruleIndex, int stopIndex, String ruleName) {
    if(dump) 
      print("examine memo $ruleName at ${input.index}: $stopIndex");
    if(stopIndex == BaseRecognizer.MEMO_RULE_UNKNOWN) {
      this.stats.numMemoizationCacheMisses++;
      this.stats.numGuessingRuleInvocations++;
      this._currentDecision.numMemoizationCacheMisses++;
    } else {
      this.stats.numMemoizationCacheHits++;
      this._currentDecision.numMemoizationCacheHits++;
    }
  }

  void memoize(IntStream input, 
       int ruleIndex, int ruleStartIndex,  String ruleName) {
    if(dump) print("memoize $ruleName");
    this.stats.numMemoizationCacheEntries++;
  }

  void location(int line, int pos) {
    this._currentLine.add(line);
    this._currentPos.add(pos);
  }

  void enterDecision(int decisionNumber, bool couldBacktrack) {
    this._lastRealTokenTouchedInDecision = null;
    this.stats.numDecisionEvents++;
    TokenStream input = this._parser.tokenStream;
    int startingLookaheadIndex = input.index;    
    if(dump) 
      print("enterDecision canBacktrack=$couldBacktrack "
        "$decisionNumber backtrack depth ${this._backtrackDepth}  "
        "@ ${input.at(startingLookaheadIndex)} rule ${this._locationDescription()}");
    String g = this._currentGrammarFileName.last();
    DecisionDescriptor descriptor = this._decisions.at(g, decisionNumber);
    if(descriptor == null) {
      descriptor = new DecisionDescriptor();
      this._decisions.put(g, decisionNumber, descriptor);
      descriptor.decision = decisionNumber;
      descriptor.fileName = this._currentGrammarFileName.last();
      descriptor.ruleName = this._currentRuleName.last();
      descriptor.line = this._currentLine.last();
      descriptor.pos = this._currentPos.last();
      descriptor.couldBacktrack = couldBacktrack;
    }
    descriptor.n++;

    DecisionEvent d = new DecisionEvent();
    this._decisionStack.add(d);
    d.decision = descriptor;
    d.startTime = Clock.now();
    d.startIndex = startingLookaheadIndex;
  }

  void exitDecision(int decisionNumber) {
    DecisionEvent d = this._decisionStack.removeLast();
    d.stopTime = Clock.now();

    int lastTokenIndex = this._lastRealTokenTouchedInDecision.tokenIndex;
    int numHidden = this.getNumberOfHiddenTokens(d.startIndex, lastTokenIndex);
    int depth = lastTokenIndex - d.startIndex - numHidden + 1;
    d.k = depth;
    d.decision.maxk = Math.max(d.decision.maxk, depth);

    if(dump) 
      print("exitDecision $decisionNumber in ${d.decision.ruleName}"
               " lookahead ${d.k} max token ${this._lastRealTokenTouchedInDecision}");
    this._decisionEvents.add(d);
  }

  void consumeToken(Token token) {
    if(dump) print("consume token $token");
    if(!this.inDecision()) {
      this.stats.numTokens++;
      return;
    }
    if(this._lastRealTokenTouchedInDecision == null ||
       this._lastRealTokenTouchedInDecision.tokenIndex < token.tokenIndex)
      this._lastRealTokenTouchedInDecision = token;
    DecisionEvent d = this._currentDecision;
    int thisRefIndex = token.tokenIndex;
    int numHidden = this.getNumberOfHiddenTokens(d.startIndex, thisRefIndex);
    int depth = thisRefIndex - d.startIndex - numHidden + 1;   
    if(dump) 
      print("consume $thisRefIndex $depth tokens ahead in "
        "${d.decision.ruleName}-${d.decision.decision} start index ${d.startIndex}");   
  }

  bool inDecision() => this._decisionStack.length > 0;

  void consumeHiddenToken(Token token) {
    if(!inDecision()) 
      this.stats.numHiddenTokens++;
  }

  void LT(int i, Token t) {
    if(inDecision() && i > 0) {
      DecisionEvent d = this._currentDecision;
      if(dump) 
        print("LT($i)=$t index ${t.tokenIndex} relative to "
           "${d.decision.ruleName}- ${d.decision.decision} start index ${d.startIndex}");
      if(this._lastRealTokenTouchedInDecision == null ||
         this._lastRealTokenTouchedInDecision.tokenIndex < t.tokenIndex) {
        this._lastRealTokenTouchedInDecision = t;
        if(dump) 
          print("set last token ${this._lastRealTokenTouchedInDecision}");
      }     
    }
  }

  /** Track backtracking decisions.  You'll see a fixed or cyclic decision
   *  and then a backtrack.
   *
   *    enter rule
   *    ...
   *    enter decision
   *    LA and possibly consumes (for cyclic DFAs)
   *    begin backtrack level
   *    mark m
   *    rewind m
   *    end backtrack level, success
   *    exit decision
   *    ...
   *    exit rule
   */
  void beginBacktrack(int level) {
    if(dump) 
      print("enter backtrack $level");
    this._backtrackDepth++;
    DecisionEvent e = this._currentDecision;
    if(e.decision.couldBacktrack) {
      this.stats.numBacktrackOccurrences++;
      e.decision.numBacktrackOccurrences++;
      e.backtracks = true;
    }
  }

  /** Successful or not, track how much lookahead synpreds use */
  void endBacktrack(int level, bool successful) {
    if(dump) 
      print("exit backtrack $level: $successful");
    this._backtrackDepth--;   
  }

  void mark(int i) {
    if(dump)
      print("mark $i");
  }
  
  void rewind([int marker]) {
    if(dump) 
      print("rewind${(marker != null) ? " $marker":""}");
  }

  DecisionEvent get _currentDecision => this._decisionStack.last();

  void recognitionException(RecognitionException e) {
    this.stats.numReportedErrors++;
  }

  void semanticPredicate(bool result, String predicate) {
    this.stats.numSemanticPredicates++;
    if(this.inDecision()) {
      DecisionEvent _d = this._currentDecision;
      _d.evalSemPred = true;
      _d.decision.numSemPredEvals++;
      if(dump) 
        print("eval $predicate in "
          "${_d.decision.ruleName}-${_d.decision.decision}");
    }
  }

  void terminate() {
    for (DecisionEvent e in this._decisionEvents) {
      e.decision.avgk += e.k;
      this.stats.avgkPerDecisionEvent += e.k;
      if(e.backtracks)
        stats.avgkPerBacktrackingDecisionEvent += e.k;
    }
    stats.averageDecisionPercentBacktracks = 0.0;
    for (DecisionDescriptor d in this._decisions.getValues()) {
      stats.numDecisionsCovered++;
      d.avgk /= d.n;
      if( d.couldBacktrack ) {
        this.stats.numDecisionsThatPotentiallyBacktrack++;
        double percentBacktracks = d.numBacktrackOccurrences / d.n;
        this.stats.averageDecisionPercentBacktracks += percentBacktracks;
      }
      if(d.numBacktrackOccurrences > 0)
        this.stats.numDecisionsThatDoBacktrack++;
    }
    this.stats.averageDecisionPercentBacktracks /= this.stats.numDecisionsThatPotentiallyBacktrack;
    this.stats.averageDecisionPercentBacktracks *= 100;
    this.stats.avgkPerDecisionEvent /= this.stats.numDecisionEvents;
    this.stats.avgkPerBacktrackingDecisionEvent /= this.stats.numBacktrackOccurrences;
    stderr.writeString(this.toString());
    stderr.writeString(this.getDecisionStatsDump());
  }

  void set parser(DebugParser p) {
    this._parser = p;
  }

  String toNotifyString() {
    StringBuffer buf = new StringBuffer();
    buf.add(Version);
    buf.add('\t');
    buf.add(parser.getRecognizerClassName());    
    return buf.toString();
  }

  ProfileStats getReport() {
    this.stats.Version = Version;
    this.stats.name = parser.getRecognizerClassName();
    this.stats.numUniqueRulesInvoked = this._uniqueRules.length;    
    return stats;
  }

  DoubleKeyMap get decisionStats => this._decisions;

  List get decisionEvents => this._decisionEvents;

  String toString([ProfileStats s]) {
    if(stats == null)
      return toString(this.getReport());
    StringBuffer buf = new StringBuffer();
    buf.add("ANTLR Runtime Report; Profile Version ");
    buf.add(s.Version);
    buf.add(newline);
    buf.add("parser name ");
    buf.add(s.name);
    buf.add(newline);
    buf.add("Number of rule invocations ");
    buf.add(s.numRuleInvocations);
    buf.add(newline);
    buf.add("Number of unique rules visited ");
    buf.add(s.numUniqueRulesInvoked);
    buf.add(newline);
    buf.add("Number of decision events ");
    buf.add(s.numDecisionEvents);
    buf.add(newline);
    buf.add("Overall average k per decision event ");
    buf.add(s.avgkPerDecisionEvent);
    buf.add(newline);
    buf.add("Number of backtracking occurrences (can be multiple per decision) ");
    buf.add(s.numBacktrackOccurrences);
    buf.add(newline);
    buf.add("Overall average k per decision event that backtracks ");
    buf.add(s.avgkPerBacktrackingDecisionEvent);
    buf.add(newline);
    buf.add("Number of rule invocations while backtracking ");
    buf.add(s.numGuessingRuleInvocations);
    buf.add(newline);
    buf.add("num decisions that potentially backtrack ");
    buf.add(s.numDecisionsThatPotentiallyBacktrack);
    buf.add(newline);
    buf.add("num decisions that do backtrack ");
    buf.add(s.numDecisionsThatDoBacktrack);
    buf.add(newline);
    buf.add("num decisions that potentially backtrack but don't ");
    buf.add(s.numDecisionsThatPotentiallyBacktrack - s.numDecisionsThatDoBacktrack);
    buf.add(newline);
    buf.add("average % of time a potentially backtracking decision backtracks ");
    buf.add(s.averageDecisionPercentBacktracks);
    buf.add(newline);
    buf.add("num unique decisions covered ");
    buf.add(s.numDecisionsCovered);
    buf.add(newline);
    buf.add("max rule invocation nesting depth ");
    buf.add(s.maxRuleInvocationDepth);
    buf.add(newline);
    buf.add("rule memoization cache size ");
    buf.add(s.numMemoizationCacheEntries);
    buf.add(newline);
    buf.add("number of rule memoization cache hits ");
    buf.add(s.numMemoizationCacheHits);
    buf.add(newline);
    buf.add("number of rule memoization cache misses ");
    buf.add(s.numMemoizationCacheMisses);
    buf.add(newline);
    buf.add("number of tokens ");
    buf.add(s.numTokens);
    buf.add(newline);
    buf.add("number of hidden tokens ");
    buf.add(s.numHiddenTokens);
    buf.add(newline);
    buf.add("number of char ");
    buf.add(s.numCharsMatched);
    buf.add(newline);
    buf.add("number of hidden char ");
    buf.add(s.numHiddenCharsMatched);
    buf.add(newline);
    buf.add("number of syntax errors ");
    buf.add(s.numReportedErrors);
    buf.add(newline);
    return buf.toString();
  }

  String getDecisionStatsDump() {
    StringBuffer buf = new StringBuffer();
    buf.add("location");
    buf.add(DATA_SEP);
    buf.add("n");
    buf.add(DATA_SEP);
    buf.add("avgk");
    buf.add(DATA_SEP);
    buf.add("maxk");
    buf.add(DATA_SEP);
    buf.add("synpred");
    buf.add(DATA_SEP);
    buf.add("sempred");
    buf.add(DATA_SEP);
    buf.add("canbacktrack");
    buf.add("\n");
    for (String fileName in this._decisions.keySet()) {
      for (int d in this._decisions.keySet(fileName)) {
        DecisionDescriptor s = this._decisions.at(fileName, d);
        buf.add(s.decision);
        buf.add("@");
        buf.add(this._locationDescription(s.fileName,s.ruleName,s.line,s.pos));
        buf.add(DATA_SEP);
        buf.add(s.n);
        buf.add(DATA_SEP);
        buf.add(s.avgk.toStringAsFixed(2));
        buf.add(DATA_SEP);
        buf.add(s.maxk);
        buf.add(DATA_SEP);
        buf.add(s.numBacktrackOccurrences);
        buf.add(DATA_SEP);
        buf.add(s.numSemPredEvals);
        buf.add(DATA_SEP);
        buf.add(s.couldBacktrack ?"1":"0");
        buf.add(newline);
      }
    }
    return buf.toString();
  }

  List<int> _trim(List<int> X, int n) {
    if(n < X.length) {
      List<int> trimmed = new List<int>();
      Arrays.copy(X,0,trimmed,0,n);
      X = trimmed;
    }
    return X;
  }

  int getNumberOfHiddenTokens(int i, int j) {
    int n = 0;
    TokenStream input = this._parser.tokenStream;
    for (int ti = i; ti < input.size && ti <= j; ti++) {
      Token t = input.at(ti);
      if(t.channel != Token.DEFAULT_CHANNEL)
        n++;
    }
    return n;
  }

  String _locationDescription(
      [String file = null,
      String rule = null,
      int line, 
      int pos]) {
    if (file == null) file = this._currentGrammarFileName.last();
    if (rule == null) rule = this._currentRuleName.last();
    if (!?line) line = this._currentLine.last();
    if (!?pos ) pos = this._currentPos.last();
    return "$file:$line:$pos($rule)";
  }
}

class ProfileStats {
  String Version;
  String name;
  int numRuleInvocations;
  int numUniqueRulesInvoked;
  int numDecisionEvents;
  int numDecisionsCovered;
  int numDecisionsThatPotentiallyBacktrack;
  int numDecisionsThatDoBacktrack;
  int maxRuleInvocationDepth;
  double avgkPerDecisionEvent;
  double avgkPerBacktrackingDecisionEvent;
  double averageDecisionPercentBacktracks;
  int numBacktrackOccurrences;
  int numFixedDecisions;
  int minDecisionMaxFixedLookaheads;
  int maxDecisionMaxFixedLookaheads;
  int avgDecisionMaxFixedLookaheads;
  int stddevDecisionMaxFixedLookaheads;
  int numCyclicDecisions;
  int minDecisionMaxCyclicLookaheads;
  int maxDecisionMaxCyclicLookaheads;
  int avgDecisionMaxCyclicLookaheads;
  int stddevDecisionMaxCyclicLookaheads;
  int numSemanticPredicates;
  int numTokens;
  int numHiddenTokens;
  int numCharsMatched;
  int numHiddenCharsMatched;
  int numReportedErrors;
  int numMemoizationCacheHits;
  int numMemoizationCacheMisses;
  int numGuessingRuleInvocations;
  int numMemoizationCacheEntries;
}

class DecisionDescriptor implements Hashable {
  int decision;
  String fileName;
  String ruleName;
  int line;
  int pos;
  bool couldBacktrack;
  int n;
  double avgk;
  int maxk;
  int numBacktrackOccurrences;
  int numSemPredEvals;
  
  int hashCode() {
    return decision + line + pos;
  }
}


class DecisionEvent {
  DecisionDescriptor decision;
  int startIndex;
  int k;
  bool backtracks;
  bool evalSemPred;
  int startTime;
  int stopTime;
  int numMemoizationCacheHits;
  int numMemoizationCacheMisses;
}
