#include <stdio.h>
#include <conio.h>

void main()
{
    int a[50][50]= {};
    int i,j, size, value[50][50] = {};
    
    printf("Enter size: ");
    scanf("%d", &size);
    
    for(i=0; i<size; i++)
    {
        for(j=0; j<size; j++)
        {
             printf("Enter values: ");
            scanf("%d", &value[i][j]);
        }
           
    }
    
    for(i=0; i<size; i++)
    {
        for(j=0; j<size; j++)
        {
            printf("%d ", value[i][j]);
        }
        printf("\n");
    }
  
    getch();
}