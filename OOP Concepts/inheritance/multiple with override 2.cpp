//multiple inheritance with polymorphism [override]

#include<iostream>
using namespace std;

class HR
{
  public:
  void hrName(string name1)
  {
      cout<<"Hr name: "<<name1<<endl;
  }
    
};

class employee
{
  public:
  void empName(string name2)
  {
      cout<<"Emp name: "<<name2<<endl;
  }
    
    
};


class CEO : public employee, public HR
{
  public:
  void display(string name)
  {
      cout<<"Ceo :"<<name<<endl;

  }
    
};


int main()
{
    string Cname, Hname, Ename;
    
    cout<<"Enter your name: ";
    cin>>Cname;
    
    cout<<"Enter your name: ";
    cin>>Hname;
    
    cout<<"Enter your name: ";
    cin>>Ename;
    
    
    CEO c2 = CEO();
    c2.display(Cname);
    c2.hrName(Hname);
    c2.empName(Ename);
    
    
}
