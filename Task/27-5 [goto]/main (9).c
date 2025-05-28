#include <stdio.h>

int main() {
    int km, m;
    
    printf("Enter km:");
    scanf("%d", &km);
    
    m = km * 1000;

    printf("%d meter", m);

    return 0;
}

