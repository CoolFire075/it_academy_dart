import 'book.dart';
import 'bookcase.dart';

void main(){
  Bookcase bookcase = Bookcase(10, 10);

  Book book = Book('my soul', 'Me', 2024, 1.3, 450);
  bookcase.addBook(book);
  Book book2 = Book('Captains daughter', 'Pushkin', 1837, 5.1, 560);
  bookcase.addBook(book2);
  Book book3 = Book('War and Peace', 'Tolstoy', 1814, 5.7, 835);
  bookcase.addBook(book3);
  Book book4 = Book('my book', 'person', 2020, 0.8, 300);
  bookcase.addBook(book4);


  print(bookcase.getBookByAuthor('Me'));
  print('Price of all books in bookcase : ${bookcase.getAllBooksPrice()}');
  print('Weight of all book in bookcase : ${bookcase.getAllBooksWeight()}');
  print('Books more expensive than your mind : ${bookcase.moreExpensiveBookList(500)}');
}