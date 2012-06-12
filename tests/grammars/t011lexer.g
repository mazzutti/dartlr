lexer grammar t011lexer;
options {
  language = Dart;
}

IDENTIFIER: 
        ('a'..'z'|'A'..'Z'|'_') 
        ('a'..'z'
        |'A'..'Z'
        |'0'..'9'
        |'_'
            { 
              print("Underscore");
              print("foo");
            }
        )*
    ;

WS: (' ' | '\n')+;
