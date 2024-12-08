import 'dart:async';
import 'dart:io';

///Просим пользователя ввести возраст,
///проверяем на корректность данных (от 0 до 130 лет),
///если данные некорректные, просим ввести снова.
///У пользователя 5 попыток (реализовать с помощью doWhile)
void main() {
  int count = 0;
  int age = 0;
  String string = '';

  var future = Future.doWhile(() async {
    print('Input your age:');
    string = stdin.readLineSync() ?? '';
    age = int.tryParse(string) ?? 131;
    await Future.delayed(Duration(seconds: 1));
    if (age >= 0 && age <= 130) {
      print('Your age : $age');
      return false;
    }
    if (count > 5) return false;
    print('Your age incorrect');
    return true;
  });
}
