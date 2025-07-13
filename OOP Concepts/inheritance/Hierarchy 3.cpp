#include<iostream>
using namespace std;

class parent
{
    public:
    int a=1,b=2,c=3,d=4;
    
};

class child1 : public parent
{
  public: 
  void display()
  {
      cout<<"Value of a and c"<<a<<c;
  }
  
};

class child2 : public parent
{
  public:  
  
  void display()
  {
      cout<<"Value of b and d"<<b<<d;
  }
  
};

int main()
{
    child1 c1 = child1();
    child2 c2 = child2();
    
    c1.display();
    c2.display();
}