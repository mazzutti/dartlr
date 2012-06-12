grammar t059debug1;
options {
  language=Dart;
}
a : ID EOF;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;