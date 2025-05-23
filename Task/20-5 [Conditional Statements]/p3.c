#include <stdio.h>
#include <conio.h>

void main()
{
    int num;
    
    printf("Enter any number: \n 1 to find Area of Triangle \n 2 to find Area of Rectangle \n 3 to find Area of Circle \n");
    scanf("%d", &num);
    
    int a,b;
    
    if(num == 1)
    {
        printf("Enter height: ");
        scanf("%d", &a);
                
        printf("Enter base: ");
        scanf("%d", &b);
                
        int area = (a*b)/2;
        printf("Area of Triangle is %d ", area);
                
    }
    else if(num == 2)
    {
        printf("Enter length: ");
        scanf("%d", &a);
                
        printf("Enter width: ");
        scanf("%d", &b);
                
        int area = a*b;
        printf("Area of Rectangle is %d ", area);
    }
    else if(num == 3)
    {
        printf("Enter radius: ");
        scanf("%d", &a);
                
        float area = 3.14*a*a;
        printf("Area of Circle is %f ", area);
    }
    else
    {
        printf("Enter valid number");

    }
        
         getch();
    }

  

