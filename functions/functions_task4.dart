import 'dart:io';

void main() {
  print('Input number of your month: ');
  var string = stdin.readLineSync() ?? '';
  var number = int.tryParse(string);
  var monthDaysAmount = getMonth(number);
  print('Days amount of your month : $monthDaysAmount');
}

int getMonth(var number) {
  bool isYearLeap = true;
  var monthDaysAmount;
  if (number == 2) {
    print('Is year leap? ( Yes - 1 ; No - 0 )');
    var str = stdin.readLineSync() ?? '';
    var num = int.tryParse(str) ?? 13;
    if (num == 0)
      isYearLeap = false;
    else if (num != 1) return 0;
  }
  if (number == 2 && !isYearLeap) {
    return 28;
  } else {
    monthDaysAmount = switch (number) {
      1 || 3 || 5 || 7 || 8 || 10 || 12 => 31,
      4 || 6 || 9 || 11 => 30,
      2 => 29,
      _ => 0
    };
  }
  return monthDaysAmount;
}
