#include <stdio.h>

int main() 
{
    int i=1;
    
    //for loop
    for(i=1; i<=10; i++)
    {
        printf("\n %d", i);
    }
    
    
    
    
    //while 
    while(i<=20)
    {
        printf("\n %d", i);
        i++;
    }
    
    
    
    //do while
    do
    {
        printf("\n %d", i);
        i++;
    }
    while(i<=50);
    
    return 0;
}
