#include<iostream>
using namespace std;

class student
{
    public:
    int age, rollno;

    student(int age, int rollno)
    {
        this -> age = age;
        this -> rollno = rollno;
        
    }

    void display()
    {
        cout<<"Age is: "<<age<<endl;
        cout<<"Roll no is: "<<rollno<<endl;
        
    }
};

int main()
{
    int age, rollno;
    
    cout<<"Enter your age : ";
    cin>>age;
    cout<<"Enter your roll num : ";
    cin>>rollno;

    
   student s1 = student(age,rollno);
   
    s1.display();
    
    
}