#include<iostream>
using namespace std;

class Operations
{
    public:
    int a1, b1;
    
    int add(int a, int b)
    {
        return a+b;
    }
    int sub(int a, int b)
    {
        return a-b;
    }
    int div1(int a, int b)
    {
        return a/b;
    }
    int mul(int a, int b)
    {
        return a*b;
    }
    int mod(int a, int b)
    {
        return a%b;
    }
    
    void display()
    {
        cout<<"Addition is: "<<add(a1,b1)<<endl;
        cout<<"Substraction is: "<<sub(a1,b1)<<endl;
        cout<<"Multiplication is: "<<mul(a1,b1)<<endl;
        cout<<"Division is: "<<div1(a1,b1)<<endl;
        cout<<"Modulus is: "<<mod(a1,b1)<<endl;
    }
};



int main()
{
    int a,b;
    
    cout<<"Enter 1st number: ";
    cin>>a;
    
    cout<<"Enter 2nd number: ";
    cin>>b;
    
    Operations op = Operations();
    
    op.a1 = a;
    op.b1 = b;
    
    
    op.display();
    
}