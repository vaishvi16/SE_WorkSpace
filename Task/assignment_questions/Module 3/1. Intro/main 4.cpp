#include<iostream>
using namespace std;


class Number
{
    public:
    int a,b, sum;
    
    void display()
    {
        cout<<"Enter value of a: ";
        cin>>a;
        
        cout<<"Enter value of b: ";
        cin>>b;
        
        sum = a + b;
    
        cout<<"Area of rectangle is "<<sum;
    }
};

int main()
{
    Number n = Number();
    n.display();
   
    return 0;
}
