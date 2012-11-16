grammar t052importM4;
options {
    language=Dart;
}

import t052importS4, t052importT4;

@header{part of dartlr_tests;}

s : a ;
B : 'b' ;
WS : (' '|'\n') {this.skip();} ;
