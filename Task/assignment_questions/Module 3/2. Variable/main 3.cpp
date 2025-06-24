#include <iostream>
using namespace std;

class Operator {
public:
    int num1, num2;

    Operator(int x, int y) {
        num1 = x;
        num2 = y;
    }

    // Arithmetic Operations
    void arithmetic() {
        cout << "Arithmetic Operators:" << endl;
        cout << "a + b = " << num1 + num2 << endl;
        cout << "a - b = " << num1 - num2 << endl;
        cout << "a * b = " << num1 * num2 << endl;
        cout << "a / b = " << num1 / num2 << endl;
        cout << "a % b = " << num1 % num2 << endl;
    }

    // Relational Operations
    void relational() {
        cout << "\nRelational Operators:" << endl;
        cout << "a == b: " << (num1 == num2) << endl;
        cout << "a != b: " << (num1 != num2) << endl;
        cout << "a > b: " << (num1 > num2) << endl;
        cout << "a < b: " << (num1 < num2) << endl;
    }

    // Logical Operations
    void logical() {
        cout << "\nLogical Operators:" << endl;
        cout << "(a > 0 && b > 0): " << (num1 > 0 && num2 > 0) << endl;
        cout << "(a > 0 || b < 0): " << (num1 > 0 || num2 < 0) << endl;
        cout << "!(a == b): " << !(num1 == num2) << endl;
    }

    // Bitwise Operations
    void bitwise() {
        cout << "\nBitwise Operators:" << endl;
        cout << "a & b = " << (num1 & num2) << endl;
        cout << "a | b = " << (num1 | num2) << endl;
        cout << "a ^ b = " << (num1 ^ num2) << endl;
        cout << "~a = " << (~num1) << endl;
    }
};

int main() {
    Operator obj(10, 5);

    obj.arithmetic();
    obj.relational();
    obj.logical();
    obj.bitwise();

    return 0;
}
