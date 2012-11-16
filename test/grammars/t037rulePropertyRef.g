grammar t037rulePropertyRef;
options {
  language = Dart;
}

@header{part of dartlr_tests;}

a returns [List bla]
@after {
    $bla = [$start, $stop, $text];
}
    : A+
    ;

A: 'a'..'z';

WS: ' '+  { $channel = HIDDEN;};
