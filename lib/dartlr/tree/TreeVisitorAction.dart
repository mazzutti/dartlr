part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** How to execute code for node t when a visitor visits node t.  Execute
 *  pre() before visiting children and execute post() after visiting children.
 */
class TreeVisitorAction {
   
  /** Execute an action before visiting children of t.  Return t or
   *  a rewritten t.  It is up to the visitor to decide what to do
   *  with the return value.  Children of returned value will be
   *  visited if using TreeVisitor.visit().
   */
  Object pre(Object t);
  
  /** Execute an action after visiting children of t.  Return t or
   *  a rewritten t.  It is up to the visitor to decide what to do
   *  with the return value.
   */
  Object post(Object t);
  
}
