#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;
    char a[20] = "INDIA";

    for(i=1; i<=5; i++)
    {
        for(j=1; j<=i; j++)
        {
            printf("%c", a[j-1]);
        }
        printf("\n");
    }
    
}


Output:

I
IN
IND
INDI
INDIA