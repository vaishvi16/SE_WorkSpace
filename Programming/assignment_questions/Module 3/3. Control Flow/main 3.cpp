#include <iostream>
using namespace std;

class Multiplication {
public:
    int num, i, ans;
    
   void display()
   {
       cout<<"Enter any Number:";
       cin>>num;
    
      for(i=1; i<=10; i++)
      {
          ans = num * i;
          cout<<num<< " X "<<i<<" = "<<ans<<endl;
      }
       
      
   }
};

int main() {
   
   Multiplication mul = Multiplication();
   mul.display();
  

    return 0;
}
