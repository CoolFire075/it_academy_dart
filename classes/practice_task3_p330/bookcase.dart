// 3. Реализуйте класс «Книжный шкаф», который содержит информацию о
// максимальном весе хранимых книг и их количестве. Класс «Книга» должен
// содержать поля: название, автор, год издания, вес и стоимость книги. При
// добавлении книги в шкаф осуществляется проверка по весу и количеству
// книг, которые может вместить шкаф в данный момент. Если один из этих
// параметров больше разрешенного, то книга в шкаф не добавляется.
// Дополнительно для книжного шкафа реализуйте методы поиска книги по
// автору, расчет полной стоимости и веса хранимых книг, получения списка
// книг, чья стоимость >= указанной. Также реализуйте возможность вывода
// текущих состояний объектов в терминал.
import 'book.dart';

class Bookcase {
  final int _bookWeightMax;
  final int _bookAmountMax;
  List<Book> bookList = [];
  double _bookWeight = 0;
  int _bookAmount = 0;

  Bookcase(this._bookWeightMax, this._bookAmountMax);

  int get bookAmountMax => _bookAmountMax;

  int get bookWeightMax => _bookWeightMax;

  int get bookAmount => _bookAmount;

  double get bookWeight => _bookWeight;

  set bookWeight(double value) {
    _bookWeight = value;
  }

  set bookAmount(int value) {
    _bookAmount = value;
  }

  void addBook(Book book) {
    if (bookWeight < bookWeightMax && bookAmount < bookAmountMax) {
      bookList.add(book);
      bookAmount++;
      bookWeight += book.weight;
    } else
      print('We cannot add "${book.name}", because bookcase has enough books');
  }

  List<Book> getBookByAuthor(String bookAuthor) {
    List<Book> myList = [];
    for (int i = 0; i < bookList.length; i++) {
      if (bookList[i].author == bookAuthor) myList.add(bookList[i]);
    }
    return myList;
  }

  int getAllBooksPrice() {
    int allBooksPrice = 0;
    for (int i = 0; i < bookList.length; i++) {
      allBooksPrice += bookList[i].bookPrice;
    }
    return allBooksPrice;
  }

  double getAllBooksWeight() {
    double allBooksWeight = 0;
    for (int i = 0; i < bookList.length; i++) {
      allBooksWeight += bookList[i].weight;
    }
    return allBooksWeight;
  }

  List<Book> moreExpensiveBookList(int price) {
    List<Book> myList = [];
    for (int i = 0; i < bookList.length; i++) {
      if (bookList[i].bookPrice >= price) myList.add(bookList[i]);
    }
    return myList;
  }

  @override
  String toString() {
    return 'Bookcase{_bookWeightMax: $_bookWeightMax, '
        '_bookAmountMax: $_bookAmountMax, bookList: $bookList, '
        '_bookWeight: $_bookWeight, _bookAmount: $_bookAmount}';
  }
}
