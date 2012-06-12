// $ANTLR 3.4 t022scopesParser.g 2012-06-07 21:59:45
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t022scopesParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "NUM", "WS", "';'", "'='", 
    "'int'", "'{'", "'}'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int T__11 = 11;
  static final int ID = 4;
  static final int NUM = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      
  List aScope_stack;


  List b_stack;
  List c_stack;
  List d_stack;
  List e_stack;
  List f_stack;


  t022scopesParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.b_stack = new List();
	  this.c_stack = new List();
	  this.d_stack = new List();
	  this.e_stack = new List();
	  this.f_stack = new List();

	  this.aScope_stack = new List();
  }



  t022scopesParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    this.b_stack = new List();
    this.c_stack = new List();
    this.d_stack = new List();
    this.e_stack = new List();
    this.f_stack = new List();

    this.aScope_stack = new List();    
  }    

  List<String> get tokenNames() => t022scopesParser._tokenNames;

  String get grammarFileName() => "t022scopes.g";

  String getRecognizerClassName() => "t022scopesParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t022scopes.g:
   13:1: a : ( ID )* ;*/
  void a() {
    this.aScope_stack.add(new _aScope_scope());

    try {
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       15:5: ( ( ID )* )*/
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       15:9: ( ID )**/
      {
      	this.aScope_stack.last().names = new List();


      	/* ../runtime/dart/tests/grammars/t022scopes.g:
      	 15:40: ( ID )**/
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 4/*ID*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t022scopes.g:
      			   15:40: ID*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_a45); 


      			  }
      			  break;

      			default :
      		    break loop1;
      	  }
      	} while(true);


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.aScope_stack.removeLast();

  	}
  	return ;
  }
  // $ANTLR end "a"


  // $ANTLR start "b"
  /* ../runtime/dart/tests/grammars/t022scopes.g:
   21:1: b[bool v] : b2 ;*/
  void b(bool v) {
    this.b_stack.add(new _b_scope());
    try {
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       23:5: ( b2 )*/
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       23:7: b2*/
      {
      	this.b_stack.last().x = v;


      	this.pushFollow(FOLLOW_b2_in_b74);
      	this.b2();

      	this.state.fsp--;


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.b_stack.removeLast();
  	}
  	return ;
  }
  // $ANTLR end "b"


  // $ANTLR start "b2"
  /* ../runtime/dart/tests/grammars/t022scopes.g:
   26:1: b2 : b3 ;*/
  void b2() {
    try {
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       27:5: ( b3 )*/
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       27:7: b3*/
      {
      	this.pushFollow(FOLLOW_b3_in_b291);
      	this.b3();

      	this.state.fsp--;


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
  // $ANTLR end "b2"


  // $ANTLR start "b3"
  /* ../runtime/dart/tests/grammars/t022scopes.g:
   30:1: b3 : ({...}? => ID | NUM );*/
  void b3() {
    try {
      /* ../runtime/dart/tests/grammars/t022scopes.g: 
       31:5: ({...}? => ID | NUM )*/
      int alt2 = 2;
      int LA2_0 = this.input.LA(1);

      if((LA2_0 == 4/*ID*/) && ((this.b_stack.last().x))) {
        alt2 = 1;
      }
      else if((LA2_0 == 5/*NUM*/)) {
        alt2 = 2;
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 2, 0, this.input);

        throw nvae;

      }
      switch (alt2) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t022scopes.g:
           31:7: {...}? => ID*/
          {
          	if(!((this.b_stack.last().x))) {
          	  throw new FailedPredicateException(input, "b3", @"$b::x");
          	}

          	this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_b3112); 


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t022scopes.g:
           32:7: NUM*/
          {
          	this.matchSymbol(this.input,
          	    NUM,FOLLOW_NUM_in_b3121); 


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
  // $ANTLR end "b3"


  // $ANTLR start "c"
  /* ../runtime/dart/tests/grammars/t022scopes.g:
   38:1: c returns [Map res] : '{' ( c1 )* ( c2 )+ '}' ;*/
  Map c() {
    this.c_stack.add(new _c_scope());
    Map res = null;



    this.c_stack.last().symbols = new Map();;

    try {
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       45:5: ( '{' ( c1 )* ( c2 )+ '}' )*/
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       45:7: '{' ( c1 )* ( c2 )+ '}'*/
      {
      	this.matchSymbol(this.input,
      	    10,FOLLOW_10_in_c155); 


      	/* ../runtime/dart/tests/grammars/t022scopes.g:
      	 45:11: ( c1 )**/
      	loop3:
      	do {
      	  int alt3 = 2;
      	  int LA3_0 = this.input.LA(1);

      	  if((LA3_0 == 9/*9*/)) {
      	    alt3 = 1;
      	  }


      	  switch (alt3) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t022scopes.g:
      			   45:11: c1*/
      			  {
      			  	this.pushFollow(FOLLOW_c1_in_c157);
      			  	this.c1();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    break loop3;
      	  }
      	} while(true);


      	/* ../runtime/dart/tests/grammars/t022scopes.g:
      	 45:15: ( c2 )+*/
      	int cnt4 = 0;
      	loop4:
      	do {
      	  int alt4 = 2;
      	  int LA4_0 = this.input.LA(1);

      	  if((LA4_0 == 4/*ID*/)) {
      	    alt4 = 1;
      	  }


      	  switch (alt4) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t022scopes.g:
      			   45:15: c2*/
      			  {
      			  	this.pushFollow(FOLLOW_c2_in_c160);
      			  	this.c2();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    if(cnt4 >= 1) break loop4;
      	        EarlyExitException eee = new EarlyExitException(4, this.input);
      	        throw eee;
      	  }
      	  cnt4++;
      	} while(true);


      	this.matchSymbol(this.input,
      	    11,FOLLOW_11_in_c163); 


      	 res =  this.c_stack.last().symbols; 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.c_stack.removeLast();
  	}
  	return res;
  }
  // $ANTLR end "c"


  // $ANTLR start "c1"
  /* ../runtime/dart/tests/grammars/t022scopes.g:
   49:1: c1 : 'int' ID ';' ;*/
  void c1() {
    Token ID1 = null;

    try {
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       50:5: ( 'int' ID ';' )*/
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       50:7: 'int' ID ';'*/
      {
      	this.matchSymbol(this.input,
      	    9,FOLLOW_9_in_c1190); 


      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_c1192); 


      	this.c_stack.last().symbols[(ID1 != null) ? ID1.text : null] = true;


      	this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_c1196); 


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
  // $ANTLR end "c1"


  // $ANTLR start "c2"
  /* ../runtime/dart/tests/grammars/t022scopes.g:
   53:1: c2 : ID '=' NUM ';' ;*/
  void c2() {
    Token ID2 = null;

    try {
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       54:5: ( ID '=' NUM ';' )*/
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       54:7: ID '=' NUM ';'*/
      {
      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_c2213); 


      	this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_c2215); 


      	this.matchSymbol(this.input,
      	    NUM,FOLLOW_NUM_in_c2217); 


      	this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_c2219); 



      	            if (!this.c_stack.last().symbols.containsKey((ID2 != null) ? ID2.text : null)) {
      	                throw new Exception((ID2 != null) ? ID2.text : null);
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
  // $ANTLR end "c2"


  // $ANTLR start "d"
  /* ../runtime/dart/tests/grammars/t022scopes.g:
   64:1: d returns [Map res] : '{' ( d1 )* ( d2 )* '}' ;*/
  Map d() {
    this.d_stack.add(new _d_scope());
    Map res = null;



    this.d_stack.last().symbols = new Map();

    try {
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       71:5: ( '{' ( d1 )* ( d2 )* '}' )*/
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       71:7: '{' ( d1 )* ( d2 )* '}'*/
      {
      	this.matchSymbol(this.input,
      	    10,FOLLOW_10_in_d262); 


      	/* ../runtime/dart/tests/grammars/t022scopes.g:
      	 71:11: ( d1 )**/
      	loop5:
      	do {
      	  int alt5 = 2;
      	  int LA5_0 = this.input.LA(1);

      	  if((LA5_0 == 9/*9*/)) {
      	    alt5 = 1;
      	  }


      	  switch (alt5) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t022scopes.g:
      			   71:11: d1*/
      			  {
      			  	this.pushFollow(FOLLOW_d1_in_d264);
      			  	this.d1();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    break loop5;
      	  }
      	} while(true);


      	/* ../runtime/dart/tests/grammars/t022scopes.g:
      	 71:15: ( d2 )**/
      	loop6:
      	do {
      	  int alt6 = 2;
      	  int LA6_0 = this.input.LA(1);

      	  if((LA6_0 == 4/*ID*/
      	    || LA6_0 == 10/*10*/)) {
      	    alt6 = 1;
      	  }


      	  switch (alt6) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t022scopes.g:
      			   71:15: d2*/
      			  {
      			  	this.pushFollow(FOLLOW_d2_in_d267);
      			  	this.d2();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    break loop6;
      	  }
      	} while(true);


      	this.matchSymbol(this.input,
      	    11,FOLLOW_11_in_d270); 


      	 res =  this.d_stack.last().symbols; 


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.d_stack.removeLast();
  	}
  	return res;
  }
  // $ANTLR end "d"


  // $ANTLR start "d1"
  /* ../runtime/dart/tests/grammars/t022scopes.g:
   75:1: d1 : 'int' ID ';' ;*/
  void d1() {
    Token ID3 = null;

    try {
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       76:5: ( 'int' ID ';' )*/
      /* ../runtime/dart/tests/grammars/t022scopes.g:
       76:7: 'int' ID ';'*/
      {
      	this.matchSymbol(this.input,
      	    9,FOLLOW_9_in_d1297); 


      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_d1299); 


      	this.d_stack.last().symbols[(ID3 != null) ? ID3.text : null] = true;


      	this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_d1303); 


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
  // $ANTLR end "d1"


  // $ANTLR start "d2"
  /* ../runtime/dart/tests/grammars/t022scopes.g:
   79:1: d2 : ( ID '=' NUM ';' | d );*/
  void d2() {
    Token ID4 = null;

    try {
      /* ../runtime/dart/tests/grammars/t022scopes.g: 
       80:5: ( ID '=' NUM ';' | d )*/
      int alt7 = 2;
      int LA7_0 = this.input.LA(1);

      if((LA7_0 == 4/*ID*/)) {
        alt7 = 1;
      }
      else if((LA7_0 == 10/*10*/)) {
        alt7 = 2;
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 7, 0, this.input);

        throw nvae;

      }
      switch (alt7) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t022scopes.g:
           80:7: ID '=' NUM ';'*/
          {
          	ID4 = this.matchSymbol(this.input,
          	    ID,FOLLOW_ID_in_d2320); 


          	this.matchSymbol(this.input,
          	    8,FOLLOW_8_in_d2322); 


          	this.matchSymbol(this.input,
          	    NUM,FOLLOW_NUM_in_d2324); 


          	this.matchSymbol(this.input,
          	    7,FOLLOW_7_in_d2326); 



          	            var i, isDefined = false;
          	            for (i = d_stack.length-1; i >= 0; i--) {
          		            if (this.d_stack[i].symbols[(ID4 != null) ? ID4.text : null]) {
          		                isDefined = true;
          		                break;
          		            }
          	            }
          	            if (!isDefined) {
          	                throw new Exception("undefined variable ${(ID4 != null) ? ID4.text : null}");
          	            }
          	        


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t022scopes.g:
           93:7: d*/
          {
          	this.pushFollow(FOLLOW_d_in_d2344);
          	this.d();

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
  // $ANTLR end "d2"


  // $ANTLR start "e"
  /* ../runtime/dart/tests/grammars/t022scopes.g:
   98:1: e returns [int res] : ( NUM | '{' e '}' );*/
  int e() {
    this.e_stack.add(new _e_scope());
    int res = 0;


    Token NUM5 = null;

    try {
      /* ../runtime/dart/tests/grammars/t022scopes.g: 
       105:5: ( NUM | '{' e '}' )*/
      int alt8 = 2;
      int LA8_0 = this.input.LA(1);

      if((LA8_0 == 5/*NUM*/)) {
        alt8 = 1;
      }
      else if((LA8_0 == 10/*10*/)) {
        alt8 = 2;
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 8, 0, this.input);

        throw nvae;

      }
      switch (alt8) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t022scopes.g:
           105:7: NUM*/
          {
          	NUM5 = this.matchSymbol(this.input,
          	    NUM,FOLLOW_NUM_in_e377); 


          	 this.e_stack[0].a = Math.parseInt((NUM5 != null) ? NUM5.text : null); 


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t022scopes.g:
           106:7: '{' e '}'*/
          {
          	this.matchSymbol(this.input,
          	    10,FOLLOW_10_in_e387); 


          	this.pushFollow(FOLLOW_e_in_e389);
          	this.e();

          	this.state.fsp--;


          	this.matchSymbol(this.input,
          	    11,FOLLOW_11_in_e391); 


          }
          break;

      }


      res =  this.e_stack.last().a;


    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.e_stack.removeLast();
  	}
  	return res;
  }
  // $ANTLR end "e"


  // $ANTLR start "f"
  /* ../runtime/dart/tests/grammars/t022scopes.g:
   112:1: f returns [int res] : ( NUM | '{' f '}' );*/
  int f() {
    this.f_stack.add(new _f_scope());
    int res = 0;


    Token NUM6 = null;

    try {
      /* ../runtime/dart/tests/grammars/t022scopes.g: 
       119:5: ( NUM | '{' f '}' )*/
      int alt9 = 2;
      int LA9_0 = this.input.LA(1);

      if((LA9_0 == 5/*NUM*/)) {
        alt9 = 1;
      }
      else if((LA9_0 == 10/*10*/)) {
        alt9 = 2;
      }
      else {
        NoViableAltException nvae =
            new NoViableAltException("", 9, 0, this.input);

        throw nvae;

      }
      switch (alt9) {
        case 1 :
          /* ../runtime/dart/tests/grammars/t022scopes.g:
           119:7: NUM*/
          {
          	NUM6 = this.matchSymbol(this.input,
          	    NUM,FOLLOW_NUM_in_f425); 


          	 var len = f_stack.length-2; this.f_stack[len >= 0 ? len : 0].a = Math.parseInt((NUM6 != null) ? NUM6.text : null); 


          }
          break;
        case 2 :
          /* ../runtime/dart/tests/grammars/t022scopes.g:
           120:7: '{' f '}'*/
          {
          	this.matchSymbol(this.input,
          	    10,FOLLOW_10_in_f435); 


          	this.pushFollow(FOLLOW_f_in_f437);
          	this.f();

          	this.state.fsp--;


          	this.matchSymbol(this.input,
          	    11,FOLLOW_11_in_f439); 


          }
          break;

      }


      res =  this.f_stack.last().a;


    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.f_stack.removeLast();
  	}
  	return res;
  }
  // $ANTLR end "f"



 

  static BitSet _FOLLOW_ID_in_a45 = null;
  static BitSet get FOLLOW_ID_in_a45() {
    if(_FOLLOW_ID_in_a45 == null) 
      _FOLLOW_ID_in_a45 = 
        new BitSet.fromList([0x0000000000000012]);
    return _FOLLOW_ID_in_a45;
  }

  static BitSet _FOLLOW_b2_in_b74 = null;
  static BitSet get FOLLOW_b2_in_b74() {
    if(_FOLLOW_b2_in_b74 == null) 
      _FOLLOW_b2_in_b74 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b2_in_b74;
  }

  static BitSet _FOLLOW_b3_in_b291 = null;
  static BitSet get FOLLOW_b3_in_b291() {
    if(_FOLLOW_b3_in_b291 == null) 
      _FOLLOW_b3_in_b291 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_b3_in_b291;
  }

  static BitSet _FOLLOW_ID_in_b3112 = null;
  static BitSet get FOLLOW_ID_in_b3112() {
    if(_FOLLOW_ID_in_b3112 == null) 
      _FOLLOW_ID_in_b3112 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_b3112;
  }

  static BitSet _FOLLOW_NUM_in_b3121 = null;
  static BitSet get FOLLOW_NUM_in_b3121() {
    if(_FOLLOW_NUM_in_b3121 == null) 
      _FOLLOW_NUM_in_b3121 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_NUM_in_b3121;
  }

  static BitSet _FOLLOW_10_in_c155 = null;
  static BitSet get FOLLOW_10_in_c155() {
    if(_FOLLOW_10_in_c155 == null) 
      _FOLLOW_10_in_c155 = 
        new BitSet.fromList([0x0000000000000210]);
    return _FOLLOW_10_in_c155;
  }

  static BitSet _FOLLOW_c1_in_c157 = null;
  static BitSet get FOLLOW_c1_in_c157() {
    if(_FOLLOW_c1_in_c157 == null) 
      _FOLLOW_c1_in_c157 = 
        new BitSet.fromList([0x0000000000000210]);
    return _FOLLOW_c1_in_c157;
  }

  static BitSet _FOLLOW_c2_in_c160 = null;
  static BitSet get FOLLOW_c2_in_c160() {
    if(_FOLLOW_c2_in_c160 == null) 
      _FOLLOW_c2_in_c160 = 
        new BitSet.fromList([0x0000000000000810]);
    return _FOLLOW_c2_in_c160;
  }

  static BitSet _FOLLOW_11_in_c163 = null;
  static BitSet get FOLLOW_11_in_c163() {
    if(_FOLLOW_11_in_c163 == null) 
      _FOLLOW_11_in_c163 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_c163;
  }

  static BitSet _FOLLOW_9_in_c1190 = null;
  static BitSet get FOLLOW_9_in_c1190() {
    if(_FOLLOW_9_in_c1190 == null) 
      _FOLLOW_9_in_c1190 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_9_in_c1190;
  }

  static BitSet _FOLLOW_ID_in_c1192 = null;
  static BitSet get FOLLOW_ID_in_c1192() {
    if(_FOLLOW_ID_in_c1192 == null) 
      _FOLLOW_ID_in_c1192 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_ID_in_c1192;
  }

  static BitSet _FOLLOW_7_in_c1196 = null;
  static BitSet get FOLLOW_7_in_c1196() {
    if(_FOLLOW_7_in_c1196 == null) 
      _FOLLOW_7_in_c1196 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_c1196;
  }

  static BitSet _FOLLOW_ID_in_c2213 = null;
  static BitSet get FOLLOW_ID_in_c2213() {
    if(_FOLLOW_ID_in_c2213 == null) 
      _FOLLOW_ID_in_c2213 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_ID_in_c2213;
  }

  static BitSet _FOLLOW_8_in_c2215 = null;
  static BitSet get FOLLOW_8_in_c2215() {
    if(_FOLLOW_8_in_c2215 == null) 
      _FOLLOW_8_in_c2215 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_8_in_c2215;
  }

  static BitSet _FOLLOW_NUM_in_c2217 = null;
  static BitSet get FOLLOW_NUM_in_c2217() {
    if(_FOLLOW_NUM_in_c2217 == null) 
      _FOLLOW_NUM_in_c2217 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_NUM_in_c2217;
  }

  static BitSet _FOLLOW_7_in_c2219 = null;
  static BitSet get FOLLOW_7_in_c2219() {
    if(_FOLLOW_7_in_c2219 == null) 
      _FOLLOW_7_in_c2219 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_c2219;
  }

  static BitSet _FOLLOW_10_in_d262 = null;
  static BitSet get FOLLOW_10_in_d262() {
    if(_FOLLOW_10_in_d262 == null) 
      _FOLLOW_10_in_d262 = 
        new BitSet.fromList([0x0000000000000E10]);
    return _FOLLOW_10_in_d262;
  }

  static BitSet _FOLLOW_d1_in_d264 = null;
  static BitSet get FOLLOW_d1_in_d264() {
    if(_FOLLOW_d1_in_d264 == null) 
      _FOLLOW_d1_in_d264 = 
        new BitSet.fromList([0x0000000000000E10]);
    return _FOLLOW_d1_in_d264;
  }

  static BitSet _FOLLOW_d2_in_d267 = null;
  static BitSet get FOLLOW_d2_in_d267() {
    if(_FOLLOW_d2_in_d267 == null) 
      _FOLLOW_d2_in_d267 = 
        new BitSet.fromList([0x0000000000000C10]);
    return _FOLLOW_d2_in_d267;
  }

  static BitSet _FOLLOW_11_in_d270 = null;
  static BitSet get FOLLOW_11_in_d270() {
    if(_FOLLOW_11_in_d270 == null) 
      _FOLLOW_11_in_d270 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_d270;
  }

  static BitSet _FOLLOW_9_in_d1297 = null;
  static BitSet get FOLLOW_9_in_d1297() {
    if(_FOLLOW_9_in_d1297 == null) 
      _FOLLOW_9_in_d1297 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_9_in_d1297;
  }

  static BitSet _FOLLOW_ID_in_d1299 = null;
  static BitSet get FOLLOW_ID_in_d1299() {
    if(_FOLLOW_ID_in_d1299 == null) 
      _FOLLOW_ID_in_d1299 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_ID_in_d1299;
  }

  static BitSet _FOLLOW_7_in_d1303 = null;
  static BitSet get FOLLOW_7_in_d1303() {
    if(_FOLLOW_7_in_d1303 == null) 
      _FOLLOW_7_in_d1303 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_d1303;
  }

  static BitSet _FOLLOW_ID_in_d2320 = null;
  static BitSet get FOLLOW_ID_in_d2320() {
    if(_FOLLOW_ID_in_d2320 == null) 
      _FOLLOW_ID_in_d2320 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_ID_in_d2320;
  }

  static BitSet _FOLLOW_8_in_d2322 = null;
  static BitSet get FOLLOW_8_in_d2322() {
    if(_FOLLOW_8_in_d2322 == null) 
      _FOLLOW_8_in_d2322 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_8_in_d2322;
  }

  static BitSet _FOLLOW_NUM_in_d2324 = null;
  static BitSet get FOLLOW_NUM_in_d2324() {
    if(_FOLLOW_NUM_in_d2324 == null) 
      _FOLLOW_NUM_in_d2324 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_NUM_in_d2324;
  }

  static BitSet _FOLLOW_7_in_d2326 = null;
  static BitSet get FOLLOW_7_in_d2326() {
    if(_FOLLOW_7_in_d2326 == null) 
      _FOLLOW_7_in_d2326 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_d2326;
  }

  static BitSet _FOLLOW_d_in_d2344 = null;
  static BitSet get FOLLOW_d_in_d2344() {
    if(_FOLLOW_d_in_d2344 == null) 
      _FOLLOW_d_in_d2344 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_d_in_d2344;
  }

  static BitSet _FOLLOW_NUM_in_e377 = null;
  static BitSet get FOLLOW_NUM_in_e377() {
    if(_FOLLOW_NUM_in_e377 == null) 
      _FOLLOW_NUM_in_e377 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_NUM_in_e377;
  }

  static BitSet _FOLLOW_10_in_e387 = null;
  static BitSet get FOLLOW_10_in_e387() {
    if(_FOLLOW_10_in_e387 == null) 
      _FOLLOW_10_in_e387 = 
        new BitSet.fromList([0x0000000000000420]);
    return _FOLLOW_10_in_e387;
  }

  static BitSet _FOLLOW_e_in_e389 = null;
  static BitSet get FOLLOW_e_in_e389() {
    if(_FOLLOW_e_in_e389 == null) 
      _FOLLOW_e_in_e389 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_e_in_e389;
  }

  static BitSet _FOLLOW_11_in_e391 = null;
  static BitSet get FOLLOW_11_in_e391() {
    if(_FOLLOW_11_in_e391 == null) 
      _FOLLOW_11_in_e391 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_e391;
  }

  static BitSet _FOLLOW_NUM_in_f425 = null;
  static BitSet get FOLLOW_NUM_in_f425() {
    if(_FOLLOW_NUM_in_f425 == null) 
      _FOLLOW_NUM_in_f425 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_NUM_in_f425;
  }

  static BitSet _FOLLOW_10_in_f435 = null;
  static BitSet get FOLLOW_10_in_f435() {
    if(_FOLLOW_10_in_f435 == null) 
      _FOLLOW_10_in_f435 = 
        new BitSet.fromList([0x0000000000000420]);
    return _FOLLOW_10_in_f435;
  }

  static BitSet _FOLLOW_f_in_f437 = null;
  static BitSet get FOLLOW_f_in_f437() {
    if(_FOLLOW_f_in_f437 == null) 
      _FOLLOW_f_in_f437 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_f_in_f437;
  }

  static BitSet _FOLLOW_11_in_f439 = null;
  static BitSet get FOLLOW_11_in_f439() {
    if(_FOLLOW_11_in_f439 == null) 
      _FOLLOW_11_in_f439 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_f439;
  }



 }

class _aScope_scope {
  List names;
}



class _b_scope {
    bool x;
}

class _c_scope {
    Map symbols;
}

class _d_scope {
    Map symbols;
}

class _e_scope {
    int a;
}

class _f_scope {
    int a;
}



