#include<stdio.h>
#include<conio.h>

void main()
{
    int i,j,k;
    int count = 0;
    
    for(i=1; i<=5; i++)
    {
        for(j=1; j<=5; j++)
        {
            if(i==1)
            {
              count++;
              printf("%d", count);
            }
            else if(j==5)
            {
                count++;
              printf("%d", count);
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

12345
    6
    7
    8
    9

