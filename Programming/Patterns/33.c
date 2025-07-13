#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;

    for(i=5; i>=1; i--)
    {
        for(j=1; j<=i ;j++)
        {
            printf("%d ", j);

        }
        printf("\n");
    }
    
}


Output:

1 2 3 4 5 
1 2 3 4 
1 2 3 
1 2 
1 