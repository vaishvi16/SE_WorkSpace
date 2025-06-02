#include <stdio.h>
#include <conio.h>

void main()
{
  int row, column, space;
  
  for(row=1; row<=5; row++)
  {
      for(space=1; space<=5-row; space++)
      {
          printf(" ");
      }
      for(column=1; column<=row; column++)
      {
          printf("* ");
      }
      printf("\n");
  }
  
  for(row=5-1; row>=1; row--)
  {
      for(space=1; space<=5-row; space++)
      {
          printf(" ");
      }
      for(column=1; column<=row; column++)
      {
          printf("* ");
      }
      printf("\n");
  }
  
  
    getch();
}