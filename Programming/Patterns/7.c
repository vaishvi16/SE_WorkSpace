#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;
    
    for(i=1; i<=5; i++)
    {
        for(j=1;j<=i; j++)
        {
            printf("%d", j % 2);
        }
        printf("\n");
    }
    
}


Output:

1
10
101
1010
10101