// @@ANTLR Tool Options@@: -trace
tree grammar t047treeparserWalker;
options {
    language=Dart;
    tokenVocab=t047treeparser;
    ASTLabelType=CommonTree;
}

@header{part of dartlr_tests;}

program
    :   declaration+
    ;

declaration
    :   variable
    |   ^(FUNC_DECL functionHeader)
    |   ^(FUNC_DEF functionHeader block)
    ;

variable returns [String res]
    :   ^(VAR_DEF type declarator)
        { 
            $res = $declarator.text;
        }
    ;

declarator
    :   ID 
    ;

functionHeader
    :   ^(FUNC_HDR type ID formalParameter+)
    ;

formalParameter
    :   ^(ARG_DEF type declarator)
    ;

type
    :   'int'
    |   'char'
    |   'void'
    |   ID        
    ;

block
    :   ^(BLOCK variable* stat*)
    ;

stat: forStat
    | expr
    | block
    ;

forStat
    :   ^('for' expr expr expr block)
    ;

expr:   ^(EQEQ expr expr)
    |   ^(LT expr expr)
    |   ^(PLUS expr expr)
    |   ^(EQ ID expr)
    |   atom
    ;

atom
    : ID      
    | INT      
    ; 
