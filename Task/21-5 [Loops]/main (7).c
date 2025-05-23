#include<stdio.h>
#include<conio.h>

void main()
{
   int num,lastdigit=0, maxdigit=0, storednum=0;
   
   printf("Enter any number: ");
   scanf("%d", &num);//-1625
   
   if(num < 0)
   {
     num = -num;  //1625 
   }
   
   while(num>0)//1
   {
       lastdigit = num % 10;//1
       storednum = lastdigit;//1
       num = num / 10;//0

       
       if(maxdigit >= storednum)
       {
           storednum = lastdigit;//2
       }
       else
       {
           maxdigit = storednum;//6
       }
       

       
   }
   
   printf("Max digit: %d", maxdigit);
   
    getch();
}