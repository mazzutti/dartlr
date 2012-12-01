// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

grammar Dart;

options {
  language = Dart;
  backtrack = true;
  memoize = true;
  output = AST;
}


// -----------------------------------------------------------------
// Keyword definitions.
// -----------------------------------------------------------------
tokens {
  BREAK      = 'break';
  CASE       = 'case';
  CATCH      = 'catch';
  CONST      = 'const';
  CONTINUE   = 'continue';
  DEFAULT    = 'default';
  DO         = 'do';
  ELSE       = 'else';
  FALSE      = 'false';
  FINAL      = 'final';
  FINALLY    = 'finally';
  FOR        = 'for';
  IF         = 'if';
  IN         = 'in';
  NEW        = 'new';
  NULL       = 'null';
  RETURN     = 'return';
  SUPER      = 'super';
  SWITCH     = 'switch';
  THIS       = 'this';
  THROW      = 'throw';
  TRUE       = 'true';
  TRY        = 'try';
  VAR        = 'var';
  VOID       = 'void';
  WHILE      = 'while';

  // Pseudo-keywords that should also be valid identifiers.
  ABSTRACT   = 'abstract';
  ASSERT     = 'assert';
  CLASS      = 'class';
  EXTENDS    = 'extends';
  FACTORY    = 'factory';
  GET        = 'get';
  IMPLEMENTS = 'implements';
  IMPORT     = 'import';
  INTERFACE  = 'interface';
  IS         = 'is';
  LIBRARY    = 'library';
  NATIVE     = 'native';
  NEGATE     = 'negate';
  OPERATOR   = 'operator';
  SET        = 'set';
  SOURCE     = 'source';
  STATIC     = 'static';
  TYPEDEF    = 'typedef';
}

@lexer::header{part of dartlr_samples;}
@parser::header{part of dartlr_samples;}

@lexer::members {
bool hasErrors = false;

String getErrorHeader(RecognitionException exception) {
  String sourceName = this._input.sourceName;
  if (sourceName == null) {
    sourceName = "<unknown source>";
  }
  return "sourceName:\${exception.line}:\${(exception.charPositionInLine + 1)}:";
}

void reportError(RecognitionException exception, [st=null]) {
  this.hasErrors = true;
  super.reportError(exception, st);
}

// Disable single token insertion and deletion, see:
// http://www.antlr.org/wiki/display/ANTLR3/Error+reporting+and+recovery
Object _recoverFromMismatchedToken(IntStream input,
                                              int ttype,
                                              BitSet follow)
{
    throw new MismatchedTokenException(ttype, input);
}

void _error(String message) {
  this.hasErrors = true;
  int line = state.tokenStartLine;
  int column = state.tokenStartCharPositionInLine;
  String sourceName = this._input.sourceName;
  if (sourceName == null) {
    sourceName = "<unknown source>";
  }
  this.emitErrorMessage("sourceName:\${line}:\${(column + 1)}:\${message}");
}
}

@members {
bool hasErrors = false;

bool _parseFunctionExpressions = true;

bool _setParseFunctionExpressions(bool value) {
 bool old = this._parseFunctionExpressions;
 this._parseFunctionExpressions = value;
 return old;
}

String getErrorHeader(RecognitionException exception) {
  String sourceName = this._input.sourceName;
  if (sourceName == null) {
    sourceName = "<unknown source>";
  }
  return "sourceName:\${exception.line}:\${(exception.charPositionInLine + 1)}:";
}

void reportError(RecognitionException exception, [st=null]) {
  this.hasErrors = true;
  super.reportError(exception, st);
}

// Disable single token insertion and deletion, see:
// http://www.antlr.org/wiki/display/ANTLR3/Error+reporting+and+recovery
Object _recoverFromMismatchedToken(IntStream input,
                                              int ttype,
                                              BitSet follow)
{
  throw new MismatchedTokenException(ttype, input);
}

Token _firstHiddenToken() {
  Token token = this._input.LT(1); // The next token.
  int index = token.tokenIndex - 1; // The previous token.
  if (index >= 0) {
    token = this._input.at(index);
  }
  // Skip whitespace, comments, etc.
  while ((index > 0) && (token.channel == Token.HIDDEN_CHANNEL)) {
    token = this.input.at(--index);
  }
  return this.input.at(index + 1);
}

void _emitMessage(Token token, String message) {
  int line = token.line;
  int column = token.charPositionInLine;
  String sourceName = this.input.sourceName;
  if (sourceName == null) {
    sourceName = "<unknown source>";
  }
  this.emitErrorMessage("sourceName:\${line}:\${(column + 1)}:\${message}");
}

void _warning(Token token, String message) {
  this._emitMessage(token, "warning: \${message}");
}

void _legacy(Token token, String message) {
  this._warning(token, message);
}

void _semicolon() {
  this._error(null, "missing ';'");
}

void _error(Token token, String message) {
  if (token == null) {
    token = this._firstHiddenToken();
  }
  this.hasErrors = true;
  this._emitMessage(token, message);
}
}

