//Set up a chain: Vehicle → FourWheeler → Car. 
//The Car class should inherit from FourWheeler, which in turn inherits from Vehicle. 
//Define distinct attributes at each level


//multi-level inheritance
#include<iostream>
using namespace std;

//parent class
class Vehicle
{
  public:  
  int speed, capacity;

};

class Fourwheeler : public Vehicle
{
    public:
    int count = 2;
   
    void display()
    {
         cout<<"Speed is: ";
         cin>>speed;
         
        cout<<"Capacity is: ";
         cin>>capacity;
    
         cout<<"Speed is: "<<speed<<endl;
          cout<<"Capacity is: "<<capacity<<endl;
          
    }
    
    
};

//child class
class Car : public Fourwheeler
{
   public:
   string type_of_car = "Maruti";
   void display()
   {
       
       cout<<"Enter Count :";
       cin>>count;
       
       if(count > 4)
        {
            cout<<"This is not fourwheeler"<<endl;
        }
        else
        {
         cout<<"This is fourwheeler"<<endl;   
        }
      
      
       
   }
    
};


int main()
{
        
    Car c1 = Car();
    c1.display();
    
    c1.Fourwheeler :: display();
    
}