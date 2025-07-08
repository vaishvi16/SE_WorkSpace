import 'dart:io';

void main()
{
  String name;
  int age;
  
  print("Enter your name: ");
  name = stdin.readLineSync().toString();
  
  print("Enter your age: ");
  age = int.parse(stdin.readLineSync().toString());
  
  print("Hello!! Welcome $name your age is $age");

  int finalAge = 100 - age;
  print("$finalAge years you have left to turn 100");

}