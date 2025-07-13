#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;
    
    for(i=1; i<=5; i++)
    {
        for(k=1;k<=5-i; k++)
        {
            printf("  ");
        }
        
        for(j=i;j>=1; j--)
        {
            printf("%d ", j);
        }
        
        for(j=2;j<=i; j++)
        {
            printf("%d ", j);
        }
        printf("\n");
    }
    
}


Output:

        1 
      2 1 2 
    3 2 1 2 3 
  4 3 2 1 2 3 4 
5 4 3 2 1 2 3 4 5 

