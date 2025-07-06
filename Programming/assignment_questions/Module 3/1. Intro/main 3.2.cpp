#include<iostream>
using namespace std;


class Area
{
    public:
    int a,b, area;
    
    void display()
    {
        cout<<"Enter length: ";
        cin>>a;
        
        cout<<"Enter width: ";
        cin>>b;
        
        area = a * b;
    
        cout<<"Area of rectangle is "<<area;
    }
};

int main()
{
    Area a = Area();
    a.display();
   
    return 0;
}
