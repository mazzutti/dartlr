grammar t022scopes;

options {
  language=Dart;
}

/* global scopes */

scope aScope {
List names
}

@header{part of dartlr_tests;}

a
scope aScope;
    :   {$aScope::names = new List();} ID*
    ;


/* rule scopes, from the book, final beta, p.147 */

b[bool v]
scope {bool x}
    : {$b::x = v;} b2
    ;

b2
    : b3
    ;

b3 
    : {$b::x}?=> ID // only visible, if b was called with True
    | NUM
    ;


/* rule scopes, from the book, final beta, p.148 */

c returns [Map res]
scope {
Map symbols
}
@init {
$c::symbols = new Map();;
}
    : '{' c1* c2+ '}'
        { $res = $c::symbols; }
    ;

c1
    : 'int' ID {$c::symbols[$ID.text] = true;} ';'
    ;

c2
    : ID '=' NUM ';'
        {
            if (!$c::symbols.containsKey($ID.text)) {
                throw new Exception($ID.text);
            }
        }
    ;

/* recursive rule scopes, from the book, final beta, p.150 */

d returns [Map res]
scope {
Map symbols
}
@init {
$d::symbols = new Map();
}
    : '{' d1* d2* '}'
        { $res = $d::symbols; }
    ;

d1
    : 'int' ID {$d::symbols[$ID.text] = true;} ';'
    ;

d2
    : ID '=' NUM ';'
        {
            var i, isDefined = false;
            for (i = $d.length-1; i >= 0; i--) {
	            if ($d[i]::symbols[$ID.text]) {
	                isDefined = true;
	                break;
	            }
            }
            if (!isDefined) {
                throw new Exception("undefined variable \${$ID.text}");
            }
        }
    | d
    ;

/* recursive rule scopes, access bottom-most scope */

e returns [int res]
scope {
int a
}
@after {
$res = $e::a;
}
    : NUM { $e[0]::a = int.parse($NUM.text); }
    | '{' e '}'
    ;


/* recursive rule scopes, access with negative index */

f returns [int res]
scope {
int a
}
@after {
$res = $f::a;
}
    : NUM { var len = $f.length-2; $f[len >= 0 ? len : 0]::a = int.parse($NUM.text); }
    | '{' f '}'
    ;


/* tokens */
ID  :   ('a'..'z')+
    ;

NUM :   ('0'..'9')+
    ;

WS  :   (' '|'\n'|'\r')+ {$channel=HIDDEN;}
    ;
