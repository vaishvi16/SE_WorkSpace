#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;
    char a = 'A';

    for(i=5; i>=1; i--)
    {
        for(j=i; j>=1; j--)
        {
            printf("%c", a + j-1);
        }
        printf("\n");
    }
   
}


Output:

EDCBA
DCBA
CBA
BA
A