grammar t051treeRewriteASTh;
options {
    language=Dart;
    output=AST;
}
a : ID ID INT ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\\n') {$channel = HIDDEN;} ;
