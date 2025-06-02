#include <stdio.h>
#include <conio.h>

void main()
{
  int marks[20];
  int i;
  
  for(i=0; i<5; i++)
  {
      printf("Enter your marks: ");
      scanf("%d", &marks[i]);
  }
  
  for(i=0; i<5; i++)
  {
     printf("\n Your marks are: %d ",marks[i] );
   
  }
   
  
  
    getch();
}