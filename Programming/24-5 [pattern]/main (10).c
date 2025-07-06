#include <stdio.h>

int main()
{
    int row, column, space, num=1;
    
    for(row=1; row<=4; row++)
    {
        for(space=1; space<=5-row; space++)
        {
            printf(" ");
        }
        
        for(column=1; column<=row; column++)
        {
            printf("%d ", num);
            num++;
        }
        printf("\n");
    }
    
   
   
   
       return 0;
}