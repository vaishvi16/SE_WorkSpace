#include <iostream>
using namespace std;

int main() 
{
  
	int i = 10;
    char c = 'A';
    float num1 = 10.10;
    int num2 = num1;
  
    //explicit type conversion
  	cout << (int)c << endl;
  	
  	int sum = i + c;
   	cout << sum<<endl;
   	
   	//implicit type conversion
   	cout<<num2<<endl;
   	
  	
    return 0;
}