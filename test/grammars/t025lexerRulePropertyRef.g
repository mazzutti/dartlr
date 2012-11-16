lexer grammar t025lexerRulePropertyRef;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

@lexer::members {
List properties;
}

@lexer::init {
this.properties = new List();
}

IDENTIFIER: 
        ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
        {
this.properties.add(
    [
    	$text, 
    	$type, 
    	$line, 
    	$pos, 
    	$index, 
    	$channel, 
    	$start, 
    	$stop
    ]
);
        }
    ;
WS: (' ' | '\n')+;
