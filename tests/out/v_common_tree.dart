// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class V extends CommonTree {
  
  V(Dynamic t) : super.fromToken((t is Token) ? t : t.token);
 
  String toString() {
    return "${this.text}<V>";
  }
  
}