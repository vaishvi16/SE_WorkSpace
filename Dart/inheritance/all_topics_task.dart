
import 'dart:io';

class BankAccount
{

  int accountNum;
  final String accountHolder;
  static int balance = 60000;

  BankAccount(this.accountNum, this.accountHolder);

  deposit()
  {
    int amount;

    print("Enter amount you want to deposit");
    amount = int.parse(stdin.readLineSync().toString());

    balance += amount;
    print("Successfully deposited");
    print("Total balance: $balance");

  }
  withdraw()
  {
    int amount;

    print("Enter amount you want to withdraw");
    amount = int.parse(stdin.readLineSync().toString());

    if(balance > amount)
    {
      balance -= amount;
      print("Successfully withdrawn");
      print("Total balance you have: $balance");
    }
    else
    {
      print("You can not withdraw as your current balance is: $balance");
    }


  }
  checkbalance()
  {
    print("Total balance: $balance");
  }
}

class SavingAccount extends BankAccount
{
  SavingAccount(super.accountNum, super.accountHolder);

}

class CheckingAccount extends BankAccount
{
  CheckingAccount(super.accountNum, super.accountHolder);

}

void main()
{
  while(true)
    {
      int key;

      print("Enter keys to begin transaction:\n1.Deposit\t 2.Withdraw\t 3.Check Bank Balance:\t 4.Exit ");
      key = int.parse(stdin.readLineSync().toString());

      BankAccount ba = BankAccount(12345, "Vaishvi");
      switch(key)
      {
        case 1: ba.deposit();

        case 2: ba.withdraw();

        case 3: ba.checkbalance();

        case 4: exit(0);

        default: print("Enter valid key to begin the transaction");
      }
    }


}