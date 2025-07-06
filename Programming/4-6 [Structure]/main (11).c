#include<stdio.h>
#include<stdlib.h>

struct details
{
    char name[50];
    char surname[50];
};

struct nested
{
    char add[50]; 
    int pin;
    struct details d;
}n[50];

int main()
{
    int i,num;
    
    printf("Enter how many students: ");-
    scanf("%d", &num);
    
    for(i=0; i<num; i++)
    {
        printf("Enter your name: ");
        scanf("%s", &n[i].d.name);
    
        printf("Enter your surname: ");
        scanf("%s", &n[i].d.surname);
        
        printf("Enter your address: ");
        scanf("%s", &n[i].add);
       
        printf("Enter your pin: ");
        scanf("%d", &n[i].pin);
        
    }
    
     for(i=0; i<num; i++)
    {
        printf("\n Name is %s", n[i].d.name);
        printf("\n Surname is %s",n[i].d.surname);
        printf("\n Address is %s", n[i].add);
        printf("\n Pin Code is %d", n[i].pin);

        printf("\n");
        
    }
    
    
    
    
    
  
  
   return 0;
}