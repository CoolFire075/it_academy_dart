import 'currency.dart';

enum MyCurrency {
  Rub,
  Yuan,
}

class Wallet {
  List<Currency> _list = [];
  double amountOfCurrency = 0;

  List<Currency> get list => _list;

  void addCurrency(Currency currency) {
    list.add(currency);
  }

  double getAllCurrencySum(MyCurrency myCurrency) {
    amountOfCurrency = 0;
    String currencyChoose = switch (myCurrency) {
      MyCurrency.Rub => 'Rub',
      MyCurrency.Yuan => 'Yuan',
    };
    if (currencyChoose == 'Rub') {
      for (int i = 0; i < list.length; i++) {
        list[i] is Rub
            ? amountOfCurrency += list[i].val
            : amountOfCurrency += list[i].val * 12;
      }
    } else if (currencyChoose == 'Yuan') {
      for (int i = 0; i < list.length; i++) {
        list[i] is Yuan
            ? amountOfCurrency += list[i].val
            : amountOfCurrency += list[i].val / 12;
      }
    } else
      print('We cannot find your currency');
    return amountOfCurrency;
  }

  double getChosenCurrencySum(MyCurrency myCurrency) {
    amountOfCurrency = 0;
    String currencyChoose = switch (myCurrency) {
      MyCurrency.Rub => 'Rub',
      MyCurrency.Yuan => 'Yuan',
    };
    if (myCurrency == MyCurrency.Rub) {
      for (int i = 0; i < list.length; i++) {
        if (list[i] is Rub) amountOfCurrency += list[i].val;
      }
    } else if (currencyChoose == 'Yuan') {
      for (int i = 0; i < list.length; i++) {
        if (list[i] is Yuan) amountOfCurrency += list[i].val;
      }
    } else
      print('We cannot find your currency');
    return amountOfCurrency;
  }

  double conversion(double amount, int coefficient, MyCurrency myCurrency) {
    String currencyChoose = switch (myCurrency) {
      MyCurrency.Rub => 'Rub',
      MyCurrency.Yuan => 'Yuan',
    };
    if (currencyChoose == 'Rub')
      return amount / coefficient;
    else if (currencyChoose == 'Yuan')
      return amount * coefficient;
    else
      print('We cannot find type of currency you chosen');
    return amount;
  }

  @override
  String toString() {
    return 'Wallet{_list: $_list,'
        ' amountOfCurrency: $amountOfCurrency}';
  }
}
