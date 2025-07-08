import 'dart:io';

void main()
{
  int num;

  print("Enter number to verify whether its odd or even");
  num = int.parse(stdin.readLineSync().toString());

  if(num % 2 == 0)
    {
       print("Number is even");
    }
  else
    {
      print("Number is odd");
    }
}