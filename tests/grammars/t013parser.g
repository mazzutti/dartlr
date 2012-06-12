grammar t013parser;
options {
  language = Dart;
}

@parser::members {
List identifiers;
List reportedErrors;

void foundIdentifier(name) {
  this.identifiers.add(name);
}

void emitErrorMessage(msg) {
  this.reportedErrors.add(msg);
}
}

@parser::init {
this.identifiers = new List();
this.reportedErrors = new List();
}

document:
        t=IDENTIFIER {this.foundIdentifier($t.text);}
        ;

IDENTIFIER: ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;
