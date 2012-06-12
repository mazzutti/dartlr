grammar t056lexer1;
options {language=Dart;}
a : A {this.capture("\${this.input}");} ;
A : '\\' 't' {this.text = "  ";} ;
WS : (' '|'\n') {$channel= HIDDEN;} ;
