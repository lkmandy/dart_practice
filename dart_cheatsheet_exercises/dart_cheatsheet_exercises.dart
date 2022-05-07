import 'package:collection/collection.dart';

/// 1. Nullable variables
String? name = 'Jane';
String? address;

/// 2. Null-aware operators
String? foo = 'a string';
String? bar; // = null
String? baz = foo ??= bar;

void updateSomeVars() {
  bar ?? 'a string';
}

/// 3. Conditional property access
String? upperCaseIt(String? str) {
  return str?.toUpperCase();
}

/// 4. Collection Literals
final aListOfStrings = [
  'a',
  'b',
  'c',
];
final aSetOfInts = {
  3,
  4,
  5,
};
final aMapOfStringsToInts = {
  'myKey': 12,
};

final anEmptyListOfDouble = <double>[];
final anEmptySetOfString = <String>{};
final anEmptyMapOfDoublesToInts = <double, int>{};

/// 5. Arrow Operator
class MyClass {
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;

  int get product => value1 * value2 * value3;

  void incrementValue1() => ++value1;

  String joinWithCommas(List<String> strings) => strings.join(',');
}

/// 6. Cascades
class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;

  void allDone() {
    _done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  // Create a single statement that will update and return obj:
  return obj
    ..anInt = 1
    ..aString = 'String!'
    ..aList = [3.0]
    ..allDone();
}

/// 7.  Getters and Setters
class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];

  // Add a "total" getter here:
  double get total => _prices.sum;

  // Add a "prices" setter here:
  set prices(List<double> newList) {
    if (newList.any((element) => element < 0)) {
      throw InvalidPriceException();
    } else {
      _prices = newList;
    }
  }
}


  /// 8.














