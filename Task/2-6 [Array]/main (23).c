#include <stdio.h>
#include <conio.h>

void main()
{
    int a[3][3]= {{1,2,3},{2,3,4},{3,4,5}};
    int i,j;
    
    for(i=0; i<3; i++)
    {
        for(j=0; j<3; j++)
        {
            printf("%d ", a[i][j]);
        }
        printf("\n");
    }
  
    getch();
}