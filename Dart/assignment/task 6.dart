import 'dart:io';

void main()
{
  int num;

  print("Enter any number: ");
  num = int.parse(stdin.readLineSync().toString());


    if(num % 2 == 0 && num % 1 == 0)
    {
      print("The given number is prime number");
    }
    else
      {
        print("The given number is not a prime ");
      }


}