lexer grammar t040bug80; 
options {
  language = Dart;
}

@header{part of dartlr_tests;}
 
ID_LIKE
    : 'defined' 
    | {false}? Identifier 
    | Identifier 
    ; 
 
fragment 
Identifier: 'a'..'z'+ ; // with just 'a', output compiles 
