grammar t057autoAST40;
options {language=Dart;output=AST;}
a returns [String result]: x+=b x+=b {
Tree t=$x[1];
$result = "2nd x=\${t.toStringTree()},";
};
b : ID;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel= HIDDEN;} ;
