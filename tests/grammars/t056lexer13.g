lexer grammar t056lexer13;
options {language=Dart;}
B : x=A x=A ;
fragment A : 'a' {this.capture("a");};
