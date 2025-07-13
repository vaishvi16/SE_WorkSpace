import 'dart:io';

factorial()
{
  print("Enter any number to find its factorial: ");
  var num = int.parse(stdin.readLineSync().toString());

  var fact = 1;
  while(num > 0)
    {
      fact *= num;
      num--;
    }
    print("Factorial is $fact");

}

void main()
{
   factorial();
}