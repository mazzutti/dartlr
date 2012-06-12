// $ANTLR 3.4 t058rewriteAST42Parser.g 2012-06-07 21:59:43
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST42Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "WS", "','", "';'", "'int'"
  ];

  static final int EOF = -1;
  static final int T__6 = 6;
  static final int T__7 = 7;
  static final int T__8 = 8;
  static final int ID = 4;
  static final int WS = 5;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST42Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST42Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST42Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST42.g";

  String getRecognizerClassName() => "t058rewriteAST42Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST42.g:
   4:1: a : type ID ( ',' ID )* ';' -> ( ^( type ID ) )+ ;*/
  t058rewriteAST42Parser_a_return a() {
    t058rewriteAST42Parser_a_return retval = new t058rewriteAST42Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID2 = null;
    Token char_literal3 = null;
    Token ID4 = null;
    Token char_literal5 = null;
    t058rewriteAST42Parser_type_return type1 =null;


    Object ID2_tree=null;
    Object char_literal3_tree=null;
    Object ID4_tree=null;
    Object char_literal5_tree=null;
    RewriteRuleTokenStream stream_7=new RewriteRuleTokenStream(this._adaptor,"token 7");
    RewriteRuleTokenStream stream_6=new RewriteRuleTokenStream(this._adaptor,"token 6");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleSubtreeStream stream_type=new RewriteRuleSubtreeStream(this._adaptor,"rule type");
    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST42.g:
       4:3: ( type ID ( ',' ID )* ';' -> ( ^( type ID ) )+ )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST42.g:
       4:5: type ID ( ',' ID )* ';'*/
      {
      	this.pushFollow(FOLLOW_type_in_a21);
      	type1 = this.type();

      	this.state.fsp--;

      	stream_type.add(type1.tree);

      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a23); 
      	 
      	stream_ID.add(ID2);


      	/* ../runtime/dart/tests/grammars/t058rewriteAST42.g:
      	 4:13: ( ',' ID )**/
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 6/*6*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t058rewriteAST42.g:
      			   4:14: ',' ID*/
      			  {
      			  	char_literal3 = this.matchSymbol(this.input,
      			  	    6,FOLLOW_6_in_a26); 
      			  	 
      			  	stream_6.add(char_literal3);


      			  	ID4 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_a28); 
      			  	 
      			  	stream_ID.add(ID4);


      			  }
      			  break;

      			default :
      		    break loop1;
      	  }
      	} while(true);


      	char_literal5 = this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_a32); 
      	 
      	stream_7.add(char_literal5);


      	// AST REWRITE
      	// elements: ID, type
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 4:27: -> ( ^( type ID ) )+*/
      	{
      	    if(!(stream_ID.hasNext()||stream_type.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_ID.hasNext()||stream_type.hasNext()) {
      	        /* ../runtime/dart/tests/grammars/t058rewriteAST42.g:
      	         4:30: ^( type ID )*/
      	        {
      	        	Object root_1 = this._adaptor.nil();
      	        	root_1 = this._adaptor.becomeRoot(stream_type.nextNode(), root_1);

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
  /* ../runtime/dart/tests/grammars/t058rewriteAST42.g:
   5:1: type : 'int' ;*/
  t058rewriteAST42Parser_type_return type() {
    t058rewriteAST42Parser_type_return retval = new t058rewriteAST42Parser_type_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal6 = null;

    Object string_literal6_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST42.g:
       5:6: ( 'int' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST42.g:
       5:8: 'int'*/
      {
      	root_0 = this._adaptor.nil();


      	string_literal6 = this.matchSymbol(this.input,
      	    8,FOLLOW_8_in_type49); 

      	string_literal6_tree = this._adaptor.createTreeNode(string_literal6);
      	this._adaptor.addChild(root_0, string_literal6_tree);


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



 

  static BitSet _FOLLOW_type_in_a21 = null;
  static BitSet get FOLLOW_type_in_a21() {
    if(_FOLLOW_type_in_a21 == null) 
      _FOLLOW_type_in_a21 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_type_in_a21;
  }

  static BitSet _FOLLOW_ID_in_a23 = null;
  static BitSet get FOLLOW_ID_in_a23() {
    if(_FOLLOW_ID_in_a23 == null) 
      _FOLLOW_ID_in_a23 = 
        new BitSet.fromList([0x00000000000000C0]);
    return _FOLLOW_ID_in_a23;
  }

  static BitSet _FOLLOW_6_in_a26 = null;
  static BitSet get FOLLOW_6_in_a26() {
    if(_FOLLOW_6_in_a26 == null) 
      _FOLLOW_6_in_a26 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_6_in_a26;
  }

  static BitSet _FOLLOW_ID_in_a28 = null;
  static BitSet get FOLLOW_ID_in_a28() {
    if(_FOLLOW_ID_in_a28 == null) 
      _FOLLOW_ID_in_a28 = 
        new BitSet.fromList([0x00000000000000C0]);
    return _FOLLOW_ID_in_a28;
  }

  static BitSet _FOLLOW_7_in_a32 = null;
  static BitSet get FOLLOW_7_in_a32() {
    if(_FOLLOW_7_in_a32 == null) 
      _FOLLOW_7_in_a32 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_7_in_a32;
  }

  static BitSet _FOLLOW_8_in_type49 = null;
  static BitSet get FOLLOW_8_in_type49() {
    if(_FOLLOW_8_in_type49 == null) 
      _FOLLOW_8_in_type49 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_8_in_type49;
  }



 }




class t058rewriteAST42Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST42Parser_type_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
