// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

class IntArray {
  
  static final int INITIAL_SIZE = 10;
  List<int> data;
  int _p = -1;

  void add(int v) {
    ensureCapacity(_p + 1);
    data[++_p] = v;
  }

  void push(int v) {
    add(v);
  }

  int pop() {
    int v = data[_p];
    _p--;
    return v;
  }

  int size() => _p;

  void clear() {
    _p = -1;
  }

  void ensureCapacity(int index) {
    if (data == null)
      data = new List<int>(INITIAL_SIZE);
    else if ((index + 1) >= data.length ) {
      int newSize = data.length*2;
      if (index > newSize)
        newSize = index + 1;
      List<int> newData = new List<int>(newSize);
      Arrays.copy(data, 0, newData, 0, data.length);
      data = newData;
    }
  }
  
}
