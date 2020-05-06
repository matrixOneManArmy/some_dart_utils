import 'package:flutter_test/flutter_test.dart';

import 'package:some_dart_utils/some_dart_utils.dart';

void main() {
  test('returns duplicate of an entire map (CopyByValue)', () {
    expect(recursiveMapCopy({}), {});
    expect(recursiveMapCopy({
      "name": "Mohan",
      "lev1": {
        "k1": true,
        "k2": false,
        "d1": 120 
      }
    }), {
      "name": "Mohan",
      "lev1": {
        "k1": true,
        "k2": false,
        "d1": 120 
      }
    });
  });
}
