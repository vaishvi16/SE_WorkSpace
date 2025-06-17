#include <stdio.h>
#include <conio.h>

void main() 
{
    int num, sum = 0, rem, i;

    printf("Enter any 3 number of 3 digit: ");
    scanf("%d", &num);

    for(i = num; i != 0; i /= 10) {
        rem = i % 10;
        sum += rem * rem * rem; 
    }

    if(sum == num)
    {
       printf("%d is an Armstrong number\n", num);
     
    }
    else
    {
        printf("%d is not an Armstrong number\n", num);

    }
        
    
    
    getch();
}
