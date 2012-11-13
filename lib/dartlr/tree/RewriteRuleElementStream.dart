part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A generic list of elements tracked in an alternative to be used in
 *  a -> rewrite rule.  We need to subclass to fill in the next() method,
 *  which returns either an AST node wrapped around a token payload or
 *  an existing subtree.
 *
 *  Once you start next()ing, do not try to add more elements.  It will
 *  break the cursor tracking I believe.
 *
 *  See [RewriteRuleSubtreeStream]
 *  See [RewriteRuleTokenStream]
 */
class RewriteRuleElementStream {
  
  /** Cursor 0..n-1.  If singleElement!=null, cursor is 0 until you next(),
   *  which bumps it to 1 meaning no more elements.
   */
  int _cursor = 0;
  
  /** Track single elements w/o creating a list.  Upon 2nd add, alloc list */
  Object _singleElement;
  
  /** The list of tokens or subtrees we are tracking */
  List _elements;
  
  /** Once a node / subtree has been used in a stream, it must be dup'd
   *  from then on.  Streams are reset after subrules so that the streams
   *  can be reused in future subrules.  So, reset must set a dirty bit.
   *  If dirty, then next() always returns a dup.
   *
   *  I wanted to use "naughty bit" here, but couldn't think of a way
   *  to use "naughty".
   */
  bool _dirty = false;
  
  /** The element or stream description; usually has name of the token or
   *  rule reference that this list tracks.  Can include rulename too, but
   *  the exception would track that info.
   */
  String _elementDescription;
  TreeAdaptor _adaptor;
  
  /** Create a stream with one Object (can be a list of objects) */  
  RewriteRuleElementStream(this._adaptor, 
         this._elementDescription, [Object e]) {
    if(e != null) {
      if(e is List) {
        this._elements = e;
        this._singleElement = null;
      } else 
        this.add(e);
    }
  }

  /** Reset the condition of this stream so that it appears we have
  *  not consumed any of its elements.  Elements themselves are untouched.
  *  Once we reset the stream, any future use will need duplicates.  Set
  *  the dirty bit.
  */
  void reset() {
    this._cursor = 0;
    this._dirty = true;
  }

  void add(Object el) {
    if (el == null) return;
    if (this._elements != null ) { 
      this._elements.add(el);
      return;
    }
    if (this._singleElement == null ) {
      this._singleElement = el;
      return;
    }   
    this._elements = new List();
    this._elements.add(this._singleElement);
    this._singleElement = null;
    this._elements.add(el);
  }

  /** Return the next element in the stream.  If out of elements, throw
  *  an exception unless size() == 1.  If size is 1, then return elements[0].
  *  Return a duplicate node/subtree if stream is out of elements and
  *  size == 1.  If we've already used the element, dup (dirty bit set).
  */
  Object nextTree() {
    int n = this.size();
    if (this._dirty || (this._cursor >= n && n == 1) ) {
      Object el = _next();
      return this._dup(el);
    }
    Object el = _next();
    return el;
  }

  /** do the work of getting the next element, making sure that it's
   *  a tree node or subtree.  Deal with the optimization of single-
   *  element list versus list of size > 1.  Throw an exception
   *  if the stream is empty or we're out of elements and size>1.
   *  protected so you can override in a subclass if necessary.
   */
  Object _next() {
    int n = this.size();
    if (n == 0)
      throw new RewriteEmptyStreamException(this._elementDescription);
    if ( this._cursor >= n) { 
      if (n == 1) {         
        return this._toTree(this._singleElement);
      }     
      throw new RewriteCardinalityException(this._elementDescription);
    }   
    if ( this._singleElement != null) {
      this._cursor++;     
      return  this._toTree(this._singleElement);
    }    
    Object o =  this._toTree(this._elements[this._cursor]); 
    this._cursor++;    
    return o;
  }

  /** When constructing trees, sometimes we need to dup a token or AST
  *  subtree.  Dup'ing a token means just creating another AST node
  *  around it.  For trees, you must call the adaptor.dupTree() unless
  *  the element is for a tree root; then it must be a node dup.
  */
  Object _dup(Object el);

  /** Ensure stream emits trees; tokens must be converted to AST nodes.
   *  AST nodes can be passed through unmolested.
   */
  Object _toTree(Object el) {
    return el;
  }

  bool hasNext() {
    return ( this._singleElement != null &&  this._cursor < 1) ||
         (this._elements!=null &&  this._cursor <  this._elements.length);
  }

  int size() {
    int n = 0;
    if (this._singleElement != null) n = 1;
    if (this._elements != null) return this._elements.length;
    return n;
  }

  String get description => this._elementDescription;
  
}
