// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr_backend;

/** This is a char buffer stream that is loaded from a file
 *  all at once when you construct the object.  This looks very
 *  much like ANTLRInputStream, but it's a special case
 *  since we know the exact size of the object to load.  We can avoid lots
 *  of data copying. 
 */
class ANTLRFileStream extends ANTLRStringStream {
  
  Path _path;

  /// Creates the ANTLR file stream for a file given by [path]. 
  ///
  /// [path] is either a string denoting a native file path, or a 
  /// [Path] object. 
  ///
  /// Throws [ArgumentError] if [path] is null.  
  ANTLRFileStream(path, [Encoding encoding=Encoding.UTF_8]) : super(""){
    if (path == null) throw new ArgumentError("path must not be null");
    if (path is String) {
      _path = new Path.fromNative(path);
    } else if (path is Path){ 
      _path = path;
    } else {
      throw new ArgumentError("expected String or Path, got $path");
    }
    this.load(encoding);
  }
  
  /// the file path 
  Path get path => _path;

  /// Loads the entire file in memory 
  /// Throws [FileIOException] if the file with [path] doesn't exist 
  load([Encoding encoding=Encoding.UTF_8]) {
    File f = new File.fromPath(_path);
    if (!f.existsSync()) throw new FileIOException("file '$_path' doesn't exist");
    data = f.readAsStringSync(encoding).charCodes;
    size = data.length;   
  }   
}
