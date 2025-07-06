#include<stdio.h>
#include<conio.h>

int factorial(int num)
{
    int ans=1;
    
   while(num>=1)
   {
       ans *= num;
       num--;
   }
    
    
    printf("%d", ans);
    
    return 0;
}


void main()
{
    int num;
    
    printf("Enter the number to find its factorial: ");
    scanf("%d", &num);
    
    factorial(num);
    
    
    getch();
}