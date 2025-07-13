//Vehicle Hierarchy

#include<iostream>
using namespace std;

class Vehicle
{
    public:
    int year_model;
    string brand_name = "Maruti";
    
};

class Car : public Vehicle
{
    public:
    int num_of_doors = 5, has_gear = 5;
    Car()
    {
        cout<<"Car name: "<<brand_name<<endl;
        cout<<"num_of_doors is: "<<num_of_doors<<endl;
        cout<<"has_gear is: "<<has_gear<<endl;
    }
  
};

class Bike : public Vehicle
{
    public:
    int num_of_doors = 4, has_gear = 1;
    Bike()
    {
        cout<<"Bike name: "<<brand_name<<endl;
        cout<<"num_of_doors is: "<<num_of_doors<<endl;
        cout<<"has_gear is: "<<has_gear<<endl;
    }
    
};

int main()
{
    Car c1 = Car();
    Bike b1 = Bike();
    
    
}

