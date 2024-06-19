part of 'currency.dart';

class Rub extends Currency {
  Rub(super.val);

  @override
  Rub operator +(Currency other) {
    if (other is Rub) {
      return Rub(val + other.val);
    } else if (other is Yuan) {
      return Rub(val + other.val * 12);
    } else {
      print('Вы ввели неправильную валюту');
    }
    return Rub(val);
  }

  @override
  Rub getMyCurrency(Currency other) {
    if (other is Yuan) {
      return Rub(other.val * 12);
    } else
      print('Вы ввели неправильную валюту');
    return Rub(val);
  }

  @override
  String toString() {
    return 'Rub{$val}';
  }
}
