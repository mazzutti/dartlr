// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A queue that can dequeue and get(i) in O(1) and grow arbitrarily large.
 *  A linked list is fast at dequeue but slow at get(i).  An array is
 *  the reverse.  This is O(1) for both operations.
 *
 *  List grows until you dequeue last element at end of buffer. Then
 *  it resets to start filling at 0 again.  If adds/removes are balanced, the
 *  buffer will not grow too large.
 *
 *  No iterator stuff as that's not how we'll use it.
 */
class FastQueue<T> {
  
  /** dynamically-sized buffer of elements */
  List<T> _data; 
  /** index of next element to fill */
  int _p = 0;
  int _range = -1;
  
  FastQueue(): this._data = new List<T>(); 

  void reset() { 
    this.clear(); 
  }
  
  void clear() { 
    this._p = 0; 
    this._data.clear(); 
  }

  /** Get and remove first element in queue */
  T remove() {
    T o = this.elementAt(0);
    this._p++;
    if (this._p == this._data.length)
      this.clear();
    return o;
  }

  void add(T o) { 
    this._data.add(o); 
  }

  int size() => this._data.length - this._p;

  int range() => this._range;

  T head() => this.elementAt(0);

  /** Return element i elements ahead of current element.  i==0 gets
   *  current element.  This is not an absolute index into the data list
   *  since p defines the start of the real list.
   */
  T elementAt(int i) {
    int absIndex = this._p + i;
    if(absIndex > this._range) this._range = absIndex;
    return this._data[absIndex];
  }

  /** Return string of current buffer contents; non-destructive */
  String toString() {
    StringBuffer buf = new StringBuffer();
    int n = this.size();
    for(int i=0; i<n; i++) {
      buf.add(this.elementAt(i));
      if((i + 1) < n) 
        buf.add(" ");
    }
    return buf.toString();
  }
  
}
