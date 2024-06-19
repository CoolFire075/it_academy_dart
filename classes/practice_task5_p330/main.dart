import 'car.dart';
import 'parking.dart';

void main(){
  Parking parking = Parking(3);
  Car car = Car('USA', 'Tesla', 999);
  parking.addCar(car);
  Car car2 = Car('China', 'Cherry', 777);
  parking.addCar(car2);
  Car car3 = Car('Germany', 'Mercedes', 333);
  parking.addCar(car3);
  parking.removeCar(car2);
  Car car4 = Car('Japan', 'Supra', 555);
  parking.addCar(car4);

  print(parking.carList);
  print(parking.getCarByStateNumber(555));
}