// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** Using the debug event interface, track what is happening in the parser
 *  and record statistics about the runtime.
 */
class Profiler extends BlankDebugEventListener {
  
  static const String DATA_SEP = "\t";
  static final String newline = 
      (Platform.operatingSystem == "windows") ? "\r\n" : "\n";

  static bool dump = false;
  static const String Version = "3";
  static const String RUNTIME_STATS_FILENAME = "runtime.stats";

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
    _uniqueRules = new HashSet<String>();
    _currentGrammarFileName =  new List<String>();
    _currentRuleName = new List<String>(); 
    _currentLine = new List<int>();
    _currentPos = new List<int>();
    _decisions = new DoubleKeyMap<String,int, DecisionDescriptor>();
    _decisionEvents = new List<DecisionEvent>();
    _decisionStack = new List<DecisionEvent>();
    stats = new ProfileStats();
  }

  void enterRule(String ruleName, [String grammarFileName]) {
    _ruleLevel++;
    stats.numRuleInvocations++;
    _uniqueRules.add("$grammarFileName:$ruleName");
    stats.maxRuleInvocationDepth = 
        max(stats.maxRuleInvocationDepth, _ruleLevel);
    _currentGrammarFileName.add( grammarFileName );
    _currentRuleName.add( ruleName );
  }

  void exitRule(String ruleName, [String grammarFileName]) {
    _ruleLevel--;
    _currentGrammarFileName.removeLast();
    _currentRuleName.removeLast();;
  }

  void examineRuleMemoization(IntStream input, 
            int ruleIndex, int stopIndex, String ruleName) {
    if(dump) 
      print("examine memo $ruleName at ${input.index}: $stopIndex");
    if(stopIndex == BaseRecognizer.MEMO_RULE_UNKNOWN) {
      stats.numMemoizationCacheMisses++;
      stats.numGuessingRuleInvocations++;
      _currentDecision.numMemoizationCacheMisses++;
    } else {
      stats.numMemoizationCacheHits++;
      _currentDecision.numMemoizationCacheHits++;
    }
  }

  void memoize(IntStream input, 
       int ruleIndex, int ruleStartIndex,  String ruleName) {
    if(dump) print("memoize $ruleName");
    stats.numMemoizationCacheEntries++;
  }

  void location(int line, int pos) {
    _currentLine.add(line);
    _currentPos.add(pos);
  }

  void enterDecision(int decisionNumber, bool couldBacktrack) {
    _lastRealTokenTouchedInDecision = null;
    stats.numDecisionEvents++;
    TokenStream input = _parser.tokenStream;
    int startingLookaheadIndex = input.index;    
    if(dump) 
      print("enterDecision canBacktrack=$couldBacktrack "
        "$decisionNumber backtrack depth ${_backtrackDepth}  "
        "@ ${input.at(startingLookaheadIndex)} rule ${_locationDescription()}");
    String g = _currentGrammarFileName.last;
    DecisionDescriptor descriptor = _decisions.at(g, decisionNumber);
    if(descriptor == null) {
      descriptor = new DecisionDescriptor();
      _decisions.put(g, decisionNumber, descriptor);
      descriptor.decision = decisionNumber;
      descriptor.fileName = _currentGrammarFileName.last;
      descriptor.ruleName = _currentRuleName.last;
      descriptor.line = _currentLine.last;
      descriptor.pos = _currentPos.last;
      descriptor.couldBacktrack = couldBacktrack;
    }
    descriptor.n++;

    DecisionEvent d = new DecisionEvent();
    _decisionStack.add(d);
    d.decision = descriptor;
    d.stopwatch = new Stopwatch();
    d.stopwatch.start();
    d.startIndex = startingLookaheadIndex;
  }

  void exitDecision(int decisionNumber) {
    DecisionEvent d = _decisionStack.removeLast();
    d.stopwatch.stop();

    int lastTokenIndex = _lastRealTokenTouchedInDecision.tokenIndex;
    int numHidden = getNumberOfHiddenTokens(d.startIndex, lastTokenIndex);
    int depth = lastTokenIndex - d.startIndex - numHidden + 1;
    d.k = depth;
    d.decision.maxk = max(d.decision.maxk, depth);

    if(dump) 
      print("exitDecision $decisionNumber in ${d.decision.ruleName}"
               " lookahead ${d.k} max token ${_lastRealTokenTouchedInDecision}");
    _decisionEvents.add(d);
  }

  void consumeToken(Token token) {
    if(dump) print("consume token $token");
    if(!inDecision()) {
      stats.numTokens++;
      return;
    }
    if(_lastRealTokenTouchedInDecision == null ||
       _lastRealTokenTouchedInDecision.tokenIndex < token.tokenIndex)
      _lastRealTokenTouchedInDecision = token;
    DecisionEvent d = _currentDecision;
    int thisRefIndex = token.tokenIndex;
    int numHidden = getNumberOfHiddenTokens(d.startIndex, thisRefIndex);
    int depth = thisRefIndex - d.startIndex - numHidden + 1;   
    if(dump) 
      print("consume $thisRefIndex $depth tokens ahead in "
        "${d.decision.ruleName}-${d.decision.decision} start index ${d.startIndex}");   
  }

  bool inDecision() => _decisionStack.length > 0;

  void consumeHiddenToken(Token token) {
    if(!inDecision()) 
      stats.numHiddenTokens++;
  }

  void LT(int i, Token t) {
    if(inDecision() && i > 0) {
      DecisionEvent d = _currentDecision;
      if(dump) 
        print("LT($i)=$t index ${t.tokenIndex} relative to "
           "${d.decision.ruleName}- ${d.decision.decision} start index ${d.startIndex}");
      if(_lastRealTokenTouchedInDecision == null ||
         _lastRealTokenTouchedInDecision.tokenIndex < t.tokenIndex) {
        _lastRealTokenTouchedInDecision = t;
        if(dump) 
          print("set last token ${_lastRealTokenTouchedInDecision}");
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
    _backtrackDepth++;
    DecisionEvent e = _currentDecision;
    if(e.decision.couldBacktrack) {
      stats.numBacktrackOccurrences++;
      e.decision.numBacktrackOccurrences++;
      e.backtracks = true;
    }
  }

  /** Successful or not, track how much lookahead synpreds use */
  void endBacktrack(int level, bool successful) {
    if(dump) 
      print("exit backtrack $level: $successful");
    _backtrackDepth--;   
  }

  void mark(int i) {
    if(dump)
      print("mark $i");
  }
  
  void rewind([int marker]) {
    if(dump) 
      print("rewind${(marker != null) ? " $marker":""}");
  }

  DecisionEvent get _currentDecision => _decisionStack.last;

  void recognitionException(RecognitionException e) {
    stats.numReportedErrors++;
  }

  void semanticPredicate(bool result, String predicate) {
    stats.numSemanticPredicates++;
    if(inDecision()) {
      DecisionEvent _d = _currentDecision;
      _d.evalSemPred = true;
      _d.decision.numSemPredEvals++;
      if(dump) 
        print("eval $predicate in "
          "${_d.decision.ruleName}-${_d.decision.decision}");
    }
  }

  void terminate() {
    for (DecisionEvent e in _decisionEvents) {
      e.decision.avgk += e.k;
      stats.avgkPerDecisionEvent += e.k;
      if(e.backtracks)
        stats.avgkPerBacktrackingDecisionEvent += e.k;
    }
    stats.averageDecisionPercentBacktracks = 0.0;
    for (DecisionDescriptor d in _decisions.getValues()) {
      stats.numDecisionsCovered++;
      d.avgk /= d.n;
      if( d.couldBacktrack ) {
        stats.numDecisionsThatPotentiallyBacktrack++;
        double percentBacktracks = d.numBacktrackOccurrences / d.n;
        stats.averageDecisionPercentBacktracks += percentBacktracks;
      }
      if(d.numBacktrackOccurrences > 0)
        stats.numDecisionsThatDoBacktrack++;
    }
    stats.averageDecisionPercentBacktracks /= stats.numDecisionsThatPotentiallyBacktrack;
    stats.averageDecisionPercentBacktracks *= 100;
    stats.avgkPerDecisionEvent /= stats.numDecisionEvents;
    stats.avgkPerBacktrackingDecisionEvent /= stats.numBacktrackOccurrences;
    stderr.writeString(toString());
    stderr.writeString(getDecisionStatsDump());
  }

  void set parser(DebugParser p) {
    _parser = p;
  }

  String toNotifyString() {
    StringBuffer buf = new StringBuffer();
    buf.add(Version);
    buf.add('\t');
    buf.add(parser.recognizerClassName);    
    return buf.toString();
  }

  ProfileStats getReport() {
    stats.Version = Version;
    stats.name = parser.recognizerClassName;
    stats.numUniqueRulesInvoked = _uniqueRules.length;    
    return stats;
  }

  DoubleKeyMap get decisionStats => _decisions;

  List get decisionEvents => _decisionEvents;

  String toString([ProfileStats s]) {
    if(stats == null)
      return toString(getReport());
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
    for (String fileName in _decisions.keySet()) {
      for (int d in _decisions.keySet(fileName)) {
        DecisionDescriptor s = _decisions.at(fileName, d);
        buf.add(s.decision);
        buf.add("@");
        buf.add(_locationDescription(s.fileName,s.ruleName,s.line,s.pos));
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
    TokenStream input = _parser.tokenStream;
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
    if (file == null) file = _currentGrammarFileName.last;
    if (rule == null) rule = _currentRuleName.last;
    if (!?line) line = _currentLine.last;
    if (!?pos ) pos = _currentPos.last;
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

class DecisionDescriptor {
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
  
  int get hashCode => decision + line + pos;
}


class DecisionEvent {
  DecisionDescriptor decision;
  int startIndex;
  int k;
  bool backtracks;
  bool evalSemPred;
  Stopwatch stopwatch;
  int numMemoizationCacheHits;
  int numMemoizationCacheMisses;
}
