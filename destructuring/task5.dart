void main() {
  var record = (23, 89, pef: 'Oo', pruf: 3.976);
  var (a, b) = (record.$2, record.pruf);
  print('a: $a ; b: $b ; multiplication: $a * $b = ${a * b}');
}
