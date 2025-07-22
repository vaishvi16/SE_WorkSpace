import 'dart:io';
import 'dart:math';

void main()
{
  var r = Random();
  var num;
  int secretNumber = r.nextInt(100) + 1;

  print("Welcome to the number guessing game! Guess any number between 1 to 100. You will get 5 chance to guess the correct number.");
  print(secretNumber);

  for(int i=1; i<=5; i++)
    {
      print("Enter any number");
      num = int.parse(stdin.readLineSync().toString());

      if(num < secretNumber)
        {
          print("Too low! Guess any higher number");
        }
      else if(num > secretNumber)
        {
          print("Too high! Guess any lower number");
        }
      else if(num == secretNumber)
        {
          print("You got the correct number!");
          break;
        }
    }



}
