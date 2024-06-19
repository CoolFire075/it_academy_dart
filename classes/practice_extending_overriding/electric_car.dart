import 'taxi.dart';

class ElectricCar extends Taxi{
  int _placeAmount = 7;

  ElectricCar({
    required String name,
    required int number,
    required int rate,
    required carClass,
  }) : super(name, number, carClass);
}