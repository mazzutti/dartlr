// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
library dartlr_testconfig;
class TestConfig {
  
  static final String _JAVACODIRFLAG = "-d";
  static final String _JAVACODIR = "bin";
  static final String _ANTLRODIRFLAG = "-fo";
  static final String _ANTLRODIR = "../runtime/dart/tests/out";
  static final String _CPFLAG = "-cp";
  
  static final String _grammarDirPath = "../runtime/dart/tests/grammars/";
  
  static final String _CPJAVAC = 
    "runtime/java/src/main/java:"
    "tool/src/main/resources:"
    "tool/src/main/antlr3:"
    "lib/ST4-4.0.4.jar:"
    "lib/stringtemplate-3.2.1.jar";
  
  static final String _CPANTLR = 
    ".:"
    "../lib/stringtemplate-3.2.1.jar:"
    "../lib/ST4-4.0.4.jar:"
    "../src/main/resources/:";
      
  static final String _ANTLRMAIN = "org.antlr.Tool";
  
  static final List<String> _javaSourceDirPaths = const <String>[
    "tool/src/main/", 
    "runtime/"
  ];  
  
  static Directory javacWorkingDiretory() {
    String path = new Options().script;
    path = path.substring(0, path.lastIndexOf('/'));
    return new Directory(path.concat('/../../../'));
  }
  
  static List<String> get javaSourceDirPaths => _javaSourceDirPaths;
  
  static ProcessOptions javacOptions() {
    ProcessOptions options = new ProcessOptions();
    options.workingDirectory = javacWorkingDiretory().path;
    return options;
  }
  
  static List<String> javacProccessParams(Set<String> javaFPaths) {
    List<String> params = new List<String>();
    params.addAll([_JAVACODIRFLAG, _JAVACODIR, _CPFLAG, _CPJAVAC]);
    params.addAll(javaFPaths);
    return params;
  }
  
  static List antlrProcessParams() {
    return [_CPFLAG, _CPANTLR, _ANTLRMAIN, _ANTLRODIRFLAG, _ANTLRODIR];    
  }
  
  static ProcessOptions antlrOptions() {
    ProcessOptions options = new ProcessOptions();
    String path = new Options().script;
    path = path.substring(0, path.lastIndexOf('/'));
    options.workingDirectory = path.concat('/../../../bin/');
    return options;
  }
  
  static Map<String, List<String>> get testGrammars {
    Map<String, List<String>> grammars = new Map<String, List<String>>();
    List<String> keys = _testGrammars.getKeys();
    List<String> grammarNames;
    List<String> grammarPaths;
    for(String key in keys) {
      grammarNames =_testGrammars[key];
      grammarPaths = new List<String>();
      for(String name in grammarNames)
        grammarPaths.add("$_grammarDirPath$name");
      grammars[key] = grammarPaths;
    }
    return grammars;
  }
  
