
grammar t058rewriteAST24;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : ID INT -> {false}? ID
           -> {true}? INT
           -> 
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;