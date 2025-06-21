#include <stdio.h>
#include <conio.h>

int factorial(int n) {
    int result = 1; 
    for(int i = 1; i <= n; i++) {
        result = result * i; 
    }
    return result; 

}

int main() {
    int number;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (number < 0) 
    {
        printf("Number is negative. \n");
    } else 
    {
        int fact = factorial(number);
        printf("Factorial of %d is %d \n", number, fact);
    }
    
    

    return 0;
}
