grammar t056lexer5;
options {language=Dart;}
a : A {this.capture("\${this.input}");} ;
A : '-' I ;
fragment I : '0'..'9'+ ;
WS : (' '|'\n') {$channel= HIDDEN;} ;
