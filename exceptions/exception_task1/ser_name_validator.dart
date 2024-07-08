import 'dart:io';

import 'i_validator.dart';

class SerNameValidator implements Validator {
  String serName = '';

  @override
  bool validate() {
    bool isSerNameCorrect = false;
    while (isSerNameCorrect == false) {
      print('Input your ser name:');
      serName = stdin.readLineSync() ?? '';
      try {
        for (int i = 0; i < serName.length; i++) {
          var index = serName.codeUnitAt(i);
          if (index < 65 ||
              index > 90 && index < 97 ||
              index > 122 && index < 1040 ||
              index > 1103) {
            throw UnsupportedError('You input uncorrected letter/symbol!!!');
          } else {
            isSerNameCorrect = true;
          }
        }
      } on UnsupportedError {
        print(
            'Please , input correct ser name using only Russian/English letters');
      } catch (e) {
        print('Error: $e');
      }
    }
    return isSerNameCorrect;
  }
}
