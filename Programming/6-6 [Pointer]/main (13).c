#include<stdio.h>
#include<conio.h>

void interchange(int *x, int *y)
{
    int temp;
    temp = *x;
    *x=*y;
    *y=temp;
    
    printf("\n a=%d and b=%d", *x,*y);
}


void main()
{
    int a=20,b=50;
    
    printf("\n Before: %d %d", a,b);
    interchange(&a,&b);
    printf("\n After: %d %d", a,b);
    
    
    getch();
}