// $ANTLR 3.4 t015calcParser.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t015calcParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "DECIMAL", "DIGIT", "INTEGER", 
    "WS", "'('", "')'", "'*'", "'+'", "'-'", "'/'", "'E'", "'PI'", "'^'", 
    "'ln'"
  ];

  static final int EOF = -1;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int T__11 = 11;
  static final int T__12 = 12;
  static final int T__13 = 13;
  static final int T__14 = 14;
  static final int T__15 = 15;
  static final int T__16 = 16;
  static final int T__17 = 17;
  static final int DECIMAL = 4;
  static final int DIGIT = 5;
  static final int INTEGER = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      



  t015calcParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
  }



  t015calcParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    
  }    

  List<String> get tokenNames() => t015calcParser._tokenNames;

  String get grammarFileName() => "t015calc.g";

  String getRecognizerClassName() => "t015calcParser";


  // $ANTLR start "evaluate"
  /* ../runtime/dart/tests/grammars/t015calc.g:
   6:1: evaluate returns [num result] : r= expression ;*/
  num evaluate() {
    num result = null;


    num r =null;


    try {
      /* ../runtime/dart/tests/grammars/t015calc.g:
       6:30: (r= expression )*/
      /* ../runtime/dart/tests/grammars/t015calc.g:
       6:32: r= expression*/
      {
      	this.pushFollow(FOLLOW_expression_in_evaluate28);
      	r = this.expression();

      	this.state.fsp--;


      	result = r;


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return result;
  }
  // $ANTLR end "evaluate"


  // $ANTLR start "expression"
  /* ../runtime/dart/tests/grammars/t015calc.g:
   8:1: expression returns [num result] : r= mult ( '+' r2= mult | 
   '-' r2= mult )* ;*/
  num expression() {
    num result = null;


    num r =null;

    num r2 =null;


    try {
      /* ../runtime/dart/tests/grammars/t015calc.g:
       8:32: (r= mult ( '+' r2= mult | '-' r2= mult )* )*/
      /* ../runtime/dart/tests/grammars/t015calc.g:
       8:34: r= mult ( '+' r2= mult | '-' r2= mult )**/
      {
      	this.pushFollow(FOLLOW_mult_in_expression43);
      	r = this.mult();

      	this.state.fsp--;


      	/* ../runtime/dart/tests/grammars/t015calc.g:
      	 8:41: ( '+' r2= mult | '-' r2= mult )**/
      	loop1:
      	do {
      	  int alt1 = 3;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 11/*11*/)) {
      	    alt1 = 1;
      	  }
      	  else if((LA1_0 == 12/*12*/)) {
      	    alt1 = 2;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t015calc.g:
      			   9:5: '+' r2= mult*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    11,FOLLOW_11_in_expression51); 


      			  	this.pushFollow(FOLLOW_mult_in_expression55);
      			  	r2 = this.mult();

      			  	this.state.fsp--;


      			  	r += r2;


      			  }
      			  break;
      			case 2 :
      			  /* ../runtime/dart/tests/grammars/t015calc.g:
      			   10:5: '-' r2= mult*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    12,FOLLOW_12_in_expression63); 


      			  	this.pushFollow(FOLLOW_mult_in_expression67);
      			  	r2 = this.mult();

      			  	this.state.fsp--;


      			  	r -= r2;


      			  }
      			  break;

      			default :
      		    break loop1;
      	  }
      	} while(true);


      	result = r;


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return result;
  }
  // $ANTLR end "expression"


  // $ANTLR start "mult"
  /* ../runtime/dart/tests/grammars/t015calc.g:
   13:1: mult returns [num result] : r= log ( '*' r2= log | '/' r2= log )* ;*/
  num mult() {
    num result = null;


    num r =null;

    num r2 =null;


    try {
      /* ../runtime/dart/tests/grammars/t015calc.g:
       13:26: (r= log ( '*' r2= log | '/' r2= log )* )*/
      /* ../runtime/dart/tests/grammars/t015calc.g:
       13:28: r= log ( '*' r2= log | '/' r2= log )**/
      {
      	this.pushFollow(FOLLOW_log_in_mult89);
      	r = this.log();

      	this.state.fsp--;


      	/* ../runtime/dart/tests/grammars/t015calc.g:
      	 13:34: ( '*' r2= log | '/' r2= log )**/
      	loop2:
      	do {
      	  int alt2 = 3;
      	  int LA2_0 = this.input.LA(1);

      	  if((LA2_0 == 10/*10*/)) {
      	    alt2 = 1;
      	  }
      	  else if((LA2_0 == 13/*13*/)) {
      	    alt2 = 2;
      	  }


      	  switch (alt2) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t015calc.g:
      			   14:5: '*' r2= log*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    10,FOLLOW_10_in_mult97); 


      			  	this.pushFollow(FOLLOW_log_in_mult101);
      			  	r2 = this.log();

      			  	this.state.fsp--;


      			  	r *= r2;


      			  }
      			  break;
      			case 2 :
      			  /* ../runtime/dart/tests/grammars/t015calc.g:
      			   15:5: '/' r2= log*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    13,FOLLOW_13_in_mult109); 


      			  	this.pushFollow(FOLLOW_log_in_mult113);
      			  	r2 = this.log();

      			  	this.state.fsp--;


      			  	r /= r2;


      			  }
      			  break;

      			default :
      		    break loop2;
      	  }
      	} while(true);


      	result = r;


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return result;
  }
  // $ANTLR end "mult"


  // $ANTLR start "log"
  /* ../runtime/dart/tests/grammars/t015calc.g:
   18:1: log returns [num result] : ( 'ln' r= exp |r= exp );*/
  num log() {
    num result = null;


    num r =null;


    try {
      /* ../runtime/dart/tests/grammars/t015calc.g: 
       18:25: ( 'ln' r= exp |r= exp )*/
      int alt3 = 2;
      int LA3_0 = this.input.LA(1);

      if((LA3_0 == 17/*17*/)) {
        alt3 = 1;
      }
      else if((LA3_0 == 4/*DECIMAL*/
        || LA3_0 == 6/*INTEGER*/
        || LA3_0 == 8/*8*/
        || (LA3_0 >= 14 && LA3_0 <= 15))) {
        alt3 = 2;
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 3, 0, this.input);

        throw nvae;

      }
      switch (alt3) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t015calc.g:
           18:27: 'ln' r= exp*/
          {
          	this.matchSymbol(this.input,
          	    17,FOLLOW_17_in_log133); 


          	this.pushFollow(FOLLOW_exp_in_log137);
          	r = this.exp();

          	this.state.fsp--;


          	result = Math.log(r);


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t015calc.g:
           19:7: r= exp*/
          {
          	this.pushFollow(FOLLOW_exp_in_log149);
          	r = this.exp();

          	this.state.fsp--;


          	result = r;


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
  	return result;
  }
  // $ANTLR end "log"


  // $ANTLR start "exp"
  /* ../runtime/dart/tests/grammars/t015calc.g:
   22:1: exp returns [num result] : r= atom ( '^' r2= atom )? ;*/
  num exp() {
    num result = null;


    num r =null;

    num r2 =null;


    try {
      /* ../runtime/dart/tests/grammars/t015calc.g:
       22:25: (r= atom ( '^' r2= atom )? )*/
      /* ../runtime/dart/tests/grammars/t015calc.g:
       22:27: r= atom ( '^' r2= atom )?*/
      {
      	this.pushFollow(FOLLOW_atom_in_exp169);
      	r = this.atom();

      	this.state.fsp--;


      	/* ../runtime/dart/tests/grammars/t015calc.g:
      	 22:34: ( '^' r2= atom )?*/
      	int alt4 = 2;
      	int LA4_0 = this.input.LA(1);

      	if((LA4_0 == 16/*16*/)) {
      	  alt4 = 1;
      	}
      	switch (alt4) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t015calc.g:
      	     22:35: '^' r2= atom*/
      	    {
      	    	this.matchSymbol(this.input,
      	    	    16,FOLLOW_16_in_exp172); 


      	    	this.pushFollow(FOLLOW_atom_in_exp176);
      	    	r2 = this.atom();

      	    	this.state.fsp--;


      	    	r = Math.pow(r,r2);


      	    }
      	    break;

      	}


      	result = r;


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return result;
  }
  // $ANTLR end "exp"


  // $ANTLR start "atom"
  /* ../runtime/dart/tests/grammars/t015calc.g:
   25:1: atom returns [num result] : (n= INTEGER |n= DECIMAL | '(' r= expression ')' | 
   'PI' | 'E' );*/
  num atom() {
    num result = null;


    Token n = null;
    num r =null;


    try {
      /* ../runtime/dart/tests/grammars/t015calc.g: 
       25:26: (n= INTEGER |n= DECIMAL | '(' r= expression ')' | 'PI' | 'E' )*/
      int alt5 = 5;
      switch(this.input.LA(1)) {
      case INTEGER:
        {
        alt5 = 1;
        }
        break;
      case DECIMAL:
        {
        alt5 = 2;
        }
        break;
      case 8:
        {
        alt5 = 3;
        }
        break;
      case 15:
        {
        alt5 = 4;
        }
        break;
      case 14:
        {
        alt5 = 5;
        }
        break;
      default:
        NoViableAltException nvae =
            new NoViableAltException("", 5, 0, this.input);

        throw nvae;

      }

      switch (alt5) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t015calc.g:
           26:5: n= INTEGER*/
          {
          	n = this.matchSymbol(this.input,
          	    INTEGER,FOLLOW_INTEGER_in_atom205); 


          	result = Math.parseInt((n != null) ? n.text : null);


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t015calc.g:
           27:5: n= DECIMAL*/
          {
          	n = this.matchSymbol(this.input,
          	    DECIMAL,FOLLOW_DECIMAL_in_atom215); 


          	result = Math.parseDouble((n != null) ? n.text : null);


          }
          break;
        case 3 :
          /* ../runtime/dart/tests/grammars/t015calc.g:
           28:5: '(' r= expression ')'*/
          {
          	this.matchSymbol(this.input,
          	    8,FOLLOW_8_in_atom224); 


          	this.pushFollow(FOLLOW_expression_in_atom228);
          	r = this.expression();

          	this.state.fsp--;


          	result = r;


          	this.matchSymbol(this.input,
          	    9,FOLLOW_9_in_atom232); 


          }
          break;
        case 4 :
          /* ../runtime/dart/tests/grammars/t015calc.g:
           29:5: 'PI'*/
          {
          	this.matchSymbol(this.input,
          	    15,FOLLOW_15_in_atom238); 


          	result = Math.PI;


          }
          break;
        case 5 :
          /* ../runtime/dart/tests/grammars/t015calc.g:
           30:5: 'E'*/
          {
          	this.matchSymbol(this.input,
          	    14,FOLLOW_14_in_atom246); 


          	result = Math.E;


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
  	return result;
  }
  // $ANTLR end "atom"



 

  static BitSet _FOLLOW_expression_in_evaluate28 = null;
  static BitSet get FOLLOW_expression_in_evaluate28() {
    if(_FOLLOW_expression_in_evaluate28 == null) 
      _FOLLOW_expression_in_evaluate28 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_expression_in_evaluate28;
  }

  static BitSet _FOLLOW_mult_in_expression43 = null;
  static BitSet get FOLLOW_mult_in_expression43() {
    if(_FOLLOW_mult_in_expression43 == null) 
      _FOLLOW_mult_in_expression43 = 
        new BitSet.fromList([0x0000000000001802]);
    return _FOLLOW_mult_in_expression43;
  }

  static BitSet _FOLLOW_11_in_expression51 = null;
  static BitSet get FOLLOW_11_in_expression51() {
    if(_FOLLOW_11_in_expression51 == null) 
      _FOLLOW_11_in_expression51 = 
        new BitSet.fromList([0x000000000002C150]);
    return _FOLLOW_11_in_expression51;
  }

  static BitSet _FOLLOW_mult_in_expression55 = null;
  static BitSet get FOLLOW_mult_in_expression55() {
    if(_FOLLOW_mult_in_expression55 == null) 
      _FOLLOW_mult_in_expression55 = 
        new BitSet.fromList([0x0000000000001802]);
    return _FOLLOW_mult_in_expression55;
  }

  static BitSet _FOLLOW_12_in_expression63 = null;
  static BitSet get FOLLOW_12_in_expression63() {
    if(_FOLLOW_12_in_expression63 == null) 
      _FOLLOW_12_in_expression63 = 
        new BitSet.fromList([0x000000000002C150]);
    return _FOLLOW_12_in_expression63;
  }

  static BitSet _FOLLOW_mult_in_expression67 = null;
  static BitSet get FOLLOW_mult_in_expression67() {
    if(_FOLLOW_mult_in_expression67 == null) 
      _FOLLOW_mult_in_expression67 = 
        new BitSet.fromList([0x0000000000001802]);
    return _FOLLOW_mult_in_expression67;
  }

  static BitSet _FOLLOW_log_in_mult89 = null;
  static BitSet get FOLLOW_log_in_mult89() {
    if(_FOLLOW_log_in_mult89 == null) 
      _FOLLOW_log_in_mult89 = 
        new BitSet.fromList([0x0000000000002402]);
    return _FOLLOW_log_in_mult89;
  }

  static BitSet _FOLLOW_10_in_mult97 = null;
  static BitSet get FOLLOW_10_in_mult97() {
    if(_FOLLOW_10_in_mult97 == null) 
      _FOLLOW_10_in_mult97 = 
        new BitSet.fromList([0x000000000002C150]);
    return _FOLLOW_10_in_mult97;
  }

  static BitSet _FOLLOW_log_in_mult101 = null;
  static BitSet get FOLLOW_log_in_mult101() {
    if(_FOLLOW_log_in_mult101 == null) 
      _FOLLOW_log_in_mult101 = 
        new BitSet.fromList([0x0000000000002402]);
    return _FOLLOW_log_in_mult101;
  }

  static BitSet _FOLLOW_13_in_mult109 = null;
  static BitSet get FOLLOW_13_in_mult109() {
    if(_FOLLOW_13_in_mult109 == null) 
      _FOLLOW_13_in_mult109 = 
        new BitSet.fromList([0x000000000002C150]);
    return _FOLLOW_13_in_mult109;
  }

  static BitSet _FOLLOW_log_in_mult113 = null;
  static BitSet get FOLLOW_log_in_mult113() {
    if(_FOLLOW_log_in_mult113 == null) 
      _FOLLOW_log_in_mult113 = 
        new BitSet.fromList([0x0000000000002402]);
    return _FOLLOW_log_in_mult113;
  }

  static BitSet _FOLLOW_17_in_log133 = null;
  static BitSet get FOLLOW_17_in_log133() {
    if(_FOLLOW_17_in_log133 == null) 
      _FOLLOW_17_in_log133 = 
        new BitSet.fromList([0x000000000000C150]);
    return _FOLLOW_17_in_log133;
  }

  static BitSet _FOLLOW_exp_in_log137 = null;
  static BitSet get FOLLOW_exp_in_log137() {
    if(_FOLLOW_exp_in_log137 == null) 
      _FOLLOW_exp_in_log137 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_exp_in_log137;
  }

  static BitSet _FOLLOW_exp_in_log149 = null;
  static BitSet get FOLLOW_exp_in_log149() {
    if(_FOLLOW_exp_in_log149 == null) 
      _FOLLOW_exp_in_log149 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_exp_in_log149;
  }

  static BitSet _FOLLOW_atom_in_exp169 = null;
  static BitSet get FOLLOW_atom_in_exp169() {
    if(_FOLLOW_atom_in_exp169 == null) 
      _FOLLOW_atom_in_exp169 = 
        new BitSet.fromList([0x0000000000010002]);
    return _FOLLOW_atom_in_exp169;
  }

  static BitSet _FOLLOW_16_in_exp172 = null;
  static BitSet get FOLLOW_16_in_exp172() {
    if(_FOLLOW_16_in_exp172 == null) 
      _FOLLOW_16_in_exp172 = 
        new BitSet.fromList([0x000000000000C150]);
    return _FOLLOW_16_in_exp172;
  }

  static BitSet _FOLLOW_atom_in_exp176 = null;
  static BitSet get FOLLOW_atom_in_exp176() {
    if(_FOLLOW_atom_in_exp176 == null) 
      _FOLLOW_atom_in_exp176 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_atom_in_exp176;
  }

  static BitSet _FOLLOW_INTEGER_in_atom205 = null;
  static BitSet get FOLLOW_INTEGER_in_atom205() {
    if(_FOLLOW_INTEGER_in_atom205 == null) 
      _FOLLOW_INTEGER_in_atom205 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INTEGER_in_atom205;
  }

  static BitSet _FOLLOW_DECIMAL_in_atom215 = null;
  static BitSet get FOLLOW_DECIMAL_in_atom215() {
    if(_FOLLOW_DECIMAL_in_atom215 == null) 
      _FOLLOW_DECIMAL_in_atom215 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_DECIMAL_in_atom215;
  }

  static BitSet _FOLLOW_8_in_atom224 = null;
  static BitSet get FOLLOW_8_in_atom224() {
    if(_FOLLOW_8_in_atom224 == null) 
      _FOLLOW_8_in_atom224 = 
        new BitSet.fromList([0x000000000002C150]);
    return _FOLLOW_8_in_atom224;
  }

  static BitSet _FOLLOW_expression_in_atom228 = null;
  static BitSet get FOLLOW_expression_in_atom228() {
    if(_FOLLOW_expression_in_atom228 == null) 
      _FOLLOW_expression_in_atom228 = 
        new BitSet.fromList([0x0000000000000200]);
    return _FOLLOW_expression_in_atom228;
  }

  static BitSet _FOLLOW_9_in_atom232 = null;
  static BitSet get FOLLOW_9_in_atom232() {
    if(_FOLLOW_9_in_atom232 == null) 
      _FOLLOW_9_in_atom232 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_9_in_atom232;
  }

  static BitSet _FOLLOW_15_in_atom238 = null;
  static BitSet get FOLLOW_15_in_atom238() {
    if(_FOLLOW_15_in_atom238 == null) 
      _FOLLOW_15_in_atom238 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_15_in_atom238;
  }

  static BitSet _FOLLOW_14_in_atom246 = null;
  static BitSet get FOLLOW_14_in_atom246() {
    if(_FOLLOW_14_in_atom246 == null) 
      _FOLLOW_14_in_atom246 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_14_in_atom246;
  }



 }




