grammar t052importM5;
options {
    language=Dart;
}

import t052importS5, t052importT5;

@header{part of dartlr_tests;}

s : x y ; // matches AA, which should be "aa"
B : 'b' ; // another order: B, A, C
A : 'a' ;
C : 'c' ;
WS : (' '|'\n') {this.skip();} ;
