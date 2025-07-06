#include<stdio.h>
#include<string.h>

struct student
{
    char name[50];
    int rollno, marks;
    
}s1[3];

void main()
{
    int i;
    
   for(i=1; i<=3; i++)
   {
       printf("Enter your name: ");
       scanf("%s", &s1[i].name);
       
        printf("Enter your roll no: ");
       scanf("%d", &s1[i].rollno);
       
        printf("Enter your marks: ");
       scanf("%d", &s1[i].marks);
       
       printf("\n");
   }
   
   
   for(i=1; i<=3; i++)
   {
    printf("\n Student name is: %s", s1[i].name);
    printf("\n Student roll no is: %d", s1[i].rollno);
    printf("\n Student marks is: %d", s1[i].marks);
       
    printf("\n");

   }
    
    
    
    
    
    getch();
}
