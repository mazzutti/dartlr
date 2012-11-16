grammar t059debug6;
options {
  language=Dart;
}

@header{part of dartlr_tests;}

a : ID ( b | c ) EOF;
b : ID;
c : INT;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;