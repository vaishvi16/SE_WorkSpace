#include<stdio.h>
#include<conio.h>

void main()
{
    int i,j,k;

    for(i=4; i>=1; i--)
    {
       
        for(j=i; j>=1; j--)
        {
            printf("*");
        }
        printf("\n");
    }
    
    
    getch();
}

