import 'dart:io';

void main() {
  try {
    print("Enter first number:");
    var a = double.parse(stdin.readLineSync()!);

    print("Enter second number:");
    var b = double.parse(stdin.readLineSync()!);

    print("Enter operation\n1. Addition\t 2.Substraction \t3.Multiplication \t4.Division:");
    var op = int.parse(stdin.readLineSync().toString());

    var result;

    switch (op) {
      case 1:
        result = a + b;

      case 2:
        result = a - b;

      case 3:
        result = a * b.toDouble();

      case 4:
        result = a / b;

      default:
        print("Invalid Input");
    }

    print("Result: $result");
  }
  catch (e)
  {
    print("Invalid input. Please enter numbers and valid operation.");
  }
}
