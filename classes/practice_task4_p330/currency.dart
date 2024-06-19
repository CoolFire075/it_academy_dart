part 'rub.dart';
part 'yuan.dart';

sealed class Currency {
  final double _val;

  Currency(this._val);

  double get val => _val;

  Currency operator +(Currency other);

  Currency getMyCurrency(Currency other);
}
