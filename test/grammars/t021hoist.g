grammar t021hoist;
options {
    language=Dart;
}

@header{part of dartlr_tests;}

/* With this true, enum is seen as a keyword.  False, it's an identifier */
@members {
bool enableEnum = false;
}

stat returns [String enumIs] 
    : identifier    {enumIs = "ID";}
    | enumAsKeyword {enumIs = "keyword";}
    ;

identifier
    : ID
    | enumAsID
    ;

enumAsKeyword : {this.enableEnum}? 'enum' ;

enumAsID : {!this.enableEnum}? 'enum' ;

ID  :   ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;

INT :	('0'..'9')+
    ;

WS  :   (   ' '
        |   '\t'
        |   '\r'
        |   '\n'
        )+
        {$channel=HIDDEN;}
    ;    
