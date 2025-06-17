#include<stdio.h>
#include<conio.h>
#include<string.h>

void main()
{
    int store, i, num[30], max = 0;
    
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
        
        if(num[i] > max)
        {
            max = num[i];
        }
    }
 
 

         printf("Max number is : %d", max);
      
       
  
    
    
    getch();
}
