grammar t051treeRewriteASTg;
options {
    language=Dart;
    output=AST;
}
a : ID INT ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\\n') {$channel = HIDDEN;} ;
