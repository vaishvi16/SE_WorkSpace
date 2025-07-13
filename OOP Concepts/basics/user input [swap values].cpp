#include<iostream>
using namespace std;

int main()
{
    int a,b, temp;
    
    cout<<"Enter any value for a : ";
    cin>>a;
    
    cout<<"Enter any value for b : ";
    cin>>b;
    
    cout<<"Value of a is "<<a<<endl;
    cout<<"Value of b is "<<b<<endl;
    
    temp = a;
    a = b;
    b = temp;
    
    cout<<"After swapping the values are"<<endl;
    cout<<"Value of a is "<<a<<endl;
    cout<<"Value of b is "<<b<<endl;
    
    
    
}