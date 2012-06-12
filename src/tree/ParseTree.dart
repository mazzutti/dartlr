// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A record of the rules used to match a token sequence.  The tokens
 *  end up as the leaves of this tree and rule nodes are the interior nodes.
 *  This really adds no functionality, it is just an alias for [CommonTree]
 *  that is more meaningful (specific) and holds a [String] to display for a node.
 */
class ParseTree extends BaseTree {
  
  Object payload;
  List hiddenTokens;

  ParseTree(Object this.payload);

  Tree dupNode() => null;

  int get type() => 0;

  String get text() => this.toString();

  int get tokenStartIndex() => 0;
  
  void set tokenStartIndex(int index) {}

  int get tokenStopIndex() => 0; 

  void set tokenStopIndex(int index) {}

  String toString() {
    if (this.payload is Token) {
      Token t = payload;
      if (t.type == Token.EOF)
        return "<EOF>";
      return t.text;
    }
    return this.payload.toString();
  }

  /** Emit a token and all hidden nodes before.  EOF node holds all
   *  hidden tokens after last real token.
   */
  String toStringWithHiddenTokens() {
    StringBuffer buf = new StringBuffer();
    if (this.hiddenTokens != null) {
      for (int i = 0; i < this.hiddenTokens.length; i++) {
        Token hidden = hiddenTokens[i];
        buf.add(hidden.text);
      }
    }
    String nodeText = this.toString();
    if (!(nodeText == "<EOF>")) buf.add(nodeText);
    return buf.toString();
  }

  /** Print out the leaves of this tree, which means printing original
   *  input back out.
   */
  String toInputString() {
    StringBuffer buf = new StringBuffer();
    _toStringLeaves(buf);
    return buf.toString();
  }

  void _toStringLeaves(StringBuffer buf) {
    if (this.payload is Token ) {
      buf.add(this.toStringWithHiddenTokens());
      return;
    }
    for (int i = 0; this.children != null && i < this.children.length; i++) {
      ParseTree t = this.children[i];
      t._toStringLeaves(buf);
    }
  }
}
