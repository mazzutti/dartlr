
grammar t058rewriteAST41;
options {language=Dart;output=AST;}

tokens {BLOCK;}

@header{part of dartlr_tests;}

a : atom -> ^(atom atom) ; // NOT CYCLE! (dup atom)
atom : INT ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;