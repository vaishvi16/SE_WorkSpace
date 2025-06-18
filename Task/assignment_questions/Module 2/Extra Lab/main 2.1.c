#include<stdio.h>
#include<conio.h>

void main()
{
    int marks;
    
    printf("Enter your marks : ");
    scanf("%d",&marks);

    if(marks > 90)
    {
        printf("A Grade");
    }
    else if(marks > 75)
    {
        printf("B Grade");
    }
    else if(marks > 50)
    {
        printf("C Grade");
    }
    else if(marks <= 50)
    {
        printf("D Grade");
    }


    getch();
}