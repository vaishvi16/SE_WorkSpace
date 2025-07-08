import 'dart:io';

void main()
{
  int i;
  int num;

  print("Enter number:");
  num = int.parse(stdin.readLineSync().toString());

  for(i=1; i<=10; i++)
  {
    int ans = num * i;
    print("$num X $i = $ans");
  }

}