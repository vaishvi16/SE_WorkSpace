#include<iostream>
using namespace std;

class gparent
{
    public:
    int a=10,b=20;
};

class parent : public gparent
{
    public:
    int c=30,d=40;
};

class child : public parent
{
    public:
    void display()
    {
        cout<<"Values of a and b are: "<<a<<endl<<b<<endl;
       cout<<"Values of c and d are: "<<c<<endl<<d<<endl;
    
    }
    
};


int main()
{
   child c1 = child();
   c1.display();
   
}