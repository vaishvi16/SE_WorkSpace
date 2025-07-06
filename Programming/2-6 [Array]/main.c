#include<stdio.h>

int main()
{
   int num[]={5,1,9,6,8};

   int i,j,a;

   for (i = 0; i < 5; i++)
   {
      for ( j = i+1; j <= i; j++)
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