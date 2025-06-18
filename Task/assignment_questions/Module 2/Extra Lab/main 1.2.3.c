#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include<math.h>

void main()
{
    int num;
    
    printf("Enter any number: ");
    scanf("%d", &num);
    
    if(num % 3 == 0 && num % 5 == 0)
    {
        printf("The number %d is multiple of both 3 and 5", num);
    }
    else
    {
      printf("The number %d is not multiple", num);   
    }
   
  getch();
}