// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dartlr_tests");

#import("dart:isolate");

//functional tests
#import("functional/t001lexer_test.dart", prefix:"t001lexer");
#import("functional/t002lexer_test.dart", prefix:"t002lexer");
#import("functional/t003lexer_test.dart", prefix:"t003lexer");
#import("functional/t004lexer_test.dart", prefix:"t004lexer");
#import("functional/t005lexer_test.dart", prefix:"t005lexer");
#import("functional/t006lexer_test.dart", prefix:"t006lexer");
#import("functional/t007lexer_test.dart", prefix:"t007lexer");
#import("functional/t008lexer_test.dart", prefix:"t008lexer");
#import("functional/t009lexer_test.dart", prefix:"t009lexer");
#import("functional/t010lexer_test.dart", prefix:"t010lexer");
#import("functional/t011lexer_test.dart", prefix:"t011lexer");
#import("functional/t012lexerXML_test.dart", prefix:"t012lexerXML");
#import("functional/t013parser_test.dart", prefix:"t013parser");
#import("functional/t014parser_test.dart", prefix:"t014parser");
#import("functional/t015calc_test.dart", prefix:"t015calc");
#import("functional/t016actions_test.dart", prefix:"t016actions");
#import("functional/t017parser_test.dart", prefix:"t017parser");
#import("functional/t018llstar_test.dart", prefix:"t018llstar");
#import("functional/t019lexer_test.dart", prefix:"t019lexer");
#import("functional/t020fuzzy_test.dart", prefix:"t020fuzzy");
#import("functional/t021hoist_test.dart", prefix:"t021hoist");
#import("functional/t022scopes_test.dart", prefix:"t022scopes");
#import("functional/t023scopes_test.dart", prefix:"t023scopes");
#import("functional/t024finally_test.dart", prefix:"t024finally");
#import("functional/t025lexerRulePropertyRef_test.dart", 
                               prefix:"t025lexerRulePropertyRef");
#import("functional/t026actions_test.dart", prefix:"t026actions");
#import("functional/t027eof_test.dart", prefix:"t027eof");
#import("functional/t029synpredgate_test.dart", prefix:"t029synpredgate");
#import("functional/t030specialStates_test.dart", prefix:"t030specialStates");
#import("functional/t031emptyAlt_test.dart", prefix:"t031emptyAlt");
#import("functional/t032subrulePredict_test.dart", prefix:"t032subrulePredict");
#import("functional/t033backtracking_test.dart", prefix:"t033backtracking");
#import("functional/t034tokenLabelPropertyRef_test.dart", 
                                prefix:"t034tokenLabelPropertyRef");
#import("functional/t035ruleLabelPropertyRef_test.dart", 
                                prefix:"t035ruleLabelPropertyRef");
#import("functional/t036multipleReturnValues_test.dart", 
                                prefix:"t036multipleReturnValues");
#import("functional/t037rulePropertyRef_test.dart",
                                prefix:"t037rulePropertyRef");
#import("functional/t038lexerRuleLabel_test.dart", prefix:"t038lexerRuleLabel");
#import("functional/t039labels_test.dart", prefix:"t039labels");
#import("functional/t040bug80_test.dart", prefix:"t040bug80");
#import("functional/t041parameters_test.dart", prefix:"t041parameters");
#import("functional/t042ast_test.dart", prefix:"t042ast");
#import("functional/t043synpred_test.dart", prefix:"t043synpred");
#import("functional/t044trace_test.dart", prefix:"t044trace");
#import("functional/t045dfabug_test.dart", prefix:"t045dfabug");
#import("functional/t046rewrite_test.dart", prefix:"t046rewrite");
#import("functional/t047treeparser_test.dart", prefix:"t047treeparser");
#import("functional/t048rewrite_test.dart", prefix:"t048rewrite");
#import("functional/t049treeparser_test.dart", prefix:"t049treeparser");
#import("functional/t051treeRewriteAST_test.dart", prefix:"t051treeRewriteAST");
#import("functional/t052import_test.dart", prefix:"t052import");
#import("functional/t053hetero_test.dart", prefix:"t053hetero");
#import("functional/t056lexer_test.dart", prefix:"t056lexer");
#import("functional/t057autoAST_test.dart", prefix:"t057autoAST");
#import("functional/t058rewriteAST_test.dart", prefix:"t058rewriteAST");
#import("functional/t059debug_test.dart", prefix:"t059debug");


//logical tests
#import("logical/DFA_test.dart", prefix:"dfa");
#import("logical/BitSet_test.dart", prefix:"bitSet");

class TestRunner {
  void run() {
    t001lexer.main();
    t002lexer.main();
    t003lexer.main();
    t004lexer.main();
    t005lexer.main();
    t006lexer.main();
    t007lexer.main();
    t008lexer.main();
    t009lexer.main();
    t010lexer.main();
    t011lexer.main();
    t012lexerXML.main();
    t013parser.main();
    t014parser.main();
    t015calc.main();
    t016actions.main();
    t017parser.main();
    t018llstar.main();
    t019lexer.main();
    t020fuzzy.main();
    t021hoist.main();
    t022scopes.main();
    t023scopes.main();
    t024finally.main();
    t025lexerRulePropertyRef.main();
    t026actions.main();
    t027eof.main();
    t029synpredgate.main();
    t030specialStates.main();
    t031emptyAlt.main();
    t032subrulePredict.main();
    t033backtracking.main();
    t034tokenLabelPropertyRef.main();
    t035ruleLabelPropertyRef.main();
    t036multipleReturnValues.main();
    t037rulePropertyRef.main();
    t038lexerRuleLabel.main();
    t039labels.main();
    t040bug80.main();
    t041parameters.main();
    t042ast.main();
    t043synpred.main();
    t044trace.main();
    t045dfabug.main();
    t046rewrite.main();
    t047treeparser.main();
    t048rewrite.main();
    t049treeparser.main();
    t051treeRewriteAST.main();
    t052import.main();
    t053hetero.main();
    t056lexer.main();
    t057autoAST.main();
    t058rewriteAST.main();
    t059debug.main();
    
    dfa.main();
    bitSet.main();    
  }  
}
