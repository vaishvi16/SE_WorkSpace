#include<stdio.h>
#include<stdlib.h>

struct details
{
    int enrollment;
    char name[50];
    char tech[50];
}d[50];

int main()
{
    int i,num;
    
    printf("Enter how many students: ");
    scanf("%d", &num);
    
    for(i=0; i<num; i++)
    {
        printf("Enter your enrollment number: ");
        scanf("%d", &d[i].enrollment);
    
        printf("Enter your name: ");
        scanf("%s", &d[i].name);
    
        printf("Enter your technology: ");
        scanf("%s", &d[i].tech);
    }
    
     for(i=0; i<num; i++)
    {
        printf("\n Enrollment number is %d", d[i].enrollment);
        printf("\n Name is %s",d[i].name);
        printf("\n Technology is %s", d[i].tech);
        
        printf("\n");
        
    }
    
    
    
    
    
  
  
   return 0;
}