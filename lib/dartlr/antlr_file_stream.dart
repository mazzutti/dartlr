// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** This is a char buffer stream that is loaded from a file
 *  all at once when you construct the object.  This looks very
 *  much like ANTLRInputStream, but it's a special case
 *  since we know the exact size of the object to load.  We can avoid lots
 *  of data copying. 
 */
class ANTLRFileStream extends ANTLRStringStream {
  
  String _fileName;

  ANTLRFileStream(this._fileName, [Encoding encoding]){
    this.load(encoding);
  }
  
  String get sourceName => _fileName;

  load([Encoding encoding=Encoding.UTF_8]) {
    if (_fileName == null ) return;
    File f = new File(_fileName);   
    _data = f.readAsStringSync(encoding).charCodes;
    _n = _data.length;   
  }   
}
