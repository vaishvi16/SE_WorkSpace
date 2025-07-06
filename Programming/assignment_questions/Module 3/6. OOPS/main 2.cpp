#include<iostream>
using namespace std;

class BankAccount
{
  private:
  int balance = 0;
  
  public:
  void deposit(int bal)
  {
      balance = bal;
  }

  int withdraw()
  {
      cout<<balance;
      return balance;
  }
  
};


int main()
{
   BankAccount b1 = BankAccount();
   b1.deposit(1000);
   b1.withdraw();
    
    return 0;
}