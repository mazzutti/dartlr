part of dartlr;
// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
    this._bits = new List<int>(((nbits - 1) >> _LOG_BITS) + 1);    
    for(int i = 0; i < this._bits.length; i++)
      this._bits[i] = 0;
  }

  /** Construction from a list of ints */
  BitSet.fromList(this._bits);
  
  List<int> get bits => this._bits;
  
  void set bits(List<int> bts) {
    this._bits = bts;
  }

  /** return this | a in a new set */
  BitSet or(BitSet a) {
    if (a == null ) return this;    
    BitSet s = this.clone();
    s.orInPlace(a);
    return s;
  }

  /** or this element into this set (grow as necessary to accommodate) */
  void add(int el) {
    int n = _wordNumber(el);
    if (n >= this._bits.length) {
      this.growToInclude(el);
    }
    this._bits[n] |= _bitMask(el);
  }

  /**
  * Grows the set to a larger number of bits.
  * bit is the element that must fit in set
  */
  void growToInclude(int bit) {
    int newSize = Math.max(this._bits.length << 1, this._numWordsToHold(bit));
    List<int> newbits = new List<int>(newSize);
    Arrays.copy(this._bits, 0, newbits, 0, this._bits.length);
    this._bits = newbits;
  }

  void orInPlace(BitSet a) {
    if (a == null) return;   
    if (a.bits.length > this._bits.length)
      this._setSize(a.bits.length);   
    int min = Math.min(bits.length, a.bits.length);
    for (int i = min - 1; i >= 0; i--)
           this._bits[i] |= a.bits[i];   
  }

  /**
  * Sets the size of a set.
  * nwords is how many words the new set should be
  */
  void _setSize(int nwords) {
    List<int> newbits = new List<int>(nwords);
    int n = Math.min(nwords, this._bits.length);
    Arrays.copy(this._bits, 0, newbits, 0, n);
    for(int i = this._bits.length; i < newbits.length; i++)
      newbits[i] = 0;
    this._bits = newbits;
  } 

  Object clone() {
    BitSet s = new BitSet();    
    s.bits = new List<int>(_bits.length);
    Arrays.copy(this._bits, 0, s.bits, 0, this._bits.length);  
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

  bool equals(Object other) {
    if ( other == null || !(other is BitSet)) return false;
    int n = Math.min(this.bits.length, other.dynamic.bits.length);    
    for (int i = 0; i < n; i++)
      if (this.bits[i] != other.dynamic.bits[i])
        return false;
    if (this.bits.length > n)
      for (int i = n + 1; i < this.bits.length; i++)
        if (this.bits[i] != 0)
          return false;   
    else if (other.dynamic.bits.length > n)
      for (i = n + 1; i < other.dynamic.bits.length; i++)
        if (other.dynamic.bits[i] != 0)
          return false;    
    return true;
  }

  bool member(int el) {
    if (el < 0) return false;
    int n = _wordNumber(el);
    if (n >= this._bits.length) return false;
    return (this._bits[n] & _bitMask(el)) != 0;
  }

  void remove(int el) {
    int n = _wordNumber(el);
    if (n < this._bits.length)
      this._bits[n] &= ~_bitMask(el);    
  }

  bool isNil() {
    for (int i = this._bits.length - 1; i >= 0; i--)
      if (this._bits[i] != 0) return false;      
    return true;
  }

  int _numWordsToHold(int el) =>  (el >> _LOG_BITS) + 1;

  int numBits() => this._bits.length << _LOG_BITS; 

  /** return how much space is being used by the bits array not
   *  how many actually have member bits on.
   */
  int lengthInWords() => this._bits.length;

  List<int> toArray() {
    List<int> elems = new List<int>(this.size());
    int en = 0;
    for (int i = 0; i < (this._bits.length << _LOG_BITS); i++)
      if (member(i))
        elems[en++] = i;       
    return elems;
  }

  List<int> toPackedArray() => this._bits;  

  String toString([List<String> tokenNames]) {
    StringBuffer buf = new StringBuffer();
    String separator = ",";
    bool havePrintedAnElement = false;
    buf.add('{');
    for (int i = 0; i < (this._bits.length << _LOG_BITS); i++) {
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
      BitSet s = new BitSet(Math.max(a,b) + 1);
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

