part of 'currency.dart';

class Yuan extends Currency {
  Yuan(super.val);

  @override
  Currency operator +(Currency other) {
    if (other is Yuan) {
      return Yuan(val + other.val);
    } else if (other is Rub) {
      return Yuan(val + other.val ~/ 12);
    } else {
      print('Вы ввели неправильную валюту');
    }
    return Yuan(val);
  }

  @override
  Currency getMyCurrency(Currency other) {
    if (other is Rub) {
      return Yuan(other.val / 12);
    } else
      print('Вы ввели неправильную валюту');
    return Yuan(val);
  }

  @override
  String toString() {
    return 'Yuan{$val}';
  }
}
