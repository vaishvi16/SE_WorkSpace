#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include<math.h>

void main()
{
    int num;
    
    printf("Enter any number: ");
    scanf("%d", &num);
    
    if(num < 0)
    {
        printf("The number %d is negative", num);
    }
    else if(num > 0)
    {
        printf("The number %d is positive", num);
    }
    else
    {
      printf("The number %d is 0", num);   
    }
   
  getch();
}