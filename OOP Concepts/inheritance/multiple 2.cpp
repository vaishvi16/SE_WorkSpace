//Polymorphism - override

#include<iostream>
using namespace std;

class Parent
{
   public:
   int a=5, b = 10;
   
    
};

class Subparent1 : public Parent
{
   public:
   int c=20, d=30;

    
};

class Subparent2  : public Parent
{
   public:
   int e = 40, f=50;
   void display()
   {
        cout<<e<<endl<<f<<endl;
        cout<<a<<endl<<b<<endl;
   }

    
};

class Child : public Subparent1, public Subparent2
{
   public:
    int g= 45, h=55;
    void display()
    {
        cout<<g<<endl<<h<<endl;
         cout<<c<<endl<<d<<endl;
    }

    
};


int main()
{
   Child c1 = Child();
   c1.display();
   
   Subparent2 s2 = Subparent2();
   s2.display();
   
    
}

