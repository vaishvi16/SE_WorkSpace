import 'dart:io';

void main()
{
  int num;

  print("Choose number to find area: 1.Circle  2.Triangle  3.Rectangle ");
  num = int.parse(stdin.readLineSync().toString());

  if(num == 1)
    {
      print("Enter value of Radius: ");
      int r = int.parse(stdin.readLineSync().toString());

      double area = (3.14 * r * r);
      print("Area of circle is $area");
    }
  else if(num == 2)
    {
      print("Enter value of Length: ");
      int l = int.parse(stdin.readLineSync().toString());

      print("Enter value of Width: ");
      int w = int.parse(stdin.readLineSync().toString());

      print("Enter value of Breadth: ");
      int b = int.parse(stdin.readLineSync().toString());

      int area = (l*w*b) ~/ 2 ;
      print("Area of Triangle is $area");

    }
  else if(num == 3)
  {
    print("Enter value of Length: ");
    int l = int.parse(stdin.readLineSync().toString());

    print("Enter value of Width: ");
    int w = int.parse(stdin.readLineSync().toString());

    int area = l*w;
    print("Area of Rectangle is $area");

  }
  else
  {
    print("Invalid Input");
  }

}