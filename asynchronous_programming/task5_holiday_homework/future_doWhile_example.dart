void main() async {
  var value = 0;
  await Future.doWhile(() async {
    value++;
    await Future.delayed(const Duration(seconds: 1));
    if (value == 3) {
      print('Finished with $value');
      return false;
    }
    return true;
  });
}