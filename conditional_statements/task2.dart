import 'dart:io';

void main() {
  String obj = stdin.readLineSync() ?? '';
  List<String> list = obj.split(' ');
  dynamic list2 = [for (var str in list) int.tryParse(str) ?? 0];
  if (list2 case [int a, ..., int c]
      when list2.length > 0 && list2.length < 15 && a == 7 && c == 15) {
    print(list2);
  } else {
    print('Pattern no matched');
  }
}
