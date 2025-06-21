#include<stdio.h>
#include<conio.h>

void main()
{
    int a, b, c, max, min;
    
    printf("Enter the value of A : ");
    scanf("%d",&a);
    
    printf("Enter the value of B : ");
    scanf("%d",&b);
    
    printf("Enter the value of C : ");
    scanf("%d",&c);

   if(a > b && a > c)
   {
       printf("\n Max is A");
       if(b < c)
       {
         printf("\n Min is B");
       }
       else
       {
           printf("\n Min is C");
       }
   }
   else if(b > a && b > c)
   {
       printf("\n Max is B");
       if(a < c)
       {
            printf("\n Min is A");
       }
       else
       {
           printf("\n Min is C");
       }
   }
   else
   {
       printf("\n Max is C");
       if(a < b)
       {
          printf("\n Min is A");
       }
       else
       {
           printf("\n Min is B");
       }
   }

    getch();
}