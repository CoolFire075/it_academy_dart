class Student {
  final String _fIO;
  final DateTime _entryData;
  final double _gPA;

  Student(
    this._fIO,
    this._entryData,
    this._gPA,
  );

  double get gPA => _gPA;

  DateTime get entryData => _entryData;

  String get fIO => _fIO;

  @override
  String toString() {
    return '\nStudent{_fIO: $_fIO, _entryData: $_entryData, _gPA: $_gPA}';
  }
}
