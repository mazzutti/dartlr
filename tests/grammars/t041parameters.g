grammar t041parameters;
options {
  language = Dart;
}

a[arg1, arg2] returns [List l]
    : A+ EOF
        { 
            l = [$arg1, $arg2];
            $arg1 = "gnarz";
        }
    ;

A: 'a'..'z';

WS: ' '+  { $channel = HIDDEN;};
