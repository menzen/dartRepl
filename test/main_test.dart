import 'package:dartRepl/utils.dart';
import 'package:test/test.dart';

void main() {
  test('add', () {
    expect(U.add(1)(1), 2);
  });

  test('compose', () {
    expect(U.compose(U.add(1), U.add(3))(2), 6);
  });

  test('compose compose', () {
    final first = U.compose(U.add(1), U.add(1));
    final second = U.compose(U.add(1), U.add(1));
    expect(U.compose(first, second)(1), 5);
  });
}
