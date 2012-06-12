// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class V2 extends CommonTree {
  
  int x;
  int y;
  int z;
  
  V2(int ttype, Dynamic _x, [int _y = 0, this.z = 0]) 
    : super.fromToken((_x is Token)? _x: new CommonToken(ttype, "")) {    
    this.x = (_x is Token) ? _y : _x;
    this.y = (_x is Token) ? 0 : _y;
  }
 
  String toString() {
    String txt = "";
    if(this.token != null)
      txt = "$txt${this.text}";
    txt = "$txt<V>;${this.x.toString()}${this.y.toString()}${this.z.toString()}";
    return txt;
  }
}
