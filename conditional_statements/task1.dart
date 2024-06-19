import 'dart:io';
void main(){
  var string = stdin.readLineSync() ?? '';
  if(string.length > 0 && string.length < 15 && string.substring(0,1) == 'w'){
    print(string);
  } else{
    print('Pattern no matched');
  }
}