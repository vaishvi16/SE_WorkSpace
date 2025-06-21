#include <stdio.h>

void main() 
{
    char str[100];
    int i = 0;
    int vowels = 0, consonants = 0, digits = 0, special = 0;

    printf("Enter a string: ");
    scanf("%s", str);  

    while (str[i] != '\0') 
    {
        char ch = str[i];

        if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
            vowels++;
        }
        else if (ch >= 'a' && ch <= 'z') 
        {
            consonants++;
        }
        else if (ch >= '0' && ch <= '9') 
        {
            digits++;
        }
        else 
        {
            special++;
        }

        i++;
    }

    printf("Vowels: %d\n", vowels);
    printf("Consonants: %d\n", consonants);
    printf("Digits: %d\n", digits);
    printf("Special characters: %d\n", special);
    
    
}