  static final Map<String, List<String>> _testGrammars = const {
    " ": const [                      
                      "t001lexer.g",
                      "t002lexer.g",
                      "t003lexer.g",
                      "t004lexer.g",
                      "t005lexer.g",
                      "t006lexer.g",
                      "t007lexer.g",
                      "t008lexer.g",
                      "t009lexer.g",
                      "t010lexer.g",
                      "t011lexer.g",
                      "t012lexerXML.g",
                      "t013parser.g",
                      "t014parser.g",
                      "t015calc.g",
                      "t016actions.g",
                      "t017parser.g",
                      "t018llstar.g",
                      "t019lexer.g",
                      "t020fuzzy.g",
                      "t021hoist.g",
                      "t022scopes.g",
                      "t023scopes.g",
                      "t024finally.g",
                      "t025lexerRulePropertyRef.g",
                      "t026actions.g",
                      "t027eof.g",
                      "t029synpredgate.g",
                      "t030specialStates.g",
                      "t031emptyAlt.g",
                      "t032subrulePredict.g",
                      "t033backtracking.g",
                      "t034tokenLabelPropertyRef.g",
                      "t035ruleLabelPropertyRef.g",
                      "t036multipleReturnValues.g",
                      "t037rulePropertyRef.g",
                      "t038lexerRuleLabel.g",
                      "t039labels.g",
                      "t040bug80.g",
                      "t041parameters.g",
                      "t042ast.g",
                      "t043synpred.g",
                      "t045dfabug.g",
                      "t046rewrite.g",
                      "t047treeparser.g",
                      "t048rewrite.g",
                      "t049treeparsera.g",
                      "t049treeparserb.g",
                      "t049treeparserc.g",
                      "t049treeparserd.g",
                      "t049treeparsere.g",
                      "t049treeparserf.g",
                      "t049treeparserg.g",
                      "t049treeparserh.g",
                      "t049treeparseri.g",
                      "t051treeRewriteASTaa.g",
                      "t051treeRewriteASTab.g",
                      "t051treeRewriteASTac.g",
                      "t051treeRewriteASTa.g",
                      "t051treeRewriteASTb.g",
                      "t051treeRewriteASTc.g",
                      "t051treeRewriteASTd.g",
                      "t051treeRewriteASTe.g",
                      "t051treeRewriteASTf.g",
                      "t051treeRewriteASTg.g",
                      "t051treeRewriteASTh.g",
                      "t051treeRewriteASTi.g",
                      "t051treeRewriteASTj.g",
                      "t051treeRewriteASTk.g",
                      "t051treeRewriteASTl.g",
                      "t051treeRewriteASTm.g",
                      "t051treeRewriteASTn.g",
                      "t051treeRewriteASTo.g",
                      "t051treeRewriteASTp.g",
                      "t051treeRewriteASTq.g",
                      "t051treeRewriteASTr.g",
                      "t051treeRewriteASTs.g",
                      "t051treeRewriteASTt.g",
                      "t051treeRewriteASTu.g",
                      "t051treeRewriteASTv.g",
                      "t051treeRewriteASTw.g",
                      "t051treeRewriteASTx.g",
                      "t051treeRewriteASTy.g",
                      "t051treeRewriteASTz.g",
                      "t052importM1.g",
                      "t052importM2.g",
                      "t052importM3.g",
                      "t052importM4.g",
                      "t052importM5.g",
                      "t052importM6.g",
                      "t052importM7.g",
                      "t052importM8.g",
                      "t052importS1.g",
                      "t052importS2.g",
                      "t052importS3.g",
                      "t052importS4.g",
                      "t052importS5.g",
                      "t052importS6.g",
                      "t052importS7.g",
                      "t052importS8.g",
                      "t052importT4.g",
                      "t052importT5.g",
                      "t053heteroT.g",
                      "t053heteroT1.g",
                      "t053heteroT10.g",
                      "t053heteroT11.g",
                      "t053heteroT12.g",
                      "t053heteroT13.g",
                      "t053heteroT14.g",
                      "t053heteroT15.g",
                      "t053heteroT16.g",
                      "t053heteroT17.g",
                      "t053heteroT18.g",
                      "t053heteroT2.g",
                      "t053heteroT3.g",
                      "t053heteroT4.g",
                      "t053heteroT5.g",
                      "t053heteroT6.g",
                      "t053heteroT7.g",
                      "t053heteroT8.g",
                      "t053heteroT9.g",
                      "t053heteroTP.g",
                      "t053heteroTP13.g",
                      "t053heteroTP14.g",
                      "t053heteroTP15.g",
                      "t053heteroTP16.g",
                      "t053heteroTP17.g",
                      "t053heteroTP18.g",
                      "t056lexer1.g",
                      "t056lexer10.g",
                      "t056lexer11.g",
                      "t056lexer12.g",
                      "t056lexer13.g",
                      "t056lexer14.g",
                      "t056lexer2.g",
                      "t056lexer3.g",
                      "t056lexer4.g",
                      "t056lexer5.g",
                      "t056lexer6.g",
                      "t056lexer7.g",
                      "t056lexer8.g",
                      "t056lexer9.g",
                      "t057autoAST1.g",
                      "t057autoAST10.g",
                      "t057autoAST11.g",
                      "t057autoAST12.g",
                      "t057autoAST13.g",
                      "t057autoAST14.g",
                      "t057autoAST15.g",
                      "t057autoAST16.g",
                      "t057autoAST17.g",
                      "t057autoAST18.g",
                      "t057autoAST19.g",
                      "t057autoAST2.g",
                      "t057autoAST20.g",
                      "t057autoAST21.g",
                      "t057autoAST22.g",
                      "t057autoAST23.g",
                      "t057autoAST24.g",
                      "t057autoAST25.g",
                      "t057autoAST26.g",
                      "t057autoAST27.g",
                      "t057autoAST28.g",
                      "t057autoAST29.g",
                      "t057autoAST3.g",
                      "t057autoAST30.g",
                      "t057autoAST31.g",
                      "t057autoAST32.g",
                      "t057autoAST33.g",
                      "t057autoAST34.g",
                      "t057autoAST35.g",
                      "t057autoAST36.g",
                      "t057autoAST37.g",
                      "t057autoAST38.g",
                      "t057autoAST39.g",
                      "t057autoAST4.g",
                      "t057autoAST40.g",
                      "t057autoAST41.g",
                      "t057autoAST42.g",
                      "t057autoAST43.g",
                      "t057autoAST44.g",
                      "t057autoAST45.g",
                      "t057autoAST46.g",
                      "t057autoAST47.g",
                      "t057autoAST48.g",
                      "t057autoAST49.g",
                      "t057autoAST5.g",
                      "t057autoAST50.g",
                      "t057autoAST51.g",
                      "t057autoAST52.g",
                      "t057autoAST53.g",
                      "t057autoAST54.g",
                      "t057autoAST6.g",
                      "t057autoAST7.g",
                      "t057autoAST8.g",
                      "t057autoAST9.g",
                      "t058rewriteAST1.g",
                      "t058rewriteAST10.g",
                      "t058rewriteAST11.g",
                      "t058rewriteAST12.g",
                      "t058rewriteAST13.g",
                      "t058rewriteAST14.g",
                      "t058rewriteAST15.g",
                      "t058rewriteAST16.g",
                      "t058rewriteAST17.g",
                      "t058rewriteAST18.g",
                      "t058rewriteAST19.g",
                      "t058rewriteAST2.g",
                      "t058rewriteAST20.g",
                      "t058rewriteAST21.g",
                      "t058rewriteAST22.g",
                      "t058rewriteAST23.g",
                      "t058rewriteAST24.g",
                      "t058rewriteAST25.g",
                      "t058rewriteAST26.g",
                      "t058rewriteAST27.g",
                      "t058rewriteAST28.g",
                      "t058rewriteAST29.g",
                      "t058rewriteAST3.g",
                      "t058rewriteAST30.g",
                      "t058rewriteAST31.g",
                      "t058rewriteAST32.g",
                      "t058rewriteAST33.g",
                      "t058rewriteAST34.g",
                      "t058rewriteAST35.g",
                      "t058rewriteAST36.g",
                      "t058rewriteAST37.g",
                      "t058rewriteAST38.g",
                      "t058rewriteAST39.g",
                      "t058rewriteAST4.g",
                      "t058rewriteAST40.g",
                      "t058rewriteAST41.g",
                      "t058rewriteAST42.g",
                      "t058rewriteAST43.g",
                      "t058rewriteAST44.g",
                      "t058rewriteAST45.g",
                      "t058rewriteAST46.g",
                      "t058rewriteAST47.g",
                      "t058rewriteAST48.g",
                      "t058rewriteAST49.g",
                      "t058rewriteAST5.g",
                      "t058rewriteAST50.g",
                      "t058rewriteAST51.g",
                      "t058rewriteAST52.g",
                      "t058rewriteAST53.g",
                      "t058rewriteAST54.g",
                      "t058rewriteAST55.g",
                      "t058rewriteAST56.g",
                      "t058rewriteAST57.g",
                      "t058rewriteAST58.g",
                      "t058rewriteAST59.g",
                      "t058rewriteAST6.g",
                      "t058rewriteAST60.g",
                      "t058rewriteAST61.g",
                      "t058rewriteAST62.g",
                      "t058rewriteAST63.g",
                      "t058rewriteAST64.g",
                      "t058rewriteAST65.g",
                      "t058rewriteAST66.g",
                      "t058rewriteAST67.g",
                      "t058rewriteAST68.g",
                      "t058rewriteAST69.g",
                      "t058rewriteAST7.g",
                      "t058rewriteAST70.g",
                      "t058rewriteAST71.g",
                      "t058rewriteAST72.g",
                      "t058rewriteAST73.g",
                      "t058rewriteAST74.g",
                      "t058rewriteAST75.g",
                      "t058rewriteAST76.g",
                      "t058rewriteAST77.g",
                      "t058rewriteAST78.g",
                      "t058rewriteAST79.g",
                      "t058rewriteAST8.g",
                      "t058rewriteAST80.g",
                      "t058rewriteAST81.g",
                      "t058rewriteAST82.g",
                      "t058rewriteAST83.g",
                      "t058rewriteAST9.g"
    ], "-trace": const [ 
                      "Dart.g",
                      "t044trace.g",    
                      "t047treeparserWalker.g",    
                      "t049treeparseraWalker.g",    
                      "t049treeparserbWalker.g",    
                      "t049treeparsercWalker.g",
                      "t049treeparserdWalker.g",    
                      "t049treeparsereWalker.g",    
                      "t049treeparserfWalker.g",    
                      "t049treeparsergWalker.g",
                      "t049treeparserhWalker.g",    
                      "t049treeparseriWalker.g",    
                      "t051treeRewriteASTaaWalker.g",    
                      "t051treeRewriteASTabWalker.g",    
                      "t051treeRewriteASTacWalker.g",    
                      "t051treeRewriteASTaWalker.g",    
                      "t051treeRewriteASTbWalker.g",    
                      "t051treeRewriteASTcWalker.g",    
                      "t051treeRewriteASTdWalker.g",    
                      "t051treeRewriteASTeWalker.g",    
                      "t051treeRewriteASTfWalker.g",    
                      "t051treeRewriteASTgWalker.g",    
                      "t051treeRewriteASThWalker.g",    
                      "t051treeRewriteASTiWalker.g",    
                      "t051treeRewriteASTjWalker.g",    
                      "t051treeRewriteASTkWalker.g",    
                      "t051treeRewriteASTlWalker.g",    
                      "t051treeRewriteASTmWalker.g",   
                      "t051treeRewriteASTnWalker.g",    
                      "t051treeRewriteASToWalker.g",    
                      "t051treeRewriteASTpWalker.g",   
                      "t051treeRewriteASTqWalker.g",    
                      "t051treeRewriteASTrWalker.g",    
                      "t051treeRewriteASTsWalker.g",   
                      "t051treeRewriteASTtWalker.g",    
                      "t051treeRewriteASTuWalker.g",    
                      "t051treeRewriteASTvWalker.g",    
                      "t051treeRewriteASTwWalker.g",    
                      "t051treeRewriteASTxWalker.g",    
                      "t051treeRewriteASTyWalker.g",    
                      "t051treeRewriteASTzWalker.g"    
     ], "-debug": const [
                      "t059debug1.g",
                      "t059debug10.g",
                      "t059debug11.g",
                      "t059debug12.g",
                      "t059debug2.g",
                      "t059debug3.g",
                      "t059debug4.g",
                      "t059debug5.g",
                      "t059debug6.g",
                      "t059debug7.g",
                      "t059debug8.g",
                      "t059debug9.g"
     ]
  };  
}
