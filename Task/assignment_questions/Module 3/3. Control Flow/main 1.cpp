#include <iostream>
using namespace std;

class Marks {
public:
    int marks;

   void display()
   {
       cout<<"Enter your marks:";
       cin>>marks;
       
       if(marks > 70)
       {
           cout<<"A Grade";
       }
       else if(marks > 60)
       {
           cout<<"B Grade";
       }
       else if(marks > 50)
       {
           cout<<"C Grade";
       }
       else if(marks > 40)
       {
           cout<<"D Grade";
       }
       else
       {
           cout<<"Fail!";
       }
   }
};

int main() {
   
   Marks m1 = Marks();
   
   m1.display();

    return 0;
}
