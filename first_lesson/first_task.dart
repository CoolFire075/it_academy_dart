import 'dart:io';

void main() {
  print('Введите три целочиссленных числа: ');
  String? a = stdin.readLineSync();
  int? firstNumber = int.tryParse(a!) ?? 0;
  String? b = stdin.readLineSync();
  int? secondNumber = int.tryParse(b!) ?? 0;
  String? c = stdin.readLineSync();
  int? thirdNumber = int.tryParse(c!) ?? 0;
  var record = (firstNumber, secondNumber, thirdNumber);
  print('ваш массив чисел: $record');

  (int biggestNumber, int lesssNumber) record2 =
      getBiggestAndLessNumber(record);
  print('максимальное и минимальное числа: $record2');
}

(int biggestNumber, int lessNumber) getBiggestAndLessNumber((int, int, int) record) {
  int biggestNumber = record.$1;
  int lessNumber = record.$1;
  if (record.$2 > biggestNumber) biggestNumber = record.$2;
  if (record.$3 > biggestNumber) biggestNumber = record.$3;
  if (record.$2 < lessNumber) lessNumber = record.$2;
  if (record.$3 < lessNumber) lessNumber = record.$3;
  return (biggestNumber, lessNumber);
}