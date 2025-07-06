#include <stdio.h>

int main()
{
    char n = 'A';

    for (int i = 0; i < 5; i++) 
    {

        for (int j = 0; j <= i; j++) 
        {
            printf("%c ", n++);
        }
        printf("\n");
    }
    
    
    return 0;
}