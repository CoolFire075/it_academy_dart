import 'taxi.dart';

class TaxiCompany {
  List<Taxi> _listTaxi = [];
  int _taxiAmount;
  int _taxiCompanyIncome = 0;
  final int _taxiAmountMax;

  TaxiCompany(this._taxiAmount, this._taxiAmountMax);

  int get taxiCompanyIncome => _taxiCompanyIncome;

  int get taxiAmountMax => _taxiAmountMax;

  int get taxiAmount => _taxiAmount;

  List<Taxi> get listTaxi => _listTaxi;

  set taxiAmount(int value) {
    _taxiAmount = value;
  }

  set taxiCompanyIncome(int value) {
    _taxiCompanyIncome = value;
  }

  List<Taxi> addTaxi(Taxi taxi) {
    if (taxiAmount < taxiAmountMax) {
      taxi.rate = switch (taxi.carClass) {
        'comfort' => taxi.rate * 2,
        'business' => taxi.rate * 3,
        _ => 100,
      };
      listTaxi.add(taxi);
      taxiAmount++;
      print('Таксист по имени ${taxi.name} был добавлен в список');
      return listTaxi;
    }
    print('Мы не можем добавить такси: $taxi , тк. места заполнены -_-');
    return listTaxi;
  }

  List<Taxi> deleteTaxi(String name) {
    for (int i = 0; i < listTaxi.length; i++) {
      if (listTaxi[i].name == name) {
        listTaxi.remove(listTaxi[i]);
        return listTaxi;
      }
    }
    print('Мы не нашли таксиста по имени: $name');
    return listTaxi;
  }

  int getRateOfTaxiCompany() {
    int rateOfTaxiCompany = 0;
    for (int i = 0; i < listTaxi.length; i++) {
      rateOfTaxiCompany += listTaxi[i].rate;
    }
    return rateOfTaxiCompany;
  }

  @override
  String toString() {
    return 'TaxiCompany{_listTaxi: $_listTaxi, _taxiAmount: $_taxiAmount,'
        ' _taxiCompanyIncome: $_taxiCompanyIncome}';
  }
}

extension FindTaxi on TaxiCompany {
  Taxi? findTaxi(int number) {
    for (int i = 0; i < listTaxi.length; i++) {
      if (listTaxi[i].number == number) {
        return listTaxi[i];
      }
    }
    print('Мы не нашли таксиста по номеру: $number');
    return null;
  }

}
