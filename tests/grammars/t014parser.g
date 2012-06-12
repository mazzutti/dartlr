grammar t014parser;
options {
  language = Dart;
}

@parser::members {
List errors;
List events;

void emitErrorMessage(msg) {
  this.errors.add(msg);
}

void eventMessage(msg) {
  this.events.add(msg);
}
}

@parser::init {
  this.errors = new List();
  this.events = new List();
}
        

document:
        ( declaration
        | call
        )*
        EOF
    ;

declaration:
        'var' t=IDENTIFIER ';'
        {this.eventMessage(['decl', $t.text]);}
    ;

call:
        t=IDENTIFIER '(' ')' ';'
        {this.eventMessage(['call', $t.text]);}
    ;

IDENTIFIER: ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;
WS:  (' '|'\r'|'\t'|'\n') {$channel=HIDDEN;};
