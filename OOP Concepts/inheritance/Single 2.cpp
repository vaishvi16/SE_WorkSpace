#include<iostream>
using namespace std;

class parent
{
    public:
    int a=10,b=20;
};

class child : public parent
{
    public:
    void display()
    {
        cout<<"Value of a is: "<<a<<endl;
        cout<<"Value of b is: "<<b<<endl;
    }
   
};

int main()
{
    child c1 = child();
    c1.display();
    
}