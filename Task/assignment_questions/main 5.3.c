#include <stdio.h>

int main() {
    float cp, sp, amount;

    printf("Enter Cost Price: ");
    scanf("%f", &cp);
    printf("Enter Selling Price: ");
    scanf("%f", &sp);

    if (sp > cp) {
        amount = sp - cp;
        printf("Profit = %f", amount);
    } else if (cp > sp) {
        amount = cp - sp;
        printf("Loss = %f", amount);
    } else {
        printf("No Profit No Loss");
    }

    return 0;
}
