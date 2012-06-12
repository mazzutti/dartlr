// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class IntArray {
  
  static final int INITIAL_SIZE = 10;
  List<int> data;
  int _p = -1;

  void add(int v) {
    this.ensureCapacity(this._p + 1);
    this.data[++this._p] = v;
  }

  void push(int v) {
    this.add(v);
  }

  int pop() {
    int v = this.data[this._p];
    this._p--;
    return v;
  }

  int size() => this._p;

  void clear() {
    this._p = -1;
  }

  void ensureCapacity(int index) {
    if (this.data == null)
      this.data = new List<int>(INITIAL_SIZE);
    else if ((index + 1) >= this.data.length ) {
      int newSize = this.data.length*2;
      if (index > newSize)
        newSize = index + 1;
      List<int> newData = new List<int>(newSize);
      Arrays.copy(this.data, 0, newData, 0, this.data.length);
      this.data = newData;
    }
  }
  
}
