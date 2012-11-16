
grammar t058rewriteAST25;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : ID INT -> {false}? ^(ID INT)
           -> {true}? ^(INT ID)
           -> ID
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;