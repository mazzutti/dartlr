grammar t059debug8;
options {
  language=Dart;
}

@header{part of dartlr_tests;}

a : b | c;
b : ID;
c : INT;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;