// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class RecordDebugEventListener extends TraceDebugEventListener {
  
  List<String> events;
  
  RecordDebugEventListener([TreeAdaptor adaptor]) : super(adaptor) {
    this.events = new List<String>();
  }
  
  void record(String event) {
    this.events.add(event);
  }  
}
