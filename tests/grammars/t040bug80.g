lexer grammar t040bug80; 
options {
  language = Dart;
}
 
ID_LIKE
    : 'defined' 
    | {false}? Identifier 
    | Identifier 
    ; 
 
fragment 
Identifier: 'a'..'z'+ ; // with just 'a', output compiles 
