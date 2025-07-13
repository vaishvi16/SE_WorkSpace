#include<iostream>
using namespace std;


class student 
{
  public:
  string name;
  void details()
  {
      
      cout<<name<<endl;
  }
  
  
};

class teacher : public student
{
  public:
  void display(string name)
  {
    cout<<name;
  }
  

};

int main()
{
    string name;
    
    cout<<"Enter your name: ";
    cin>>name;
    
   
  teacher t1 = teacher();
  t1.display(name);
    
}