#include<stdio.h>
#include<conio.h>
int main()
{
    
    int num;
    
    printf("Enter any number:");
    scanf("%d", &num);
    
    if(num % 2 == 0)
    {
        printf("Given number is even");
    }
    else
    {
        printf("Given number is odd");
    }
    
    printf("\nEnter any number:");
    scanf("%d", &num);
    
    switch(num)
    {
        case 1: printf("January");
        break;
        
        case 2: printf("February");
        break;
        
        case 3: printf("March");
        break;
        
        case 4: printf("April");
        break;
        
        case 5: printf("May");
        break;
        
        case 6: printf("June");
        break;
        
        case 7: printf("July");
        break;
        
        case 8: printf("August");
        break;
        
        case 9: printf("September");
        break;
        
        case 10: printf("October");
        break;
        
        case 11: printf("November");
        break;
        
        case 12: printf("December");
        break;
        
        default: printf("Invalid Input");
        break;
    }
    
    
    
    return 0;
}