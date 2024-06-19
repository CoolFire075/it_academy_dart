class Taxi {
  final String _name;
  final int _number;
  int _rate = 100;
  final String _carClass;

  Taxi(this._name, this._number, this._carClass);

  int get rate => _rate;

  int get number => _number;

  String get name => _name;

  String get carClass => _carClass;


  set rate(int value) {
    _rate = value;
  }

  @override
  String toString() {
    return 'Taxi{_name: $_name, _number: $_number, _rate: $_rate}';
  }
}
