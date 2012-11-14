part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** Build and navigate trees with this object.  Must know about the names
 *  of tokens so you have to pass in a map or array of token names (from which
 *  this class can build the map).  I.e., Token DECL means nothing unless the
 *  class can translate it to a token type.
 *
 *  In order to create nodes and navigate, this class needs a [TreeAdaptor].
 *
 *  This class can build a token type -> node index for repeated use or for
 *  iterating over the various nodes with a particular type.
 *
 *  This class works in conjunction with the TreeAdaptor rather than moving
 *  all this functionality into the adaptor.  An adaptor helps build and
 *  navigate trees using methods.  This class helps you do it with string
 *  patterns like "(A B C)".  You can create a tree from that pattern or
 *  match subtrees against it.
 */
class TreeWizard {
  
  TreeAdaptor _adaptor;
  Map _tokenNameToTypeMap;  

  static Set _INDEX_ALL;
  
  static Set get  INDEX_ALL {
    if(_INDEX_ALL == null)
      _INDEX_ALL = new HashSet();
    return _INDEX_ALL;
  }

  TreeWizard(this._adaptor, [tokenNames]) {
    if(tokenNames is Map)  
      this._tokenNameToTypeMap = tokenNames;
    else if (tokenNames is List<String>)
      this._tokenNameToTypeMap = this.computeTokenTypes(tokenNames);
  }

  /** Compute a Map<String, int> that is an inverted index of
  *  tokenNames (which maps int token types to names).
  */
  Map computeTokenTypes(List<String> tokenNames) {
    Map m = new HashMap();
    if (tokenNames == null) return m; 
    for (int type = Token.MIN_TOKEN_TYPE; type < tokenNames.length; type++) {
      String name = tokenNames[type];
      m[name] = type;
    }
    return m;
  }

  /** Using the map of token names to token types, return the type. */
  int getTokenType(String tokenName) {
    if (this._tokenNameToTypeMap == null)
       return Token.INVALID_TOKEN_TYPE;
    int type = this._tokenNameToTypeMap[tokenName];
    if (type != null)
      return type;
    return Token.INVALID_TOKEN_TYPE;
  }
  
  /** Walk the entire tree and make a node name to nodes mapping.
   *  For now, use recursion but later nonrecursive version may be
   *  more efficient.  Returns Map<int, List> where the List is
   *  of your AST node type.  The int is the token type of the node.
   */
  Map index(Object t) {
    Map m = new HashMap();
    this._index(t, m);
    return m;
  }

  /** Do the work for index */
  void _index(Object t, Map m) {
    if (t == null) return; 
    int type = this._adaptor.getType(t);
    List elements = m[type];
    if (elements == null) {
      elements = new List();
      m[type] = elements;
    }
    elements.add(t);
    int n = this._adaptor.getChildCount(t);
    for (int i = 0; i < n; i++) {
      Object child = this._adaptor.getChild(t, i);
      this._index(child, m);
    }
  }

  /** Return a List of tree nodes with token type ttype */
  List find(Object t, int type) {
    final List nodes = new List();
    this.visit(t, type, new TreeWizardVisitor());
    return nodes;
  }

  /** Return a List of subtrees matching pattern. */
  List findWithPattern(Object t, String pattern) {
    final List subtrees = new List();
    TreePatternLexer tokenizer = new TreePatternLexer(pattern);
    TreePatternParser parser = 
      new TreePatternParser(tokenizer, this, new TreePatternTreeAdaptor());
    final TreePattern tpattern = parser.pattern();   
    if (tpattern == null ||
       tpattern.isNil() ||
       tpattern.className == new WildcardTreePattern().className)
      return null;
    int rootTokenType = tpattern.type;
    this.visit(t, rootTokenType, new _TreeWizardContextVisitorSubTrees(this, tpattern, subtrees));     
    return subtrees;
  }

  Object findFirst(Object t, type) => null;

