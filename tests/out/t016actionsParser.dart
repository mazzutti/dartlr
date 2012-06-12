// $ANTLR 3.4 t016actionsParser.g 2012-06-07 21:59:46
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t016actionsParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "WS", "';'", "'char'", 
    "'int'", "'void'"
  ];

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int ID = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t016actionsParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t016actionsParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t016actionsParser._tokenNames;

  String get grammarFileName() => "t016actions.g";

  String getRecognizerClassName() => "t016actionsParser";


  // $ANTLR start "declaration"
  /* ../runtime/dart/tests/grammars/t016actions.g:
   6:1: declaration returns [String name] : functionHeader ';' ;*/
  String declaration() {
    String name = null;


    String functionHeader1 =null;


    try {
      /* ../runtime/dart/tests/grammars/t016actions.g:
       7:5: ( functionHeader ';' )*/
      /* ../runtime/dart/tests/grammars/t016actions.g:
       7:9: functionHeader ';'*/
      {
      	this.pushFollow(FOLLOW_functionHeader_in_declaration33);
      	functionHeader1 = this.functionHeader();

      	this.state.fsp--;


      	this.matchSymbol(this.input,
      	    6,FOLLOW_6_in_declaration35); 


      	name =  functionHeader1;


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return name;
  }
  // $ANTLR end "declaration"


  // $ANTLR start "functionHeader"
  /* ../runtime/dart/tests/grammars/t016actions.g:
   11:1: functionHeader returns [String name] : type ID ;*/
  String functionHeader() {
    String name = null;


    Token ID2 = null;

    try {
      /* ../runtime/dart/tests/grammars/t016actions.g:
       12:5: ( type ID )*/
      /* ../runtime/dart/tests/grammars/t016actions.g:
       12:9: type ID*/
      {
      	this.pushFollow(FOLLOW_type_in_functionHeader68);
      	this.type();

      	this.state.fsp--;


      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_functionHeader70); 


      	name =  (ID2 != null) ? ID2.text : null;


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return name;
  }
  // $ANTLR end "functionHeader"


  // $ANTLR start "type"
  /* ../runtime/dart/tests/grammars/t016actions.g:
   16:1: type : ( 'int' | 'char' | 'void' );*/
  void type() {
    try {
      /* ../runtime/dart/tests/grammars/t016actions.g:
       17:5: ( 'int' | 'char' | 'void' )*/
      /* ../runtime/dart/tests/grammars/t016actions.g:
      */
      {
      	if((this.input.LA(1) >= 7 && this.input.LA(1) <= 9)) {
      	  this.input.consume();
      	  this.state.errorRecovery = false;
      	}
      	else {
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return ;
  }
  // $ANTLR end "type"



 

  static BitSet _FOLLOW_functionHeader_in_declaration33 = null;
  static BitSet get FOLLOW_functionHeader_in_declaration33() {
    if(_FOLLOW_functionHeader_in_declaration33 == null) 
      _FOLLOW_functionHeader_in_declaration33 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_functionHeader_in_declaration33;
  }

  static BitSet _FOLLOW_6_in_declaration35 = null;
  static BitSet get FOLLOW_6_in_declaration35() {
    if(_FOLLOW_6_in_declaration35 == null) 
      _FOLLOW_6_in_declaration35 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_6_in_declaration35;
  }

  static BitSet _FOLLOW_type_in_functionHeader68 = null;
  static BitSet get FOLLOW_type_in_functionHeader68() {
    if(_FOLLOW_type_in_functionHeader68 == null) 
      _FOLLOW_type_in_functionHeader68 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_type_in_functionHeader68;
  }

  static BitSet _FOLLOW_ID_in_functionHeader70 = null;
  static BitSet get FOLLOW_ID_in_functionHeader70() {
    if(_FOLLOW_ID_in_functionHeader70 == null) 
      _FOLLOW_ID_in_functionHeader70 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_functionHeader70;
  }



 }




