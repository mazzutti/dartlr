// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

class NoViableAltException extends RecognitionException {
  
  final String grammarDecisionDescription;
  final int decisionNumber;
  final int stateNumber;

  NoViableAltException([this.grammarDecisionDescription, 
      this.decisionNumber, this.stateNumber, input]) : super(input);

  String toString() {
    if (input is CharStream )
      return "NoViableAltException('${unexpectedType}'@[${grammarDecisionDescription}])";
    else
      return "NoViableAltException(${unexpectedType}@[${grammarDecisionDescription}])";
  }
  
}