// -----------------------------------------------------------------
// Grammar productions.
// -----------------------------------------------------------------
compilationUnit
    : HASHBANG? directive* topLevelDefinition* EOF
    ;

directive
    : '#' identifier arguments ';'
    ;

topLevelDefinition
    : (CLASS)=> classDefinition
    | (INTERFACE)=> interfaceDefinition
    | (TYPEDEF)=> functionTypeAlias
    | functionDeclaration functionBodyOrNative
    | returnType? getOrSet identifier formalParameterList functionBodyOrNative
    | FINAL type? staticFinalDeclarationList ';'
    | constInitializedVariableDeclaration ';'
    ;

classDefinition
    : CLASS identifier typeParameters? superclass? interfaces?
      '{' classMemberDefinition* '}'
    | CLASS identifier typeParameters? interfaces? NATIVE STRING
      '{' classMemberDefinition* '}'
      { this._warning($start, "DartC: native can only be used in platform code"); }
    ;

typeParameter
    : identifier (EXTENDS type)?
    ;

typeParameters
    : '<' typeParameter (',' typeParameter)* '>'
    ;

superclass
    : EXTENDS type
    ;

interfaces
    : IMPLEMENTS typeList
    ;

superinterfaces
    : EXTENDS typeList
    ;

// This rule is organized in a way that may not be most readable, but
// gives the best error messages.
classMemberDefinition
    : declaration ';'
    | constructorDeclaration ';'
    | methodDeclaration functionBodyOrNative
    | CONST factoryConstructorDeclaration functionNative
    ;

functionBodyOrNative
    : NATIVE functionBody
      { this._warning($start, "native function with body only works on DartC"); }
    | functionNative
    | functionBody
    ;

functionNative
    : NATIVE STRING? ';'
      { this._warning($start, "native can only be used in platform code"); }
    ;

// A method, operator, or constructor (which all should be followed by
// a block of code).
methodDeclaration
    : factoryConstructorDeclaration
    | STATIC functionDeclaration
    | specialSignatureDefinition
    | functionDeclaration initializers?
    | namedConstructorDeclaration initializers?
    ;

// An abstract method/operator, a field, or const constructor (which
// all should be followed by a semicolon).
declaration
    : constantConstructorDeclaration (redirection | initializers)?
    | functionDeclaration redirection
    | namedConstructorDeclaration redirection
    | ABSTRACT specialSignatureDefinition
    | ABSTRACT functionDeclaration
    | STATIC FINAL type? staticFinalDeclarationList
    | STATIC? constInitializedVariableDeclaration
    ;

initializers
    : ':' superCallOrFieldInitializer (',' superCallOrFieldInitializer)*
    ;

redirection
    : ':' THIS ('.' identifier)? arguments
    ;

fieldInitializer
@init { bool old = this._setParseFunctionExpressions(false); }
    : (THIS '.')? identifier '=' conditionalExpression
    ;
finally { this._setParseFunctionExpressions(old); }

superCallOrFieldInitializer
    : SUPER arguments
    | SUPER '.' identifier arguments
    | fieldInitializer
    ;

