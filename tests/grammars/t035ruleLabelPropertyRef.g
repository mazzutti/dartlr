grammar t035ruleLabelPropertyRef;
options {
  language = Dart;
}

a returns [List bla]: t=b
        {
            $bla = [$t.start, $t.stop, $t.text];
        }
    ;

b: A+;

A: 'a'..'z';

WS: ' '+  { $channel = HIDDEN; };
