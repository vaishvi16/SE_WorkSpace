#include<iostream>
using namespace std;

class school
{
  public: 
  void details()
  {
    cout<<"Here are the details"<<endl;  
  }
  
};
class student : public school
{
  public: 
  void details()
  {
    cout<<"Here are the details of student"<<endl;  
  }
  
};
class faculty : public school
{
  public:
  void details()
  {
    cout<<"Here are the details of faculty"<<endl;  
  }
  
};
class head : public school
{
  public:
  void details()
  {
    cout<<"Here are the details of all head"<<endl;  
  }
  
};


int main()
{
   
   school s = school();
   s.details();
   
}