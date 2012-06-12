
grammar t058rewriteAST38;
options {language=Dart;output=AST;}
a : atom -> ^({this._adaptor.create(INT,"9")} atom) ;
atom : INT ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;