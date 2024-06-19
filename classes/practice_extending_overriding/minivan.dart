import 'taxi.dart';

class Minivan extends Taxi{
  final int _placeAmount = 7;

  Minivan({
        required String name,
        required int number,
        required int rate,
        required carClass,
      }) : super(name, number, carClass);
}