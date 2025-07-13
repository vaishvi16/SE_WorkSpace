#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k,n=10;

    for(i=1; i<=4; i++)
    {
        for(j=1; j<=i; j++)
        {
            printf("%d ", n);
            n--;
        }
        printf("\n");
    }
    
}


Output:

10 
9 8 
7 6 5 
4 3 2 1 