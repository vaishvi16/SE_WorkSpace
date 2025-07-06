#include <stdio.h>
#include <conio.h>

void main()
{
    int a=5,b=7,c;
    
    c=a;
    a=b;
    b=a;
    
    printf("Value of a is %d ", a);
    printf("Value of b is %d ", b);
    printf("Value of c is %d ", c);


    getch();
}
