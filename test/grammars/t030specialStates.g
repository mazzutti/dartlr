grammar t030specialStates;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

@members {
bool cond;

void recover(RecognitionException re, [IntStream input]) {
  throw re;
}
}

@init {
cond = true;
}

r
    : ( {cond}? NAME
        | {!cond}? NAME WS+ NAME
        )
        ( WS+ NAME )?
        EOF
    ;

NAME: ('a'..'z') ('a'..'z' | '0'..'9')+;
NUMBER: ('0'..'9')+;
WS: ' '+;
