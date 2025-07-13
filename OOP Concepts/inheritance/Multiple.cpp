#include<iostream>
using namespace std;

class parent1
{
  public:
  int a,b;
  
  };

class parent2
{
  public:
  int c,d;
   
};

class child : public parent1,parent2
{
  public:
  void display()
  {
      cout<<"Enter value of a: ";
      cin>>a;
      cout<<"Enter value of b: ";
      cin>>b;
      
      cout<<"Enter value of c: ";
      cin>>c;
      cout<<"Enter value of d: ";
      cin>>d;

      cout<<"Values of a and b are: "<<a<<b;
      
      cout<<"Values of c and d are: "<<c<<d;
  }
  
};

int main()
{
    child c1 = child();
    
    c1.display();
    
}