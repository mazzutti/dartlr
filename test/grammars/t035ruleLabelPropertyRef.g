grammar t035ruleLabelPropertyRef;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

a returns [List bla]: t=b
        {
            $bla = [$t.start, $t.stop, $t.text];
        }
    ;

b: A+;

A: 'a'..'z';

WS: ' '+  { $channel = HIDDEN; };
