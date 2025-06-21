#include<stdio.h>
#include<conio.h>
void main()
{
   
   int a[3][3],b[3][3],result[3][3];
   int i,j,k;
  
    printf("\n Enter First Matrix of 3*3 Elements: ");
  
    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            scanf("\n %d",&a[i][j]);
        }
    }
    
     printf("\n Enter Second Matrix of 3*3 Elements: ");
  
    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            scanf("\n %d",&b[i][j]);
        }
    }
    
     for (i = 0; i < 3; i++) 
     {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 3; k++) 
            {
                result[i][j] += a[i][k] * b[k][j];
            }
        }
    }
    
     printf("Resultant matrix:\n");
    
	for (i = 0; i < 3; i++) 
	{
        for (j = 0; j < 3; j++) 
        {
            printf("%d ", result[i][j]);
        }
        printf("\n");
    }
    
    
        
    getch();
}