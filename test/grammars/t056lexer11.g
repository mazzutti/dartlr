grammar t056lexer11;
options {language=Dart;}

@header{part of dartlr_tests;}

a : B ;
B : x='a' {this.capture("\${new String.fromCharCodes([$x])}");} ;
