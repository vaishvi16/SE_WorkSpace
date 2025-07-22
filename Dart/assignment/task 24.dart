import 'dart:io';

void main()
{
  List<int> numbers = [];

  print("Enter how many integers you want to input:");
  int count = int.parse(stdin.readLineSync().toString());

  for (int i = 1; i <= count; i++)
  {
    try
    {
      print("Enter number ${i}:");
      int num = int.parse(stdin.readLineSync().toString());
      numbers.add(num);
    }
    catch (e)
    {
      print("Invalid input");
    }
  }

  print("You entered: $numbers");
}
