import 'taxi.dart';

class PassengerCar extends Taxi {
  final int _placeAmount = 5;

  PassengerCar({
    required String name,
    required int number,
    required int rate,
    required carClass,
  }) : super(name, number, carClass);
}
