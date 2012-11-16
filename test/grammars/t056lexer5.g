grammar t056lexer5;
options {language=Dart;}

@header{part of dartlr_tests;}

a : A {this.capture("\${this.input}");} ;
A : '-' I ;
fragment I : '0'..'9'+ ;
WS : (' '|'\n') {$channel= HIDDEN;} ;
