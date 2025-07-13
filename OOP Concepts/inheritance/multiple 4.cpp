#include<iostream>
using namespace std;

class HR
{
  public:
  string name1 = "HR;
    
};

class employee
{
  public:
  string name2 = "Employee";
 
    
};


class CEO : public employee, HR
{
  public:
  void display()
  {
     // cout<<"Name is : "<<name3;
      cout<<"Name is : "<<name2;
      cout<<"Name is : "<<name1;
      
  }
    
};


int main()
{
    CEO c2 = CEO();
    c2.display();
    
    
}
