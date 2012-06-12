grammar t056lexer11;
options {language=Dart;}
a : B ;
B : x='a' {this.capture("\${new String.fromCharCodes([$x])}");} ;
