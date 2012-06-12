// $ANTLR 3.4 t046rewriteParser.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t046rewriteParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'('", "')'", 
    "'*'", "'+'", "';'", "'='", "'method'", "'{'", "'}'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int T__11 = 11;
  static final int T__12 = 12;
  static final int T__13 = 13;
  static final int T__14 = 14;
  static final int T__15 = 15;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  List body_stack;


  t046rewriteParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this.body_stack = new List();

  }



  t046rewriteParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    this.body_stack = new List();

    
  }    

  List<String> get tokenNames() => t046rewriteParser._tokenNames;

  String get grammarFileName() => "t046rewrite.g";

  String getRecognizerClassName() => "t046rewriteParser";


  // $ANTLR start "program"
  /* ../runtime/dart/tests/grammars/t046rewrite.g:
   6:1: program : ( method )+ ;*/
  void program() {
    t046rewriteParser_method_return method1 =null;



    var start = this.input.LT(1);

    try {
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
       10:5: ( ( method )+ )*/
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
       10:9: ( method )+*/
      {
      	/* ../runtime/dart/tests/grammars/t046rewrite.g:
      	 10:9: ( method )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 13/*13*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t046rewrite.g:
      			   10:9: method*/
      			  {
      			  	this.pushFollow(FOLLOW_method_in_program34);
      			  	method1 = this.method();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    if(cnt1 >= 1) break loop1;
      	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	        throw eee;
      	  }
      	  cnt1++;
      	} while(true);



      	        this.input.dynamic.insertBefore(start,"public class Wrapper {\n");
      	        this.input.dynamic.insertAfter((method1 != null) ? method1.stop : null, "\n}\n");
      	        


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
  // $ANTLR end "program"


  // $ANTLR start "method"
  /* ../runtime/dart/tests/grammars/t046rewrite.g:
   17:1: method : m= 'method' ID '(' ')' body ;*/
  t046rewriteParser_method_return method() {
    t046rewriteParser_method_return retval = new t046rewriteParser_method_return();
    retval.start = this.input.LT(1);


    Token m = null;

    try {
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
       18:5: (m= 'method' ID '(' ')' body )*/
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
       18:9: m= 'method' ID '(' ')' body*/
      {
      	m = this.matchSymbol(this.input,
      	    13,FOLLOW_13_in_method66); 


      	this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_method68); 


      	this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_method70); 


      	this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_method72); 


      	this.pushFollow(FOLLOW_body_in_method74);
      	this.body();

      	this.state.fsp--;


      	this.input.dynamic.replace(m, "public void");


      }

      retval.stop = this.input.LT(-1);

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return retval;
  }
  // $ANTLR end "method"


  // $ANTLR start "body"
  /* ../runtime/dart/tests/grammars/t046rewrite.g:
   22:1: body : lcurly= '{' ( stat )* '}' ;*/
  void body() {
    this.body_stack.add(new _body_scope());
    Token lcurly = null;


    this.body_stack.last().decls = new Map();

    try {
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
       29:5: (lcurly= '{' ( stat )* '}' )*/
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
       29:9: lcurly= '{' ( stat )* '}'*/
      {
      	lcurly = this.matchSymbol(this.input,
      	    14,FOLLOW_14_in_body115); 


      	/* ../runtime/dart/tests/grammars/t046rewrite.g:
      	 29:20: ( stat )**/
      	loop2:
      	do {
      	  int alt2 = 2;
      	  int LA2_0 = this.input.LA(1);

      	  if((LA2_0 == 4/*ID*/)) {
      	    alt2 = 1;
      	  }


      	  switch (alt2) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t046rewrite.g:
      			   29:20: stat*/
      			  {
      			  	this.pushFollow(FOLLOW_stat_in_body117);
      			  	this.stat();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    break loop2;
      	  }
      	} while(true);


      	this.matchSymbol(this.input,
      	    15,FOLLOW_15_in_body120); 



      	        var it;
      	        for (it in this.body_stack.last().decls.getKeys()) {
      	            this.input.dynamic.insertAfter(lcurly, "\nint $it;");
      	        }
      	        


      }

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.body_stack.removeLast();
  	}
  	return ;
  }
  // $ANTLR end "body"


  // $ANTLR start "stat"
  /* ../runtime/dart/tests/grammars/t046rewrite.g:
   38:1: stat : ID '=' expr ';' ;*/
  void stat() {
    Token ID2 = null;

    try {
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
       38:5: ( ID '=' expr ';' )*/
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
       38:9: ID '=' expr ';'*/
      {
      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_stat144); 


      	this.matchSymbol(this.input,
      	    12,FOLLOW_12_in_stat146); 


      	this.pushFollow(FOLLOW_expr_in_stat148);
      	this.expr();

      	this.state.fsp--;


      	this.matchSymbol(this.input,
      	    11,FOLLOW_11_in_stat150); 


      	this.body_stack.last().decls[(ID2 != null) ? ID2.text : null] = true;


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
  // $ANTLR end "stat"


  // $ANTLR start "expr"
  /* ../runtime/dart/tests/grammars/t046rewrite.g:
   41:1: expr : mul ( '+' mul )* ;*/
  void expr() {
    try {
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
       41:5: ( mul ( '+' mul )* )*/
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
       41:9: mul ( '+' mul )**/
      {
      	this.pushFollow(FOLLOW_mul_in_expr166);
      	this.mul();

      	this.state.fsp--;


      	/* ../runtime/dart/tests/grammars/t046rewrite.g:
      	 41:13: ( '+' mul )**/
      	loop3:
      	do {
      	  int alt3 = 2;
      	  int LA3_0 = this.input.LA(1);

      	  if((LA3_0 == 10/*10*/)) {
      	    alt3 = 1;
      	  }


      	  switch (alt3) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t046rewrite.g:
      			   41:14: '+' mul*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    10,FOLLOW_10_in_expr169); 


      			  	this.pushFollow(FOLLOW_mul_in_expr171);
      			  	this.mul();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    break loop3;
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
  	}
  	return ;
  }
  // $ANTLR end "expr"


  // $ANTLR start "mul"
  /* ../runtime/dart/tests/grammars/t046rewrite.g:
   44:1: mul : atom ( '*' atom )* ;*/
  void mul() {
    try {
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
       44:5: ( atom ( '*' atom )* )*/
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
       44:9: atom ( '*' atom )**/
      {
      	this.pushFollow(FOLLOW_atom_in_mul189);
      	this.atom();

      	this.state.fsp--;


      	/* ../runtime/dart/tests/grammars/t046rewrite.g:
      	 44:14: ( '*' atom )**/
      	loop4:
      	do {
      	  int alt4 = 2;
      	  int LA4_0 = this.input.LA(1);

      	  if((LA4_0 == 9/*9*/)) {
      	    alt4 = 1;
      	  }


      	  switch (alt4) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t046rewrite.g:
      			   44:15: '*' atom*/
      			  {
      			  	this.matchSymbol(this.input,
      			  	    9,FOLLOW_9_in_mul192); 


      			  	this.pushFollow(FOLLOW_atom_in_mul194);
      			  	this.atom();

      			  	this.state.fsp--;


      			  }
      			  break;

      			default :
      		    break loop4;
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
  	}
  	return ;
  }
  // $ANTLR end "mul"


  // $ANTLR start "atom"
  /* ../runtime/dart/tests/grammars/t046rewrite.g:
   47:1: atom : ( ID | INT );*/
  void atom() {
    try {
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
       47:5: ( ID | INT )*/
      /* ../runtime/dart/tests/grammars/t046rewrite.g:
      */
      {
      	if((this.input.LA(1) >= ID && this.input.LA(1) <= INT)) {
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
  // $ANTLR end "atom"



 

  static BitSet _FOLLOW_method_in_program34 = null;
  static BitSet get FOLLOW_method_in_program34() {
    if(_FOLLOW_method_in_program34 == null) 
      _FOLLOW_method_in_program34 = 
        new BitSet.fromList([0x0000000000002002]);
    return _FOLLOW_method_in_program34;
  }

  static BitSet _FOLLOW_13_in_method66 = null;
  static BitSet get FOLLOW_13_in_method66() {
    if(_FOLLOW_13_in_method66 == null) 
      _FOLLOW_13_in_method66 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_13_in_method66;
  }

  static BitSet _FOLLOW_ID_in_method68 = null;
  static BitSet get FOLLOW_ID_in_method68() {
    if(_FOLLOW_ID_in_method68 == null) 
      _FOLLOW_ID_in_method68 = 
        new BitSet.fromList([0x0000000000000080]);
    return _FOLLOW_ID_in_method68;
  }

  static BitSet _FOLLOW_7_in_method70 = null;
  static BitSet get FOLLOW_7_in_method70() {
    if(_FOLLOW_7_in_method70 == null) 
      _FOLLOW_7_in_method70 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_7_in_method70;
  }

  static BitSet _FOLLOW_8_in_method72 = null;
  static BitSet get FOLLOW_8_in_method72() {
    if(_FOLLOW_8_in_method72 == null) 
      _FOLLOW_8_in_method72 = 
        new BitSet.fromList([0x0000000000004000]);
    return _FOLLOW_8_in_method72;
  }

  static BitSet _FOLLOW_body_in_method74 = null;
  static BitSet get FOLLOW_body_in_method74() {
    if(_FOLLOW_body_in_method74 == null) 
      _FOLLOW_body_in_method74 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_body_in_method74;
  }

  static BitSet _FOLLOW_14_in_body115 = null;
  static BitSet get FOLLOW_14_in_body115() {
    if(_FOLLOW_14_in_body115 == null) 
      _FOLLOW_14_in_body115 = 
        new BitSet.fromList([0x0000000000008010]);
    return _FOLLOW_14_in_body115;
  }

  static BitSet _FOLLOW_stat_in_body117 = null;
  static BitSet get FOLLOW_stat_in_body117() {
    if(_FOLLOW_stat_in_body117 == null) 
      _FOLLOW_stat_in_body117 = 
        new BitSet.fromList([0x0000000000008010]);
    return _FOLLOW_stat_in_body117;
  }

  static BitSet _FOLLOW_15_in_body120 = null;
  static BitSet get FOLLOW_15_in_body120() {
    if(_FOLLOW_15_in_body120 == null) 
      _FOLLOW_15_in_body120 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_15_in_body120;
  }

  static BitSet _FOLLOW_ID_in_stat144 = null;
  static BitSet get FOLLOW_ID_in_stat144() {
    if(_FOLLOW_ID_in_stat144 == null) 
      _FOLLOW_ID_in_stat144 = 
        new BitSet.fromList([0x0000000000001000]);
    return _FOLLOW_ID_in_stat144;
  }

  static BitSet _FOLLOW_12_in_stat146 = null;
  static BitSet get FOLLOW_12_in_stat146() {
    if(_FOLLOW_12_in_stat146 == null) 
      _FOLLOW_12_in_stat146 = 
        new BitSet.fromList([0x0000000000000030]);
    return _FOLLOW_12_in_stat146;
  }

  static BitSet _FOLLOW_expr_in_stat148 = null;
  static BitSet get FOLLOW_expr_in_stat148() {
    if(_FOLLOW_expr_in_stat148 == null) 
      _FOLLOW_expr_in_stat148 = 
        new BitSet.fromList([0x0000000000000800]);
    return _FOLLOW_expr_in_stat148;
  }

  static BitSet _FOLLOW_11_in_stat150 = null;
  static BitSet get FOLLOW_11_in_stat150() {
    if(_FOLLOW_11_in_stat150 == null) 
      _FOLLOW_11_in_stat150 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_11_in_stat150;
  }

  static BitSet _FOLLOW_mul_in_expr166 = null;
  static BitSet get FOLLOW_mul_in_expr166() {
    if(_FOLLOW_mul_in_expr166 == null) 
      _FOLLOW_mul_in_expr166 = 
        new BitSet.fromList([0x0000000000000402]);
    return _FOLLOW_mul_in_expr166;
  }

  static BitSet _FOLLOW_10_in_expr169 = null;
  static BitSet get FOLLOW_10_in_expr169() {
    if(_FOLLOW_10_in_expr169 == null) 
      _FOLLOW_10_in_expr169 = 
        new BitSet.fromList([0x0000000000000030]);
    return _FOLLOW_10_in_expr169;
  }

  static BitSet _FOLLOW_mul_in_expr171 = null;
  static BitSet get FOLLOW_mul_in_expr171() {
    if(_FOLLOW_mul_in_expr171 == null) 
      _FOLLOW_mul_in_expr171 = 
        new BitSet.fromList([0x0000000000000402]);
    return _FOLLOW_mul_in_expr171;
  }

  static BitSet _FOLLOW_atom_in_mul189 = null;
  static BitSet get FOLLOW_atom_in_mul189() {
    if(_FOLLOW_atom_in_mul189 == null) 
      _FOLLOW_atom_in_mul189 = 
        new BitSet.fromList([0x0000000000000202]);
    return _FOLLOW_atom_in_mul189;
  }

  static BitSet _FOLLOW_9_in_mul192 = null;
  static BitSet get FOLLOW_9_in_mul192() {
    if(_FOLLOW_9_in_mul192 == null) 
      _FOLLOW_9_in_mul192 = 
        new BitSet.fromList([0x0000000000000030]);
    return _FOLLOW_9_in_mul192;
  }

  static BitSet _FOLLOW_atom_in_mul194 = null;
  static BitSet get FOLLOW_atom_in_mul194() {
    if(_FOLLOW_atom_in_mul194 == null) 
      _FOLLOW_atom_in_mul194 = 
        new BitSet.fromList([0x0000000000000202]);
    return _FOLLOW_atom_in_mul194;
  }



 }



class _body_scope {
    Map decls;
}



class t046rewriteParser_method_return extends ParserRuleReturnScope {
}
