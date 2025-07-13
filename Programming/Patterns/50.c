#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;

    for(i=1; i<=5; i++)
    {
        for(j=1; j<=5; j++)
        {
            if(j == 5 || i==1 || i==j)
            {
               printf("%d ", 1);
            }
            else
            {
               printf("  ");
            }
        }
        printf("\n");
    }

   
}

Output:

1 1 1 1 1 
  1     1 
    1   1 
      1 1 
        1 
