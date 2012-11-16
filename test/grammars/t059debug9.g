grammar t059debug9;
options {
  language=Dart;
}

@header{part of dartlr_tests;}

a : b;
b : ID;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;