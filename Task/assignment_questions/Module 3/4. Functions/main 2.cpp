#include <iostream>
using namespace std;

int fact(int num) {
    if (num == 0 || num == 1) 
        return 1;
    else
        return num * fact(num - 1); 
}

int main() {
    int number;
    cout << "Enter a number: ";
    cin >> number;

    cout << "Factorial of " << number << " is " << fact(number) << endl;
    return 0;
}

