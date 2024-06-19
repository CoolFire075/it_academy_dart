import 'dart:io';

void main() {
  var a = stdin.readLineSync() ?? '';
  var list = a.split(' ');
  List<int> list2 = [
    for(int i = 0; i < list.length; i++) int.tryParse(list[i]) ?? 0
  ];
  print('list before set: $list2');
  list2 = set3To0(list2);
  print('list after set:  $list2');
}

List<int> set3To0(List<int> list2){
  int index = 0;
  while(index < list2.length){
    if(list2[index] == 2){
      if(index + 1 < list2.length && list2[index + 1] == 3){
        index++;
        list2[index] = 0;
      }
    }
    index++;
  }
  return list2;
}