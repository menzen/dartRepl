import 'package:dartRepl/utils.dart';
import 'package:test/test.dart';

void main() {
  test('add', () {
    expect(uAdd(1)(1), 2);
  });

  test('compose', () {
    expect(uCompose(uAdd(1), uAdd(3))(2), 6);
  });

  test('compose compose', () {
    final first = uCompose(uAdd(1), uAdd(1));
    final second = uCompose(uAdd(1), uAdd(1));
    expect(uCompose(first, second)(1), 5);
  });
}
