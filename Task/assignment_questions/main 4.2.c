#include<stdio.h>
#include<conio.h>
void main()
{
   
   int radius;
   float PI=3.14,area,circumference;
   
   
   printf("Enter Value for radius: ");
   scanf("%d",&radius);
   
   area = PI*radius*radius;
   circumference = 2*PI*radius;
   
   printf("\n Area of Circle is %f",area);
   printf("\n Circumference of Circle is %f",circumference);
   
   getch();
}