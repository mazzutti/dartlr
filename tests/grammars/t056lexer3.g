grammar t056lexer3;
options {language=Dart;}
a : A EOF {this.capture("\${$A.text}, channel=\${$A.channel}");} ;
A : '-' WS I ;
I : '0'..'9'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
