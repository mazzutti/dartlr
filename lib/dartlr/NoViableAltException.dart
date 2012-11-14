part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
class NoViableAltException extends RecognitionException {
  
  String grammarDecisionDescription;
  int decisionNumber;
  int stateNumber;

  NoViableAltException([this.grammarDecisionDescription, 
      this.decisionNumber, this.stateNumber, input]) : super(input);

  String toString() {
    if (this.input is CharStream )
      return "NoViableAltException('${this.unexpectedType}'@[${this.grammarDecisionDescription}])";
    else
      return "NoViableAltException(${this.unexpectedType}@[${this.grammarDecisionDescription}])";
  }
  
  String get className => "NoViableAltException";
}

