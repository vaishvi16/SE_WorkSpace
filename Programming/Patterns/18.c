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
            printf("%c ", a + j-1);
        }
       
        printf("\n");
    }
    
}


Output:

A 
A B 
A B C 
A B C D 
A B C D E 