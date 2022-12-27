import 'package:flutter_test/flutter_test.dart';

void main() {
  test('square', () {
    expect(square(2), 4);
    expect(square(3), 9);
    expect(square(-4), 16);
  });
}

int square(int number) {
  return number * number;
}