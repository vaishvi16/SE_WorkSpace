#include<stdio.h>
#include<conio.h>

void main()
{
    int num1 = 0, num2 = 1, ans = 0, input, i;
    
    printf("How many numbers you want to enter: ");
    scanf("%d", &input);
    
    for(i=0; i<=input; i++)
    {
        ans = num1 + num2;
        num1 = num2;
        num2 = ans;
        
        printf("Ans is: %d",num2);
        
        printf("\n");
    }
   
    
    
    getch();
}