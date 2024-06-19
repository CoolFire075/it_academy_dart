void main() {
  var a = 5;
  print(a);

  String? b;
  printA(b);
  b = 'Hello';
  print('String: + $b');
  printA(b);
  int greatestNumber = getGreatest(1, 2);
  print(greatestNumber);
}

void printA(String? b) {
  b = b ?? 'string';
  print(b);
}

int getGreatest(int one, int second) => one > second ? one : second;
