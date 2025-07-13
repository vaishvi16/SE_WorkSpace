#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;
    char a[20] = "INDIAN";
    int index = 0;

    for(i=1; i<=5; i++)
    {
        for(k=1; k<=5-i; k++)
        {
            printf(" ");
        }
        
        for(j=1; j<=i; j++)
        {
            printf("%c ", a[index]);
            index++;
            
        }
        printf("\n");
    }
    
}

Output:

    I 
   N D 
  I A N 
