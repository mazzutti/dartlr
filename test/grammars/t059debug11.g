grammar t059debug11;
options {
  language=Dart;
}

@header{part of dartlr_tests;}

a : ( b | c ) EOF;
b : ID* INT;
c : ID+ BANG;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
BANG : '!';
WS : (' '|'\n') {$channel = HIDDEN;} ;