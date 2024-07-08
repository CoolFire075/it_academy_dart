import 'i_validator.dart';

import 'dart:io';

class AgeValidator implements Validator {
  int age = 0;

  @override
  bool validate() {
    bool isAgeCorrect = false;

    while (isAgeCorrect == false) {
      print('Input your age:');
      String string = stdin.readLineSync() ?? '';
      age = int.tryParse(string) ?? 131;
      try {
        if (age < 0 || age > 130)
          throw UnsupportedError('You input uncorrected age!!!');
        isAgeCorrect = true;
      } on UnsupportedError {
        print('Please , input your own age');
      } catch (e) {
        print('Error: $e');
      }
    }
    return isAgeCorrect;
  }
}
