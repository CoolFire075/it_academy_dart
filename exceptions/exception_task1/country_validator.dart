import 'country.dart';
import 'i_validator.dart';

import 'dart:io';

class CountryValidator implements Validator {
  String country = '';

  @override
  bool validate() {
    int chooseCountry = 0;
    bool isCountryCorrect = false;

    while (isCountryCorrect == false) {
      print('Input your country: ${Country.values}');
      print(
          '                             1 ,                2,               3,                '
          '4,              5,             6,                7');
      String string = stdin.readLineSync() ?? '';
      chooseCountry = int.tryParse(string) ?? 0;
      try {
        if (chooseCountry > 0 && chooseCountry < 8)
          isCountryCorrect = true;
        else
          throw UnsupportedError('You input country uncorrected!!!');
      } on UnsupportedError {
        print('Please , input your country correctly');
      } catch (e) {
        print('Error: $e');
      }
    }
    country = switch (chooseCountry) {
      1 => 'Kyrgyzstan',
      2 => 'Russia',
      3 => 'Australia',
      4 => 'Spain',
      5 => 'Brazil',
      6 => 'Mongolia',
      7 => 'USA',
      _ => ''
    };
    return isCountryCorrect;
  }
}
