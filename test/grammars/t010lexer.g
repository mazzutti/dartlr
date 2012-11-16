lexer grammar t010lexer;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

IDENTIFIER: ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;
WS: (' ' | '\n')+;
