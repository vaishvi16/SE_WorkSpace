#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;
    char a = 'A';

    for(i=1; i<=5; i++)
    {
        for(k=1; k<=5-i; k++)
        {
            printf(" ");
        }
        
        for(j=1; j<=i; j++)
        {
            printf("%c", a + j-1);
        }
        
        for(j=i; j>=2; j--)
        {
            printf("%c", a + j-2);
        }
        printf("\n");
    }
   
}

Output:

    A
   ABA
  ABCBA
 ABCDCBA
ABCDEDCBA


