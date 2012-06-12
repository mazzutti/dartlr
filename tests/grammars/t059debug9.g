grammar t059debug9;
options {
  language=Dart;
}
a : b;
b : ID;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;