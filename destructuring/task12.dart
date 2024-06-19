void main() {
  var list = [1, 3, 4, 5, 2, 4, 6, 6, -2, 7, -12, 22];
  print(list);
  final [_, _, _, ...a] = list;
  print(a);
  var multiplication = 1;
  for(var i in a){
    multiplication *= i;
  }
  print(multiplication);
}
