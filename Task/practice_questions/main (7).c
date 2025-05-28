#include <stdio.h>

int main() {
    int total_days, years, months, days;

    // Input: Total number of days
    printf("Enter the number of days: ");
    scanf("%d", &total_days);

    // Assuming 1 year = 365 days and 1 month = 30 days
    years = total_days / 365;
    total_days %= 365;
    months = total_days / 30;
    days = total_days % 30;

    // Output: Years, Months, and Days
    printf("%d days is approximately %d years, %d months, and %d days.\n", total_days, years, months, days);

    return 0;
}

