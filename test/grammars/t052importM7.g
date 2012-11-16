lexer grammar t052importM7;
options {
    language=Dart;
}

import t052importS7;

@header{part of dartlr_tests;}

B : 'b' ;
WS : (' '|'\n') {this.skip();} ;
