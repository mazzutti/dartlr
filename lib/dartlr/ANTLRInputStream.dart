part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A kind of reader stream that pulls from an InputStream.
 *  Useful for reading from stdin and specifying file encodings etc...
  */
class ANTLRReaderStream extends ANTLRStringStream {
  
  static const int READ_BUFFER_SIZE = 1024;
  static const int INITIAL_BUFFER_SIZE = 1024;

  ANTLRReaderStream(InputStream r, [int size = 0, int readChunkSize = 0]) {
    if(size == 0) size = INITIAL_BUFFER_SIZE;
    if(readChunkSize == 0) size = READ_BUFFER_SIZE;
    this.load(r, size, readChunkSize);
  }

  void load(InputStream r, int size, int readChunkSize) {
    if (r == null ) return;     
    try {
      this._data = new List<int>(size);
      int numRead = 0, p = 0;
      do {
        if (p + readChunkSize > this._data.length ) {
          List<int> newdata = new List<int>(this._data.length * 2);
          Arrays.copy(this._data, 0, newdata, 0, this._data.length);
          this._data = newdata;
        }
        numRead = r.readInto(this._data, p, readChunkSize);       
        p += numRead;
      } while (numRead != -1);
      super._n = p + 1;
    }
    finally {
      r.close();
    }
  }
  
}
