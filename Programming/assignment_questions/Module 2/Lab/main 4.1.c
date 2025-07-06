#include<stdio.h>
#include<conio.h>

void main()
{
    int num1, num2, add, sub, mul, divi, mod;
    
    printf("Enter number 1: ");
    scanf("%d", &num1);
    
    printf("Enter number 2: ");
    scanf("%d", &num2);
    
    add = num1+num2;
    printf("\n Addition is: %d", add);
    
    sub = num1-num2;
    printf("\n Sub is: %d", sub);
    
    mul = num1*num2;
    printf("\n Multiplication is: %d", mul);
    
    divi = num1/num2;
    printf("\n Division is: %d", divi);
    
    mod = num1%num2;
    printf("\n Modulus is: %d", mod);
    
    
    getch();
}