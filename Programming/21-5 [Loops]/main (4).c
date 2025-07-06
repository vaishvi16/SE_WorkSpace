#include<stdio.h>
#include<conio.h>

void main()
{
   int num,sum=0,rem=0;
   
   printf("Enter any number: ");
   scanf("%d",&num);
   
   while(num>0)
   {
       rem = num%10;
       sum+= rem;
       num = num/10;
      
       
   }

  printf("Sum of all digits: %d", sum);
  
   
    getch();
}