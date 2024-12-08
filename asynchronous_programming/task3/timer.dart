import 'dart:async';
import 'dart:io';

void main() {
  print('введите число:');
  var string = stdin.readLineSync() ?? '';
  var count = int.tryParse(string) ?? 0;
  Timer.periodic(Duration(seconds: 1), (timer) {
    stdout.write('осталось $count секунд\n');
    count--;
    if (count <= 0) timer.cancel();
  });
}
