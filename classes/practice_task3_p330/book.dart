class Book {
  final String _name;
  final String _author;
  final int _publicationYear;
  final double _weight;
  final int _bookPrice;

  Book(this._name, this._author, this._publicationYear, this._weight,
      this._bookPrice);

  int get bookPrice => _bookPrice;

  double get weight => _weight;

  int get publicationYear => _publicationYear;

  String get author => _author;

  String get name => _name;

  @override
  String toString() {
    return 'Book{_name: $_name, _author: $_author, '
        '_publicationYear: $_publicationYear, '
        '_weight: $_weight, _bookPrice: $_bookPrice}';
  }
}
