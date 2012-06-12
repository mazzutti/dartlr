// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
      this._token = node.token;
      this._startIndex = node.tokenStartIndex;
      this._stopIndex = node.tokenStopIndex;
    }
  }

  CommonTree.fromToken(this._token): super();
  
  Token get token() => this._token; 
  
  int get childIndex() => this._childIndex;
  
  Tree get parent() => this._parent;

  void set parent(Tree t) {
    this._parent = t;
  }

  void set childIndex(int index) {
    this._childIndex = index;
  }

  int get type() {
    if (this.token == null ) return Token.INVALID_TOKEN_TYPE;
    return this.token.type;
  }

  String get text() {
    if (this.token == null) return null;
    return this.token.text;
  }

  int get line() {
    if (this.token == null || this.token.line == 0) {
      if (this.getChildCount() > 0)
        return this.getChild(0).line;     
      return 0;
    }
    return this.token.line;
  }

  int get charPositionInLine() {
    if (this.token == null || this.token.charPositionInLine == -1) {
      if (this.getChildCount() > 0)
        return getChild(0).charPositionInLine;
      return 0;
    }
    return token.charPositionInLine;
  }

  int get tokenStartIndex() {
    if (this._startIndex == -1 && this.token != null)
      return token.tokenIndex;
    return this._startIndex;
  } 
  
  void set tokenStartIndex(int index) {
    this._startIndex = index;
  }

  int get tokenStopIndex() {
    if (this._stopIndex == -1 && this.token != null)
      return this.token.tokenIndex;
    return this._stopIndex;
  }
  
  void set tokenStopIndex(int index) {
    this._stopIndex = index;
  }
  
  Tree dupNode() => new CommonTree(this);

  bool isNil() => this.token == null;
  
  /** For every node in this subtree, make sure it's start/stop token's
   *  are set.  Walk depth first, visit bottom up.  Only updates nodes
   *  with at least one token index < 0.
   */
  void setUnknownTokenBoundaries() {
      if (this._children == null ) {
          if (this._startIndex < 0 || this._stopIndex < 0)
            this._startIndex = this._stopIndex = this._token.tokenIndex;
          return;
      }
      for (int i = 0; i< this._children.length; i++) 
        this._children[i].setUnknownTokenBoundaries();
      if (this._startIndex >= 0 && this._stopIndex >= 0) return;
      if (this._children.length > 0) {
          CommonTree firstChild = children[0];
          CommonTree lastChild = this._children[this._children.length - 1];
          this._startIndex = firstChild.tokenStartIndex;
          this._stopIndex = lastChild.tokenStopIndex;
      }
  }  

  String toString() {
    if (this.isNil()) return "nil";
    if (this.type == Token.INVALID_TOKEN_TYPE)
      return "<errornode>";
    if (this.token == null)      
      return null; 
    return this.token.text;
  }
  
}
