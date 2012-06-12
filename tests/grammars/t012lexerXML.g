/** XML parser by Oliver Zeigermann October 10, 2005 */
lexer grammar t012lexerXML;
options {
  language = Dart;
}

@members {
  void capture(String value) {
  	super.capture("$value\n");
  }
}

DOCUMENT
    :  XMLDECL? WS? DOCTYPE? WS? ELEMENT WS? 
    ;

fragment DOCTYPE
    :
        '<!DOCTYPE' WS rootElementName=GENERIC_ID 
        {this.capture("ROOTELEMENT: \${$rootElementName.text}");}
        WS
        ( 
            ( 'SYSTEM' WS sys1=VALUE
                {this.capture("SYSTEM: \${$sys1.text}");}
                
            | 'PUBLIC' WS pub=VALUE WS sys2=VALUE
                {this.capture("PUBLIC: \${$pub.text}");}
                {this.capture("SYSTEM: \${$sys2.text}");}   
            )
            ( WS )?
        )?
        ( dtd=INTERNAL_DTD
            {this.capture("INTERNAL DTD: \${$dtd.text}");}
        )?
		'>'
	;

fragment INTERNAL_DTD : '[' (options {greedy=false;} : .)* ']' ;

fragment PI :
        '<?' target=GENERIC_ID WS? 
          {this.capture("PI: \${$target.text}");}
        ( ATTRIBUTE WS? )*  '?>'
	;

fragment XMLDECL :
        '<?' ('x'|'X') ('m'|'M') ('l'|'L') WS? 
          {this.capture("XML declaration");}
        ( ATTRIBUTE WS? )*  '?>'
	;


fragment ELEMENT
    : ( START_TAG
            (ELEMENT
            | t=PCDATA
                {this.capture('PCDATA: "\${$t.text}"');}
            | t=CDATA
                {this.capture('CDATA: "\${$t.text}"');}
            | t=COMMENT
                {this.capture('Comment: "\${$t.text}"');}
            | pi=PI
            )*
            END_TAG
        | EMPTY_ELEMENT
        )
    ;

fragment START_TAG 
    : '<' WS? name=GENERIC_ID WS?
          {this.capture("Start Tag: \${$name.text}");}
        ( ATTRIBUTE WS? )* '>'
    ;

fragment EMPTY_ELEMENT 
    : '<' WS? name=GENERIC_ID WS?
          {this.capture("Empty Element: \${$name.text}");}
        ( ATTRIBUTE WS? )* '/>'
    ;

fragment ATTRIBUTE 
    : name=GENERIC_ID WS? '=' WS? value=VALUE
        {this.capture("Attr: \${$name.text}=\${$value.text}");}
    ;

fragment END_TAG 
    : '</' WS? name=GENERIC_ID WS? '>'
        {this.capture("End Tag: \${$name.text}");}
    ;

fragment COMMENT
	:	'<!--' (options {greedy=false;} : .)* '-->'
	;

fragment CDATA
	:	'<![CDATA[' (options {greedy=false;} : .)* ']]>'
	;

fragment PCDATA : (~'<')+ ; 

fragment VALUE : 
        ( '\"' (~'\"')* '\"'
        | '\'' (~'\'')* '\''
        )
	;

fragment GENERIC_ID 
    : ( LETTER | '_' | ':') 
        ( options {greedy=true;} : LETTER | '0'..'9' | '.' | '-' | '_' | ':' )*
	;

fragment LETTER
	: 'a'..'z' 
	| 'A'..'Z'
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

