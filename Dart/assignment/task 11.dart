import 'dart:io';

void main()
{
  int num, i;
  int newValue = 1, result = 0;

  print("Enter how many numbers you want");
  num = int.parse(stdin.readLineSync().toString());

  for(i=0; i<=num; i++)
    {
      print("$result");

      int next = newValue + result;
      result = newValue;
      newValue = next;

    }
}