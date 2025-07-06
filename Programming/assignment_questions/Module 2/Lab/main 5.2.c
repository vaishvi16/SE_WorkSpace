#include<stdio.h>
#include<conio.h>

void main()
{
    int a,b,c,max;
    
    printf("Enter a value of A: ");
    scanf("%d", &a);
    
    printf("Enter a value of B: ");
    scanf("%d", &b);
    
    printf("Enter a value of C: ");
    scanf("%d", &c);
    
    max = (a > b) ? ((a > c) ? a : c) : ((b > c) ? b : c);  
    
    printf("Max number is: %d", max);
    
    getch();
}    


