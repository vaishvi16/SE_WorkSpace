#include <stdio.h>

int main() 
{
    int i, num, ans=1, range;

    printf("Enter any number: ");
    scanf("%d", &num);
    
    printf("Enter the range : ");
    scanf("%d", &range);
    
    for (i = 1; i <= range; i++) 
    {
       ans = num * i;
       printf("%d * %d = %d \n", num, i, ans);
    }
    
    return 0;
}
