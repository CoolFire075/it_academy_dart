class DormRoom {
  late final int _studentSellingAmount;
  late final int _roomSizeMax;
  late final int _roomSizeNow;
  late final bool _isCommandant;

  DormRoom(this._studentSellingAmount, this._roomSizeMax, this._roomSizeNow,
      this._isCommandant);

  int get peopleAmountNow => _roomSizeNow;

  int get bedsAmount => _roomSizeMax;

  int get maxPeopleAmount => _studentSellingAmount;

  bool get isCommandant => _isCommandant;

  @override
  String toString() {
    return 'DormRoom{_studentSellingAmount: $_studentSellingAmount,'
        ' _roomSizeMax: $_roomSizeMax, _roomSizeNow: $_roomSizeNow,'
        ' _isCommandant: $_isCommandant}';
  }

  DormRoom getPeople(DormRoom dormRoom) {
    print(dormRoom);
    if (_isCommandant == false && _studentSellingAmount > _roomSizeMax) {
      print('-_-');
      throw Error();
    }
    return dormRoom;
  }
}