#include<stdio.h>

int main()
{
  int row, coloumn, space;
  
  for(row=0; row<=5; row++)
  {
      for(space=0; space<=5-row; space++)
      {
          printf(" ");
      }
      for(coloumn=0; coloumn<=row; coloumn++)
      {
          if(row%2 == 0)
          {
            printf("* ");   
          }
      }
      printf("\n");
  }
  
  for(row=2; row>=0; row--)
  {
      for(space=0; space<=5-row; space++)
      {
          printf(" ");
      }
      for(coloumn=0; coloumn<=row; coloumn++)
      {
          if(row %2 == 0)
          {
            printf("* ");   
          }
      }
      printf("\n");
  }
  
  
   
   return 0;
}