#include <stdio.h>

void main() 
{
    int num, rem, sum, i;

    printf("Armstrong numbers between 1 to 1000 are:\n");

    for(num = 1; num <= 1000; num++) 
    {
        int temp = num;
        sum = 0;

        while(temp != 0) 
        {
            rem = temp % 10;
            sum += rem * rem * rem;
            temp = temp / 10;
        }

        if(sum == num) 
        {
            printf("%d\n", num);
        }
    }
}
