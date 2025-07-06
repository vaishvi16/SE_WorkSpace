#include<stdio.h>
#include<stdlib.h>

int main()
{
  int i,j,num,temp,values[10]= {0},choice;
  
  printf("Choice 1.ascending 2.decending : ");
  scanf("%d", &choice);
  
  printf("Enter how many numbers : ");
  scanf("%d", &num);
  
  if(choice == 1){
      goto ascending;
  }
  else if(choice == 2)
  {
     goto descending; 
  }
  else
  {
      printf("Enter valid input");
  }

  
  ascending:
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
  
  descending:
  for(i=0; i<num; i++)
  {
    printf("Enter values: ");
    scanf("%d", &values[i]);
  }
  
  for(i=0; i<num; i++)
  {
      for(j=0; j<num; j++)
      {
          if(values[i]>values[j])
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