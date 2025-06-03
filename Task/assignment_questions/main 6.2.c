#include <stdio.h>

int main() 
{
    int num, i;
    
    for(i=1; i<=10; i++)
    {
        printf("\n Enter any number: ");
        scanf("%d", &num);
        
        if(num %2 == 0)
        {
            printf("The number is even %d", num);
        }
        else
        {
            printf("The number is odd %d", num);

        }
    
    }
   

    
    
   
   
   
    return 0;
}
