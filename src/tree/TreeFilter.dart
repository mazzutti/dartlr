// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class TreeFilter extends TreeParser {

  TokenStream _originalTokenStream;
  TreeAdaptor _originalAdaptor;

  TreeFilter(TreeNodeStream input) : super(input) {
      this._originalAdaptor = input.treeAdaptor;
      this._originalTokenStream = input.tokenStream;
  }
  
  TreeFilter.fromRecognizerSharedState(TreeNodeStream input, 
    RecognizerSharedState state) : super.fromRecognizerSharedState(input, state) {
    this._originalAdaptor = input.treeAdaptor;
    this._originalTokenStream = input.tokenStream;
  }

  void applyOnce(Object t, TreeFilter_fptr whichRule) {
    if (t == null) return;
    try {
      state = new RecognizerSharedState();
      this._input = new CommonTreeNodeStream(this._originalAdaptor, t);
      this._input.tokenStream = this._originalTokenStream;
      this.setBacktrackingLevel(1);
      whichRule.rule();
      this.setBacktrackingLevel(0);
    }
    catch (RecognitionException e) {
      print(e.toString());
    }
  }

  void downup(Object t) {
    TreeVisitor v = new TreeVisitor(new CommonTreeAdaptor());
    TreeVisitorAction actions = new _TreeVisitorAction(this);
    v.visit(t, actions);
  }
      
  void topdown() {}
    
  void bottomup() {}
    
}

class _TreeVisitorAction implements TreeVisitorAction {
  
  TreeFilter _tf;
  
  _TreeVisitorAction(this._tf);  
  
  Object pre(Object t) {
    this._tf.applyOnce(t, new _TreeFilterTopdown_fptr(this._tf)); 
    return t; 
  }
  
  Object post(Object t) { 
    this._tf.applyOnce(t, new _TreeFilterBottomup_fptr(this._tf)); 
    return t; 
  }
  
}

interface TreeFilter_fptr {
  void rule();
}

class _TreeFilterTopdown_fptr implements TreeFilter_fptr {
  
  TreeFilter _tf;
  
  _TreeFilterTopdown_fptr(this._tf);  
  
  void rule() => this._tf.topdown();
  
}

class _TreeFilterBottomup_fptr implements TreeFilter_fptr {
  
  TreeFilter _tf;
  
  _TreeFilterBottomup_fptr(this._tf);  
  
  void rule() => this._tf.bottomup();
  
}


