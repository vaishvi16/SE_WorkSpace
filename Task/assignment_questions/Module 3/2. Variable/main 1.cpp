#include<iostream>
using namespace std;


class Details
{
    public:
    int age;
    string name;

    void display()
    {
        cout<<"Enter your name: ";
        cin>>name;
        
        cout<<"Enter your age: ";
        cin>>age;
        
        
         cout<<"Your name is "<<name<<endl;
         cout<<"Your age is "<<age<<endl;

    }
};

int main()
{
   Details d1 = Details();
   d1.display();
   
    return 0;
}
