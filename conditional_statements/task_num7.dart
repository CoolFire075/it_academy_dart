import 'dart:io';

void main() {
  print('Input your list:');
  var string = stdin.readLineSync() ?? '';
  var stringList = string.split(' ');
  var list = [for (var str in stringList) int.tryParse(str) ?? 0];
  getMiddleNumOfList(list);
}

void getMiddleNumOfList(List<int> list) {
  if (list.length < 9) throw Error();
  int listMiddleNum;
  list.length % 2 == 0
      ? listMiddleNum = list.length ~/ 2
      : listMiddleNum = (list.length - 1) ~/ 2;
  // if (list.length % 2 == 0)
  //   listMiddleNum = list.length / 2;
  // else
  //   listMiddleNum = (list.length - 1) / 2;
  if (list[listMiddleNum] >= 10)
    var result = list.first + list.last;
  var result = list.first * list.last;
  print(result);
}

void getMiddleNumWithSwitch(List<int> list) {
  if (list.length < 9) throw Error();
  int listMiddleNum;
  list.length % 2 == 0
      ? listMiddleNum = list.length ~/ 2
      : listMiddleNum = (list.length - 1) ~/ 2;
  var result = switch(list[listMiddleNum]){
   >= 10 => list.first + list.last,
  _ => list.first * list[list.last - 1]
  };
  print(result);
  }
