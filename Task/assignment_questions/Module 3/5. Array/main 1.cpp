#include <iostream>
using namespace std;

class Operation
{
  public:
  int arr[100], number, i, addition = 0, average = 0;
  
  void display()
  {
      
      cout<<"How many numbers you want to add? ";
      cin>>number;
      
      for(i=0; i<number; i++)
      {
        cout<<"Enter values: "; 
        cin>>arr[i];
        
        addition += arr[i];
        average = addition / number;
        
      }
  }
  
  void add()
  {
    cout<<"Addition of these numbers are "<<addition<<endl;
  }
  
  void avg()
  {
    cout<<"Average of these numbers are "<<average<<endl;  
  }
};

int main()
{
    Operation op = Operation();
    
    op.display();
    op.add();
    op.avg();
    
}