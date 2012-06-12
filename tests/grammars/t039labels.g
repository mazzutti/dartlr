grammar t039labels;
options {
  language = Dart;
}

a returns [List l]
    : ids+=A ( ',' ids+=(A|B) )* C D w=. ids+=. F EOF
        { l = [$ids, $w]; }
    ;

A: 'a'..'z';
B: '0'..'9';
C: a='A';
D: a='FOOBAR';
E: 'GNU' a=.;
F: 'BLARZ' a=EOF;

WS: ' '+  {$channel = HIDDEN;};
