#include<iostream>
using namespace std;

class Employee
{
    public:
    string name;
    int id, salary;
};

class Manager : public Employee
{
    public:
    string dep = "HR";
    int hours = 8;
    void display()
    {
       cout<<"Working hours for Manager is : "<<hours<<endl;
       cout<<"Department for Manager is : "<<dep<<endl;  
    }
};

class Clerk : public Employee
{
    public:
    string dep;
    int hours;
    void display()
    {
        cout<<"Working hours for clerk is : ";
        cin>>hours;
        
        cout<<"Department for clerk is : ";
        cin>>dep;
        
        cout<<"Working hours for clerk is : "<<hours<<endl;
        cout<<"Department for clerk is : "<<dep<<endl;
    }
};

int main()
{
    Clerk c1 = Clerk();
    c1.display();

    Manager m1= Manager();
    m1.display();
}

