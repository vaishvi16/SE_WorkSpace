#include <stdio.h>
#include <conio.h>

void main()
{
    int num;
    
    printf("Enter any number: \n 1 for Addition \n 2 for Substraction \n 3 for Multiplication \n 4 for Division \n");
    scanf("%d", &num);
    
    switch(num)
    {
        int a,b;
        
        case 1: printf("Enter value of a: ");
                scanf("%d", &a);
                
                printf("Enter value of b: ");
                scanf("%d", &b);
                
                int add = a + b;
                printf("Total is %d ", add);
                
                break;
                
        case 2: printf("Enter value of a: ");
                scanf("%d", &a);
                
                printf("Enter value of b: ");
                scanf("%d", &b);
                
                int sub = a - b;
                printf("Total is %d ", sub);
                
                break;
        
        case 3: printf("Enter value of a: ");
                scanf("%d", &a);
                
                printf("Enter value of b: ");
                scanf("%d", &b);
                
                int mul = a * b;
                printf("Total is %d ", mul);
                
                break;
    
        case 4: printf("Enter value of a: ");
                scanf("%d", &a);
                
                printf("Enter value of b: ");
                scanf("%d", &b);
                
                int divi = a % b;
                printf("Total is %d ", divi);
                
                break;
                
        default: printf("Enter valid number");
                 break;
    }
        
         getch();
    }

  

