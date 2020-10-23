import 'utils.dart';

void main() {
  final cookies = 'XSRF-TOKEN=63511a1a-47d4-4e97-8812-b3e45b365074; Path=/; Secure;       SameSite=Lax,JSESSIONID=5236CE7640E028A6BD236623F8223684.worker-; Path=/; Secure; HttpOnly; SameSite=Lax';
  final exclude = ['Path', 'path', 'expires'];
  final isValid = (List<String> l) => (List<String> i) => i.length == 2 && !l.contains(i[0].trim());
  final create = (List<String> i) => '${i[0].trim()}=${i[1].trim()}';
  final add = U.compose(U.add(1), U.add(3));
  final cookie = U.split(',')(cookies)
      .map(U.split(';'))
      .expand((i) => i)
      .map(U.split('='))
      .where(isValid(exclude))
      .map(create)
      .toSet()
      .join(';');

  print(cookie); // XSRF-TOKEN=63511a1a-47d4-4e97-8812-b3e45b365074;SameSite=Lax;JSESSIONID=5236CE7640E028A6BD236623F8223684.worker-
  print(add(2)); // 6

  var t = U.compose(U.add(2), U.add(2));
  print(t(2));
}
