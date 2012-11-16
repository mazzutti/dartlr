// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_test_runner;

import "dart:io";
import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

import "test_runner.dart";


main() {
  new TestRunner().run();
}

