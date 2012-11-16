
grammar t058rewriteAST69;
options {language=Dart;output=AST;}

tokens { FLOAT; }

@header{part of dartlr_tests;}

r
    : INT -> {new CommonTree.fromToken(new CommonToken(FLOAT, "\${$INT.text}.0"))} 
    ; 
INT : '0'..'9'+; 
WS: (' ' | '\n' | '\t')+ {$channel = HIDDEN;} ;