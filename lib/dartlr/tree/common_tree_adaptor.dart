// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** A [TreeAdaptor] that works with any [Tree] implementation.  It provides
 *  really just factory methods; all the work is done by [BaseTreeAdaptor].
 *  To get your parser to build nodes of a different type, override
 *  createTreeNode(Token), errorNode(), and to be safe, YourTreeClass.dupNode().
 *  dupNode is called to duplicate nodes during rewrite operations.
 */
class CommonTreeAdaptor extends BaseTreeAdaptor {
  
  /** Duplicate a node.  This is part of the factory;
   *  override if you want another kind of node to be built.
   */
  dupNode(t) {
    if (t == null) 
      return null;
    return (t as Tree).dupNode();
  }

  createTreeNode(Token payload) {
    return new CommonTree.fromToken(payload);
  }
  
  /** Tell me how to create a token for use with imaginary token nodes.
   *  For example, there is probably no input symbol associated with imaginary
   *  token DECL, but you need to create it as a payload or whatever for
   *  the DECL node as in ^(DECL type ID).
   *
   *  This is a variant of createToken where the new token is derived from
   *  an actual real input token.  Typically this is for converting '{'
   *  tokens to BLOCK etc...  You'll see
   *
   *    r : lc='{' ID+ '}' -> ^(BLOCK[$lc] ID+) ;
   *
   *  If you care what the token payload objects' type is, you should
   *  override this method and any other createToken variant.
   */
  Token createTokenFromToken(Token fromToken) {
    return new CommonToken.fromToken(fromToken);
  }
  
  /** Tell me how to create a token for use with imaginary token nodes.
   *  For example, there is probably no input symbol associated with imaginary
   *  token DECL, but you need to create it as a payload or whatever for
   *  the DECL node as in ^(DECL type ID).
   *
   *  If you care what the token payload objects' type is, you should
   *  override this method and any other createToken variant.
   */
  Token createToken(int tokenType, String text) {
    return new CommonToken(tokenType, text);
  }

  /** Track start/stop token for subtree root created for a rule.
   *  Only works with Tree nodes.  For rules that match nothing,
   *  seems like this will yield start=i and stop=i-1 in a nil node.
   *  Might be useful info so I'll not force to be i..i.
   */
  void setTokenBoundaries(t, Token startToken, Token stopToken) {
    if (t == null) return;
    int start = 0;
    int stop = 0;
    if (startToken != null) start = startToken.tokenIndex;
    if (stopToken != null) stop = stopToken.tokenIndex;
    t.tokenStartIndex = start;
    t.tokenStopIndex = stop;
  }

  int getTokenStartIndex(t) => t == null ? -1 : t.tokenStartIndex;

  int getTokenStopIndex(t) => t == null ? -1 : t.tokenStopIndex;

  String getText(t) => t == null ? null : t.text;

  int getType(t) => t == null ? Token.INVALID_TOKEN_TYPE : t.type;
  
  /** What is the Token associated with this node?  If
   *  you are not using [CommonTree], then you must
   *  override this in your own adaptor.
   */
  Token getToken(t) => t is CommonTree ? t.token : null;

  getChild(t, int i) => t == null ? null : t[i];

  int getChildCount(t) => t == null ? 0 : t.childCount;

  getParent(t) => t == null ? null : t.parent;

  setParent(t, parent) {if (t != null) t.parent = parent;}

  int getChildIndex(t) => t == null ? 0 : t.childIndex;

  setChildIndex(t, int index) {
    if (t != null) t.childIndex = index;
  }

  void replaceChildren(parent, int startChildIndex, int stopChildIndex, t) {
    if (parent != null )
      (parent as Tree).replaceChildren(startChildIndex, stopChildIndex, t);
  }
}
