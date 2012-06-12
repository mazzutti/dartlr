lexer grammar t056lexer12;
options {language=Dart;}
B : x='a' x='b' {this.capture("ab");};
