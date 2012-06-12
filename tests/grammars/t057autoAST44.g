grammar t057autoAST44;
options {language=Dart;output=AST;}
a returns [String result] : ID b {
$result = "\${$b.i.toString()}\n";
} ;
b returns [int i] : INT {$i=Math.parseInt($INT.text);} ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
