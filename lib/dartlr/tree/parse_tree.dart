// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** A record of the rules used to match a token sequence.  The tokens
 *  end up as the leaves of this tree and rule nodes are the interior nodes.
 *  This really adds no functionality, it is just an alias for [CommonTree]
 *  that is more meaningful (specific) and holds a [String] to display for a node.
 */
class ParseTree extends BaseTree {
  
  var payload;
  List hiddenTokens;

  ParseTree(this.payload);

  Tree dupNode() => null;

  int get type => 0;

  String get text => toString();

  int get tokenStartIndex => 0;
  
  void set tokenStartIndex(int index) {}

  int get tokenStopIndex => 0; 

  void set tokenStopIndex(int index) {}

  String toString() {
    if (payload is Token) {
      Token t = payload;
      if (t.type == Token.EOF)
        return "<EOF>";
      return t.text;
    }
    return payload.toString();
  }

  /** Emit a token and all hidden nodes before.  EOF node holds all
   *  hidden tokens after last real token.
   */
  String toStringWithHiddenTokens() {
    StringBuffer buf = new StringBuffer();
    if (hiddenTokens != null) {
      for (int i = 0; i < hiddenTokens.length; i++) {
        Token hidden = hiddenTokens[i];
        buf.add(hidden.text);
      }
    }
    String nodeText = toString();
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
    if (payload is Token ) {
      buf.add(toStringWithHiddenTokens());
      return;
    }
    for (int i = 0; children != null && i < children.length; i++) {
      ParseTree t = children[i];
      t._toStringLeaves(buf);
    }
  }
}
