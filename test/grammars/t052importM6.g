grammar t052importM6;
options {
    language=Dart;
}

import t052importS6;

@header{part of dartlr_tests;}

b : 'b'|'c' ;
WS : (' '|'\n') {this.skip();} ;
