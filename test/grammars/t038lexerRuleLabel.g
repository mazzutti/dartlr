lexer grammar t038lexerRuleLabel;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

A: 'a'..'z' WS '0'..'9'
        {
            print($WS);
            print($WS.type);
            print($WS.line);
            print($WS.pos);
            print($WS.channel);
            print($WS.index);
            print($WS.text);
        }
    ;

fragment WS  :
        (   ' '
        |   '\t'
        |  ( '\n'
            |	'\r\n'
            |	'\r'
            )
        )+
    ;    

