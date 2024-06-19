import 'dart:io';

void main() {
  print('Input list of numbers: ');
  var string = stdin.readLineSync() ?? '';
  var stringList = string.split(' ');
  var intList = [for (var i in stringList) int.tryParse(i) ?? 0];
  var biggestNumber = getBiggestNumber(intList);
  print('Наибольшее число: $biggestNumber');
}

int getBiggestNumber(List<int> intList) {
  var biggestNumber = 0;
  for (int i = 0; i < intList.length; i++) {
    if (intList[i] > biggestNumber) biggestNumber = intList[i];
  }
  return biggestNumber;
}
