lexer grammar t052importS7;
options {
    language=Dart;
}

@lexer::header{part of dartlr_tests;}

@members {
void capture(String t) {
  this.gt052importM7.capture(t);
}
}
A : 'a' {this.capture("S.A ");} ;
C : 'c' ;
