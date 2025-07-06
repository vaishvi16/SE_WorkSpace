#include<stdio.h>
#include<string.h>

void main()
{
    char string[100], revString[100];
    int i, length = 0;

    printf("Enter any string: ");
    scanf("%s", string); 

   
    while (string[length] != '\0')
    {
        length++;
    }

    printf("The string is: ");

    
    for (i = length - 1; i >= 0; i--)
    {
        revString[i] = string[length - 1 - i]; 
        printf("%c", revString[i]);
    }
    
    if(strcmp(string, revString) == 0)
    {
        printf("\n The given string is Palindrome!");
    }
    else
    {
        printf("\n The given string is not Palindrome!");
    }
}