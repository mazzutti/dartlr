part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class TreeRewriter extends TreeParser { 

  bool _showTransformations = false;
  TokenStream _originalTokenStream;
  TreeAdaptor _originalAdaptor;
  
  TreeRewriter(TreeNodeStream input, RecognizerSharedState state) 
    :super.fromRecognizerSharedState(input, state) {
    this._originalAdaptor = this._input.treeAdaptor;
    this._originalTokenStream = this._input.tokenStream;        
  }

  Object applyOnce(Object t, TreeRewriter_fptr whichRule) {
    if (t == null) return null;
    try {
      state = new RecognizerSharedState();
      this._input = new CommonTreeNodeStream(this._originalAdaptor, t);
      this._input.tokenStream = this._originalTokenStream;
      setBacktrackingLevel(1);
      TreeRuleReturnScope r = whichRule.rule();
      setBacktrackingLevel(0);
      if (this.failed()) return t;
      if (this._showTransformations &&
         r != null && !(t == r.tree) && r.tree != null) {
        this.reportTransformation(t, r.tree);
      }
      if (r != null && r.tree != null) return r.tree;
      else return t;
    } on RecognitionException catch(e) { ; }
    return t;
  }

  Object applyRepeatedly(Object t, TreeRewriter_fptr whichRule) {
    bool treeChanged = true;
    while (treeChanged  ) {
      Object u = this.applyOnce(t, whichRule);
      treeChanged = !(t == u);
      t = u;
    }
    return t;
  }

  Object downup(Object t, [bool showTransformations]) {
    if(showTransformations)
    this._showTransformations = showTransformations;
    TreeVisitor v = new TreeVisitor(new CommonTreeAdaptor());
    TreeVisitorAction actions = new _TreeRewriterTreeVisitorAction(this);
    t = v.visit(t, actions);
    return t;
  }

  void reportTransformation(Object oldTree, Object newTree) {
    print("${oldTree.dynamic.toStringTree()} -> ${newTree.dynamic.toStringTree()}");
  }

  Object topdown() =>  null;
  
  Object bottomup() => null;
  
}

abstract class TreeRewriter_fptr {
  Object rule(); 
}

class _TreeRewriterTopdown_fptr implements TreeRewriter_fptr {
  
  TreeRewriter _tr;
  
  _TreeRewriterTopdown_fptr(this._tr);
  
  Object rule() => this._tr.topdown(); 
  
}

class _TreeRewriterBottomup_ftpr implements TreeRewriter_fptr {
  
  TreeRewriter _tr;
  
  _TreeRewriterBottomup_ftpr(this._tr);
  
  Object rule() => this._tr.bottomup(); 
  
}

class _TreeRewriterTreeVisitorAction implements TreeVisitorAction {
  
  TreeRewriter _tr;
  
  _TreeRewriterTreeVisitorAction(this._tr);
  
  Object pre(Object t) => this._tr.applyOnce(t, new _TreeRewriterTopdown_fptr(this._tr));
  
  Object post(Object t) => this._tr.applyRepeatedly(t, new _TreeRewriterBottomup_ftpr(this._tr)); 
  
}


