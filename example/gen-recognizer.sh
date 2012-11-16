#!/bin/bash
#
# processes the Dart.g generates
# the required .dart and .tokens files
# to recognize the dart_sample.dart
#

echo "processing Dart.g ..."
java org.antlr.Tool -fo out Dart.g



