#include<stdio.h>
#include<conio.h>

struct intern
{
    char name[50];
    int salary;
    char department[50];
};

struct employee
{
    char name[50];
    int salary;
    char department[50];

    struct intern i1;
};

struct manager
{
    char name[50];
    int salary;
    char department[50];
    
    struct employee e1;
};

struct boss
{
    char name[50];
    int salary;
    struct manager m1;
}b1[50];


void main()
{
    int user, pswd, dep;
    
    printf("Who are you? \n1.Boss \t2.Manager \n3.Employee \t4.Intern\n");
    scanf("%d", &user);
    
    //tech
    struct boss b1 = {"Vaishvi Gandhi", 80000,{"Shubham Bhatt", 50000, "Tech",{"Rutvi", 30000,"Tech",{"Palak",2000,"Tech"}}}};
    //hr
    struct boss b2 = {"Vaishvi Gandhi", 80000,{"Mandip", 35000,"HR",{"Gaurang", 30000,"HR",{"Drashti Rajput",2000,"HR",}}}};
    
    if(user == 1)
    {
      printf("Enter Password: ");
      scanf("%d", &pswd);
      
      
      if(pswd == 01)
      {
        //boss    
        printf("\n\n Boss name is: %s", b1.name);
        printf("\n Boss salary is: %d", b1.salary);
        
        //manager
        printf("\n\n Manager name is: %s", b1.m1.name);
        printf("\n Manager salary is: %d", b1.m1.salary);
        printf("\n Manager department is: %s", b1.m1.department);
        
        printf("\n Manager name is: %s", b2.m1.name);
        printf("\n Manager salary is: %d", b2.m1.salary);
        printf("\n Manager department is: %s", b2.m1.department);
        
        //employee
        printf("\n\n Employee name is: %s", b1.m1.e1.name);
        printf("\n Employee salary is:  %d", b1.m1.e1.salary);
        printf("\n Employee department is: %s", b1.m1.e1.department);
        
        printf("\n Employee name is: %s", b2.m1.e1.name);
        printf("\n Employee salary is:  %d", b2.m1.e1.salary);
        printf("\n Employee department is: %s", b2.m1.e1.department);
        
        //intern
        printf("\n\n Intern name is: %s", b1.m1.e1.i1.name);
        printf("\n Intern salary is: %d", b1.m1.e1.i1.salary);
        printf("\n Intern department is: %s", b1.m1.e1.i1.department);
        
        printf("\n Intern name is: %s", b2.m1.e1.i1.name);
        printf("\n Intern salary is: %d", b2.m1.e1.i1.salary);
        printf("\n Intern department is: %s", b2.m1.e1.i1.department);

      }
      else
      {
          printf("Enter valid password");
      }
       
    }
    else if(user == 2)
    {
      printf("Enter Password: ");
      scanf("%d", &pswd);
      
      if(pswd == 12)
      {
          printf("Enter your department: \n1.Tech \t2.Hr\n");
          scanf("%d",&dep);
          
          if(dep == 1)
          {
              printf("\n Manager name is: %s", b1.m1.name);
              printf("\n Manager salary is: %d", b1.m1.salary);
              printf("\n Employee name is: %s", b1.m1.e1.name);
              printf("\n Employee salary is:  %d", b1.m1.e1.salary);
              printf("\n Intern name is: %s", b1.m1.e1.i1.name);
              printf("\n Intern salary is: %d", b1.m1.e1.i1.salary);
              
          }
          else if(dep == 2)
          {
              printf("\n Manager name is: %s", b2.m1.name);
              printf("\n Manager salary is: %d", b2.m1.salary);
              printf("\n Employee name is: %s", b2.m1.e1.name);
              printf("\n Employee salary is:  %d", b2.m1.e1.salary);
              printf("\n Intern name is: %s", b2.m1.e1.i1.name);
              printf("\n Intern salary is: %d", b2.m1.e1.i1.salary);
              
          }
          else
          {
            printf("Enter valid department number: ");
          }
          
        
      }
      else
      {
        printf("Enter valid password");
      }
    }
    else if(user == 3)
    {
        printf("Enter Password: ");
        scanf("%d", &pswd);
        
        if(pswd == 123)
        {
          printf("Enter your department: \n1.Tech \t2.Hr\n");
          scanf("%d",&dep);
          
          if(dep == 1)
          {
            printf("\n Employee name is: %s", b1.m1.e1.name);
            printf("\n Employee salary is: %d", b1.m1.e1.salary);
            printf("\n Intern name is: %s", b1.m1.e1.i1.name);
            printf("\n Intern salary is: %d", b1.m1.e1.i1.salary);
          }
          else if(dep == 2)
          {
            printf("\n Employee name is: %s", b2.m1.e1.name);
            printf("\n Employee salary is: %d", b2.m1.e1.salary);
            printf("\n Intern name is: %s", b2.m1.e1.i1.name);
            printf("\n Intern salary is: %d", b2.m1.e1.i1.salary);
          }
        else
        {
            printf("Enter valid input");
        }
    }
    else
    {
        printf("Enter valid password");
    }
       
    }
    else if(user == 4)
    {
        printf("Enter Password: ");
        scanf("%d", &pswd);
        
        if(pswd == 1234)
      {
          printf("Enter your department: \n1.Tech \t2.Hr\n");
          scanf("%d",&dep);
          
          if(dep == 1)
          {
            printf("\n Intern name is: %s", b1.m1.e1.i1.name);
            printf("\n Intern salary is: %d", b1.m1.e1.i1.salary);
          }
          else if(dep == 2)
          {
            printf("\n Intern name is: %s", b2.m1.e1.i1.name);
            printf("\n Intern salary is: %d", b2.m1.e1.i1.salary);
          }
      }
      else
      {
          printf("Enter valid password");
      }
    }
    else
    {
        printf("Enter valid number");
    }
    getch();
}