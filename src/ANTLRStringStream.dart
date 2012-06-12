// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A pretty quick CharStream that pulls all data from an list
 *  directly.  Every method call counts in the lexer.  
 */
class ANTLRStringStream implements CharStream {
 
  /** The data being scanned */
  List<int> _data;
  
  /** How many characters are actually in the buffer */
  int _n;
  
  /** 0..n-1 index into string of next char */
  int _p = 0;
  
  /** line number 1..n within the input */
  int _line = 1;
  
  /** The index of the character relative to the beginning of the line 0..n-1 */
  int _charPositionInLine = 0;
  
  /** tracks how deep mark() calls are nested */
  int _markDepth = 0;
  
  /** A list of [CharStreamState] objects that tracks the stream state
   *  values _line, _charPositionInLine, and _p that can change as you
   *  move through the input stream.  Indexed from 1..markDepth.
     *  A null is kept @ index 0.  Create upon first call to mark().
   */
  List _markers;
  
  /** Track the last mark() call result value for use in rewind(). */
  int _lastMarker;
  
  /** What is name or source of this char stream? */
  String _name;

  /** Copy data in string to a local char array */
  ANTLRStringStream([String input = null]) {
    if(input != null) {
      this._data = input.charCodes();
      this._n = input.length;
    }
  }
  
  ANTLRStringStream.fromList(List<int> data, int numberOfActualCharsInArray) {    
    this._data = data;
    this._n = numberOfActualCharsInArray;
  }
  
  int LT(int i) => this.LA(i);

  /** Return the current input symbol index 0..n where n indicates the
   *  last symbol has been read.  The index is the index of char to
   *  be returned from LA(1).
   */
  int get index() => this._p;
  
  int get line() => this._line;

  int get charPositionInLine() => this._charPositionInLine;
  
  int get size() => this._n;
  
  String get sourceName() => this._name;
  
  void set line(int line) {
    this._line = line;
  }

  void set charPositionInLine(int pos) {
    this._charPositionInLine = pos;
  }  

  /** Reset the stream so that it's in the same state it was
   *  when the object was created *except* the data array is not
   *  touched.
   */
  void reset() {
    this._p = 0;
    this._line = 1;
    this._charPositionInLine = 0;
    this._markDepth = 0;
  }

  void consume() {   
    if(this._p < this._n) {
      this._charPositionInLine++;
      if (this._data[this._p] == '\n'.charCodeAt(0)) {       
        this._line++;
        this._charPositionInLine = 0;
      }
      this._p++;      
    }
  }

  int LA(int i) {
    if (i == 0) return 0;
    if (i < 0) {      
      i++; 
      if ((this._p + i - 1) < 0 ) 
        return CharStream.EOF;    
    }
    if ((this._p + i - 1) >= this._n )         
            return CharStream.EOF;
    return this._data[this._p + i - 1];
  } 

  int mark() {
    if (this._markers == null ) {
      this._markers = new List();
      this._markers.add(null);
    }
    this._markDepth++;
    CharStreamState state = null;
    if (this._markDepth >= this._markers.length) {
      state = new CharStreamState();
      this._markers.add(state);
    }
    else {
      state = this._markers[this._markDepth];
    }
    state.p = this._p;
    state.line = this._line;
    state.charPositionInLine = this._charPositionInLine;
    this._lastMarker = this._markDepth;
    return this._markDepth;
  }

  void rewind([int marker]) {
    if(marker == null) marker = this._lastMarker;
    CharStreamState state = this._markers[marker]; 
    this.seek(state.p);
    this._line = state.line;
    this._charPositionInLine = state.charPositionInLine;
    this.release(marker);
  }

  void release(int marker) {
    this._markDepth = marker;
    this._markDepth--;
  }
  
  /** consume() ahead until _p == index; can't just set _p = index as we must
   *  update line and _charPositionInLine.
   */
  void seek(int index) {
    if (index <= this._p ) {
      this._p = index;
      return;
    }   
    while (this._p < index) {
      this.consume();
    }
  }

  String substring(int start, int stop) => 
    new String.fromCharCodes(this._data.getRange(start, stop - start + 1));   

  String toString() => new String.fromCharCodes(this._data);
  
}
