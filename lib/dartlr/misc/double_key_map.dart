// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dartlr;

/** 
 *  Sometimes we need to map a key to a value but key is two pieces of data.
 *  This nested hash table saves creating a single key each time we access
 *  map; avoids mem creation.
 */
class DoubleKeyMap<Key1, Key2, Value> {
  
  Map<Key1, Map<Key2, Value>> data;
  
  DoubleKeyMap() {
    data = new LinkedHashMap<Key1, Map<Key2, Value>>();
  }

  Value put(Key1 k1, Key2 k2, Value v) {
    Map<Key2, Value> data2 = data[k1];
    Value prev = null;
    if ( data2==null ) {
      data2 = new LinkedHashMap<Key2, Value>();
      data[k1] =  data2;
    } else
      prev = data2[k2];
    data2[k2] = v;
    return prev;
  }

  Value at(Key1 k1, Key2 k2) {
    Map<Key2, Value> data2 = data[k1];
    if ( data2==null ) return null;
    return data2[k2];
  }

  Map<Key2, Value> operator [](Key1 k1) => data[k1];

  /** Get all values associated with primary key */
  Collection<Value> values(Key1 k1) {
    Map<Key2, Value> data2 = data[k1];
    if (data2 == null) return null;
    return data2.values;
  }

  Set keySet([Key1 k1]) {
    if(k1 == null) return data.keys;
    Map<Key2, Value> data2 = data[k1];
    if (data2 == null) return null;
    return data2.keys;
  }

  Collection<Value> getValues() {
    Set<Value> s = new HashSet<Value>();
    for (Map<Key2, Value> k2 in data.values)
      for (Value v in k2.values)
        s.add(v);
    return s;
  }
}

