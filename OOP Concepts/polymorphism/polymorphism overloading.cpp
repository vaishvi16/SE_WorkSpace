//Polymorphism - overloading

#include<iostream>
using namespace std;

class Student
{
   public:

   void display(int rollno, string name)
   {
       cout<<"Roll no is: ";
       cin>>rollno;
       
       cout<<"Enter Name: ";
       cin>>name;
       
       cout<<"rollno is: "<<rollno<<endl;
       cout<<"name is: "<<name<<endl;
       
       
   }
   
   void display(int rollno, string name, string dept)
   {
      
       cout<<"Roll no is: ";
       cin>>rollno;
       
       cout<<"Enter Name: ";
       cin>>name;  
       
       cout<<"Enter Department: ";
       cin>>dept;
       
       cout<<"rollno is: "<<rollno<<endl;
       cout<<"name is: "<<name<<endl;
       cout<<"department is: "<<dept<<endl;
   }
    
};


int main()
{
    int rollno;
    string name, department;
    Student s1 = Student();
    s1.display(rollno, name, department);
    s1.display(rollno, name);
    
}

