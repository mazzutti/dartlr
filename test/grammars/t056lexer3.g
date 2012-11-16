grammar t056lexer3;
options {language=Dart;}

@header{part of dartlr_tests;}

a : A EOF {this.capture("\${$A.text}, channel=\${$A.channel}");} ;
A : '-' WS I ;
I : '0'..'9'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
