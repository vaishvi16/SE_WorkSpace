
import 'dart:io';

class BankAccount
{
  //var accountnum, accountholder, balance;

  int accountnum = 12345;
  String accountholder = 'Vaishvi';
  int balance = 60000;

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

void main()
{
  int key;

  print("Enter keys to begin transaction:\n1.Deposit\t 2.Withdraw\t 3.Check Bank Balance: ");
  key = int.parse(stdin.readLineSync().toString());

  BankAccount ba = BankAccount();
  switch(key)
  {
    case 1: ba.deposit();

    case 2: ba.withdraw();

    case 3: ba.checkbalance();

    default: print("Enter valid key to begin the transaction");
  }

}