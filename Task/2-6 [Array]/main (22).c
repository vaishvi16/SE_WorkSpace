#include <stdio.h>
#include <conio.h>

void main()
{
    int a[] = {20,30,20,40,50,30,50};
    int i, temp[] = {};
    
    for(i=0; i<7; i++)
    {
        temp[i] = a[i];
        
        if(a[i] != temp[i])
        {
          printf("\n Array is: %d", a[i]);
        }
        else
        {
          printf("\n Array: %d", temp[i]);
        }
    }
  
    getch();
}