import 'dart:io';

void main()
{
  int marks;

  print("Enter your marks to see your grade: ");
  marks = int.parse(stdin.readLineSync().toString());

    if(marks >= 90)
      {
        print("A Grade");
      }
    else if(marks >= 80)
      {
        print("B Grade");
      }
    else if(marks >= 70)
      {
        print("C Grade");
      }
    else if(marks >= 60)
      {
        print("D Grade");
      }
    else
      {
        print("Fail");
      }


}