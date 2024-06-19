void main() {
  var list = [1, 3, 4, 5, 6, -2, 7, -12, 22];
  final [_, ...a, _] = list;
  print(list);
  var sum = 0;
  for (var i in a) {
    sum += i;
  }
  print('Second list: $a');
  print('Sum of second list : $sum');
}
