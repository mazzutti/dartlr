// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** A tree node that is wrapper for a Token object.*/
class CommonTree extends BaseTree {
 
  /** A single token is the payload */
  Token _token;
  
  /** What token indexes bracket all tokens associated with this node
   *  and below?
   */
  int _startIndex = -1, _stopIndex = -1;
  
  /** Who is the parent node of this node; if null, implies node is root */
  CommonTree _parent;
  
  /** What index is this node in the child list? Range: 0..n-1 */
  int _childIndex = -1;
  
  CommonTree([CommonTree node]) : super(node) {
    if(node != null) {
      _token = node.token;
      _startIndex = node.tokenStartIndex;
      _stopIndex = node.tokenStopIndex;
    }
  }

  CommonTree.fromToken(this._token): super();
  
  Token get token => _token; 
  
  int get childIndex => _childIndex;
  
  Tree get parent => _parent;

  void set parent(Tree t) {
    _parent = t;
  }

  void set childIndex(int index) {
    _childIndex = index;
  }

  int get type {
    if (token == null ) return Token.INVALID_TOKEN_TYPE;
    return token.type;
  }

  String get text {
    if (token == null) return null;
    return token.text;
  }

  int get line {
    if (token == null || token.line == 0) {
      if (getChildCount() > 0)
        return getChild(0).line;     
      return 0;
    }
    return token.line;
  }

  int get charPositionInLine {
    if (token == null || token.charPositionInLine == -1) {
      if (getChildCount() > 0)
        return getChild(0).charPositionInLine;
      return 0;
    }
    return token.charPositionInLine;
  }

  int get tokenStartIndex {
    if (_startIndex == -1 && token != null)
      return token.tokenIndex;
    return _startIndex;
  } 
  
  void set tokenStartIndex(int index) {
    _startIndex = index;
  }

  int get tokenStopIndex {
    if (_stopIndex == -1 && token != null)
      return token.tokenIndex;
    return _stopIndex;
  }
  
  void set tokenStopIndex(int index) {
    _stopIndex = index;
  }
  
  Tree dupNode() => new CommonTree(this);

  bool isNil() => token == null;
  
  /** For every node in this subtree, make sure it's start/stop token's
   *  are set.  Walk depth first, visit bottom up.  Only updates nodes
   *  with at least one token index < 0.
   */
  void setUnknownTokenBoundaries() {
      if (_children == null ) {
          if (_startIndex < 0 || _stopIndex < 0)
            _startIndex = _stopIndex = _token.tokenIndex;
          return;
      }
      for (int i = 0; i< _children.length; i++) 
        _children[i].setUnknownTokenBoundaries();
      if (_startIndex >= 0 && _stopIndex >= 0) return;
      if (_children.length > 0) {
          CommonTree firstChild = children[0];
          CommonTree lastChild = _children[_children.length - 1];
          _startIndex = firstChild.tokenStartIndex;
          _stopIndex = lastChild.tokenStopIndex;
      }
  }  

  String toString() {
    if (isNil()) return "nil";
    if (type == Token.INVALID_TOKEN_TYPE)
      return "<errornode>";
    if (token == null)      
      return null; 
    return token.text;
  }  
}