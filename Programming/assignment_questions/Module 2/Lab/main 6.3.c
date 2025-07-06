#include<stdio.h>
#include<conio.h>

void main()
{
   int num, lastdigit=0, reversenum=0;
   
   printf("Enter any number: ");
   scanf("%d", &num);
   
   while(num>0)
   {
      lastdigit = num % 10;
      reversenum = reversenum * 10 + lastdigit;
      num = num / 10;
   }
  
   printf("Reverse number is: %d", reversenum);
   
   
    getch();
}