#include<iostream>
using namespace std;

class parent
{
    public:
    int a=10,b=20;
    
};

class subparent1 : parent
{
    public:
    int c=300;
    
};

class subparent2 : parent
{
    public:
    int d=400;
    
    void display()
    {
         cout<<"Values of a and b are: ";
        cout<<endl<<a<<endl<<b<<endl;
    }
};

class child : subparent1,subparent2
{ 
    public:
    void display()
    {
        cout<<"Values of c and d are: ";
        cout<<endl<<c<<endl<<d<<endl;
        
    }
    
};

int main()
{
    subparent2 s2 = subparent2();
    s2.display();

    child c1 = child();
    c1.display();
    

}