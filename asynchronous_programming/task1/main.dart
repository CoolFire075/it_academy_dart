import 'dart:io';

void main() {
  print('Input amount of lists:');
  var str = stdin.readLineSync() ?? '';
  var listAmount = int.tryParse(str) ?? 0;

  for (int i = 1; i <= listAmount; i++) {
    Future(() {
      print('$i list printed');
      if (i % 5 == 0) {
        Future.microtask(() => print('.....$i lists printed'));
      }
    });
  }
}

