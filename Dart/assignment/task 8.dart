import 'dart:io';

void main()
{
  var num;


  print("Enter your choice. 1.Addition\t 2.Substraction\t 3.Multiplication\t 4.Division");
  num = int.parse(stdin.readLineSync().toString());

  if(num == 1)
    {
      print("Enter value of A: ");
      var a = int.parse(stdin.readLineSync().toString());

      print("Enter value of B: ");
      var b = int.parse(stdin.readLineSync().toString());

      var ans = a + b;
      print("Addition of $a and $b is $ans");
    }
  else if(num == 2)
  {
    print("Enter value of A: ");
    var a = int.parse(stdin.readLineSync().toString());

    print("Enter value of B: ");
    var b = int.parse(stdin.readLineSync().toString());

    var ans = a - b;
    print("Substraction of $a and $b is $ans");
  }
  else if(num == 3)
  {
    print("Enter value of A: ");
    var a = int.parse(stdin.readLineSync().toString());

    print("Enter value of B: ");
    var b = int.parse(stdin.readLineSync().toString());

    var ans = a * b;
    print("Multiplication of $a and $b is $ans");
  }
  else if(num == 4)
  {
    print("Enter value of A: ");
    var a = int.parse(stdin.readLineSync().toString());

    print("Enter value of B: ");
    var b = int.parse(stdin.readLineSync().toString());

    var ans = a ~/ b;
    print("Division of $a and $b is $ans");
  }
  else
    {
      print("Invalid Input");
    }
}