#include <iostream>
using namespace std;

class A
{
    int x, y;

public:
    A()
    {
        cout << "Default constructor called!";
    }
    A(int a, int b)
    {
        cout << "Parametrized Constructor called!\n";
        x = a;
        y = b;
    }
    A(const A &xyz)
    {
        // old is the old object being passed
        x = xyz.x; //This object's x to old object's x
        y = xyz.y;

        cout << "Copy Constructor called!\n";
    }

    void print()
    {
        cout << x << " " << y << "\n";
    }
};

int main()
{
    // Sample Code to show default constructor
    A obj(10, 20); // making a object of class A   -- >Implicit
    A obj2(obj);   // Copy Constructor called old object 'obj' is passed
    obj2.print();

    return 0;
}