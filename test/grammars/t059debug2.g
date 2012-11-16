grammar t059debug2;
options {
  language=Dart;
}

@header{part of dartlr_tests;}

a : {true}? ID EOF;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;