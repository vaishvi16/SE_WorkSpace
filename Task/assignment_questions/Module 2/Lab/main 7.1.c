#include<stdio.h>
#include<conio.h>

void main()
{
    int i;
    
    for(i=1; i<=10;i++)
    {
        if(i == 5)
        {
            break;
        }
        if(i==3)
        {
            continue;
        }
       
        printf("\n %d", i);
      
    }
    
    getch();
}    


