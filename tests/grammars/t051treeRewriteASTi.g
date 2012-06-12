grammar t051treeRewriteASTi;
options {
    language=Dart;
    output=AST;
}
a : ID INT -> ^(ID INT);
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\\n') {$channel = HIDDEN;} ;
