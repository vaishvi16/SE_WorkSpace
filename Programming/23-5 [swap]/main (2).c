#include <stdio.h>
#include <conio.h>

void main()
{
    int a,b;
    
    printf("Enter value of a: ");
    scanf("%d", &a);
    
    printf("Enter value of b: ");
    scanf("%d", &b);
    
    
    printf("\n a: %d ", a);
    printf("\t b: %d ", b);
    
    a = a + b;
    b = a - b;
    a = a - b;

    printf("\n After swaping ");
    printf("\n a: %d ", a);
    printf("\t b: %d ", b);


    getch();
}
