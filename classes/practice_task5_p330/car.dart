/// У класса Car должны быть
/// следующие поля: производитель, модель и гос. номер автомобиля.
class Car {
  final String _manufacturer;
  final String _model;
  final int _carStateNumber;

  Car(this._manufacturer, this._model, this._carStateNumber);

  int get carStateNumber => _carStateNumber;

  String get model => _model;

  String get manufacturer => _manufacturer;

  @override
  String toString() {
    return 'Car{_manufacturer: $_manufacturer, _model: $_model, _carStateNumber: $_carStateNumber}';
  }
}
