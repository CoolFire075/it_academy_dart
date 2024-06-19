import 'dart:io';

void main() {
  var a = stdin.readLineSync() ?? '';
  var list = a.split(' ');
  List<int> list2 = [
    for (int i = 0; i < list.length; i++) int.tryParse(list[i]) ?? 0
  ];
  int sum = getSum(list2);
  print(list2);
  print(sum);
}

int getSum(List<int> list) {
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum += list[i];
  }
  return sum;
}
