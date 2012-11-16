lexer grammar t007lexer;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

FOO: 'f' ('o' | 'a' 'b'+)*;
