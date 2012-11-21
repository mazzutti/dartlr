// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

class TreeRewriter extends TreeParser { 

  bool _showTransformations = false;
  TokenStream _originalTokenStream;
  TreeAdaptor _originalAdaptor;
  
  TreeRewriter(TreeNodeStream input, RecognizerSharedState state) 
    :super.fromRecognizerSharedState(input, state) {
   _originalAdaptor =_input.treeAdaptor;
   _originalTokenStream =_input.tokenStream;        
  }

  applyOnce(t, TreeRewriter_fptr whichRule) {
    if (t == null) return null;
    try {
      state = new RecognizerSharedState();
     _input = new CommonTreeNodeStream(_originalAdaptor, t);
     _input.tokenStream =_originalTokenStream;
      setBacktrackingLevel(1);
      TreeRuleReturnScope r = whichRule.rule();
      setBacktrackingLevel(0);
      if (failed()) return t;
      if (_showTransformations &&
         r != null && !(t == r.tree) && r.tree != null) {
       reportTransformation(t, r.tree);
      }
      if (r != null && r.tree != null) return r.tree;
      else return t;
    } on RecognitionException catch(e) { ; }
    return t;
  }

  applyRepeatedly(t, TreeRewriter_fptr whichRule) {
    bool treeChanged = true;
    while (treeChanged  ) {
      var u =applyOnce(t, whichRule);
      treeChanged = !(t == u);
      t = u;
    }
    return t;
  }

  downup(t, [bool showTransformations]) {
    if(showTransformations)
   _showTransformations = showTransformations;
    TreeVisitor v = new TreeVisitor(new CommonTreeAdaptor());
    TreeVisitorAction actions = new _TreeRewriterTreeVisitorAction(this);
    t = v.visit(t, actions);
    return t;
  }

  reportTransformation(oldTree, newTree) {
    print("${(oldTree as Tree).toStringTree()} -> ${(newTree as Tree).toStringTree()}");
  }

  topdown() =>  null;
  
  bottomup() => null;
  
}

abstract class TreeRewriter_fptr {
  rule(); 
}

class _TreeRewriterTopdown_fptr implements TreeRewriter_fptr {
  
  TreeRewriter _tr;
  
  _TreeRewriterTopdown_fptr(this._tr);
  
  rule() =>_tr.topdown(); 
  
}

class _TreeRewriterBottomup_ftpr implements TreeRewriter_fptr {
  
  TreeRewriter _tr;
  
  _TreeRewriterBottomup_ftpr(this._tr);
  
  rule() =>_tr.bottomup(); 
  
}

class _TreeRewriterTreeVisitorAction implements TreeVisitorAction {
  
  TreeRewriter _tr;
  
  _TreeRewriterTreeVisitorAction(this._tr);
  
  pre(t) =>_tr.applyOnce(t, new _TreeRewriterTopdown_fptr(_tr));
  
  post(t) =>_tr.applyRepeatedly(t, new _TreeRewriterBottomup_ftpr(_tr)); 
  
}


