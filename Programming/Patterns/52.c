#include<stdio.h>
#include<conio.h>

void main()
{
    int i,j,k;
    
    for(i=1; i<=5; i++)
    {
        for(j=1; j<=5; j++)
        {
            if(i==1 || j==1 || i==5)
            {
              printf("*");
            }
        }
        printf("\n");
    }
    
    for(i=1; i<=5; i++)
    {
        for(j=1; j<=5; j++)
        {
            if(j==5 || i==5)
            {
              printf("*");
            }
            else
            {
                printf(" ");
            }
        }
        printf("\n");
    }
    
    getch();
}


Output:

*****
*
*
*
*****
    *
    *
    *
    *
*****

