// $ANTLR 3.4 t058rewriteAST44Parser.g 2012-06-07 21:59:43
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST44Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "WS", "','", "';'", "'int'", 
    "'public'"
  ];

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int ID = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST44Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST44Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST44Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST44.g";

  String getRecognizerClassName() => "t058rewriteAST44Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
   4:1: a : ( modifier )? type ID ( ',' ID )* ';' -> ( ^( type ( modifier )? ID ) )+ ( ^( type ( modifier )? ID ) )+ ;*/
  t058rewriteAST44Parser_a_return a() {
    t058rewriteAST44Parser_a_return retval = new t058rewriteAST44Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID3 = null;
    Token char_literal4 = null;
    Token ID5 = null;
    Token char_literal6 = null;
    t058rewriteAST44Parser_modifier_return modifier1 =null;

    t058rewriteAST44Parser_type_return type2 =null;


    Object ID3_tree=null;
    Object char_literal4_tree=null;
    Object ID5_tree=null;
    Object char_literal6_tree=null;
    RewriteRuleTokenStream stream_7=new RewriteRuleTokenStream(this._adaptor,"token 7");
    RewriteRuleTokenStream stream_6=new RewriteRuleTokenStream(this._adaptor,"token 6");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleSubtreeStream stream_modifier=new RewriteRuleSubtreeStream(this._adaptor,"rule modifier");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
       4:3: ( ( modifier )? type ID ( ',' ID )* ';' -> ( ^( type ( modifier )? ID ) )+ ( ^( type ( modifier )? ID ) )+ )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
       4:5: ( modifier )? type ID ( ',' ID )* ';'*/
      {
      	/* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
      	 4:5: ( modifier )?*/
      	int alt1 = 2;
      	int LA1_0 = this.input.LA(1);

      	if((LA1_0 == 9/*9*/)) {
      	  alt1 = 1;
      	}
      	switch (alt1) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
      	     4:5: modifier*/
      	    {
      	    	this.pushFollow(FOLLOW_modifier_in_a21);
      	    	modifier1 = this.modifier();

      	    	this.state.fsp--;

      	    	stream_modifier.add(modifier1.tree);

      	    }
      	    break;

      	}


      	this.pushFollow(FOLLOW_type_in_a24);
      	type2 = this.type();

      	this.state.fsp--;

      	stream_type.add(type2.tree);

      	ID3 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a26); 
      	 
      	stream_ID.add(ID3);


      	/* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
      	 4:23: ( ',' ID )**/
      	loop2:
      	do {
      	  int alt2 = 2;
      	  int LA2_0 = this.input.LA(1);

      	  if((LA2_0 == 6/*6*/)) {
      	    alt2 = 1;
      	  }


      	  switch (alt2) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
      			   4:24: ',' ID*/
      			  {
      			  	char_literal4 = this.matchSymbol(this.input,
      			  	    6,FOLLOW_6_in_a29); 
      			  	 
      			  	stream_6.add(char_literal4);


      			  	ID5 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_a31); 
      			  	 
      			  	stream_ID.add(ID5);


      			  }
      			  break;

      			default :
      		    break loop2;
      	  }
      	} while(true);


      	char_literal6 = this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_a35); 
      	 
      	stream_7.add(char_literal6);


      	// AST REWRITE
      	// elements: type, type, modifier, ID, ID, modifier
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 4:37: -> ( ^( type ( modifier )? ID ) )+ ( ^( type ( modifier )? ID ) )+*/
      	{
      	    if(!(stream_type.hasNext()||stream_ID.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_type.hasNext()||stream_ID.hasNext()) {
      	        /* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
      	         4:40: ^( type ( modifier )? ID )*/
      	        {
      	        	Object root_1 = this._adaptor.nil();
      	        	root_1 = this._adaptor.becomeRoot(stream_type.nextNode(), root_1);

      	        	/* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
      	        	 4:47: ( modifier )?*/
      	        	if(stream_modifier.hasNext()) {
      	        	    this._adaptor.addChild(root_1, stream_modifier.nextTree());

      	        	}
      	        	stream_modifier.reset();

      	        	this._adaptor.addChild(root_1, 
      	        	stream_ID.nextNode()
      	        	);

      	        	this._adaptor.addChild(root_0, root_1);
      	        }

      	    }
      	    stream_type.reset();
      	    stream_ID.reset();

      	    if(!(stream_type.hasNext()||stream_ID.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_type.hasNext()||stream_ID.hasNext()) {
      	        /* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
      	         4:62: ^( type ( modifier )? ID )*/
      	        {
      	        	Object root_1 = this._adaptor.nil();
      	        	root_1 = this._adaptor.becomeRoot(stream_type.nextNode(), root_1);

      	        	/* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
      	        	 4:69: ( modifier )?*/
      	        	if(stream_modifier.hasNext()) {
      	        	    this._adaptor.addChild(root_1, stream_modifier.nextTree());

      	        	}
      	        	stream_modifier.reset();

      	        	this._adaptor.addChild(root_1, 
      	        	stream_ID.nextNode()
      	        	);

      	        	this._adaptor.addChild(root_0, root_1);
      	        }

      	    }
      	    stream_type.reset();
      	    stream_ID.reset();

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
   5:1: type : 'int' ;*/
  t058rewriteAST44Parser_type_return type() {
    t058rewriteAST44Parser_type_return retval = new t058rewriteAST44Parser_type_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal7 = null;

    Object string_literal7_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
       5:6: ( 'int' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
       5:8: 'int'*/
      {
      	root_0 = this._adaptor.nil();


      	string_literal7 = this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_type65); 

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
   6:1: modifier : 'public' ;*/
  t058rewriteAST44Parser_modifier_return modifier() {
    t058rewriteAST44Parser_modifier_return retval = new t058rewriteAST44Parser_modifier_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal8 = null;

    Object string_literal8_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
       6:10: ( 'public' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST44.g:
       6:12: 'public'*/
      {
      	root_0 = this._adaptor.nil();


      	string_literal8 = this.matchSymbol(this.input,
      	    9,FOLLOW_9_in_modifier73); 

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



 

  static BitSet _FOLLOW_modifier_in_a21 = null;
  static BitSet get FOLLOW_modifier_in_a21() {
    if(_FOLLOW_modifier_in_a21 == null) 
      _FOLLOW_modifier_in_a21 = 
        new BitSet.fromList([0x0000000000000100]);
    return _FOLLOW_modifier_in_a21;
  }

  static BitSet _FOLLOW_type_in_a24 = null;
  static BitSet get FOLLOW_type_in_a24() {
    if(_FOLLOW_type_in_a24 == null) 
      _FOLLOW_type_in_a24 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_type_in_a24;
  }

  static BitSet _FOLLOW_ID_in_a26 = null;
  static BitSet get FOLLOW_ID_in_a26() {
    if(_FOLLOW_ID_in_a26 == null) 
      _FOLLOW_ID_in_a26 = 
        new BitSet.fromList([0x00000000000000C0]);
    return _FOLLOW_ID_in_a26;
  }

  static BitSet _FOLLOW_6_in_a29 = null;
  static BitSet get FOLLOW_6_in_a29() {
    if(_FOLLOW_6_in_a29 == null) 
      _FOLLOW_6_in_a29 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_6_in_a29;
  }

  static BitSet _FOLLOW_ID_in_a31 = null;
  static BitSet get FOLLOW_ID_in_a31() {
    if(_FOLLOW_ID_in_a31 == null) 
      _FOLLOW_ID_in_a31 = 
        new BitSet.fromList([0x00000000000000C0]);
    return _FOLLOW_ID_in_a31;
  }

  static BitSet _FOLLOW_7_in_a35 = null;
  static BitSet get FOLLOW_7_in_a35() {
    if(_FOLLOW_7_in_a35 == null) 
      _FOLLOW_7_in_a35 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_a35;
  }

  static BitSet _FOLLOW_8_in_type65 = null;
  static BitSet get FOLLOW_8_in_type65() {
    if(_FOLLOW_8_in_type65 == null) 
      _FOLLOW_8_in_type65 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_type65;
  }

  static BitSet _FOLLOW_9_in_modifier73 = null;
  static BitSet get FOLLOW_9_in_modifier73() {
    if(_FOLLOW_9_in_modifier73 == null) 
      _FOLLOW_9_in_modifier73 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_9_in_modifier73;
  }



 }




class t058rewriteAST44Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST44Parser_type_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST44Parser_modifier_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
