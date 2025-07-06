#include<stdio.h>
#include<conio.h>
int main()
{
    
    int i,j,k;
    
    //row
    for(i=1;i<=5;i++)
    {
        //space
        for(k=1;k<=5-i;k++)
        {
            printf(" ");
        }
        //col
        for(j=i;j>=1;j--)
        {
            printf("%d",j);
        }
        printf("\n");
    }
    
    
    return 0;
}