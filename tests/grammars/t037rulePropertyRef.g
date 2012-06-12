grammar t037rulePropertyRef;
options {
  language = Dart;
}

a returns [List bla]
@after {
    $bla = [$start, $stop, $text];
}
    : A+
    ;

A: 'a'..'z';

WS: ' '+  { $channel = HIDDEN;};
