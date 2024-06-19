import 'color.dart';

void main() {
  Color color = Color(245, 25, 137);
  Color color2 = Color(23, 25, 1);
  Color color3 = color + color2;

  print('\n$color3');
  print('\nred: ${color.red} + ${color2.red} = ${color3.red}'
      '\ngreen: ${color.green} + ${color2.green} = ${color3.green}'
      '\nblue: ${color.blue} + ${color2.blue} = ${color3.blue}\n');

  double multiplier = 0.25;
  Color color4 = color * multiplier;

  print(color4);
  print('\nred: ${color.red} * $multiplier = ${color4.red}'
      '\ngreen: ${color.green} * $multiplier = ${color4.green}'
      '\nblue: ${color.blue} * $multiplier = ${color4.blue}');
}
