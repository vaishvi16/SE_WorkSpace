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
  void details(string name, int rollno,string department)
  {
    cout<<"Your name is : "<<name<<endl;
    cout<<"Your roll no is : "<<rollno<<endl;
    cout<<"Your department is : "<<department<<endl;
    
  }
  
};


int main()
{
    student s1 = student();
    s1.details("Vaishvi",101,"Computer");
    s1.details("Shubham",102);
    
}