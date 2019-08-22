import 'package:flutter_test/flutter_test.dart';

import 'package:pub_cn_mirrors_health_check/pub_cn_mirrors_health_check.dart';

void main() {
  test('adds one to input values', () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
    expect(() => calculator.addOne(null), throwsNoSuchMethodError);
  });
}
