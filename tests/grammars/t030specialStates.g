grammar t030specialStates;
options {
  language = Dart;
}

@members {
bool cond;

void recover(RecognitionException re, [IntStream input]) {
  throw re;
}
}

@init {
this.cond = true;
}

r
    : ( {this.cond}? NAME
        | {!this.cond}? NAME WS+ NAME
        )
        ( WS+ NAME )?
        EOF
    ;

NAME: ('a'..'z') ('a'..'z' | '0'..'9')+;
NUMBER: ('0'..'9')+;
WS: ' '+;
