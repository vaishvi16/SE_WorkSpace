import 'dart:io';

void main()
{
  int num, a, b, ans;
  
  print("Choose number to select operation. 1.Addition  2.Substraction  3.Multiplication  4.Division");
  num = int.parse(stdin.readLineSync().toString());

  print("Enter value of A: ");
  a = int.parse(stdin.readLineSync().toString());

  print("Enter value of B: ");
  b = int.parse(stdin.readLineSync().toString());

  switch(num)
  {
    case 1:
      ans = a + b;
      print("Addition of a and b is $ans");

    case 2:
      ans = a - b;
      print("Substraction of a and b is $ans");

    case 3:
      ans = a * b;
      print("Multiplication of a and b is $ans");

    case 4:
      ans = a ~/ b;
      print("Division of a and b is $ans");

    default:
      print("Invalid Input");

  }
}