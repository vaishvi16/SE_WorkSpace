#include<stdio.h>
#include<conio.h>
#include<string.h>

void main()
{
   char name[50], surname[50];
   
   printf("Enter your Name: ");
   scanf("%s", &name);
   
    printf("Enter your Surname: ");
   scanf("%s", &surname);
   
   printf("\n Your full name is %s %s", name, surname);
    
    getch();
}