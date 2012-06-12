// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** Queues up nodes matched on left side of -> in a tree parser. This is
 *  the analog of [RewriteRuleTokenStream] for normal parsers. 
 */
class RewriteRuleNodeStream extends RewriteRuleElementStream {

  /** Create a stream with one  or more elements */
  RewriteRuleNodeStream(TreeAdaptor adaptor, 
   String elementDescription, [Object elements]) : super(adaptor, elementDescription, elements);

  Object nextNode() => this._next();

  Object _toTree(Object el) => this._adaptor.dupNode(el);

  Object _dup(Object el) {
    throw new UnsupportedOperationException("dup can't be called for a node stream.");
  }  
}

