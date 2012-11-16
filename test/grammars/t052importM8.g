lexer grammar t052importM8;
options {
    language=Dart;
}

import t052importS8;

@header{part of dartlr_tests;}

A : 'a' {this.capture("M.A ");} ;
WS : (' '|'\n') {this.skip();} ;
