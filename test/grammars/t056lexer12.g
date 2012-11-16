lexer grammar t056lexer12;
options {language=Dart;}

@header{part of dartlr_tests;}

B : x='a' x='b' {this.capture("ab");};
