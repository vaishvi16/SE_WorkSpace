#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k=0;
    
    //row
    for(i=1;i<=5;i++)
    {
        //col
        for(j=1;j<=i;j++)
        {
            k++;
            printf("%d ",k);
        }
        printf("\n");
    }
    
    
    return 0;
}
