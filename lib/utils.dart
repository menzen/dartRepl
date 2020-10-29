final compose = (Function f, Function g) => (dynamic x) => g(f(x));

extension StringUtils on String {
  String get kebab => replaceAll(RegExp(r'\s+'), '-').toLowerCase();
  String get test => replaceAll(RegExp(r'\s+'), '+').toUpperCase();
  String get hello => 'hello ${this}';
}
