import 'dart:io';

void main() {
  String obj = stdin.readLineSync() ?? '';
  if(obj.substring(0,1) == 'T' && obj.substring(obj.length) == '!'){
    print(obj);
  }
  else print('Pattern no matched');
}
