#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k,n=10;

    for(i=1; i<=4; i++)
    {
        for(k=1; k<=5-i; k++)
        {
            printf(" ");
        }
        
        for(j=1; j<=i; j++)
        {
            printf("%d", n);
            n--;
        }
        printf("\n");
    }
    
}


Output:

   10
   98
  765
 4321