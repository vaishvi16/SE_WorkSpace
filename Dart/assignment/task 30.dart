import 'dart:io';

void main()
{
  List<int> numbers = [10, 20, 30, 40, 50];
  var choice;

  print("Enter your choice.\n1.Square \t2.Cube \t3.Half");
  choice = int.parse(stdin.readLineSync().toString());

  switch(choice)
  {
    case 1:
      squareNumbers(numbers);

    case 2:
      cubeNumbers(numbers);

    case 3:
      halfOfNumbers(numbers);

    default:
      print("Invalid Input");
  }
}

squareNumbers(List<int> numbers)
{
  for (int num in numbers)
  {
    var square = num * num;
    print(square);
  }
}

cubeNumbers(List<int> numbers)
{
  for (int num in numbers)
  {
    var cube = num * num * num;
    print(cube);
  }
}

halfOfNumbers(List<int> numbers)
{
  for (int num in numbers)
  {
    var half = num * 0.5;
    print(half);
  }
}

