import 'currency.dart';
import 'wallet.dart';

void main() {
  Wallet wallet = Wallet();

  Currency rub = Rub(100);
  wallet.addCurrency(rub);

  Currency rub2 = Rub(1000);
  wallet.addCurrency(rub2);

  Currency yuan = Yuan(10);
  wallet.addCurrency(yuan);

  Currency yuan2 = Yuan(120);
  wallet.addCurrency(yuan2);

  print(wallet.list);

  double byRubAllSum = wallet.getAllCurrencySum(MyCurrency.Yuan);
  print('Amount of your money in your wallet by Yuan : $byRubAllSum');

  double byYuanAllSum = wallet.getAllCurrencySum(MyCurrency.Rub);
  print('Amount of your money in your wallet by Rub : $byYuanAllSum');

  double rubSum = wallet.getChosenCurrencySum(MyCurrency.Rub);
  print('Amount of Rub in your wallet : $rubSum');

  double yuanSum = wallet.getChosenCurrencySum(MyCurrency.Yuan);
  print('Amount of Yuan in your wallet : $yuanSum');

  double rub2Yuan = wallet.conversion(100, 100, MyCurrency.Yuan);
  print(rub2Yuan);

  double yuan2Rub = wallet.conversion(1000, 12, MyCurrency.Rub);
  print(yuan2Rub);
}
