#include<stdio.h>

int main()
{
  int row, coloumn, space;
  
  for(row=0; row<=5; row++)
  {
      for(coloumn=0; coloumn<=row; coloumn++)
      {
          
            printf("*");   
         
      }
      for(space=0; space<=10-row; space++)
      {
          printf(" ");
      }
      for(space=0; space<=10-row; space++)
      {
          printf(" ");
      }
      for(coloumn=0; coloumn<=row; coloumn++)
      {
          
            printf("*");   
         
      }
      printf("\n");
  }
  
  
/*  for(row=0; row<=5; row++)
  {
      
      printf("\n");
  }*/
  
  
   
   return 0;
}