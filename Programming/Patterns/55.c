#include<stdio.h>
#include<conio.h>

void main()
{
    int i,j,k;

    for(i=5; i>=1; i--)
    {
        for(k=1; k<=5-i; k++)
        {
            printf(" ");
        }
        for(j=1; j<=i; j++)
        {
            
            printf("%d", j);
           
        }
        printf("\n");
    }
    
    
    getch();
}

