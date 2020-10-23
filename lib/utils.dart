// curried util functions
final _compose = (Function f, Function g) => (dynamic x) => g(f(x));
final _split = (String separator) => (String str) => str.split(separator);
final _add = (int a) => (int b) => a + b;

class U {
  static final add = _add;
  static final compose = _compose;
  static final split = _split;
}
