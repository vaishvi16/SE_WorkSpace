#include <stdio.h>
#include <conio.h>

int main()
{
    int age;
    
    printf("Enter your age: ");
    scanf("%d", &age);
    
    if(age<18)
    {
        goto printf("You are not eligible to drive the car");;
        
    }
    elseif (age>18)
    {
        goto printf("You are eligible to drive the car");;
    }
    


   
    return 0;
}


