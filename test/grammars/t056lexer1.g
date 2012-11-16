grammar t056lexer1;
options {language=Dart;}

@header{part of dartlr_tests;}

a : A {this.capture("\${this.input}");} ;
A : '\\' 't' {this.text = "  ";} ;
WS : (' '|'\n') {$channel= HIDDEN;} ;
