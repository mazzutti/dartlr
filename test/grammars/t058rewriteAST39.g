
grammar t058rewriteAST39;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a : atom -> {this._adaptor.create(INT,"9")} atom ;
atom : INT ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;