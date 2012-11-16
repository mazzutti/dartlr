grammar t051treeRewriteASTr;
options {
    language=Dart;
    output=AST;
}

@header{part of dartlr_tests;}

a : x=ID INT -> ^($x INT);
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
