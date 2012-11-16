grammar t057autoAST41;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a returns [String result] : ( x+=b^ )+ {
$result = "x=\${$x[1].toStringTree()},";
} ;
b : ID;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
