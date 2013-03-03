library antl_file_stream_test;

import "package:unittest/unittest.dart";
import "package:dartlr/dartlr.dart";
import "dart:io";


main() {
  test("create with string", () {
      var s = new ANTLRFileStream("test/test-data/trivial.g");
      expect(s.path.toString(), endsWith("test/test-data/trivial.g"));
  });

  test("create with path", () {
    var path = new Path.raw("test/test-data/trivial.g");
    var s = new ANTLRFileStream(path);
    expect(s.path.toString(), endsWith("test/test-data/trivial.g"));
  });

  test("don't accept null", () {
    expect(() => new ANTLRFileStream(null), throwsA(new isInstanceOf<ArgumentError>()));
  });
}