staticFinalDeclarationList
    : staticFinalDeclaration (',' staticFinalDeclaration)*
    ;

staticFinalDeclaration
    : identifier '=' constantExpression
    ;

interfaceDefinition
    : INTERFACE identifier typeParameters? superinterfaces?
      factorySpecification? '{' (interfaceMemberDefinition)* '}'
    ;

factorySpecification
   : FACTORY type
   ;

functionTypeAlias
    : TYPEDEF functionPrefix typeParameters? formalParameterList ';'
    ;

interfaceMemberDefinition
    : STATIC FINAL type? initializedIdentifierList ';'
    | functionDeclaration ';'
    | constantConstructorDeclaration ';'
    | namedConstructorDeclaration ';'
    | specialSignatureDefinition ';'
    | variableDeclaration ';'
    ;

factoryConstructorDeclaration
    : FACTORY qualified typeParameters? ('.' identifier)? formalParameterList
    ;

namedConstructorDeclaration
    : identifier '.' identifier formalParameterList
    ;

constructorDeclaration
    : identifier formalParameterList (redirection | initializers)?
    | namedConstructorDeclaration (redirection | initializers)?
    ;

constantConstructorDeclaration
    : CONST qualified formalParameterList
    ;

specialSignatureDefinition
    : STATIC? returnType? getOrSet identifier formalParameterList
    | returnType? OPERATOR userDefinableOperator formalParameterList
    ;

getOrSet
    : GET
    | SET
    ;

userDefinableOperator
    : multiplicativeOperator
    | additiveOperator
    | shiftOperator
    | relationalOperator
    | bitwiseOperator
    | '=='  // Disallow negative and === equality checks.
    | '~'   // Disallow ! operator.
    | NEGATE
    | '[' ']' { '[]' == $text }?
    | '[' ']' '=' { '[]=' == $text }?
    ;

prefixOperator
    : additiveOperator
    | negateOperator
    ;

postfixOperator
    : incrementOperator
    ;

negateOperator
    : '!'
    | '~'
    ;

multiplicativeOperator
    : '*'
    | '/'
    | '%'
    | '~/'
    ;

assignmentOperator
    : '='
    | '*='
    | '/='
    | '~/='
    | '%='
    | '+='
    | '-='
    | '<<='
    | '>' '>' '>' '=' { '>>>=' == $text }?
    | '>' '>' '=' { '>>=' == $text }?
    | '&='
    | '^='
    | '|='
    ;

additiveOperator
    : '+'
    | '-'
    ;

incrementOperator
    : '++'
    | '--'
    ;

shiftOperator
    : '<<'
    | '>' '>' '>' { '>>>' == $text }?
    | '>' '>' { '>>' == $text }?
    ;

relationalOperator
    : '>' '=' { '>=' == $text }?
    | '>'
    | '<='
    | '<'
    ;

equalityOperator
    : '=='
    | '!='
    | '==='
    | '!=='
    ;

bitwiseOperator
    : '&'
    | '^'
    | '|'
    ;

formalParameterList
    : '(' namedFormalParameters? ')'
    | '(' normalFormalParameter normalFormalParameterTail? ')'
    ;

normalFormalParameterTail
    : ',' namedFormalParameters
    | ',' normalFormalParameter normalFormalParameterTail?
    ;

normalFormalParameter
    : functionDeclaration
    | fieldFormalParameter
    | simpleFormalParameter
    ;

simpleFormalParameter
    : declaredIdentifier
    | identifier
    ;

fieldFormalParameter
   : finalVarOrType? THIS '.' identifier
   ;

namedFormalParameters
    : '[' defaultFormalParameter (',' defaultFormalParameter)* ']'
    ;

defaultFormalParameter
    : normalFormalParameter ('=' constantExpression)?
    ;

returnType
    : VOID
    | type
    ;

finalVarOrType
    : FINAL type?
    | VAR
    | type
    ;

// We have to introduce a separate rule for 'declared' identifiers to
// allow ANTLR to decide if the first identifier we encounter after
// final is a type or an identifier. Before this change, we used the
// production 'finalVarOrType identifier' in numerous places.
declaredIdentifier
    : FINAL type? identifier
    | VAR identifier
    | type identifier
    ;

