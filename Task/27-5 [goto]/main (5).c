#include <stdio.h>
#include <conio.h>

int main()
{
    int i = 0;

    start_loop:
    if (i < 5)
    {
        printf("%d ", i);
        i++;
        goto start_loop;
    }

    return 0;
}


