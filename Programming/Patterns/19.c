#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;
    char a = 'A';
    
    for(i=1; i<=5; i++)
    {
        for(k=1;k<=5-i; k++)
        {
            printf(" ");
        }
        
        for(j=i;j>=1; j--)
        {
            printf("%c", a + j-1);
        }
       
        printf("\n");
    }
    
}


Output:

    A
   BA
  CBA
 DCBA
EDCBA

