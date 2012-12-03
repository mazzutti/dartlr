// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_backend;

/** A kind of reader stream that pulls from an InputStream.
 *  Useful for reading from stdin and specifying file encodings etc...
  */
class ANTLRReaderStream extends ANTLRStringStream {
  
  static const int READ_BUFFER_SIZE = 1024;
  static const int INITIAL_BUFFER_SIZE = 1024;

  ANTLRReaderStream(InputStream r, [int size = INITIAL_BUFFER_SIZE, int readChunkSize = READ_BUFFER_SIZE]) {
    load(r, size, readChunkSize);
  }

  load(InputStream r, int size, int readChunkSize) {
    if (r == null ) return;     
    try {
      data = new List<int>(size);
      int numRead = 0, p = 0;
      do {
        if (p + readChunkSize > data.length ) {
          List<int> newdata = new List<int>(data.length * 2);
          Arrays.copy(data, 0, newdata, 0, data.length);
          data = newdata;
        }
        numRead = r.readInto(data, p, readChunkSize);       
        p += numRead;
      } while (numRead != -1);
      super.size = p + 1;
    }
    finally {
      r.close();
    }
  }
  
}
