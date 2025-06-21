#include <stdio.h>

void main() 
{
    int num, i, j, isPrime, sum = 0;

    printf("Enter a number: ");
    scanf("%d", &num);

    printf("Prime numbers up to %d are:\n", num);

    for(i = 2; i <= num; i++)
    {
        isPrime = 1;  

        for(j = 2; j < i; j++) 
        {
            if(i % j == 0) 
            {
                isPrime = 0;  
                break;
            }
        }

        if(isPrime == 1) 
        {
            printf("%d ", i);
            sum += i;        
        }
    }

    printf("\nSum of prime numbers up to %d is: %d\n", num, sum);
}
