#include<iostream>
using namespace std;

class shape
{
    public:
    int a=10,b=5;
};

class rectangle : public shape
{
    public:
    int rect_area()
    {
      int c = a*b;
      cout<<"Area of rectangle is "<<c;
     return c;
    }
    
};

class triangle : public shape
{
    public:
    int tri_area()
    {
        int d = 0.5*a*b;
        cout<<"Area of trianlge is "<<d;
     return d;  
    }
};

int main()
{
    rectangle r1 = rectangle();
   r1.rect_area();
   
   triangle t1 = triangle();
   t1.tri_area();
    
   
   
   
}