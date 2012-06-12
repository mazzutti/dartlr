// $ANTLR 3.4 t024finallyParser.g 2012-06-07 21:59:50
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t024finallyParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t024finallyParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t024finallyParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t024finallyParser._tokenNames;

  String get grammarFileName() => "t024finally.g";

  String getRecognizerClassName() => "t024finallyParser";


  // $ANTLR start "prog"
  /* ../runtime/dart/tests/grammars/t024finally.g:
   7:1: prog returns [List events] : ID ;*/
  List prog() {
    List events = null;


    events = new List();
    try {
      /* ../runtime/dart/tests/grammars/t024finally.g:
       10:5: ( ID )*/
      /* ../runtime/dart/tests/grammars/t024finally.g:
       10:9: ID*/
      {
      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_prog40); 


      	throw new Exception("quux");


      }

      events.add('after');

    }
    catch (var e) {
      events.add('catch');
    }

  	finally {
  	  // do for sure before leaving
      events.add('finally');
  	}
  	return events;
  }
  // $ANTLR end "prog"



 

  static BitSet _FOLLOW_ID_in_prog40 = null;
  static BitSet get FOLLOW_ID_in_prog40() {
    if(_FOLLOW_ID_in_prog40 == null) 
      _FOLLOW_ID_in_prog40 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_prog40;
  }



 }




