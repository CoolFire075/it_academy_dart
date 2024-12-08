import 'country.dart';
import 'gender.dart';

class User {
  final String _name;
  final String _serName;
  final int _age;
  var gender = Gender;
  var country = Country;

  User(this._name, this._serName, this._age, this.gender, this.country);

  int get age => _age;

  String get serName => _serName;

  String get name => _name;
}