identifier
    : IDENTIFIER_NO_DOLLAR
    | IDENTIFIER
    | ABSTRACT
    | ASSERT
    | CLASS
    | EXTENDS
    | FACTORY
    | GET
    | IMPLEMENTS
    | IMPORT
    | INTERFACE
    | IS
    | LIBRARY
    | NATIVE
    | NEGATE
    | OPERATOR
    | SET
    | SOURCE
    | STATIC
    | TYPEDEF
    ;

qualified
    : identifier ('.' identifier)?
    ;

type
    : qualified typeArguments?
    ;

typeArguments
    : '<' typeList '>'
    ;

typeList
    : type (',' type)*
    ;

block
    : '{' statements '}'
    ;

statements
    : statement*
    ;

statement
    : label* nonLabelledStatement
    ;

nonLabelledStatement
    : ('{')=> block // Guard to break tie with map literal.
    | initializedVariableDeclaration ';'
    | iterationStatement
    | selectionStatement
    | tryStatement
    | BREAK identifier? ';'
    | CONTINUE identifier? ';'
    | RETURN expression? ';'
    | THROW expression? ';'
    | expression? ';'
    | ASSERT '(' conditionalExpression ')' ';'
    | functionDeclaration functionBody
    ;

label
    : identifier ':'
    ;

iterationStatement
    : WHILE '(' expression ')' statement
    | DO statement WHILE '(' expression ')' ';'
    | FOR '(' forLoopParts ')' statement
    ;

forLoopParts
    : forInitializerStatement expression? ';' expressionList?
    | declaredIdentifier IN expression
    | identifier IN expression
    ;

forInitializerStatement
    : initializedVariableDeclaration ';'
    | expression? ';'
    ;

selectionStatement
    : IF '(' expression ')' statement ((ELSE)=> ELSE statement)?
    | SWITCH '(' expression ')' '{' switchCase* defaultCase? '}'
    ;

switchCase
    : label? (CASE expression ':')+ statements
    ;

defaultCase
    : label? (CASE expression ':')* DEFAULT ':' statements
    ;

tryStatement
    : TRY block (catchPart+ finallyPart? | finallyPart)
    ;

catchPart
    : CATCH '(' declaredIdentifier (',' declaredIdentifier)? ')' block
    ;

finallyPart
    : FINALLY block
    ;

variableDeclaration
    : declaredIdentifier (',' identifier)*
    ;

initializedVariableDeclaration
    : declaredIdentifier ('=' expression)? (',' initializedIdentifier)*
    ;

initializedIdentifierList
    : initializedIdentifier (',' initializedIdentifier)*
    ;

initializedIdentifier
    : identifier ('=' expression)?
    ;

constInitializedVariableDeclaration
    : declaredIdentifier ('=' constantExpression)?
      (',' constInitializedIdentifier)*
    ;

constInitializedIdentifier
    : identifier ('=' constantExpression)?
    ;

// The constant expression production is used to mark certain expressions
// as only being allowed to hold a compile-time constant. The grammar cannot
// express these restrictions (yet), so this will have to be enforced by a
// separate analysis phase.
constantExpression
    : expression
    ;

expression
    : assignableExpression assignmentOperator expression
    | conditionalExpression
    ;

expressionList
    : expression (',' expression)*
    ;

arguments
@init { bool old = this._setParseFunctionExpressions(true); }
    : '(' argumentList? ')'
    ;
finally { this._setParseFunctionExpressions(old); }

argumentList
    : namedArgument (',' namedArgument)*
    | expressionList (',' namedArgument)*
    ;

namedArgument
    : label expression
    ;

assignableExpression
    : primary (arguments* assignableSelector)+
    | SUPER assignableSelector
    | identifier
    ;

conditionalExpression
    : logicalOrExpression ('?' expression ':' expression)?
    ;

logicalOrExpression
    : logicalAndExpression ('||' logicalAndExpression)*
    ;

