// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_backend;

class SerializedGrammar {
    
  static const String COOKIE = r"$ANTLR";
  static const int FORMAT_VERSION = 1;
  String name;
  int type;
  List rules;    

  SerializedGrammar(String filename)  {
    print("loading $filename");
    RandomAccessFile input = new File(filename).openSync(FileMode.READ);
    _readFile(input);
    input.closeSync();
  }

  _readFile(RandomAccessFile input) {
      String cookie = _readString(input); 
      if (!(cookie == COOKIE)) throw new FileIOException("not a serialized grammar file");
      int version = input.readByteSync();
      int grammarType = input.readByteSync();
      type = grammarType;
      String grammarName = _readString(input);
      name = grammarName;
      print("$grammarType grammar $grammarName");
      int numRules = input.readByteSync();
      print("num rules = $numRules");
      rules = _readRules(input, numRules);
  }

  List _readRules(RandomAccessFile input, int numRules) {
    List rulesList = new List();
    for (int i = 0; i < numRules; i++) {
      Rule r = _readRule(input);
      rulesList.add(r);
    }
    return rulesList;
  }

  Rule _readRule(RandomAccessFile input) {
    int R = input.readByteSync();
    if ( R!='R' ) throw new FileIOException("missing R on start of rule");
    String n = _readString(input);
    print("rule: $n");
    int B = input.readByteSync();
    Block b = _readBlock(input);
    int period = input.readByteSync();
    if (period != '.') throw new FileIOException("missing . on end of rule");
    return new Rule(n, b);
  }

  Block _readBlock(RandomAccessFile input) {
    int nalts = input.readByteSync();
    List<List> alts = new List(nalts);    
    for (int i = 0; i < nalts; i++) {
      List alt = _readAlt(input);
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
              case 116: /* t */
                  int ttype = input.readByteSync();
                  alt.add(new TokenRef(ttype));                  
                  break;
              case 114  /* r */:
                  int ruleIndex = input.readByteSync();
                  alt.add(new RuleRef(ruleIndex));                 
                  break;
              case 46 /* . */:
                  break;
              case 45 /* - */ :
                  int from = input.readByteSync();
                  int to = input.readByteSync();
                  break;
              case 126 /* ~ */:
                  int notThisTokenType = input.readByteSync();
                  break;
              case 66 /* B */: 
                  Block b = _readBlock(input);
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
    buf.add("${type} grammar $name");
    buf.add(rules);
    return buf.toString();
  }
}

class Rule {
  
  String name;
  Block block;
  
  Rule(this.name, this.block);
  
  String toString() => "${name}:${block}";
  
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
  
  String toString() => new String.fromCharCodes([ttype]);
  
}

class RuleRef {
  
  int ruleIndex;
  
  RuleRef(this.ruleIndex);
  
  String toString() => new String.fromCharCodes([ruleIndex]);
  
}
