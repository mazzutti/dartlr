grammar t056lexer9;
options {language=Dart;}

@header{part of dartlr_tests;}

a : A ;
A : i+=I+ { for (int p = 0; p < $i.length; p++) this.capture(" \${$i[p].text}"); } ;
fragment I : '0'..'9'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;
