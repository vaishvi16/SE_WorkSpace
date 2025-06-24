#include <iostream>
using namespace std;

class Matrics
{
  public:
  int arr1[2][2] = {{1,2},{3,4}};
  int arr2[2][2] = {{1,2},{3,4}};
  int result[2][2];
  int i,j;
  
  void add()
  {
      for(i=0; i<2; i++)
  {
      for(j=0; j<2; j++)
      {
        result[i][j] = arr1[i][j] + arr2[i][j];
      }
  }
  }
  
  void display()
  {
    for(i=0; i<2; i++)
    {
        for(j=0; j<2; j++)
        {
            cout<<" "<<result[i][j];
        }
        cout<<endl;
    }
  }
  
  
 
};

int main()
{
   Matrics m = Matrics();
   
   m.add();
   m.display();
    
}