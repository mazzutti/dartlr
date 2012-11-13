part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** Ref to ID or expr but no tokens in ID stream or subtrees in expr stream */
class RewriteEmptyStreamException extends RewriteCardinalityException {
  
  RewriteEmptyStreamException(String elementDescription) : super(elementDescription);
  
}
