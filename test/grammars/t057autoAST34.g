grammar t057autoAST34;
options {language=Dart;output=AST;}

@header{part of dartlr_tests;}

a returns [String result] : id=ID id=ID {$result = "2nd id=\${$id.text};";} ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
