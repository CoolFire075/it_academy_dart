import 'gender.dart';

import 'i_validator.dart';

import 'dart:io';

class GenderValidator implements Validator {
  String gender = '';
  int chooseGender = 0;

  @override
  bool validate() {
    bool isGenderCorrect = false;

    while (isGenderCorrect == false) {
      print('Input your gender: ${Gender.values}');
      print('print "1" if you are male and "2" if you are female');
      gender = stdin.readLineSync() ?? '';
      chooseGender = int.tryParse(gender) ?? 0;
      try {
        if (chooseGender == 1 || chooseGender == 2)
          isGenderCorrect = true;
        else
          throw UnsupportedError('You input gender uncorrected!!!');
      } on UnsupportedError {
        print('Please , input your gender correctly');
      } catch (e) {
        print('Error: $e');
      }
    }
    gender = switch (chooseGender) { 1 => 'Male', 2 => 'Female', _ => '' };
    return isGenderCorrect;
  }
}
