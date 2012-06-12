grammar t056lexer7;
options {language=Dart;}
a : A EOF ;
A : 'hi' WS (v=I)? {$channel=0; this.capture("\${$v.text}");} ;
fragment I : '0'..'9'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
