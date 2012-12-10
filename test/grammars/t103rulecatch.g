grammar t103rulecatch;

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
  catch [MismatchedTokenException e] {
  	caughtException = true;
  } 
