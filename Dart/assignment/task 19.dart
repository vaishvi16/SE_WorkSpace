
class Vehicle
{
  details()
  {  }

}
class Bike extends Vehicle
{
  @override
  void details() {
    print('Type: Bike');
    print('Fuel Type: Electric');
    print('Max Speed: 120 km/h');
  }

}
class Car extends Vehicle
{
  @override
  void details() {
    print('Type: Car');
    print('Fuel Type: Petrol');
    print('Max Speed: 320 km/h');
  }

}

void main() {
  Bike b1 = Bike();
  Car c1 = Car();

  b1.details();
  c1.details();
}