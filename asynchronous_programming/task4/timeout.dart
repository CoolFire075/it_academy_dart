import 'dart:io';

void main() {
  var future = Future<String>(() async {
    print('Введите своё имя:');
    for (int i = 0; i < 10; i++) {
      print(i);
      sleep(Duration(seconds: 1));
    }
      return 'name';
  });
  future
      .timeout(
        Duration(seconds: 1),
        onTimeout: () => 'Вы не успели!!!',
      )
      .then((value) => print(value))
      .catchError(
        (e) => print(e),
      );
}
