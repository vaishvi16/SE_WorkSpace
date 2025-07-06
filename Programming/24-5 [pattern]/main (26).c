#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include<math.h>

void main()
{
    int row,column,space;
    
    for(row=1; row<=5; row++)
    {
         for(space=1; space<=5-row; space++)
        {
            printf(" ");
        }
        
        for(column=1; column<=row; column++)
        {
            printf("* ");
        }
        
        printf("\n");
    }
    
  
  
  getch();
}