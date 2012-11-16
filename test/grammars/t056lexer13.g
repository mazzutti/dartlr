lexer grammar t056lexer13;
options {language=Dart;}

@header{part of dartlr_tests;}

B : x=A x=A ;
fragment A : 'a' {this.capture("a");};
