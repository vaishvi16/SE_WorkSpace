#include<stdio.h>
#include<conio.h>
void main()
{
   
   int base, height;
   float triangle;
   
   printf("Enter Value of base: ");
   scanf("%d",&base);
  
   printf("Enter Value height: ");
   scanf("%d",&height);
   
   triangle = (base*height)/2;
   printf("Area of Triangle is %f",triangle);
   
    
    getch();
   
}