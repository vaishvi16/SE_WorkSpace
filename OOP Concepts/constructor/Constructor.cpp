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
   student s1 = student(20,101);
   student s2 = student(22,102);
   student s3 = student(25,103);
    
    s1.display();
    s2.display();
    s3.display();
    
    
}