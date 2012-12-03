// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_common;

class TreeFilter extends TreeParser {

  TokenStream _originalTokenStream;
  TreeAdaptor _originalAdaptor;

  TreeFilter(TreeNodeStream input) : super(input) {
      _originalAdaptor = input.treeAdaptor;
      _originalTokenStream = input.tokenStream;
  }
  
  TreeFilter.fromRecognizerSharedState(TreeNodeStream input, 
    RecognizerSharedState state) : super.fromRecognizerSharedState(input, state) {
    _originalAdaptor = input.treeAdaptor;
    _originalTokenStream = input.tokenStream;
  }

  applyOnce(t, TreeFilter_fptr whichRule) {
    if (t == null) return;
    try {
      state = new RecognizerSharedState();
      _input = new CommonTreeNodeStream(_originalAdaptor, t);
      _input.tokenStream = _originalTokenStream;
      setBacktrackingLevel(1);
      whichRule.rule();
      setBacktrackingLevel(0);
    } on RecognitionException catch(e) {
      print(e.toString());
    }
  }

  downup(t) {
    var v = new TreeVisitor(new CommonTreeAdaptor());
    var actions = new _TreeVisitorAction(this);
    v.visit(t, actions);
  }
      
  topdown() {}
    
  bottomup() {}
    
}

class _TreeVisitorAction implements TreeVisitorAction {
  
  TreeFilter _tf;
  
  _TreeVisitorAction(this._tf);  
  
  pre(t) {
    _tf.applyOnce(t, new _TreeFilterTopdown_fptr(_tf)); 
    return t; 
  }
  
  post(t) { 
    _tf.applyOnce(t, new _TreeFilterBottomup_fptr(_tf)); 
    return t; 
  }
  
}

abstract class TreeFilter_fptr {
  rule();
}

class _TreeFilterTopdown_fptr implements TreeFilter_fptr {
  
  TreeFilter _tf;
  
  _TreeFilterTopdown_fptr(this._tf);  
  
  rule() => _tf.topdown();
  
}

class _TreeFilterBottomup_fptr implements TreeFilter_fptr {
  
  TreeFilter _tf;
  
  _TreeFilterBottomup_fptr(this._tf);  
  
  rule() => _tf.bottomup();
  
}


