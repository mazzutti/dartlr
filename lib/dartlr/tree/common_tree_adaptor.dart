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
  Object dupNode(Object t) {
    if (t == null) 
      return null;
    return (t as Tree).dupNode();
  }

  Object createTreeNode(Token payload) {
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
  void setTokenBoundaries(Object t, Token startToken, Token stopToken) {
    if (t == null) return;
    int start = 0;
    int stop = 0;
    if (startToken != null) start = startToken.tokenIndex;
    if (stopToken != null) stop = stopToken.tokenIndex;
    (t as Tree).tokenStartIndex = start;
    (t as Tree).tokenStopIndex = stop;
  }

  int getTokenStartIndex(Object t) {
    if (t == null) return -1;
    return (t as Tree).tokenStartIndex;
  }

  int getTokenStopIndex(Object t) {
    if (t == null) return -1;
    return (t as Tree).tokenStopIndex;
  }

  String getText(Object t) {
    if (t == null) return null;
    return (t as Tree).text;
  }

  int getType(Object t) {
    if (t == null) return Token.INVALID_TOKEN_TYPE;
    return (t as Tree).type;
  }
  
  /** What is the Token associated with this node?  If
   *  you are not using [CommonTree], then you must
   *  override this in your own adaptor.
   */
  Token getToken(Object t) {
    if (t is CommonTree) return t.token;
    return null;
  }

  Object getChild(Object t, int i) {
    if (t == null) return null;
        return (t as Tree).getChild(i);
    }

  int getChildCount(Object t) {
    if (t == null) return 0;
    return (t as Tree).getChildCount();
  }

  Object getParent(Object t) {
    if (t == null) return null;
    return (t as Tree).parent;
  }

  void setParent(Object t, Object parent) {
    if (t != null) (t as Tree).parent = parent;
  }

  int getChildIndex(Object t) {
    if (t == null) return 0;
    return (t as Tree).childIndex;
  }

  void setChildIndex(Object t, int index) {
    if (t != null) (t as Tree).childIndex = index;
  }

  void replaceChildren(Object parent, int startChildIndex, int stopChildIndex, Object t) {
    if (parent != null )
      (parent as Tree).replaceChildren(startChildIndex, stopChildIndex, t);
  }
}