  /** Visit every ttype node in t, invoking the visitor.  This is a quicker
   *  version of the general visit(t, pattern) method.  The labels arg
   *  of the visitor action method is never set (it's null) since using
   *  a token type rather than a pattern doesn't let us set a label.
   */
  void visit(Object t, int ttype, ContextVisitor visitor) {
    this._visit(t, null, 0, ttype, visitor);
  }

  /** Do the recursive work for visit */
  void _visit(Object t, Object parent, int childIndex, int ttype, ContextVisitor visitor) {
    if (t == null) return;
    if (this._adaptor.getType(t) == ttype)
      visitor.visit(t, parent, childIndex, null);
    int n = this._adaptor.getChildCount(t);
    for (int i = 0; i < n; i++) {
      Object child = this._adaptor.getChild(t, i);
      this._visit(child, t, i, ttype, visitor);
    }
  }

  /** For all subtrees that match the pattern, execute the visit action.
  *  The implementation uses the root node of the pattern in combination
  *  with visit(t, ttype, visitor) so nil-rooted patterns are not allowed.
  *  Patterns with wildcard roots are also not allowed.
  */
  void visitWithPattern(Object t, final String pattern, final ContextVisitor visitor) {
    TreePatternLexer tokenizer = new TreePatternLexer(pattern);
    TreePatternParser parser =
      new TreePatternParser(tokenizer, this, new TreePatternTreeAdaptor());
    final TreePattern tpattern = parser.pattern();    
    if (tpattern == null || tpattern.isNil() ||
       tpattern.className ==  new WildcardTreePattern().className) return;
    final Map labels = new HashMap();
    int rootTokenType = tpattern.type;
    this.visit(t, rootTokenType, new _TreeWizardContextVisitorVisit(this, visitor, tpattern));      
  }

  bool parseWithLabels(Object t, String pattern, Map labels) {
    TreePatternLexer tokenizer = new TreePatternLexer(pattern);
    TreePatternParser parser =
      new TreePatternParser(tokenizer, this, new TreePatternTreeAdaptor());
    TreePattern tpattern = parser.pattern();
    bool matched = _parse(t, tpattern, labels);
    return matched;
  }

  /** Given a pattern like (ASSIGN %lhs:ID %rhs:.) with optional labels
   *  on the various nodes and '.' (dot) as the node/subtree wildcard,
   *  return true if the pattern matches and fill the labels Map with
   *  the labels pointing at the appropriate nodes.  Return false if
   *  the pattern is malformed or the tree does not match.
   *
   *  If a node specifies a text arg in pattern, then that must match
   *  for that node in t.
   */
  bool parse(Object t, String pattern) {
    return this.parseWithLabels(t, pattern, null);
  }

  /** Do the work for parse. Check to see if the tpattern pattern fits the
   *  structure and token types in t1.  Check text if the pattern has
   *  text arguments on nodes.  Fill labels map with pointers to nodes
   *  in tree matched against nodes in pattern with labels.
   */
  bool _parse(Object t1, TreePattern tpattern, Map labels) {   
    if (t1 == null || tpattern == null) return false;
    if (tpattern.className != new WildcardTreePattern().className) {
      if (this._adaptor.getType(t1) != tpattern.type) return false;
      if (tpattern.hasTextArg && !(this._adaptor.getText(t1) == tpattern.text))
        return false;
    }
    if ((tpattern.label != null) && (labels != null))
      labels[tpattern.label] =  t1;
    int n1 = this._adaptor.getChildCount(t1);
    int n2 = tpattern.getChildCount();
    if (n1 != n2) return false;
    for (int i=0; i<n1; i++) {
      Object child1 = this._adaptor.getChild(t1, i);
      TreePattern child2 = tpattern.getChild(i);
      if (!this._parse(child1, child2, labels) ) {
        return false;
      }
    }
    return true;
  }

