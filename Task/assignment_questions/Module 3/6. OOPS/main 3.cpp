#include<iostream>
using namespace std;

class Person
{
  public: 
  string name;
};


class Teacher : public Person
{
  public:
  int salary;
  string subject;
  
  void display()
  {
    cout<<"Enter your name: ";
    cin>>name;
    
    cout<<"Enter your Subject: ";
    cin>>subject;
    
    cout<<"Enter your Salary: ";
    cin>>salary;
      
    cout<<"Teacher name is: "<<name<<endl;
    cout<<"Subject is "<<subject<<endl;
    cout<<"Salary is "<<salary<<endl;
  }
};

class Student : public Person
{
  public:
  int rollNo;
  string department;
  
  void display()
  {
    cout<<"Student Enter your name: ";
    cin>>name;
    
    cout<<"Roll no is: ";
    cin>>rollNo;
    
    cout<<"Department is ";
    cin>>department;
      
    cout<<"Student name is: "<<name<<endl;
    cout<<"Roll no is: "<<rollNo<<endl;
    cout<<"Department is "<<department<<endl;
  }
};


int main()
{
    Teacher t1 = Teacher();
    t1.display();
    
    Student s1 = Student();
    s1.display();
    
   
    return 0;
}
