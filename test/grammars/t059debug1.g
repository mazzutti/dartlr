grammar t059debug1;
options {
  language=Dart;
}

@header{part of dartlr_tests;}

a : ID EOF;
ID : 'a'..'z'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;