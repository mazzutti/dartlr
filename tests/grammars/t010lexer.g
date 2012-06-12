lexer grammar t010lexer;
options {
  language = Dart;
}

IDENTIFIER: ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;
WS: (' ' | '\n')+;
