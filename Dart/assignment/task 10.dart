import 'dart:io';

revString()
{
  print("Enter ny string to check whether it is palindrome or not: ");
  String str = stdin.readLineSync().toString();
  String revstr = str.split('').reversed.join('');

   if(revstr == str)
     {
       print("The given string is Palindrome");
     }
   else
     {
       print("The given string is not Palindrome");
     }
}

void main()
{
  revString();

}