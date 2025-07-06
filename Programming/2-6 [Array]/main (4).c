#include<stdio.h>

int main()
{
   int num[]={115,280,23,12,45};

   int i,j,a;

   for (i=0; i<5; i++)
   {
      for ( j=i+1; j<=5; j++)
      {
         if (num[i] > num[j])
         {
           a = num[i];
           num[i]= num [j];
           num[j] = a; 


      }
      
      
      }
   }

    for ( i = 0; i < 5; i++)
      {
        printf("%d",num[i]);
      }
      
   
   return 0;
}