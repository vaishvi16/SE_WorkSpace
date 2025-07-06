#include<stdio.h>

int main()
{
  int i,j,num,temp,values[10]= {0};
  
  printf("Enter how many numbers : ");
  scanf("%d", &num);
  
  for(i=0; i<num; i++)
  {
    printf("Enter values: ");
    scanf("%d", &values[i]);
  }
  
  for(i=0; i<num; i++)
  {
      for(j=0; j<num; j++)
      {
          if(values[i]<values[j])
          {
              temp = values[i];
              values[i] = values[j];
              values[j] = temp;
          }
      }
  }
  
  for(i=0; i<num; i++)
  {
              printf("\n %d", values[i]);

  }
  
   return 0;
}