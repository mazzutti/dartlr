grammar t016actions;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

declaration returns [String name]
    :   functionHeader ';'
        {$name = $functionHeader.name;}
    ;

functionHeader returns [String name]
    :   type ID
	{$name = $ID.text;}
    ;

type
    :   'int'   
    |   'char'  
    |   'void'
    ;

ID  :   ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;

WS  :   (   ' '
        |   '\t'
        |   '\r'
        |   '\n'
        )+
        {_channel=HIDDEN;}
    ;    
