import 'utils.dart';

void main() {
  final cookies = 'XSRF-TOKEN=63511a1a-47d4-4e97-8812-b3e45b365074; Path=/pm-app-bverlag; Secure;       SameSite=Lax,JSESSIONID=5236CE7640E028A6BD236623F8223684.worker-; Path=/pm-app-bverlag; Secure; HttpOnly; SameSite=Lax';
  final exclude = ['Path', 'path', 'expires'];
  final isValid = (List<String> l) => (List<String> i) => i.length == 2 && !l.contains(i[0].trim());
  final create = (List<String> i) => '${i[0].trim()}=${i[1].trim()}';
  final add = uCompose(uAdd(1), uAdd(3));
  final cookie = uSplit(',')(cookies)
      .map(uSplit(';'))
      .expand((i) => i)
      .map(uSplit('='))
      .where(isValid(exclude))
      .map(create)
      .toSet()
      .join(';');

  print(cookie); // XSRF-TOKEN=63511a1a-47d4-4e97-8812-b3e45b365074;SameSite=Lax;JSESSIONID=5236CE7640E028A6BD236623F8223684.worker-
  print(add(2)); // 6
  print(uCompose(add, uInc)(2)); // 7
  print(uCompose(add, uDec)(2)); // 5
}
