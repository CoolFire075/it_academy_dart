// 5. Создайте класс Parking, который может хранить объекты класса Car. В
// конструктор Parking следует передать максимальное количество
// автомобилей, которые могут быть припаркованы. У класса Car должны быть
// следующие поля: производитель, модель и гос. номер автомобиля. Класс
// Parking иметь следующие методы: добавление автомобиля, удаление
// автомобиля, поиск автомобиля по гос. номеру и подсчет количества
// автомобилей на парковке. Если парковка заполнена, то автомобиль не
// может быть добавлен, о чем предупредите пользователя. Также обеспечьте
// вывод текущего состояния объектов в терминал.
import 'car.dart';

class Parking {
  List<Car> carList = [];
  final int _carsAmountMax;
  int _carsAmount = 0;

  Parking(this._carsAmountMax);

  int get carsAmountMax => _carsAmountMax;

  int get carsAmount => _carsAmount;

  set carsAmount(int value) {
    _carsAmount = value;
  }

  void addCar(Car car) {
    if (carsAmount < carsAmountMax) {
      carList.add(car);
      carsAmount++;
    } else
      print('We cannot add car ${car.carStateNumber} , '
          'because parking is full');
  }

  void removeCar(Car car) {
    for (int i = 0; i < carList.length; i++) {
      if (carList[i].carStateNumber == car.carStateNumber) {
        carList.remove(carList[i]);
        carsAmount--;
        print('car ${carList[i].carStateNumber} was removed');
        return;
      }
    }
  }

  List<Car> getCarByStateNumber(int number) {
    List<Car> myList = [];
    for (int i = 0; i < carList.length; i++) {
      if (carList[i].carStateNumber == number) myList.add(carList[i]);
    }
    return myList;
  }

  @override
  String toString() {
    return 'Parking{carList: $carList, _carsAmountMax: $_carsAmountMax, _carsAmount: $_carsAmount}';
  }
}
