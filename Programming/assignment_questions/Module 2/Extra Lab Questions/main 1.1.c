#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include<math.h>

void main()
{
    int num;
    
    printf("\n Select an operation to perform the calculation in C calculator: \n 1. Addition  \t\t 2. Substraction \n 3. Multiplication \t 4. Division \n 5. Modulus \t\t 6. Square \n 7. Square Root \nPlease make a choice: ");
    scanf("%d", &num);
    
    if(num == 1)
    {  
       int i, value, num, add;
        
       printf("\n Enter how many number you want to add: ");
       scanf("%d", &num);
       
       for(i=1; i<=num; i++)
       {
           printf("\n Enter value: ");
           scanf("%d", &value);
           
           add += value;
           
       }
        printf("Addition is : %d", add);

    }
    else if(num == 2)
    {
         int a,b,c;
        
        printf("\n Enter value of a: ");
        scanf("%d",&a);
        
        printf("\n Enter value of b: ");
        scanf("%d",&b);
        
        c = a-b;
        
        printf("Substraction is: %d", c);
    }
    
    else if(num == 3)
    {
        int a,b,c;
        
        printf("\n Enter value of a: ");
        scanf("%d",&a);
        
        printf("\n Enter value of b: ");
        scanf("%d",&b);
        
        c = a * b;
        
        printf("Multiplication is: %d", c);
    }
    
    else if(num == 4)
    {
        int a,b,c;
        
        printf("\n Enter value of a: ");
        scanf("%d",&a);
        
        printf("\n Enter value of b: ");
        scanf("%d",&b);
        
        c = a / b;
        
        printf("Division is: %d", c);
    }
    
    else if(num == 5)
    {
        int a,b,c;
        
        printf("\n Enter value of a: ");
        scanf("%d",&a);
        
        printf("\n Enter value of b: ");
        scanf("%d",&b);
        
        c = a % b;
        
        printf("Modulus is: %d", c);
    }
    
    else if(num == 6)
    {
        int a,b;
        
        printf("\n Enter value of a: ");
        scanf("%d",&a);
        
        b = a*a;
        
        printf("Square is: %d", b);
    }
    
    else if(num == 7)
    {
        int a,b;
        
        printf("\n Enter value of a: ");
        scanf("%d",&a);
        
        b = sqrt(a);
        
        printf("Square Root is: %d", b);
    }
    
    else 
    {
        printf("Please enter valid input");
    }
    

  getch();
}