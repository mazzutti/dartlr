grammar t031emptyAlt;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

@members {
bool cond = true;
}


r
    : NAME 
        ( {this.cond}?=> WS+ NAME
        | 
        )
        EOF
    ;

NAME: ('a'..'z') ('a'..'z' | '0'..'9')+;
NUMBER: ('0'..'9')+;
WS: ' '+;
