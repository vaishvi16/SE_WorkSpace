#include<stdio.h>
#include<conio.h>

void main()
{
   int i, mat1[2][2], mat2[2][2], result[2][2];
   
   for(i=0; i<2; i++)
   {
       for(int j= 0; j<2; j++)
       {
           printf("Enter value for matrix 1 \n");
           scanf("%d", &mat1[i][j]);
       }
   }
   
   for(i=0; i<2; i++)
   {
       for(int j= 0; j<2; j++)
       {
           printf("Enter value for matrix 2 \n");
           scanf("%d", &mat2[i][j]);
       }
   }
   
   
   printf("Matrix 1 is: \n");
   for(i=0; i<2; i++)
   {
       for(int j= 0; j<2; j++)
       {
           printf("%d ", mat1[i][j]);
       }
        printf("\n");
   }
   
   printf("Matrix 2 is: \n");
   for(i=0; i<2; i++)
   {
       for(int j= 0; j<2; j++)
       {
           printf("%d ", mat2[i][j]);
       }
        printf("\n");
   }
   
   printf("Resultant Matrix is: \n");
   for(i=0; i<2; i++)
   {
       for(int j= 0; j<2; j++)
       {
           result[i][j] = mat1[i][j] + mat2[i][j];
           printf("%d ", result[i][j]);
       }
        printf("\n");
   }
   
    
  
    
  
    getch();
}