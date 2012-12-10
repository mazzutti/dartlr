grammar t104rulecatch;

options {
  language = Dart;
  output = AST;
}

@header {part of dartlr_tests;}

@parser::members {
   bool caughtException = false;
}

ABC: 'abc';

prog
  : ABC EOF
  ;
  catch [ArgumentError e] {  
  }
  catch [e] {
  	caughtException = true;
  } 
