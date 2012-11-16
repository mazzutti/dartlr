grammar t046rewrite;
options {
    language=Dart;
}

@header{part of dartlr_tests;}

program
@init {
var start = this.input.LT(1);
}
    :   method+
        {
        (this.input as TokenRewriteStream).insertBefore(start,"public class Wrapper {\n");
        (this.input as TokenRewriteStream).insertAfter($method.stop, "\n}\n");
        }
    ;

method
    :   m='method' ID '(' ')' body
        {(this.input as TokenRewriteStream).replace($m, "public void");}
    ; 

body
scope {
Map decls
}
@init {
$body::decls = new Map();
}
    :   lcurly='{' stat* '}'
        {
        var it;
        for (it in $body::decls.keys) {
            (this.input as TokenRewriteStream).insertAfter($lcurly, "\nint \$it;");
        }
        }
    ;

stat:   ID '=' expr ';' {$body::decls[$ID.text] = true;}
    ;

expr:   mul ('+' mul)* 
    ;

mul :   atom ('*' atom)*
    ;

atom:   ID
    |   INT
    ;

ID  :   ('a'..'z'|'A'..'Z')+ ;

INT :   ('0'..'9')+ ;

WS  :   (' '|'\t'|'\n')+ {$channel = HIDDEN;}
    ;
