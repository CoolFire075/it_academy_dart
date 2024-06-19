import 'dart:io';

void main() {
  var a = stdin.readLineSync() ?? '';
  var list = a.split(' ');
  List<int> list2 = [
    for (int i = 0; i < list.length; i++) int.tryParse(list[i]) ?? 0
  ];
  bool hasTwiceTwoOrThree = hasTwiceNumbers(list2);
  print(list2);
  print(hasTwiceTwoOrThree);
}

bool hasTwiceNumbers(List<int> list2) {
  int index = 0, twoCount = 0, threeCount = 0;
  while (index < list2.length) {
    if (list2[index] == 2)
      ++twoCount;
    else if (list2[index] == 3) ++threeCount;
    index++;
  }
  return twoCount == 2 || threeCount == 2;
}
