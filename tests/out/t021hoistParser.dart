// $ANTLR 3.4 t021hoistParser.g 2012-06-07 21:59:40
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t021hoistParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'enum'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t021hoistParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t021hoistParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t021hoistParser._tokenNames;

  String get grammarFileName() => "t021hoist.g";

  String getRecognizerClassName() => "t021hoistParser";


  bool enableEnum = false;


  // $ANTLR start "stat"
  /* ../runtime/dart/tests/grammars/t021hoist.g:
   11:1: stat returns [String enumIs] : ( identifier | enumAsKeyword );*/
  String stat() {
    String enumIs = null;


    try {
      /* ../runtime/dart/tests/grammars/t021hoist.g: 
       12:5: ( identifier | enumAsKeyword )*/
      int alt1 = 2;
      int LA1_0 = this.input.LA(1);

      if((LA1_0 == 4/*ID*/)) {
        alt1 = 1;
      }
      else if((LA1_0 == 7/*7*/)) {
        int LA1_2 = this.input.LA(2);

        if(((!this.enableEnum))) {
          alt1 = 1;
        }
        else if(((this.enableEnum))) {
          alt1 = 2;
        }
        else {
          NoViableAltException nvae =
              new NoViableAltException("", 1, 2, this.input);

          throw nvae;

        }
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 1, 0, this.input);

        throw nvae;

      }
      switch (alt1) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t021hoist.g:
           12:7: identifier*/
          {
          	this.pushFollow(FOLLOW_identifier_in_stat40);
          	this.identifier();

          	this.state.fsp--;


          	enumIs = "ID";


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t021hoist.g:
           13:7: enumAsKeyword*/
          {
          	this.pushFollow(FOLLOW_enumAsKeyword_in_stat53);
          	this.enumAsKeyword();

          	this.state.fsp--;


          	enumIs = "keyword";


          }
          break;

      }
    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return enumIs;
  }
  // $ANTLR end "stat"


  // $ANTLR start "identifier"
  /* ../runtime/dart/tests/grammars/t021hoist.g:
   16:1: identifier : ( ID | enumAsID );*/
  void identifier() {
    try {
      /* ../runtime/dart/tests/grammars/t021hoist.g: 
       17:5: ( ID | enumAsID )*/
      int alt2 = 2;
      int LA2_0 = this.input.LA(1);

      if((LA2_0 == 4/*ID*/)) {
        alt2 = 1;
      }
      else if((LA2_0 == 7/*7*/)) {
        alt2 = 2;
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 2, 0, this.input);

        throw nvae;

      }
      switch (alt2) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t021hoist.g:
           17:7: ID*/
          {
          	this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_identifier72); 


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t021hoist.g:
           18:7: enumAsID*/
          {
          	this.pushFollow(FOLLOW_enumAsID_in_identifier80);
          	this.enumAsID();

          	this.state.fsp--;


          }
          break;

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
  // $ANTLR end "identifier"


  // $ANTLR start "enumAsKeyword"
  /* ../runtime/dart/tests/grammars/t021hoist.g:
   21:1: enumAsKeyword :{...}? 'enum' ;*/
  void enumAsKeyword() {
    try {
      /* ../runtime/dart/tests/grammars/t021hoist.g:
       21:15: ({...}? 'enum' )*/
      /* ../runtime/dart/tests/grammars/t021hoist.g:
       21:17: {...}? 'enum'*/
      {
      	if(!((this.enableEnum))) {
      	  throw new FailedPredicateException(input, "enumAsKeyword", @"this.enableEnum");
      	}

      	this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_enumAsKeyword95); 


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
  // $ANTLR end "enumAsKeyword"


  // $ANTLR start "enumAsID"
  /* ../runtime/dart/tests/grammars/t021hoist.g:
   23:1: enumAsID :{...}? 'enum' ;*/
  void enumAsID() {
    try {
      /* ../runtime/dart/tests/grammars/t021hoist.g:
       23:10: ({...}? 'enum' )*/
      /* ../runtime/dart/tests/grammars/t021hoist.g:
       23:12: {...}? 'enum'*/
      {
      	if(!((!this.enableEnum))) {
      	  throw new FailedPredicateException(input, "enumAsID", @"!this.enableEnum");
      	}

      	this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_enumAsID106); 


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
  // $ANTLR end "enumAsID"



 

  static BitSet _FOLLOW_identifier_in_stat40 = null;
  static BitSet get FOLLOW_identifier_in_stat40() {
    if(_FOLLOW_identifier_in_stat40 == null) 
      _FOLLOW_identifier_in_stat40 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_identifier_in_stat40;
  }

  static BitSet _FOLLOW_enumAsKeyword_in_stat53 = null;
  static BitSet get FOLLOW_enumAsKeyword_in_stat53() {
    if(_FOLLOW_enumAsKeyword_in_stat53 == null) 
      _FOLLOW_enumAsKeyword_in_stat53 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_enumAsKeyword_in_stat53;
  }

  static BitSet _FOLLOW_ID_in_identifier72 = null;
  static BitSet get FOLLOW_ID_in_identifier72() {
    if(_FOLLOW_ID_in_identifier72 == null) 
      _FOLLOW_ID_in_identifier72 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_identifier72;
  }

  static BitSet _FOLLOW_enumAsID_in_identifier80 = null;
  static BitSet get FOLLOW_enumAsID_in_identifier80() {
    if(_FOLLOW_enumAsID_in_identifier80 == null) 
      _FOLLOW_enumAsID_in_identifier80 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_enumAsID_in_identifier80;
  }

  static BitSet _FOLLOW_7_in_enumAsKeyword95 = null;
  static BitSet get FOLLOW_7_in_enumAsKeyword95() {
    if(_FOLLOW_7_in_enumAsKeyword95 == null) 
      _FOLLOW_7_in_enumAsKeyword95 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_enumAsKeyword95;
  }

  static BitSet _FOLLOW_7_in_enumAsID106 = null;
  static BitSet get FOLLOW_7_in_enumAsID106() {
    if(_FOLLOW_7_in_enumAsID106 == null) 
      _FOLLOW_7_in_enumAsID106 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_enumAsID106;
  }



 }




