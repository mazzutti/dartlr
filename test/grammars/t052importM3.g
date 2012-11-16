grammar t052importM3;
options {
    language=Dart;
}

import t052importS3;

@header{part of dartlr_tests;}

s : 'b' {this.gt052importS3.foo();} ; // gS is import pointer
WS : (' '|'\n') {this.skip();} ;
