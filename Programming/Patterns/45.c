#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;

    for(i=1; i<=5; i++)
    {
        for(j=1; j<=i; j++)
        {
               printf("*");
        }
        
        for(k=1; k<=5-i; k++)
        {
            printf(" ");
        }
        
        for(k=1; k<=5-i; k++)
        {
            printf(" ");
        }
        
        for(j=1; j<=i; j++)
        {
               printf("*");
        }
        printf("\n");
    }
    
    for(i=4; i>=1; i--)
    {
        for(j=1; j<=i; j++)
        {
               printf("*");
        }
        
        for(k=1; k<=5-i; k++)
        {
            printf(" ");
        }
        
        for(k=1; k<=5-i; k++)
        {
            printf(" ");
        }
        
        for(j=1; j<=i; j++)
        {
               printf("*");
        }
        printf("\n");
    }
   
}


Output:

*        *
**      **
***    ***
****  ****
**********
****  ****
***    ***
**      **
*        *
