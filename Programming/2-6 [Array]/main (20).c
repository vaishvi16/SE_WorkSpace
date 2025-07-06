#include <stdio.h>
#include <conio.h>

void main()
{
  int salary[50];
  int i, emp;
  
  printf("Enter number of employees: ");
  scanf("%d", &emp);
  
  for(i=0; i<emp; i++)
  {
      printf("Enter salary of %d employee : ", i+1);
      scanf("%d", &salary[i]);
  }
  
  for(i=0; i<emp; i++)
  {
    printf("\n salary is %d", salary[i]);
  }
  
   
  
  
    getch();
}