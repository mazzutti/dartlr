// $ANTLR 3.4 t058rewriteAST45Parser.g 2012-06-07 21:59:49
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST45Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "MOD", "WS", "','", "';'", 
    "'int'", "'public'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int ID = 4;
  static final int MOD = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST45Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST45Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST45Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST45.g";

  String getRecognizerClassName() => "t058rewriteAST45Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
   5:1: a : ( modifier )? type ID ( ',' ID )* ';' -> ( ^( type ( ^( MOD modifier ) )? ID ) )+ ;*/
  t058rewriteAST45Parser_a_return a() {
    t058rewriteAST45Parser_a_return retval = new t058rewriteAST45Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID3 = null;
    Token char_literal4 = null;
    Token ID5 = null;
    Token char_literal6 = null;
    t058rewriteAST45Parser_modifier_return modifier1 =null;

    t058rewriteAST45Parser_type_return type2 =null;


    Object ID3_tree=null;
    Object char_literal4_tree=null;
    Object ID5_tree=null;
    Object char_literal6_tree=null;
    RewriteRuleTokenStream stream_7=new RewriteRuleTokenStream(this._adaptor,"token 7");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_8=new RewriteRuleTokenStream(this._adaptor,"token 8");
    RewriteRuleSubtreeStream stream_modifier=new RewriteRuleSubtreeStream(this._adaptor,"rule modifier");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
       5:3: ( ( modifier )? type ID ( ',' ID )* ';' -> ( ^( type ( ^( MOD modifier ) )? ID ) )+ )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
       5:5: ( modifier )? type ID ( ',' ID )* ';'*/
      {
      	/* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
      	 5:5: ( modifier )?*/
      	int alt1 = 2;
      	int LA1_0 = this.input.LA(1);

      	if((LA1_0 == 10/*10*/)) {
      	  alt1 = 1;
      	}
      	switch (alt1) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
      	     5:5: modifier*/
      	    {
      	    	this.pushFollow(FOLLOW_modifier_in_a26);
      	    	modifier1 = this.modifier();

      	    	this.state.fsp--;

      	    	stream_modifier.add(modifier1.tree);

      	    }
      	    break;

      	}


      	this.pushFollow(FOLLOW_type_in_a29);
      	type2 = this.type();

      	this.state.fsp--;

      	stream_type.add(type2.tree);

      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a31); 
      	 
      	stream_ID.add(ID3);


      	/* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
      	 5:23: ( ',' ID )**/
      	loop2:
      	do {
      	  int alt2 = 2;
      	  int LA2_0 = this.input.LA(1);

      	  if((LA2_0 == 7/*7*/)) {
      	    alt2 = 1;
      	  }


      	  switch (alt2) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
      			   5:24: ',' ID*/
      			  {
      			  	char_literal4 = this.matchSymbol(this.input,
      			  	    7,FOLLOW_7_in_a34); 
      			  	 
      			  	stream_7.add(char_literal4);


      			  	ID5 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_a36); 
      			  	 
      			  	stream_ID.add(ID5);


      			  }
      			  break;

      			default :
      		    break loop2;
      	  }
      	} while(true);


      	char_literal6 = this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_a40); 
      	 
      	stream_8.add(char_literal6);


      	// AST REWRITE
      	// elements: modifier, ID, type
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 5:37: -> ( ^( type ( ^( MOD modifier ) )? ID ) )+*/
      	{
      	    if(!(stream_ID.hasNext()||stream_type.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_ID.hasNext()||stream_type.hasNext()) {
      	        /* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
      	         5:40: ^( type ( ^( MOD modifier ) )? ID )*/
      	        {
      	        	Object root_1 = this._adaptor.nil();
      	        	root_1 = this._adaptor.becomeRoot(stream_type.nextNode(), root_1);

      	        	/* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
      	        	 5:47: ( ^( MOD modifier ) )?*/
      	        	if(stream_modifier.hasNext()) {
      	        	    /* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
      	        	     5:47: ^( MOD modifier )*/
      	        	    {
      	        	    	Object root_2 = this._adaptor.nil();
      	        	    	root_2 = this._adaptor.becomeRoot(
      	        	    	this._adaptor.create(MOD, "MOD")
      	        	    	, root_2);

      	        	    	this._adaptor.addChild(root_2, stream_modifier.nextTree());

      	        	    	this._adaptor.addChild(root_1, root_2);
      	        	    }

      	        	}
      	        	stream_modifier.reset();

      	        	this._adaptor.addChild(root_1, 
      	        	stream_ID.nextNode()
      	        	);

      	        	this._adaptor.addChild(root_0, root_1);
      	        }

      	    }
      	    stream_ID.reset();
      	    stream_type.reset();

      	}


      	retval.tree = root_0;

      }

      retval.stop = this.input.LT(-1);

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
  	  retval.tree = this._adaptor.errorNode(input, retval.start, input.LT(-1), re);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return retval;
  }
  // $ANTLR end "a"


  // $ANTLR start "type"
  /* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
   6:1: type : 'int' ;*/
  t058rewriteAST45Parser_type_return type() {
    t058rewriteAST45Parser_type_return retval = new t058rewriteAST45Parser_type_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal7 = null;

    Object string_literal7_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
       6:6: ( 'int' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
       6:8: 'int'*/
      {
      	root_0 = this._adaptor.nil();


      	string_literal7 = this.matchSymbol(this.input,
      	    9,FOLLOW_9_in_type64); 

      	string_literal7_tree = this._adaptor.createTreeNode(string_literal7);
      	this._adaptor.addChild(root_0, string_literal7_tree);


      }

      retval.stop = this.input.LT(-1);

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
  	  retval.tree = this._adaptor.errorNode(input, retval.start, input.LT(-1), re);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return retval;
  }
  // $ANTLR end "type"


  // $ANTLR start "modifier"
  /* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
   7:1: modifier : 'public' ;*/
  t058rewriteAST45Parser_modifier_return modifier() {
    t058rewriteAST45Parser_modifier_return retval = new t058rewriteAST45Parser_modifier_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal8 = null;

    Object string_literal8_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
       7:10: ( 'public' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST45.g:
       7:12: 'public'*/
      {
      	root_0 = this._adaptor.nil();


      	string_literal8 = this.matchSymbol(this.input,
      	    10,FOLLOW_10_in_modifier72); 

      	string_literal8_tree = this._adaptor.createTreeNode(string_literal8);
      	this._adaptor.addChild(root_0, string_literal8_tree);


      }

      retval.stop = this.input.LT(-1);

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
  	  retval.tree = this._adaptor.errorNode(input, retval.start, input.LT(-1), re);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return retval;
  }
  // $ANTLR end "modifier"



 

  static BitSet _FOLLOW_modifier_in_a26 = null;
  static BitSet get FOLLOW_modifier_in_a26() {
    if(_FOLLOW_modifier_in_a26 == null) 
      _FOLLOW_modifier_in_a26 = 
        new BitSet.fromList([0x0000000000000200]);
    return _FOLLOW_modifier_in_a26;
  }

  static BitSet _FOLLOW_type_in_a29 = null;
  static BitSet get FOLLOW_type_in_a29() {
    if(_FOLLOW_type_in_a29 == null) 
      _FOLLOW_type_in_a29 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_type_in_a29;
  }

  static BitSet _FOLLOW_ID_in_a31 = null;
  static BitSet get FOLLOW_ID_in_a31() {
    if(_FOLLOW_ID_in_a31 == null) 
      _FOLLOW_ID_in_a31 = 
        new BitSet.fromList([0x0000000000000180]);
    return _FOLLOW_ID_in_a31;
  }

  static BitSet _FOLLOW_7_in_a34 = null;
  static BitSet get FOLLOW_7_in_a34() {
    if(_FOLLOW_7_in_a34 == null) 
      _FOLLOW_7_in_a34 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_7_in_a34;
  }

  static BitSet _FOLLOW_ID_in_a36 = null;
  static BitSet get FOLLOW_ID_in_a36() {
    if(_FOLLOW_ID_in_a36 == null) 
      _FOLLOW_ID_in_a36 = 
        new BitSet.fromList([0x0000000000000180]);
    return _FOLLOW_ID_in_a36;
  }

  static BitSet _FOLLOW_8_in_a40 = null;
  static BitSet get FOLLOW_8_in_a40() {
    if(_FOLLOW_8_in_a40 == null) 
      _FOLLOW_8_in_a40 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_a40;
  }

  static BitSet _FOLLOW_9_in_type64 = null;
  static BitSet get FOLLOW_9_in_type64() {
    if(_FOLLOW_9_in_type64 == null) 
      _FOLLOW_9_in_type64 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_9_in_type64;
  }

  static BitSet _FOLLOW_10_in_modifier72 = null;
  static BitSet get FOLLOW_10_in_modifier72() {
    if(_FOLLOW_10_in_modifier72 == null) 
      _FOLLOW_10_in_modifier72 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_10_in_modifier72;
  }



 }




class t058rewriteAST45Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST45Parser_type_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST45Parser_modifier_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
