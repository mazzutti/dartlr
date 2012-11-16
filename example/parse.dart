// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartlr_samples;

import "dart:io";
import 'package:dartlr/dartlr.dart';

part "out/DartParser.dart";
part "out/DartLexer.dart";

main() {
  String sampleFilePath = "example${Platform.pathSeparator}dart_sample.dart";
  bool hasErrors = false;
  CharStream input = new ANTLRFileStream(sampleFilePath, Encoding.UTF_8);
  DartLexer lexer = new DartLexer(input);
  CommonTokenStream tokens = new CommonTokenStream(lexer);
  DartParser parser = new DartParser(tokens);
  parser.compilationUnit();
  if (lexer.hasErrors || parser.hasErrors) {
    throw new Exception("Parse errors...");
  } else {
    print("successfully parsed '${sampleFilePath}!'");
  }
}