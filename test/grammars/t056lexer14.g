lexer grammar t056lexer14;
options {language=Dart;}

@header{part of dartlr_tests;}

A : '\"' {this.capture('"');};
B : '\\\"' {this.capture(r'\"');};