  /** Create a tree or node from the indicated tree pattern that closely
  *  follows ANTLR tree grammar tree element syntax:
  *
  *    (root child1 ... child2).
  *
  *  You can also just pass in a node: ID
  * 
  *  Any node can have a text argument: ID[foo]
  *  (notice there are no quotes around foo--it's clear it's a string).
  *
  *  nil is a special name meaning "give me a nil node".  Useful for
  *  making lists: (nil A B C) is a list of A B C.
  */
  Object create(String pattern) {
    TreePatternLexer tokenizer = new TreePatternLexer(pattern);
    TreePatternParser parser = new TreePatternParser(tokenizer, this, this._adaptor);
    Object t = parser.pattern();
    return t;
  }

  /** Compare t1 and t2; return true if token types/text, structure match exactly.
   *  The trees are examined in their entirety so that (A B) does not match
   *  (A B C) nor (A (B C)). 
   */
  static bool equals(Object t1, Object t2, TreeAdaptor adaptor) {
    return _equals(t1, t2, adaptor);
  }

  /** Compare type, structure, and text of two trees, assuming adaptor in
   *  this instance of a TreeWizard.
   */
  bool areEquals(Object t1, Object t2) {
    return _equals(t1, t2, this._adaptor);
  }

  static bool _equals(Object t1, Object t2, TreeAdaptor adaptor) {    
    if (t1 == null || t2 == null) return false;
    if (adaptor.getType(t1) != adaptor.getType(t2)) return false;
    if (!(adaptor.getText(t1) == adaptor.getText(t2)))
      return false;
    int n1 = adaptor.getChildCount(t1);
    int n2 = adaptor.getChildCount(t2);
    if (n1 != n2) return false;
    for (int i=0; i<n1; i++) {
      Object child1 = adaptor.getChild(t1, i);
      Object child2 = adaptor.getChild(t2, i);
      if (!_equals(child1, child2, adaptor))
        return false;
    }
    return true;
  } 
}

abstract class ContextVisitor {   
    void visit(Object t, Object parent, int childIndex, Map labels);    
}

abstract class Visitor implements ContextVisitor {
    
  void visit(Object t, Object parent, 
           int childIndex, Map l) {
    this._visit(t);
  }
  
  void _visit(Object t);
}

class TreeWizardVisitor extends Visitor {
  
  void _visit(Object t, [List nodes]) {
    if(nodes != null) nodes.add(t);
  }  
}

class _TreeWizardContextVisitorVisit implements ContextVisitor {
  
  TreeWizard _tw;
  ContextVisitor _visitor;
  TreePattern _tpattern;
  
  _TreeWizardContextVisitorVisit(this._tw, this._visitor, this._tpattern);  
  
  void visit(Object t, Object parent, int childIndex, Map labels) {
    labels.clear();
    if (this._tw._parse(t, this._tpattern, labels)) {
      this._visitor.visit(t, parent, childIndex, labels);
    }
  }  
}

class _TreeWizardContextVisitorSubTrees implements ContextVisitor {
  
  TreeWizard _tw;
  TreePattern _tpattern;
  List _subtrees;
  
  _TreeWizardContextVisitorSubTrees(this._tw, this._tpattern, this._subtrees);
  
  void visit(Object t, Object parent, int childIndex, Map labels) {
    if (this._tw._parse(t, this._tpattern, null))
      this._subtrees.add(t);
  }
}


/** When using %label:TOKENNAME in a tree for parse(), we must
 *  track the label.
 */
class TreePattern extends CommonTree {
  
  String label;
  bool hasTextArg;
  
  TreePattern([Token payload]) : super.fromToken(payload);
  
  String toString() {
    if (this.label != null)
      return "%${this.label}:${super.toString()}";
     else return super.toString();        
  }
  
  String get className => "TreePattern";
  
  
}

class WildcardTreePattern extends TreePattern {
  
  WildcardTreePattern([Token payload]) : super(payload);
  
  String get className => "WildcardTreePattern";  
  
}

/** This adaptor creates TreePattern objects for use during scan() */
class TreePatternTreeAdaptor extends CommonTreeAdaptor {
  
  Object createTreeNode(Token payload) {
    return new TreePattern(payload);
  }
  
}