logicalAndExpression
    : bitwiseOrExpression ('&&' bitwiseOrExpression)*
    ;

bitwiseOrExpression
    : bitwiseXorExpression ('|' bitwiseXorExpression)*
    | SUPER ('|' bitwiseXorExpression)+
    ;

bitwiseXorExpression
    : bitwiseAndExpression ('^' bitwiseAndExpression)*
    | SUPER ('^' bitwiseAndExpression)+
    ;

bitwiseAndExpression
    : equalityExpression ('&' equalityExpression)*
    | SUPER ('&' equalityExpression)+
    ;

equalityExpression
    : relationalExpression (equalityOperator relationalExpression)?
    | SUPER equalityOperator relationalExpression
    ;

relationalExpression
    : shiftExpression (isOperator type | relationalOperator shiftExpression)?
    | SUPER relationalOperator shiftExpression
    ;

isOperator
    : IS '!'?
    ;

shiftExpression
    : additiveExpression (shiftOperator additiveExpression)*
    | SUPER (shiftOperator additiveExpression)+
    ;

additiveExpression
    : multiplicativeExpression (additiveOperator multiplicativeExpression)*
    | SUPER (additiveOperator multiplicativeExpression)+
    ;

multiplicativeExpression
    : unaryExpression (multiplicativeOperator unaryExpression)*
    | SUPER (multiplicativeOperator unaryExpression)+
    ;

unaryExpression
    : postfixExpression
    | prefixOperator unaryExpression
    | negateOperator SUPER
    | '-' SUPER  // Invokes the NEGATE operator.
    | incrementOperator assignableExpression
    ;

postfixExpression
    : assignableExpression postfixOperator
    | primary selector*
    ;

selector
    : assignableSelector
    | arguments
    ;

assignableSelector
@init { bool old = this._setParseFunctionExpressions(true); }
    : '[' expression ']'
    | '.' identifier
    ;
finally { this._setParseFunctionExpressions(old); }

primary
    : {!_parseFunctionExpressions}?=> primaryNoFE
    | primaryFE
    ;

primaryFE
    : functionExpression
    | primaryNoFE
    ;

primaryNoFE
    : THIS
    | SUPER assignableSelector
    | literal
    | identifier
    | CONST? typeArguments? compoundLiteral
    | (NEW | CONST) type ('.' identifier)? arguments
    | expressionInParentheses
    ;

expressionInParentheses
@init { bool old = this._setParseFunctionExpressions(true); }
    :'(' expression ')'
    ;
finally { this._setParseFunctionExpressions(old); }

literal
    : NULL
    | TRUE
    | FALSE
    | HEX_NUMBER
    | NUMBER
    | STRING
    ;

compoundLiteral
@init { bool old = this._setParseFunctionExpressions(true); }
    : listLiteral
    | mapLiteral
    ;
finally { this._setParseFunctionExpressions(old); }

// The list literal syntax doesn't allow elided elements, unlike
// in ECMAScript. We do allow a trailing comma.
listLiteral
    : '[' (expressionList ','? ) ? ']'
    ;

mapLiteral
    : '{' (mapLiteralEntry (',' mapLiteralEntry)* ','?)? '}'
    ;

mapLiteralEntry
    : STRING ':' expression
    ;

functionExpression
    : (returnType? identifier)? formalParameterList functionExpressionBody
    ;

functionDeclaration
    : returnType? identifier formalParameterList
    ;

functionPrefix
    : returnType? identifier
    ;

functionBody
    : '=>' expression ';'
    | block
    ;

functionExpressionBody
    : '=>' expression
    | block
    ;

// -----------------------------------------------------------------
// Library files.
// -----------------------------------------------------------------
libraryUnit
    : libraryDefinition EOF
    ;

libraryDefinition
    : LIBRARY '{' libraryBody '}'
    ;

libraryBody
    : libraryImport? librarySource?
    ;

libraryImport
    : IMPORT '=' '[' importReferences? ']'
    ;

importReferences
    : importReference (',' importReference)* ','?
    ;

importReference
    : (IDENTIFIER ':')? STRING
    ;

