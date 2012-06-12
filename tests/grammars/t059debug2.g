grammar t059debug2;
options {
  language=Dart;
}
a : {true}? ID EOF;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;