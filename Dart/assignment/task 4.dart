import 'dart:io';

void main()
{
  const double pi = 3.14;
  int r;

  print("Enter radius: ");
  r = int.parse(stdin.readLineSync().toString());

  double area = pi * r * r;
  double circumference = 2 * pi * r;

  print("Area of circle is $area");
  print("Circumference of circle is $circumference");

}