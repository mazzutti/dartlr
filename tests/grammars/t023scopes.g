grammar t023scopes;

options {
    language=Dart;
}

prog
scope {
String name
}
    :   ID {$prog::name=$ID.text;}
    ;

ID  :   ('a'..'z')+
    ;

WS  :   (' '|'\n'|'\r')+ {$channel=HIDDEN;}
    ;
