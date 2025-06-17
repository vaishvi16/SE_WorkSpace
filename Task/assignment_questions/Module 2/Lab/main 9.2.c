#include<stdio.h>
#include<conio.h>
#include<string.h>

void main()
{
    char num[50];
    int i, store;
    
    printf("How many numbers you want to store? \n");
    scanf("%d", &store);
    
    for(i=1; i<=store; i++)
    {
        printf("Enter any number: ");
        scanf("%d", &num[i]);
    }
    
    for(i=1; i<=store; i++)
    {
        printf("\n %d Number you entered is %d \n", i, num[i]);
    }
    
    
    
    getch();
}
