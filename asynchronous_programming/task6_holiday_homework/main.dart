import 'dart:io';

void main(){
  int count = 0;
  var future = Future<Object>(() {
    // for(count = 0; count < 10; count++){
    //   sleep(Duration(seconds: 1));
    //   print(count);
    // }
    return 0;
  }
  );
  future.timeout(
    Duration(seconds: 1),
  ).then((value) => print(value))
  .catchError(
      (e) => print(e),
  );
}