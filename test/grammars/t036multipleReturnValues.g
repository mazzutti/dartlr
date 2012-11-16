grammar t036multipleReturnValues;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

a returns [String foo, String bar]: A
        {
            $foo = "foo";
            $bar = "bar";
        }
    ;

A: 'a'..'z';

WS  :
        (   ' '
        |   '\t'
        |  ( '\n'
            |	'\r\n'
            |	'\r'
            )
        )+
        { $channel = HIDDEN; }
    ;    

