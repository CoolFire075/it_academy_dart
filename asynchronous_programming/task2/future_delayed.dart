import 'dart:io';
import 'dart:async';

void main() {
  print('Input your number:');
  String str = stdin.readLineSync() ?? '';
  int number = int.tryParse(str) ?? 0;
  var future = Future<int>.delayed(
    Duration(seconds: 2, milliseconds: 500, microseconds: 200),
    () => validate(number),
  );
  future
      .then((value) {
        print('Our number $number');
      })
      .catchError(
        (exception) => print(exception),
        test: (error) => error is Exception,
      )
      .whenComplete(() => print('Я завершился'));
}

int validate(int number) {
  if (number >= 1 && number <= 1000) {
    throw Exception();
  }
  return number;
}
