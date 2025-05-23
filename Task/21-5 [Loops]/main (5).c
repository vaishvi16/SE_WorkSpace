#include<stdio.h>
#include<conio.h>

void main()
{
   int num, lastdigit, firstdigit,sum;
   
   printf("Enter any number:");
   scanf("%d", &num);
   
   lastdigit = num % 10;
   
  
       while(num>0)
       {
          if(num>9)
          {
             num = num / 10;
             printf("continue");     
          }
          else
         {
            firstdigit = num;
            num=num/10;
            printf("done");

         }
         
       }
       
    sum=firstdigit+lastdigit;
    printf("\n sum of first digit and last digit is %d",sum);
   
   
   
  
   
    getch();
}