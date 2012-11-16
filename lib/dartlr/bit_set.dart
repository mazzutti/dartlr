// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/**A stripped-down version of org.antlr.misc.BitSet that is just
 * good enough to handle runtime requirements such as FOLLOW sets
 * for automatic error recovery.
 */
class BitSet implements Cloneable {
  
  static const int _BITS = 64;
  static const int _LOG_BITS = 6;
  static const int _MOD_MASK = _BITS - 1;
  
  /** The actual data bits */
  List<int> _bits;
  
  /** Construct a bitset of size one word (64 bits) */
  BitSet([int nbits = _BITS]) {
    _bits = new List<int>(((nbits - 1) >> _LOG_BITS) + 1);    
    for(int i = 0; i < _bits.length; i++)
      _bits[i] = 0;
  }

  /** Construction from a list of ints */
  BitSet.fromList(this._bits);
  
  List<int> get bits => _bits;
  
  void set bits(List<int> bts) {
    _bits = bts;
  }

  /** return this | a in a new set */
  BitSet or(BitSet a) {
    if (a == null ) return this;    
    BitSet s = clone();
    s.orInPlace(a);
    return s;
  }

  /** or this element into this set (grow as necessary to accommodate) */
  void add(int el) {
    int n = _wordNumber(el);
    if (n >= _bits.length) {
      growToInclude(el);
    }
    _bits[n] |= _bitMask(el);
  }

  /**
  * Grows the set to a larger number of bits.
  * bit is the element that must fit in set
  */
  void growToInclude(int bit) {
    int newSize = max(_bits.length << 1, _numWordsToHold(bit));
    List<int> newbits = new List<int>(newSize);
    Arrays.copy(_bits, 0, newbits, 0, _bits.length);
    _bits = newbits;
  }

  void orInPlace(BitSet a) {
    if (a == null) return;   
    if (a.bits.length > _bits.length)
      _setSize(a.bits.length);   
    int min = min(bits.length, a.bits.length);
    for (int i = min - 1; i >= 0; i--)
           _bits[i] |= a.bits[i];   
  }

  /**
  * Sets the size of a set.
  * nwords is how many words the new set should be
  */
  void _setSize(int nwords) {
    List<int> newbits = new List<int>(nwords);
    int n = min(nwords, _bits.length);
    Arrays.copy(_bits, 0, newbits, 0, n);
    for(int i = _bits.length; i < newbits.length; i++)
      newbits[i] = 0;
    _bits = newbits;
  } 

  Object clone() {
    BitSet s = new BitSet();    
    s.bits = new List<int>(_bits.length);
    Arrays.copy(_bits, 0, s.bits, 0, _bits.length);  
    return s;
  }

  int size() {
    int deg = 0;
    for (int i = _bits.length - 1; i >= 0; i--) {
      int word = _bits[i];
      if (word != 0)
        for (int bit = _BITS - 1; bit >= 0; bit--)
          if ((word & (1 << bit)) != 0)
            deg++;
    }
    return deg;
  }

  bool operator ==(Object other) {
    if ( other == null || !(other is BitSet)) return false;
    int n = min(bits.length, other.bits.length);    
    for (int i = 0; i < n; i++)
      if (bits[i] != other.bits[i])
        return false;
    if (bits.length > n)
      for (int i = n + 1; i < bits.length; i++)
        if (bits[i] != 0)
          return false;   
    else if (other.bits.length > n)
      for (i = n + 1; i < other.bits.length; i++)
        if (other.bits[i] != 0)
          return false;    
    return true;
  }

  bool member(int el) {
    if (el < 0) return false;
    int n = _wordNumber(el);
    if (n >= _bits.length) return false;
    return (_bits[n] & _bitMask(el)) != 0;
  }

  void remove(int el) {
    int n = _wordNumber(el);
    if (n < _bits.length)
      _bits[n] &= ~_bitMask(el);    
  }

  bool isNil() {
    for (int i = _bits.length - 1; i >= 0; i--)
      if (_bits[i] != 0) return false;      
    return true;
  }

  int _numWordsToHold(int el) =>  (el >> _LOG_BITS) + 1;

  int numBits() => _bits.length << _LOG_BITS; 

  /** return how much space is being used by the bits array not
   *  how many actually have member bits on.
   */
  int lengthInWords() => _bits.length;

  List<int> toArray() {
    List<int> elems = new List<int>(size());
    int en = 0;
    for (int i = 0; i < (_bits.length << _LOG_BITS); i++)
      if (member(i))
        elems[en++] = i;       
    return elems;
  }

  List<int> toPackedArray() => _bits;  

  String toString([List<String> tokenNames]) {
    StringBuffer buf = new StringBuffer();
    String separator = ",";
    bool havePrintedAnElement = false;
    buf.add('{');
    for (int i = 0; i < (_bits.length << _LOG_BITS); i++) {
      if (member(i)) {
        if (i > 0 && havePrintedAnElement)
          buf.add(separator);
        if (tokenNames != null )
          buf.add(tokenNames[i]);
        else
          buf.add(i);        
        havePrintedAnElement = true;
      }
    }
    buf.add('}');
    return buf.toString();
  }
  
  static int _wordNumber(int bit) => bit >> _LOG_BITS;
  
  static int _bitMask(int bitNumber) {
    int bitPosition = bitNumber & _MOD_MASK;
    return 1 << bitPosition;
  }
  
  static BitSet of(int a, [int b = null, int c = null, int d = null]) {
    if(b == null && c == null && d == null){
      BitSet s = new BitSet(a + 1);
      s.add(a);
      return s;
    } else if (b != null && c == null && d == null){
      BitSet s = new BitSet(max(a,b) + 1);
      s.add(a);
      s.add(b);
      return s;
    } else {
      BitSet s = new BitSet();
      s.add(a);
      if(b != null) s.add(b);
      if(c != null) s.add(c);
      if(d != null) s.add(d);
      return s;
    }
  }
  
}

