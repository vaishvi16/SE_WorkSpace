#include<stdio.h>
#include<conio.h>

void main()
{
    int i,j,k;
    
    for(i=0; i<=6; i++)
    {
        for(j=0;j<=i;j++)
        {
            if(i==j)
            {
                printf("*");

            }
            else
            {
               printf(" ");

            }
        }
        for(k=0; k<=5-i; k++)
        {
            printf(" ");
        }
        
        for(k=0; k<=5-i; k++)
        {
            printf(" ");
        }
        for(j=0;j<=i;j++)
        {
            if(i==j)
            {
                printf("*");
            }
        }
        printf("\n");
        

    }
    
    getch();
}



Output:

*            *
 *          *
  *        *
   *      *
    *    *
     *  *
      **
