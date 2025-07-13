//Define a base class Vehicle with attributes like speed and capacity, 
//and a derived class Car that extends it by adding a model name—design 
//the class hierarchy so that Car inherits all properties from Vehicle.

#include<iostream>
using namespace std;

//parent class
class Vehicle
{
  public:  
  int speed, capacity;
  
};


//child class
class Car : public Vehicle
{
    public:
   
    void details(int speed, int capacity)
    {
        
        cout<<"Speed is: "<<speed<<endl;
        cout<<"capacity is: "<<capacity<<endl;
       
    }
    
};


int main()
{
    int speed, capacity;
    
    cout<<"Speed is: "<<endl;
    cin>>speed;
    cout<<"Capacity is: "<<endl;
    cin>>capacity;
   
        
    Car c1 = Car();
    c1.details(speed, capacity);
    
}