#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;

    for(i=1; i<=5; i++)
    {
        for(j=5;j>=i; j--)
        {
            printf("%d", i);
        }
        printf("\n");
    }
    
}


Output:

11111
2222
333
44
5