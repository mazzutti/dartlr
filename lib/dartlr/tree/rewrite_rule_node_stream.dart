// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** Queues up nodes matched on left side of -> in a tree parser. This is
 *  the analog of [RewriteRuleTokenStream] for normal parsers. 
 */
class RewriteRuleNodeStream extends RewriteRuleElementStream {

  /** Create a stream with one  or more elements */
  RewriteRuleNodeStream(TreeAdaptor adaptor, 
   String elementDescription, [elements]) : super(adaptor, elementDescription, elements);

  nextNode() => _next();

  _toTree(el) => _adaptor.dupNode(el);

  _dup(el) => throw new UnsupportedError("dup can't be called for a node stream.");  
}

