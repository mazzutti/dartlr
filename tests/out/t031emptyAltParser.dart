// $ANTLR 3.4 t031emptyAltParser.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t031emptyAltParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "NAME", "NUMBER", "WS"
  ];

  static final int EOF = -1;
  static final int NAME = 4;
  static final int NUMBER = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t031emptyAltParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t031emptyAltParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t031emptyAltParser._tokenNames;

  String get grammarFileName() => "t031emptyAlt.g";

  String getRecognizerClassName() => "t031emptyAltParser";


  bool cond = true;


  // $ANTLR start "r"
  /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
   11:1: r : NAME ({...}? => ( WS )+ NAME |) EOF ;*/
  void r() {
    try {
      /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
       12:5: ( NAME ({...}? => ( WS )+ NAME |) EOF )*/
      /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
       12:7: NAME ({...}? => ( WS )+ NAME |) EOF*/
      {
      	this.matchSymbol(this.input,
      	    NAME,FOLLOW_NAME_in_r34); 


      	/* ../runtime/dart/tests/grammars/t031emptyAlt.g:
      	 13:9: ({...}? => ( WS )+ NAME |)*/
      	int alt2 = 2;
      	int LA2_0 = this.input.LA(1);

      	if((LA2_0 == 6/*WS*/) && ((this.cond))) {
      	  alt2 = 1;
      	}
      	else if((LA2_0 == -1/*EOF*/)) {
      	  alt2 = 2;
      	}
      	else {
      	  NoViableAltException nvae =
      	      new NoViableAltException("", 2, 0, this.input);

      	  throw nvae;

      	}
      	switch (alt2) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
      	     13:11: {...}? => ( WS )+ NAME*/
      	    {
      	    	if(!((this.cond))) {
      	    	  throw new FailedPredicateException(input, "r", @"this.cond");
      	    	}

      	    	/* ../runtime/dart/tests/grammars/t031emptyAlt.g:
      	    	 13:26: ( WS )+*/
      	    	int cnt1 = 0;
      	    	loop1:
      	    	do {
      	    	  int alt1 = 2;
      	    	  int LA1_0 = this.input.LA(1);

      	    	  if((LA1_0 == 6/*WS*/)) {
      	    	    alt1 = 1;
      	    	  }


      	    	  switch (alt1) {
      	    			case 1 :
      	    			  /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
      	    			   13:26: WS*/
      	    			  {
      	    			  	this.matchSymbol(this.input,
      	    			  	    WS,FOLLOW_WS_in_r50); 


      	    			  }
      	    			  break;

      	    			default :
      	    		    if(cnt1 >= 1) break loop1;
      	    	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	    	        throw eee;
      	    	  }
      	    	  cnt1++;
      	    	} while(true);


      	    	this.matchSymbol(this.input,
      	    	    NAME,FOLLOW_NAME_in_r53); 


      	    }
      	    break;
      	  case 2 :
      	    /* ../runtime/dart/tests/grammars/t031emptyAlt.g:
      	     15:9: */
      	    {
      	    }
      	    break;

      	}


      	this.matchSymbol(this.input,
      	    EOF,FOLLOW_EOF_in_r84); 


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
  // $ANTLR end "r"



 

  static BitSet _FOLLOW_NAME_in_r34 = null;
  static BitSet get FOLLOW_NAME_in_r34() {
    if(_FOLLOW_NAME_in_r34 == null) 
      _FOLLOW_NAME_in_r34 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_NAME_in_r34;
  }

  static BitSet _FOLLOW_WS_in_r50 = null;
  static BitSet get FOLLOW_WS_in_r50() {
    if(_FOLLOW_WS_in_r50 == null) 
      _FOLLOW_WS_in_r50 = 
        new BitSet.fromList([0x0000000000000050]);
    return _FOLLOW_WS_in_r50;
  }

  static BitSet _FOLLOW_NAME_in_r53 = null;
  static BitSet get FOLLOW_NAME_in_r53() {
    if(_FOLLOW_NAME_in_r53 == null) 
      _FOLLOW_NAME_in_r53 = 
        new BitSet.fromList([0x0000000000000000]);
    return _FOLLOW_NAME_in_r53;
  }

  static BitSet _FOLLOW_EOF_in_r84 = null;
  static BitSet get FOLLOW_EOF_in_r84() {
    if(_FOLLOW_EOF_in_r84 == null) 
      _FOLLOW_EOF_in_r84 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_EOF_in_r84;
  }



 }




