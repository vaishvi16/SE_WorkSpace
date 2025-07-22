import 'dart:io';

void main()
{
  try
  {
    print("Enter first number:");
    int num1 = int.parse(stdin.readLineSync()!);

    print("Enter second number:");
    int num2 = int.parse(stdin.readLineSync()!);

    int result = num1 ~/ num2;
    print("Result: $result");
  }
  catch (e)
  {
    print("Error: Cannot divide by zero.");
  }
}
