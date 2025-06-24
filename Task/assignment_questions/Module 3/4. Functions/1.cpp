#include <iostream>
using namespace std;

class SimpleCalc {
public:
    int num1, num2;

   void input()
   {
       cout<<"Enter any value of a: ";
       cin>>num1;
       
       cout<<"Enter any value of b: ";
       cin>>num2;
   }
   
    void addition() 
    {
        cout << "a + b = " << num1 + num2 << endl;
        
    }
    void substraction() 
    {
       cout << "a - b = " << num1 - num2 << endl;
       
    }
    void multiplication() 
    {
        cout << "a * b = " << num1 * num2 << endl;
       
    }
    void division() 
    {
        cout << "a / b = " << num1 / num2 << endl;
    }
};

int main() 
{
    int select;

    SimpleCalc cal = SimpleCalc();
   
    
    cout<<"Select your operation."<<endl<<"1. Addition"<<endl<<"2. Substraction"<<endl<<"3. Multiplication"<<endl<<"4. Division"<<endl;
    cin>>select;
    
    cal.input();
    
    switch(select)
    {
        case 1 : cal.addition();
        break;
        
        case 2 : cal.substraction();
        break;
        
        case 3 : cal.multiplication();
        break;
        
        case 4 : cal.division();
        break;
        
        default: cout<<"Invalid Input"<<endl;
        break;
    }

    return 0;
}
