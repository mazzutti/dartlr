// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

class TreePatternParser {
  
  TreePatternLexer _tokenizer;
  int _ttype;
  TreeWizard _wizard;
  TreeAdaptor _adaptor;

  TreePatternParser(this._tokenizer, this._wizard, this._adaptor) {
    _ttype = _tokenizer.nextToken();
  }

  pattern() {
    if (_ttype == TreePatternLexer.BEGIN)
      return parseTree();
    else if (_ttype == TreePatternLexer.ID) {
      var node = parseNode();
      if (_ttype == TreePatternLexer.EOF)
        return node;
    }
  }

  parseTree() {
    if (_ttype != TreePatternLexer.BEGIN) 
      throw new Exception("no BEGIN");
    _ttype = _tokenizer.nextToken();
    var root = parseNode();
    if (root == null) return null; 
    while (_ttype == TreePatternLexer.BEGIN ||
        _ttype == TreePatternLexer.ID ||
        _ttype == TreePatternLexer.PERCENT ||
        _ttype == TreePatternLexer.DOT) {
      if (_ttype == TreePatternLexer.BEGIN) {
        var subtree = parseTree();
        _adaptor.addChild(root, subtree);
      }
      else {
        var child = parseNode();
        if (child == null) return null;
        _adaptor.addChild(root, child);
      }
    }
    if (_ttype != TreePatternLexer.END)
      throw new Exception("no END");
    _ttype = _tokenizer.nextToken();
    return root;
  }

  parseNode() {
    String label = null;
    if (_ttype == TreePatternLexer.PERCENT) {     
      _ttype = _tokenizer.nextToken();
      if (_ttype != TreePatternLexer.ID) return null;
      label = _tokenizer.sval.toString();
      _ttype = _tokenizer.nextToken();
      if (_ttype != TreePatternLexer.COLON) return null;
      _ttype = _tokenizer.nextToken();
    }
    if (_ttype == TreePatternLexer.DOT) {
      _ttype = _tokenizer.nextToken();
      Token wildcardPayload = new CommonToken(0, ".");
      TreePattern node =
        new WildcardTreePattern(wildcardPayload);
      if (label != null)
        node.label = label;
      return node;
    }
    if (_ttype != TreePatternLexer.ID) return null;
    String tokenName = _tokenizer.sval.toString();
    _ttype = _tokenizer.nextToken();
    if (tokenName == "nil") return _adaptor.nil();
    String text = tokenName;
    String arg = null;
    if (_ttype == TreePatternLexer.ARG) {
      arg = _tokenizer.sval.toString();
      text = arg;
      _ttype = _tokenizer.nextToken();
    }
    int treeNodeType = _wizard.getTokenType(tokenName);
    if (treeNodeType == Token.INVALID_TOKEN_TYPE) return null;
    var node;
    node = _adaptor.createFromTokenType(treeNodeType, text);
    if (label != null && node.runtimeType.toString() ==  "TreePattern")
      (node as TreePattern).label = label;
    if (arg != null && node.runtimeType.toString() == "TreePattern")
      (node as TreePattern).hasTextArg = true;
    return node;
  }
}

