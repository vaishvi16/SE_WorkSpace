#include <stdio.h>

int main() {
    int n, num, i, count;

    printf("Enter any number: ");
    scanf("%d", &n);
    
    if (count)
    {
      printf("%d is a prime number\n", n);   
    }
    else
    {
        printf("%d is not a prime number\n", n);
    }


    printf("Prime numbers between 1 and %d are : ",n);
    for (num = 2; num <= n; num++) {
        count = 0;
        for (i = 2; i <= num / 2; i++) {
            if (num % i == 0) {
                count = 1;
                break;
            }
        }
        
        if (count == 0) {
            printf("%d ", num);
        }
    }
    
  

    printf("\n");
    return 0;
}
