grammar t056lexer10;
options {language=Dart;}
a : A ;
A : i+=I WS i+=I {$channel=0; for (int p = 0; p <$i.length; p++) this.capture(" \${$i[p].text}"); } ;
fragment I : '0'..'9'+ ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
