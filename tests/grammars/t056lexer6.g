grammar t056lexer6;
options {language=Dart;}
a : A EOF {this.capture("\${this.input}");} ;
A : I '.' I ;
fragment I : '0'..'9'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;
