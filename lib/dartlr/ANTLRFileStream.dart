part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
  
  String get sourceName => this._fileName;

  void load([Encoding encoding]) {
    if (this._fileName == null ) return;
    File f = new File(this._fileName);   
    String data = f.readAsTextSync(encoding);
    this._data = data.charCodes();
    super._n = data.length;   
  }   
}
