import 'dart:io';

void main() {
  var string = stdin.readLineSync() ?? '';
  var reverseOrderString = getReverseOrderList(string);
  print(reverseOrderString);
}

String getReverseOrderList(String string) {
  String reserveOrderString = '';
  for (int i = string.length - 1; i >= 0; i--) {
    reserveOrderString += string[i];
  }
  return reserveOrderString;
}
