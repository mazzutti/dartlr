grammar t051treeRewriteASTp;
options {
    language=Dart;
    output=AST;
}
a : ID ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
