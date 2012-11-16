grammar t052importM1;
options {
    language=Dart;
}

import t052importS1;

@header{part of dartlr_tests;}

s : a ;
B : 'b' ; // defines B from inherited token space
WS : (' '|'\n') {this.skip();} ;
