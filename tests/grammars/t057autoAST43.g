grammar t057autoAST43;
options {language=Dart;output=AST;}
a : A b=B b=B c+=C c+=C D {String s = $D.text;} ;
A : 'a' ;
B : 'b' ;
C : 'c' ;
D : 'd' ;
WS : (' '|'\n') {$channel = HIDDEN;} ;
