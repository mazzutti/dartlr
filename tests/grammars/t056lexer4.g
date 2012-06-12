grammar t056lexer4;
options {language=Dart;}
tokens {X;}
a : X EOF {this.capture("\${this.input}");} ;
A : '-' I {$type = X;} ;
I : '0'..'9'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
