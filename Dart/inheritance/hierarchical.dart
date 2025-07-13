
import 'dart:io';

class Shape
{
  var a,b;

  getValues(int num1, int num2)
  {
    a = num1;
    b = num2;

  }

}
class Rectangle extends Shape
{
    area()
    {
       int result = a * b;
       print("Area of Rectangle is $result");
    }
}
class Triangle extends Shape
{
  area()
  {
    double result = 0.5 * a * b;
    print("Area of Triangle is $result");
  }
}

void main()
{
  print("Enter value for A: ");
  int a = int.parse(stdin.readLineSync().toString());

  print("Enter value for B: ");
  int b = int.parse(stdin.readLineSync().toString());

  Triangle t1 = Triangle();
  Rectangle r1 = Rectangle();

  t1.getValues(a, b);
  r1.getValues(a, b);

  t1.area();
  r1.area();


}