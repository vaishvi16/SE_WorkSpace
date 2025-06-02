#include <stdio.h>
#include <conio.h>

void main()
{
   int row, column, space, loop;
   
   for(loop=1; loop<=5; loop++)
   {
       for(space=0; space<=5-row; space++)
       {
           printf(" ");
       }
       for(column=1; column<=loop; column++)
       {
           printf("%d ", column);
       }
       printf("\n");
   }
   
   for(loop=5-1; loop>=1; loop--)
   {
        for(space=1; space<=5-row; space++)
       {
           printf(" ");
       }
       for(column=1; column<=loop; column++)
       {
           printf("%d ", column);
       }
       printf("\n");
    }
       
      

    getch();
}