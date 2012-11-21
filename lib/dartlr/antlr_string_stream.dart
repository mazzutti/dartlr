// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

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
  int line = 1;
  
  /** The index of the character relative to the beginning of the line 0..n-1 */
  int charPositionInLine = 0;
  
  /** tracks how deep mark() calls are nested */
  int _markDepth = 0;
  
  /** A list of [CharStreamState] objects that tracks the stream state
   *  values _line, charPositionInLine, and _p that can change as you
   *  move through the input stream.  Indexed from 1..markDepth.
     *  A null is kept @ index 0.  Create upon first call to mark().
   */
  List _markers;
  
  /** Track the last mark() call result value for use in rewind(). */
  int _lastMarker;
  
  /** What is name or source of this char stream? */
  String _name;

  /** Copy data in string to a local char array */
  ANTLRStringStream([String input]) {
    if(?input) {
      _data = input.charCodes;
      _n = input.length;
    }
  }
  
  ANTLRStringStream.fromList(List<int> data, int numberOfActualCharsInArray) {    
    _data = data;
    _n = numberOfActualCharsInArray;
  }
  
  int LT(int i) => LA(i);

  /** Return the current input symbol index 0..n where n indicates the
   *  last symbol has been read.  The index is the index of char to
   *  be returned from LA(1).
   */
  int get index => _p;
  
  int get size => _n;
  
  String get sourceName => _name;

  /** Reset the stream so that it's in the same state it was
   *  when the object was created *except* the data array is not
   *  touched.
   */
  reset() {
    _p = 0;
    line = 1;
    charPositionInLine = 0;
    _markDepth = 0;
  }

  consume() {   
    if(_p < _n) {
      charPositionInLine++;
      if (_data[_p] == '\n'.charCodeAt(0)) {       
        line++;
        charPositionInLine = 0;
      }
      _p++;      
    }
  }

  int LA(int i) {
    if (i == 0) return 0;
    if (i < 0) {      
      i++; 
      if ((_p + i - 1) < 0 ) 
        return CharStream.EOF;    
    }
    if ((_p + i - 1) >= _n )         
            return CharStream.EOF;
    return _data[_p + i - 1];
  } 

  int mark() {
    if (_markers == null ) {
      _markers = new List();
      _markers.add(null);
    }
    _markDepth++;
    CharStreamState state = null;
    if (_markDepth >= _markers.length) {
      state = new CharStreamState();
      _markers.add(state);
    }
    else {
      state = _markers[_markDepth];
    }
    state.p = _p;
    state.line = line;
    state.charPositionInLine = charPositionInLine;
    _lastMarker = _markDepth;
    return _markDepth;
  }

  rewind([int marker]) {
    if(marker == null) marker = _lastMarker;
    CharStreamState state = _markers[marker]; 
    seek(state.p);
    line = state.line;
    charPositionInLine = state.charPositionInLine;
    release(marker);
  }

  release(int marker) {
    _markDepth = marker;
    _markDepth--;
  }
  
  /** consume() ahead until _p == index; can't just set _p = index as we must
   *  update line and charPositionInLine.
   */
  seek(int index) {
    if (index <= _p ) {
      _p = index;
      return;
    }   
    while (_p < index) {
      consume();
    }
  }

  String substring(int start, int stop) => 
    new String.fromCharCodes(_data.getRange(start, stop - start + 1));   

  String toString() => new String.fromCharCodes(_data);
  
}
