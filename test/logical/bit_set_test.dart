// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library BitSet_test;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";

main() {  
  
  test("testBitSet", () {
    BitSet bitSet = new BitSet();
    expect(bitSet.bits.length, equals(1));
    expect(bitSet.size(), equals(0));
    expect(bitSet.bits[0], equals(0));
    expect(bitSet.numBits(), equals(64));
    expect(bitSet.lengthInWords(), equals(1));
    expect(bitSet.toString(), equals("{}"));
    expect(bitSet.isNil(), equals(true));
    expect(bitSet.member(-1), equals(false));
    expect(bitSet.member(0), equals(false));
    expect(bitSet.member(1), equals(false));
    expect(bitSet.toArray(), equals([]));
    expect(bitSet.toPackedArray(), equals([0]));
    
    expect(BitSet.of(0).toString(), equals("{0}"));
    expect(BitSet.of(1).toString(), equals("{1}"));
    expect(BitSet.of(3, 2).toString(), equals("{2,3}"));
    expect(BitSet.of(1, 3, 2).toString(), equals("{1,2,3}"));
    expect(BitSet.of(3, 3, 2).toString(), equals("{2,3}"));
    expect(BitSet.of(4, 2, 3, 1).toString(), equals("{1,2,3,4}"));
    expect(BitSet.of(4, 4, 4, 4).toString(), equals("{4}"));
    
    expect(bitSet.or(BitSet.of(1)).toString(), equals("{1}"));
    expect(BitSet.of(1, 2).or(BitSet.of(3,4)).toString(), equals("{1,2,3,4}"));
    BitSet newBitSet = BitSet.of(1, 2);
    newBitSet.orInPlace(BitSet.of(3,4));
    expect(newBitSet.toString(), equals("{1,2,3,4}"));
    
    bitSet = BitSet.of(5,6);
    expect((bitSet.clone() as BitSet).bits, equals(bitSet.bits));
    
    bitSet = new BitSet();
    bitSet.growToInclude(1);
    expect(bitSet.bits.length, equals(2));
    bitSet.growToInclude(1);    
    expect(bitSet.bits.length, equals(4));
    
    bitSet = new BitSet.fromList([1,2,3,4]);
    expect(bitSet.toString(), equals("{0,65,128,129,194}"));
  });
  
}