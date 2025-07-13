#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;

    for(i=1; i<=5; i++)
    {
        
        for(j=i; j<=5; j++)
        {
            printf("%d ", j);
        }
        printf("\n");
    }
    
}


Output:

1 2 3 4 5 
2 3 4 5 
3 4 5 
4 5 
5 