#include<iostream>
using namespace std;

class swap123
{
  public: 
  virtual void swapValues(int &a, int &b)
  {
      
      int temp;
      temp = a;
      a = b;
      b = temp;
      
      cout<< "Base class Swapping done "<<endl;
  }
 
  
};

class myswap : public swap123
{
    public: 
    void swapValues(int &a, int &b)
    {
        int temp;
        cout<<"Before swapping, a: "<<a<<" and b: "<<b<<endl;
       
        
        temp = a;
        a = b;
        b = temp;
        
        cout<<"After swapping, a: "<<a<< "and b: "<<b<<endl;

    }
    
};

int main()
{
   int x = 10, y = 20;
   
  // swap123 s1;
  // s1.swapValues(x,y);
   
  // myswap s;
   //s.swapValues(x,y);
    
    swap123* s = new myswap();
    s -> swapValues(x,y);
   
    return 0;
}