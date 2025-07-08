import 'dart:io';

void main()
{
  int f, c, select;

  print("Choose conversion 1.Celsius to Fahrenheit  2.Fahrenheit to Celsius");
  select = int.parse(stdin.readLineSync().toString());

  switch(select)
  {
    case 1:
      print("Enter Celsius Temperature: ");
      c = int.parse(stdin.readLineSync().toString());
      f = c * 9~/5 + 32;
      print("Celsius temperature to Fahrenheit temperature is $f");

    case 2:
      print("Enter Fahrenheit Temperature: ");
      f = int.parse(stdin.readLineSync().toString());
      c = (f - 32) * 5 ~/ 9;
      print("Fahrenheit temperature to Celsius temperature is $c");

    default:
      print("Invalid Input");
  }
}