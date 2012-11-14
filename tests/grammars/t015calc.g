grammar t015calc;
options {
  language = Dart;
}

@header {
import 'dart:math';
}

evaluate returns [num result]: r=expression {result = r;};

expression returns [num result]: r=mult (
    '+' r2=mult {r += r2;}
  | '-' r2=mult {r -= r2;}
  )* {result = r;};

mult returns [num result]: r=log (
    '*' r2=log {r *= r2;}
  | '/' r2=log {r /= r2;}
  )* {result = r;};

log returns [num result]: 'ln' r=exp {result = log(r);}
    | r=exp {result = r;}
    ;

exp returns [num result]: r=atom ('^' r2=atom {r = pow(r,r2);} )? {result = r;}
    ;

atom returns [num result]:
    n=INTEGER {result = int.parse($n.text);}
  | n=DECIMAL {result = double.parse($n.text);} 
  | '(' r=expression {result = r;} ')'
  | 'PI' {result = PI;}
  | 'E' {result = E;}
  ;

INTEGER: DIGIT+;

DECIMAL: DIGIT+ '.' DIGIT+;

fragment
DIGIT: '0'..'9';

WS: (' ' | '\n' | '\t')+ {$channel = HIDDEN;};
