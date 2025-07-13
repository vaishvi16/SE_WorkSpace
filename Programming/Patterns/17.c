#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j;
    char a = 'A';
    
    for(i=1; i<=5; i++)
    {
        for(j=1;j<=i; j++)
        {
            printf("%c ", a + i-1);
        }
       
        printf("\n");
    }
    
}


Output:

A 
B B 
C C C 
D D D D 
E E E E E 