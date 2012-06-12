// $ANTLR 3.4 t058rewriteAST29Parser.g 2012-06-07 21:59:41
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST29Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "VAR", "WS", "','", 
    "'float'", "'int'"
  ];

  static final int EOF = -1;
  static final int T__8 = 8;
  static final int T__9 = 9;
  static final int T__10 = 10;
  static final int ID = 4;
  static final int INT = 5;
  static final int VAR = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST29Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST29Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST29Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST29.g";

  String getRecognizerClassName() => "t058rewriteAST29Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST29.g:
   5:1: a : ID ( ',' ID )* -> ( ^( VAR ID ) )+ ;*/
  t058rewriteAST29Parser_a_return a() {
    t058rewriteAST29Parser_a_return retval = new t058rewriteAST29Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;
    Token char_literal2 = null;
    Token ID3 = null;

    Object ID1_tree=null;
    Object char_literal2_tree=null;
    Object ID3_tree=null;
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_8=new RewriteRuleTokenStream(this._adaptor,"token 8");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST29.g:
       5:3: ( ID ( ',' ID )* -> ( ^( VAR ID ) )+ )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST29.g:
       5:5: ID ( ',' ID )**/
      {
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a26); 
      	 
      	stream_ID.add(ID1);


      	/* ../runtime/dart/tests/grammars/t058rewriteAST29.g:
      	 5:8: ( ',' ID )**/
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 8/*8*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t058rewriteAST29.g:
      			   5:9: ',' ID*/
      			  {
      			  	char_literal2 = this.matchSymbol(this.input,
      			  	    8,FOLLOW_8_in_a29); 
      			  	 
      			  	stream_8.add(char_literal2);


      			  	ID3 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_a31); 
      			  	 
      			  	stream_ID.add(ID3);


      			  }
      			  break;

      			default :
      		    break loop1;
      	  }
      	} while(true);


      	// AST REWRITE
      	// elements: ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 5:17: -> ( ^( VAR ID ) )+*/
      	{
      	    if(!(stream_ID.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_ID.hasNext()) {
      	        /* ../runtime/dart/tests/grammars/t058rewriteAST29.g:
      	         5:20: ^( VAR ID )*/
      	        {
      	        	Object root_1 = this._adaptor.nil();
      	        	root_1 = this._adaptor.becomeRoot(
      	        	this._adaptor.create(VAR, "VAR")
      	        	, root_1);

      	        	this._adaptor.addChild(root_1, 
      	        	stream_ID.nextNode()
      	        	);

      	        	this._adaptor.addChild(root_0, root_1);
      	        }

      	    }
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
  /* ../runtime/dart/tests/grammars/t058rewriteAST29.g:
   6:1: type : ( 'int' | 'float' );*/
  t058rewriteAST29Parser_type_return type() {
    t058rewriteAST29Parser_type_return retval = new t058rewriteAST29Parser_type_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token set4 = null;

    Object set4_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST29.g:
       6:6: ( 'int' | 'float' )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST29.g:
      */
      {
      	root_0 = this._adaptor.nil();


      	set4 = this.input.LT(1);

      	if((this.input.LA(1) >= 9 && this.input.LA(1) <= 10)) {
      	  this.input.consume();
      	  this._adaptor.addChild(root_0, this._adaptor.createTreeNode(set4));
      	  this.state.errorRecovery = false;
      	}
      	else {
      	  MismatchedSetException mse = new MismatchedSetException(null,this.input);
      	  throw mse;
      	}


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



 

  static BitSet _FOLLOW_ID_in_a26 = null;
  static BitSet get FOLLOW_ID_in_a26() {
    if(_FOLLOW_ID_in_a26 == null) 
      _FOLLOW_ID_in_a26 = 
        new BitSet.fromList([0x0000000000000102]);
    return _FOLLOW_ID_in_a26;
  }

  static BitSet _FOLLOW_8_in_a29 = null;
  static BitSet get FOLLOW_8_in_a29() {
    if(_FOLLOW_8_in_a29 == null) 
      _FOLLOW_8_in_a29 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_8_in_a29;
  }

  static BitSet _FOLLOW_ID_in_a31 = null;
  static BitSet get FOLLOW_ID_in_a31() {
    if(_FOLLOW_ID_in_a31 == null) 
      _FOLLOW_ID_in_a31 = 
        new BitSet.fromList([0x0000000000000102]);
    return _FOLLOW_ID_in_a31;
  }



 }




class t058rewriteAST29Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
class t058rewriteAST29Parser_type_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
