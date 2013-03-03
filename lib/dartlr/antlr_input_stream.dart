// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_backend;

/** A kind of reader stream that pulls from an InputStream.
 *  Useful for reading from stdin and specifying file encodings etc...
  */
class ANTLRReaderStream extends ANTLRStringStream {
  /**
   * Create a reader
   */
  ANTLRReaderStream() {
    data = new List<int>();
  }

  /**
   * Load the characters (code unites) provided by
   * [stream] in the memory.
   *
   * The returned [Future] completes when all characters
   * provided by [stream] are loaded.
   */
  Future load(Stream<int> stream) {
    var dataSink = new CollectionSink(data);
    return stream.pipeInto(dataSink);
  }
}
