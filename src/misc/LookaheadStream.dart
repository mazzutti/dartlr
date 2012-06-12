// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A lookahead queue that knows how to mark/release locations
 *  in the buffer for backtracking purposes. Any markers force the [FastQueue]
 *  superclass to keep all tokens until no more markers; then can reset
 *  to avoid growing a huge buffer.
 */
class LookaheadStream<T> extends FastQueue<T> {
  
  static final int UNINITIALIZED_EOF_ELEMENT_INDEX = 2^31-1; //TODO change to MAX_INT_VALUE

  /** Absolute token index. It's the index of the symbol about to be
   *  read via LT(1). Goes from 0 to numtokens.
   */
  int _currentElementIndex = 0;
  T _prevElement;
  
  /** Track object returned by nextElement upon end of stream;
   *  Return it later when they ask for LT passed end of input.
   */
  T eof = null;
  
  /** Track the last mark() call result value for use in rewind(). */
  int _lastMarker;
  
  /** tracks how deep mark() calls are nested */
  int _markDepth = 0;

  void reset() {
    super.reset();
    this._currentElementIndex = 0;
    this._p = 0;
    this._prevElement = null;        
  }
  
  /** Implement nextElement to supply a stream of elements to this
   *  lookahead buffer.  Return eof upon end of the stream we're pulling from.
   */
  abstract T nextElement();

  abstract bool isEOF(T o);

  /** Get and remove first element in queue; override FastQueue.remove();
   *  it's the same, just checks for backtracking.
   */
  T remove() {
    T o = this.elementAt(0);
    this._p++;
    if (this._p == this._data.length && this._markDepth == 0)
        this.clear();
    return o;
  }

  /** Make sure we have at least one element to remove, even if EOF */
  void consume() {
    this._syncAhead(1);
    this._prevElement = this.remove();
    this._currentElementIndex++;
  }

  /** Make sure we have 'need' elements from current position p. Last valid
   *  p index is data.length - 1.  p + need - 1 is the data index 'need' elements
   *  ahead.  If we need 1 element, (p+1-1 )== p must be < data.length.
   */
  void _syncAhead(int need) {
    int n = (this._p + need - 1) - this._data.length + 1; 
    if (n > 0) 
      this.fill(n);                 
  }

  /** add n elements to buffer */
  void fill(int n) {
    for (int i=1; i<=n; i++) {
      T o = this.nextElement();
      if (this.isEOF(o)) 
        this.eof = o;
      this._data.add(o);
    }
  }

  /** Size of entire stream is unknown; we only know buffer size from [FastQueue] */
  int size() { 
    throw new UnsupportedOperationException("streams are of unknown size");
  }

  T LT(int k) {
    if (k == 0) return null;
    if (k < 0) return this._LB(-k);
    this._syncAhead(k);
    if ((this._p + k - 1) > this._data.length) return eof;
    return this.elementAt(k - 1);
  }

  int index() => this._currentElementIndex;

  int mark() {
    this._markDepth++;
    this._lastMarker = this._p;
    return this._lastMarker;
  }

  void release(int marker) {}

  void rewind([int marker = null]) {
    if(marker == null) 
      this.seek(this._lastMarker);
    else {
      this._markDepth--;
      this.seek(marker);
    }
  }
  
  /** Seek to a 0-indexed position within data buffer.  Can't handle
   *  case where you seek beyond end of existing buffer.  Normally used
   *  to seek backwards in the buffer. Does not force loading of nodes.
   *  Doesn't see to absolute position in input stream since this stream
   *  is unbuffered. Seeks only into our moving window of elements.
   */
  void seek(int i) { 
    this._p = i;
  }

  T _LB(int k) {
    if (k == 1) 
      return this._prevElement;
    throw new Exception("can't look backwards more than one token in this stream");
  }

}
