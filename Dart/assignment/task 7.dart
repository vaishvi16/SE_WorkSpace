import 'dart:io';

void main()
{
  int num;

  print("Enter a number to check if it is a prime number:");
  num = int.parse(stdin.readLineSync().toString());

  if (isPrime(num))
  {
    print("$num is a prime number.");
  }
  else
  {
    print("$num is not a prime number.");
  }
}

bool isPrime(int n)
{
  if (n >= 1) {
    for (int i = 2; i <= n ~/ 2; i++) {
      if (n % i == 0) {
        return false;
      }
    }
  }
  return true;
}
