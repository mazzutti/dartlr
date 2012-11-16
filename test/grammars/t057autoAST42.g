grammar t057autoAST42;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a returns [String result] : x+=b! x+=b {
$result = "1st x=\${$x[0].toStringTree()},";
} ;
b : ID;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
