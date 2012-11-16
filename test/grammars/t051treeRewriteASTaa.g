grammar t051treeRewriteASTaa;
options {
    language=Dart;
    output=AST;
}

@header{part of dartlr_tests;}

a : 'boo' ID INT -> ^('boo' ^(ID INT)) ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel=HIDDEN;} ;
