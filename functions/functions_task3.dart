import 'dart:io';

void main() {
  print('Input number: ');
  var string = stdin.readLineSync() ?? '';
  var number = int.tryParse(string) ?? 0;
  var numberCube = getNumberCube(number);
  print('Cube of number $number = $numberCube');
}

int getNumberCube(var number) => number * number * number;

