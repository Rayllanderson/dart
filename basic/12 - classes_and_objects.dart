import 'dart:math';
class Book {
  String title;
  late String author;
  late int numberOfPages; //if i access this without set the value, will throw exception
  bool isOpen = false;

  //constructor
  //default constructor
  Book(this.title, this.author);

  //multiples constructors
  //we need to give them a name
  Book.onlyTitle(this.title);

  //if i want use this constructor like Java, i have to put 'late' on atributes
  // Book.whatever(String title){
  //   this.title = title;
  // }

  void openARandomPage(){
    isOpen = true;
    var randomPageNumber = new Random().nextInt(numberOfPages + 1);
    print('The book $title is open in the page $randomPageNumber');
  }

  void openBook(){
    isOpen = true;
  }

  void closeBook(){
    isOpen = false;
  }

  //toString like java
  @override
  String toString() {
    return 'Title: $title\nAuthor: $author';
  }
}

void main(){
  Book book = Book("How to be the King of the Pirates", "Monkey D. Luffy");
  print(book);
  book.numberOfPages = 310; //if I don't set number of pages here, that would throw an exception
  print(book.numberOfPages);
  book.openARandomPage();
  print(book.isOpen);
  book.closeBook();
  print(book.isOpen);

  Book anotherBook = Book.onlyTitle("Yo!");
  print(anotherBook.title);
  // print(anotherBook); //it will throw exception, cuz I don't set the others attributes.

}