librarySource
    : SOURCE '=' '[' sourceUrls? ']'
    ;

sourceUrls
    : STRING (',' STRING)* ','?
    ;


// -----------------------------------------------------------------
// Lexical tokens.
// -----------------------------------------------------------------
IDENTIFIER_NO_DOLLAR
    : IDENTIFIER_START_NO_DOLLAR IDENTIFIER_PART_NO_DOLLAR*
    ;

IDENTIFIER
    : IDENTIFIER_START IDENTIFIER_PART*
    ;

HEX_NUMBER
    : '0x' HEX_DIGIT+
    | '0X' HEX_DIGIT+
    ;

NUMBER
    : DIGIT+ NUMBER_OPT_FRACTIONAL_PART EXPONENT? NUMBER_OPT_ILLEGAL_END
    | '.' DIGIT+ EXPONENT? NUMBER_OPT_ILLEGAL_END
    ;

fragment NUMBER_OPT_FRACTIONAL_PART
    : ('.' DIGIT)=> ('.' DIGIT+)
    | // Empty fractional part.
    ;

fragment NUMBER_OPT_ILLEGAL_END
    : (IDENTIFIER_START)=> { this._error("numbers cannot contain identifiers"); }
    | // Empty illegal end (good!).
    ;

fragment HEX_DIGIT
    : 'a'..'f'
    | 'A'..'F'
    | DIGIT
    ;

fragment IDENTIFIER_START
    : IDENTIFIER_START_NO_DOLLAR
    | '\$'
    ;

fragment IDENTIFIER_START_NO_DOLLAR
    : LETTER
    | '_'
    ;

fragment IDENTIFIER_PART_NO_DOLLAR
    : IDENTIFIER_START_NO_DOLLAR
    | DIGIT
    ;

fragment IDENTIFIER_PART
    : IDENTIFIER_START
    | DIGIT
    ;

// Bug 5408613: Should be Unicode characters.
fragment LETTER
    : 'a'..'z'
    | 'A'..'Z'
    ;

fragment DIGIT
    : '0'..'9'
    ;

fragment EXPONENT
    : ('e' | 'E') ('+' | '-')? DIGIT+
    ;

STRING
    : '@'? MULTI_LINE_STRING
    | SINGLE_LINE_STRING
    ;

fragment MULTI_LINE_STRING
options { greedy=false; }
    : '"""' .* '"""'
    | '\'\'\'' .* '\'\'\''
    ;

fragment SINGLE_LINE_STRING
    : '"' STRING_CONTENT_DQ* '"'
    | '\'' STRING_CONTENT_SQ* '\''
    | '@' '\'' (~( '\'' | NEWLINE ))* '\''
    | '@' '"' (~( '"' | NEWLINE ))* '"'
    ;

fragment STRING_CONTENT_DQ
    : ~( '\\' | '"' | NEWLINE )
    | '\\' ~( NEWLINE )
    ;

fragment STRING_CONTENT_SQ
    : ~( '\\' | '\'' | NEWLINE )
    | '\\' ~( NEWLINE )
    ;

fragment NEWLINE
    : '\n'
    | '\r'
    ;

BAD_STRING
    : UNTERMINATED_STRING NEWLINE { this._error("unterminated string"); }
    ;

fragment UNTERMINATED_STRING
    : '@'? '\'' (~( '\'' | NEWLINE ))*
    | '@'? '"' (~( '"' | NEWLINE ))*
    ;

HASHBANG
    : '#!' ~(NEWLINE)* (NEWLINE)?
    ;


// -----------------------------------------------------------------
// Whitespace and comments.
// -----------------------------------------------------------------
WHITESPACE
    : ('\t' | ' ' | NEWLINE)+ { $channel=HIDDEN; }
    ;

SINGLE_LINE_COMMENT
    : '//' ~(NEWLINE)* (NEWLINE)? { $channel=HIDDEN; }
    ;

MULTI_LINE_COMMENT
    : '/*' (options { greedy=false; } : .)* '*/' { $channel=HIDDEN; }
    ;
