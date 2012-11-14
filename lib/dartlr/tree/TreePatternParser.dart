part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class TreePatternParser {
  
  TreePatternLexer _tokenizer;
  int _ttype;
  TreeWizard _wizard;
  TreeAdaptor _adaptor;

  TreePatternParser(this._tokenizer, this._wizard, this._adaptor) {
    this._ttype = this._tokenizer.nextToken();
  }

  Object pattern() {
    if (this._ttype == TreePatternLexer.BEGIN)
      return this.parseTree();
    else if (this._ttype == TreePatternLexer.ID) {
      Object node = this.parseNode();
      if (this._ttype == TreePatternLexer.EOF)
        return node;
    }
  }

  Object parseTree() {
    if (this._ttype != TreePatternLexer.BEGIN) 
      throw new Exception("no BEGIN");
    this._ttype = this._tokenizer.nextToken();
    Object root = this.parseNode();
    if (root == null) return null; 
    while (this._ttype == TreePatternLexer.BEGIN ||
        this._ttype == TreePatternLexer.ID ||
        this._ttype == TreePatternLexer.PERCENT ||
        this._ttype == TreePatternLexer.DOT) {
      if (this._ttype == TreePatternLexer.BEGIN) {
        Object subtree = this.parseTree();
        this._adaptor.addChild(root, subtree);
      }
      else {
        Object child = this.parseNode();
        if (child == null) return null;
        this._adaptor.addChild(root, child);
      }
    }
    if (this._ttype != TreePatternLexer.END)
      throw new Exception("no END");
    this._ttype = this._tokenizer.nextToken();
    return root;
  }

  Object parseNode() {
    String label = null;
    if (this._ttype == TreePatternLexer.PERCENT) {     
      this._ttype = this._tokenizer.nextToken();
      if (this._ttype != TreePatternLexer.ID) return null;
      label = this._tokenizer.sval.toString();
      this._ttype = this._tokenizer.nextToken();
      if (this._ttype != TreePatternLexer.COLON) return null;
      this._ttype = this._tokenizer.nextToken();
    }
    if (this._ttype == TreePatternLexer.DOT) {
      this._ttype = this._tokenizer.nextToken();
      Token wildcardPayload = new CommonToken(0, ".");
      TreePattern node =
        new WildcardTreePattern(wildcardPayload);
      if (label != null)
        node.label = label;
      return node;
    }
    if (this._ttype != TreePatternLexer.ID) return null;
    String tokenName = this._tokenizer.sval.toString();
    this._ttype = this._tokenizer.nextToken();
    if (tokenName == "nil") return this._adaptor.nil();
    String text = tokenName;
    String arg = null;
    if (this._ttype == TreePatternLexer.ARG) {
      arg = this._tokenizer.sval.toString();
      text = arg;
      this._ttype = this._tokenizer.nextToken();
    }
    int treeNodeType = this._wizard.getTokenType(tokenName);
    if (treeNodeType == Token.INVALID_TOKEN_TYPE) return null;
    Object node;
    node = this._adaptor.createFromTokenType(treeNodeType, text);
    if (label != null && node.className ==  new TreePattern().className)
      node.label = label;
    if (arg != null && node.className == new TreePattern().className)
      node.hasTextArg = true;
    return node;
  }
}

