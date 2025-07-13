#include<stdio.h>
#include<conio.h>

int main()
{
    int i,j,k;

   for(i=1; i<=5; i++)
   {
       for(k=1; k<=5-i; k++)
       {
           printf(" ");
       }
       
       for(j=1; j<=i; j++)
       {
           printf("%d", j);
       }
       
       for(j=i; j>=2; j--)
       {
           printf("%d", j-1);
       }
       
       
       printf("\n");
   }
   
}

Output:

    1
   121
  12321
 1234321
123454321

