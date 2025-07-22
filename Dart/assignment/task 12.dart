
import 'dart:io';


numAccept()
{
  var num, numlist = 0;
  var largest=0, smallest=0;

  print("Enter numbers you want to add: ");
  num = int.parse(stdin.readLineSync().toString());

  for(int i= 1; i<=num; i++)
    {
      print("Enter number :");
      numlist = int.parse(stdin.readLineSync().toString());

      if(i == 1)
        {
          largest = numlist;
          smallest = numlist;
        }
      else
        {
          if (numlist < smallest)
            {
              smallest = numlist;
            }
          if (numlist > largest)
            {
              largest = numlist;
            }
        }
    }
  String result = "Smallest value: $smallest, Largest value: $largest";
  print(result);
}


void main()
{
  numAccept();
}