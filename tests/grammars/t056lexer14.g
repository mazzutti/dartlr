lexer grammar t056lexer14;
options {language=Dart;}
A : '\"' {this.capture('"');};
B : '\\\"' {this.capture(@'\"');};