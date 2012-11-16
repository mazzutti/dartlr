grammar t051treeRewriteASTab;
options {
    language=Dart;
    output=AST;
}

@header{part of dartlr_tests;}

a : ID INT -> ^(ID["root"] ^(ID INT)) | INT -> ^(ID["root"] INT) ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
