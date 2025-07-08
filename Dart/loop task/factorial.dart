import 'dart:io';

void main()
{
  int num;
  int i = 1;
  int fact = 1;

  print("Enter number: ");
  num = int.parse(stdin.readLineSync().toString());


  while(i<=num)
  {
    fact = fact * i;
    i++;

  }
  print(fact);

}