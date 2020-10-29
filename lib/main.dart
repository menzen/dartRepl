import 'package:dartRepl/utils.dart';

void main() {
  final cookies = 'XSRF-TOKEN=63511a1a-47d4-4e97-8812-b3e45b365074; Path=/; Secure;       SameSite=Lax,JSESSIONID=5236CE7640E028A6BD236623F8223684.worker-; Path=/; Secure; HttpOnly; SameSite=Lax';
  final exclude = ['Path', 'path', 'expires'];
  final cookie = cookies
      .split(',')
      .map((i) => i.split(';'))
      .expand((i) => i)
      .map((i) => i.split('='))
      .where((i) => i.length == 2 && !exclude.contains(i[0].trim()))
      .map((i) => '${i[0].trim()}=${i[1].trim()}')
      .toSet()
      .join(';');

  print(cookie); // XSRF-TOKEN=63511a1a-47d4-4e97-8812-b3e45b365074;SameSite=Lax;JSESSIONID=5236CE7640E028A6BD236623F8223684.worker-
  print([1, 2, 3, ...[4, 5], ...[6, 7]]); // spread
  print([1, 2, 3]..add(4)..add(5)); // cascade operator - returns prev
  print('Just extend the String util with a kebab method'.kebab); // just-extend-the-string-util-with-a-kebab-method
  print('Just extend the String util with a test method'.test); // JUST+EXTEND+THE+STRING+UTIL+WITH+A+TEST+METHOD
  print('Bernd'.hello); // hello Bernd
}
