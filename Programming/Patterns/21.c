#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;

    for(i=1; i<=5; i++)
    {
        for(j=5;j>=i; j--)
        {
            printf("%d", j);
        }
        printf("\n");
    }
    
}


Output:

54321
5432
543
54
5