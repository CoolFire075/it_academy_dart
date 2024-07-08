import 'dart:io';

import 'i_validator.dart';

class NameValidator implements Validator {
  String name = '';

  @override
  bool validate() {
    bool isNameCorrect = false;
    while (isNameCorrect == false) {
      print('Input your name:');
      name = stdin.readLineSync() ?? '';
      try {
        for (int i = 0; i < name.length; i++) {
          var index = name.codeUnitAt(i);
          if (index < 65 ||
              index > 90 && index < 97 ||
              index > 122 && index < 1040 ||
              index > 1103) {
            throw UnsupportedError('You input uncorrected letter/symbol!!!');
          } else {
            isNameCorrect = true;
          }
        }
      } on UnsupportedError {
        print('Please , input correct name using only Russian/English letters');
      } catch (e) {
        print('Error: $e');
      }
    }
    return isNameCorrect;
  }
}
