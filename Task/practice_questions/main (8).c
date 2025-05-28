#include <stdio.h>

int main() {
    int total_min, sec, hours;
    
    printf("Enter minutes:");
    scanf("%d", &total_min);
    
    sec = total_min * 60;
    hours = total_min /60;
    
    printf("%d sec and %d hours", sec, hours);

    return 0;
}

