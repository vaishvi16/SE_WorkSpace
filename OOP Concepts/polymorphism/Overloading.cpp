#include<iostream>
using namespace std;

class student
{
  public: 
  void details(string name, int rollno)
  {
    cout<<"Your name is : "<<name<<endl;
    cout<<"Your roll no is : "<<rollno<<endl;
  }
  
  
  public: 
  void details(char name[50], int rollno)
  {
    cout<<"Your name is : "<<name<<endl;
    cout<<"Your roll no is : "<<rollno<<endl;

  }
  
};


int main()
{
    
    student s1 = student();
    s1.details("Vaishvi",101);
    s1.details("Raj", 102);
    
}