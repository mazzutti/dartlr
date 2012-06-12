grammar t059debug4;
options {
  language=Dart;
}
a : ID ( ID | INT )* EOF;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;