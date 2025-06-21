#include <stdio.h>

int main() 
{
    int num, sum = 0, rem, reversenum = 0;

    printf("Enter any number: ");
    scanf("%d", &num);

    while (num != 0) 
    {
        rem = num % 10;
        reversenum = reversenum * 10 + rem;
        sum += rem;       
        num /= 10;        
    }

    printf("Sum of digits = %d\n", sum);
    printf("Reverse of digits = %d\n", reversenum);
     
     
    return 0;
}
