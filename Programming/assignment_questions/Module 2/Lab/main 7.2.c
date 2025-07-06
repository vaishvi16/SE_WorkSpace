#include<stdio.h>
#include<conio.h>

void main()
{
    int i=1, num,sum=0;
    
    printf("How many natural numbers you want to add? \n");
    scanf("%d", &num);
    
    while(i<=num)
    {
        sum += i;
        i++;
    }
     printf("Sum of %d numbers is: %d",num, sum);
     
     
    getch();
}    


