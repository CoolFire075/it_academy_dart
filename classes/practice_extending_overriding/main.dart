import 'passenger_car.dart';
import 'taxi.dart';
import 'taxi_company.dart';

void main() {
  // Мы имеем 3 вида такси: эконом, комфорт и бизнес
  TaxiCompany taxiCompany = TaxiCompany(0, 3);
  Taxi taxi = Taxi('Vladimir', 075, 'economy');
  taxiCompany.addTaxi(taxi);
  Taxi taxi2 = Taxi('Vanya', 347, 'comfort');
  taxiCompany.addTaxi(taxi2);
  Taxi taxi3 = Taxi('Katya', 129, 'business');
  taxiCompany.addTaxi(taxi3);
  Taxi taxi4 = Taxi('Sasha', 973, 'business');
  taxiCompany.addTaxi(taxi4);
  taxiCompany.taxiCompanyIncome = taxiCompany.getRateOfTaxiCompany();
  print(taxiCompany);
}
