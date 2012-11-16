grammar t056lexer2;
options {language=Dart;}

@header{part of dartlr_tests;}

a : A EOF {this.capture("\${this.input}");} ;
A : '-' I ;
I : '0'..'9'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
