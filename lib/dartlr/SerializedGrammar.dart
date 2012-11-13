part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class SerializedGrammar {
    
  static const String COOKIE = r"$ANTLR";
  static const int FORMAT_VERSION = 1;
  String name;
  int type;
  List rules;    

  SerializedGrammar(String filename)  {
    print("loading $filename");
    RandomAccessFile input = new File(filename).openSync(FileMode.READ);
    this._readFile(input);
    input.closeSync();
  }

  void _readFile(RandomAccessFile input) {
      String cookie = this._readString(input); 
      if (!(cookie == COOKIE)) throw new FileIOException("not a serialized grammar file");
      int version = input.readByteSync();
      int grammarType = input.readByteSync();
      this.type = grammarType;
      String grammarName = this._readString(input);
      this.name = grammarName;
      print("$grammarType grammar $grammarName");
      int numRules = input.readByteSync();
      print("num rules = $numRules");
      rules = this._readRules(input, numRules);
  }

  List _readRules(RandomAccessFile input, int numRules) {
    List rulesList = new List();
    for (int i = 0; i < numRules; i++) {
      Rule r = this._readRule(input);
      rulesList.add(r);
    }
    return rulesList;
  }

  Rule _readRule(RandomAccessFile input) {
    int R = input.readByteSync();
    if ( R!='R' ) throw new FileIOException("missing R on start of rule");
    String n = this._readString(input);
    print("rule: $n");
    int B = input.readByteSync();
    Block b = this._readBlock(input);
    int period = input.readByteSync();
    if (period != '.') throw new FileIOException("missing . on end of rule");
    return new Rule(n, b);
  }

  Block _readBlock(RandomAccessFile input) {
    int nalts = input.readByteSync();
    List<List> alts = new List(nalts);    
    for (int i = 0; i < nalts; i++) {
      List alt = this._readAlt(input);
      alts[i] = alt;
    }
    return new Block(alts);
  }

  List _readAlt(RandomAccessFile input) {
      List alt = new List();
      int A = input.readByteSync();
      if (A != 'A'.charCodeAt(0)) 
        throw new FileIOException("missing A on start of alt");
      int cmd = input.readByteSync();
      while (cmd != ';'.charCodeAt(0)) {
          switch (cmd) {
              case 't'.charCodeAt(0) :
                  int ttype = input.readByteSync();
                  alt.add(new TokenRef(ttype));                  
                  break;
              case 'r'.charCodeAt(0) :
                  int ruleIndex = input.readByteSync();
                  alt.add(new RuleRef(ruleIndex));                 
                  break;
              case '.'.charCodeAt(0) :
                  break;
              case '-'.charCodeAt(0) :
                  int from = input.readByteSync();
                  int to = input.readByteSync();
                  break;
              case '~'.charCodeAt(0) :
                  int notThisTokenType = input.readByteSync();
                  break;
              case 'B'.charCodeAt(0) : 
                  Block b = this._readBlock(input);
                  alt.add(b);
                  break;
          }
          cmd = input.readByteSync();
      }      
      return alt;
  }

  String _readString(RandomAccessFile input) {
      int c = input.readByteSync();
      StringBuffer buf = new StringBuffer();
      while ( c!=';' ) {
          buf.add(c);
          c = input.readByteSync();
      }
      return buf.toString();
  }

  String toString() {
    StringBuffer buf = new StringBuffer();
    buf.add("${this.type} grammar $name");
    buf.add(rules);
    return buf.toString();
  }
}

class Rule {
  
  String name;
  Block block;
  
  Rule(this.name, this.block);
  
  String toString() => "${this.name}:${this.block}";
  
}

class Block {
  
  List<List> alts;
  
  Block(this.alts);
  
  String toString() {
    StringBuffer buf = new StringBuffer();
    buf.add("(");
    for (int i = 0; i < alts.length; i++) {
      List alt = alts[i];
      if (i > 0) buf.add("|");
      buf.add(alt.toString());
    }
    buf.add(")");
    return buf.toString();
  }  
}

class TokenRef {
  
  int ttype;
  
  TokenRef(this.ttype);
  
  String toString() => new String.fromCharCodes([this.ttype]);
  
}

class RuleRef {
  
  int ruleIndex;
  
  RuleRef(this.ruleIndex);
  
  String toString() => new String.fromCharCodes([this.ruleIndex]);
  
}
