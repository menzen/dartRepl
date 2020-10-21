// curried util functions
final uCompose = (Function f, Function g) => (dynamic x) => g(f(x));
final uSplit = (String separator) => (String str) => str.split(separator);
final uAdd = (int a) => (int b) => a + b;
final uInc = uAdd(1);
final uDec = uAdd(-1);
