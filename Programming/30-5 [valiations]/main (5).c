#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include<string.h>

void main()
{
    char mail[50], my_mail[50];
    int password, my_password;
    
    strcpy(my_mail, "abc@gmail.com");
    my_password = 12345;
    
    printf("Enter your email: ");
    scanf("%s", &mail);
    
    printf("Enter your password: ");
    scanf("%d", &password);
    
  /*  printf("Your email  is: %s ", mail);
    printf("\nYour password  is: %d ", password);
   */ 
 
    if(strcmp(mail,my_mail) == 0)
    {
        
        if(password == my_password)
        {
            printf("\nLogin Successful!");     
        }
        else
        {
            printf("\nOopsss! Your password is incorrect");
        }
    }
    else
    {
         printf("\nIncorect Id password!!!");
    }
  
  getch();
}