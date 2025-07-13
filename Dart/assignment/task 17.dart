
import 'dart:io';

class Book
{

  details(var title, var author, var year )
  {
    print("Title of the book is: $title\nAuthor is $author.\nPublished year of this book is $year.");

  }

  checkyear(var year)
  {
    int cyear = 2025;

    var check = cyear - year;
    if(check > 10)
    {
      print("This book is over 10 years old");
    }
    else
    {
      print("This book is only $check years old.");
    }
  }

}

void main()
{
  var title, author, year;

  print("Enter book title: ");
  title = stdin.readLineSync().toString();

  print("Enter book author name: ");
  author = stdin.readLineSync().toString();

  print("Enter book published year: ");
  year = int.parse(stdin.readLineSync().toString());

  Book b1 = Book();
  b1.details(title, author, year);
  b1.checkyear(year);

}