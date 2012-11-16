grammar t059debug12;
options {
  language=Dart;
  output=AST;
}

@header{part of dartlr_tests;}

a : ( b | c ) EOF!;
b : ID* INT -> ^(INT ID*);
c : ID+ BANG -> ^(BANG ID+);
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
BANG : '!';
WS : (' '|'\n') {$channel = HIDDEN;} ;