#include<stdio.h>
#include<conio.h>

int factorial(int num)
{
   if(num<=1)
   {
     return 1;
   }
   else
   {
    return num * factorial(num - 1);
   }
}


void main()
{
    int num, ans;
    
    printf("Enter the number to find its factorial: ");
    scanf("%d", &num);
    
   ans = factorial(num);
   printf("%d", ans);
    
    
    getch();
}