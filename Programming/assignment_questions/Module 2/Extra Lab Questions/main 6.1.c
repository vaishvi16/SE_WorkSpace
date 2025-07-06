#include <stdio.h>

void main()
{
    char string[100], revString[100];
    int i, length = 0;

    printf("Enter any string: ");
    scanf("%s", string); 

   
    while (string[length] != '\0') {
        length++;
    }

    for (i = 0; i < length; i++) {
        revString[i] = string[length - 1 - i];
    }

    revString[length] = '\0'; 

    printf("Reverse string : %s", revString); 
}
