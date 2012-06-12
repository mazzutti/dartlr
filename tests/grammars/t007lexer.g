lexer grammar t007lexer;
options {
  language = Dart;
}

FOO: 'f' ('o' | 'a' 'b'+)*;
