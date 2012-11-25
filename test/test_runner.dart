// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_test_runner;


//functional tests
import "functional/t001lexer_test.dart" as t001lexer;
import "functional/t002lexer_test.dart" as t002lexer;
import "functional/t003lexer_test.dart" as t003lexer;
import "functional/t004lexer_test.dart" as t004lexer;
import "functional/t005lexer_test.dart" as t005lexer;
import "functional/t006lexer_test.dart" as t006lexer;
import "functional/t007lexer_test.dart" as t007lexer;
import "functional/t008lexer_test.dart" as t008lexer;
import "functional/t009lexer_test.dart" as t009lexer;
import "functional/t010lexer_test.dart" as t010lexer;
import "functional/t011lexer_test.dart" as t011lexer;
import "functional/t012lexerXML_test.dart" as t012lexerXML;
import "functional/t013parser_test.dart" as t013parser;
import "functional/t014parser_test.dart" as t014parser;
import "functional/t015calc_test.dart" as t015calc;
import "functional/t016actions_test.dart" as t016actions;
import "functional/t017parser_test.dart" as t017parser;
import "functional/t018llstar_test.dart" as t018llstar;
import "functional/t019lexer_test.dart" as t019lexer;
import "functional/t020fuzzy_test.dart" as t020fuzzy;
import "functional/t021hoist_test.dart" as t021hoist;
import "functional/t022scopes_test.dart" as t022scopes;
import "functional/t023scopes_test.dart" as t023scopes;
import "functional/t024finally_test.dart" as t024finally;
import "functional/t025lexerRulePropertyRef_test.dart" as t025lexerRulePropertyRef;
import "functional/t026actions_test.dart" as t026actions;
import "functional/t027eof_test.dart" as t027eof;
import "functional/t029synpredgate_test.dart" as t029synpredgate;
import "functional/t030specialStates_test.dart" as t030specialStates;
import "functional/t031emptyAlt_test.dart" as t031emptyAlt;
import "functional/t032subrulePredict_test.dart" as t032subrulePredict;
import "functional/t033backtracking_test.dart" as t033backtracking;
import "functional/t034tokenLabelPropertyRef_test.dart" as t034tokenLabelPropertyRef;
import "functional/t035ruleLabelPropertyRef_test.dart" as t035ruleLabelPropertyRef;
import "functional/t036multipleReturnValues_test.dart" as t036multipleReturnValues;
import "functional/t037rulePropertyRef_test.dart" as t037rulePropertyRef;
import "functional/t038lexerRuleLabel_test.dart" as t038lexerRuleLabel;
import "functional/t039labels_test.dart" as t039labels;
import "functional/t040bug80_test.dart" as t040bug80;
import "functional/t041parameters_test.dart" as t041parameters;
import "functional/t042ast_test.dart" as t042ast;
import "functional/t043synpred_test.dart" as t043synpred;
import "functional/t044trace_test.dart" as t044trace;
import "functional/t045dfabug_test.dart" as t045dfabug;
import "functional/t046rewrite_test.dart" as t046rewrite;
import "functional/t047treeparser_test.dart" as t047treeparser;
import "functional/t048rewrite_test.dart" as t048rewrite;
import "functional/t049treeparser_test.dart" as t049treeparser;
import "functional/t051treeRewriteAST_test.dart" as t051treeRewriteAST;
import "functional/t052import_test.dart" as t052import;
import "functional/t053hetero_test.dart" as t053hetero;
import "functional/t056lexer_test.dart" as t056lexer;
import "functional/t057autoAST_test.dart" as t057autoAST;
import "functional/t058rewriteAST_test.dart" as t058rewriteAST;
import "functional/t059debug_test.dart" as t059debug;
import "functional/t100parser_test.dart" as t100parser;
import "functional/t101parser_test.dart" as t101parser;
import "functional/t102parser_test.dart" as t102parser;

//logical tests
import "logical/dfa_test.dart" as dfa;
import "logical/bit_set_test.dart" as bitSet;
import "logical/antlr_file_stream_test.dart" as antlr_file_stream_test;

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
    t100parser.main();
    t101parser.main();
    t102parser.main();
    
    dfa.main();
    bitSet.main();   
    antlr_file_stream_test.main();
  }  
}
