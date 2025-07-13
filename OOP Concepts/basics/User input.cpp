#include<iostream>
using namespace std;

class student
{
   public:
   int id1;
  
  public:
   void display()
   {
       cout<<"Your id is : "<<id1<<endl;
   }
   
};

int main()
{
   int id;
  
   cout<<"Enter your id : "<<endl;
   cin>>id;
  
   
    student s1 = student();
    s1.id1 = id;
    s1.display();
    
}