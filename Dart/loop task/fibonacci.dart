import 'dart:io';

void main()
{
  int num1 = 0, num2 = 1, fib = 0, i;

  print("Enter number to find its fibonacci");
  i = int.parse(stdin.readLineSync().toString());

  while(i > 0) {
    print(fib);
    fib = num1 + num2;
    num1 = num2;
    num2 = fib;
    i--;
  }
}