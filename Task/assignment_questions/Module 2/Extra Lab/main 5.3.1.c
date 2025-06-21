#include <stdio.h>


int isPalindrome(int n) {
    int reversed = 0, original = n, rem;

    while (n != 0) {
        rem = n % 10;          
        reversed = reversed * 10 + rem; 
        n = n / 10;                 
    }

    if (original == reversed) {
        return 1; 
    } else {
        return 0; 
    }
}

int main() 
{
    int number;

    printf("Enter any number: ");
    scanf("%d", &number);

    if (isPalindrome(number)) 
    {
        printf("%d is a palindrome\n", number);
    } else
    {
        printf("%d is not a palindrome\n", number);
    }

    return 0;
}
