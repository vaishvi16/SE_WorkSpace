#include<stdio.h>
#include<conio.h>

void main()
{
   int num, lastdigit=0, reversenum=0;
   
   printf("Enter any number: ");
   scanf("%d", &num);//1627
   
   while(num>0)//0
   {
      lastdigit = num % 10;//1
      reversenum = reversenum * 10 + lastdigit;//7261
      num = num / 10;//0
   }
  
   printf("Reverse number is: %d", reversenum);
   
   
    getch();
}