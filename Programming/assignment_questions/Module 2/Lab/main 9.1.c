#include<stdio.h>
#include<conio.h>
#include<string.h>

void main()
{
    char num[50], array[3][3]={{1,2,3},{3,4,5},{5,6,7}};
    int i,sum = 0;
    
    printf("Enter any 5 numbers\n");
    
    for(i=1; i<=5; i++)
    {
        printf("Enter %d number: ", i);
        scanf("%d", &num[i]);
    }
    for(i=1; i<=5; i++)
    {
        printf("\n %d Number you entered is %d \n", i, num[i]);
    }
    
     printf("\n Matrix : \n");
    for (int i = 0; i < 3; i++) 
    {
      for (int j = 0; j < 3; j++) 
      {
        printf(" %d ", array[i][j]);
        sum += array[i][j];
      }
      printf("\n");
    }

    printf("\nSum of all elements = %d", sum);
    
    
    
    
    getch();
}
