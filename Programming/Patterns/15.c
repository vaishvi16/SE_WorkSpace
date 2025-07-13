#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j;
    char a = 'V';
    
    for(i=1; i<=5; i++)
    {
        for(j=1;j<=i; j++)
        {
            printf("%c ", a);
        }
       
        printf("\n");
    }
    
}


Output:

V 
V V 
V V V 
V V V V 
V V V V V 
