#include<iostream>
using namespace std;

void welcomeScreen()
{
    cout<<"--------------------WELCOME TO ATM--------------------"<<endl;
    cout<<"--------------------"<<endl;
    cout<<"Current Date: "<<endl;
}

void getHelp()
{
    string anyKey;
    
    cout<<"You must have the correct pin number to access this account. See your bank representative for assistance during bank opening hours."<<endl<<"Thanks for your choice today!!";
     
    cout<<"Press any key for continue....";
    cin>>anyKey;
    

}

class Account
{
  public:
  static int totalBalance;

};

class DepositCash : public Account
{
  public:
  int amount;
  void deposit()
  {
      cout<<"Enter Amount you want to deposit: ";
      cin>>amount;
      
      totalBalance += amount;
      
      cout<<"Your bank balance is : "<<totalBalance<<endl;
      
      
      
  }
    
};

class WithdrawCash : public Account
{
  public:
  int amount;
  void withdraw()
  {
      cout<<"Enter Amount you want to withdraw: ";
      cin>>amount;
      
      if(amount > totalBalance)
      {
        cout<<"Insufficient balance available! "<<endl<<endl<<"         Sorry!!"<<endl;
      }
      else
      {
        totalBalance -= amount;
      
        cout<<"Your bank balance is : "<<totalBalance<<endl;     
      }
     
  }
    
};

class BalanceInquiry : public Account
{
  public:
  void showBalance()
  {
      cout<<"Your available balance is "<<Account :: totalBalance<<endl;
  }
    
};

class Menu 
{
  public:
  int select;
  void showMenu()
  {
    cout<<"-------------------- ATM Main Menu Screen --------------------"<<endl<<endl;
    cout<<"Enter [1] to deposit Cash"<<endl<<"Enter [2] to withdraw Cash"<<endl<<"Enter [3] to balance inquiry"<<endl<<"Enter [0] to exit ATM"<<endl;
    cout<<"Please enter a Selection And Press Return Key"<<endl;
    cin>>select;
    
    switch(select)
    {
        case 1 : 
        DepositCash dc;
        dc.deposit();
        break;
        
        case 2 : 
        WithdrawCash w;
        w.withdraw();
        break;
        
        case 3 : 
        BalanceInquiry bi;
        bi.showBalance();
        break;
        
        case 0 : 
        exit;
        break;
        
    }
    

  }
    
};

class correctPin
{
    public:
    int enterpswd;
    void checkPswd()
    {
        cout<<"Enter your Account Pin Access Number!  [Only one attempt is allowed]"<<endl;
        cin>> enterpswd;
        
        if(enterpswd == 12345)
        {
            cout<<"Password is correct"<<endl;
            
            Menu m = Menu();
            m.showMenu();
        }
        else if(enterpswd != 12345)
        {
            cout<<"You had made your attempt which failed!! No more Attempt allowed!!" <<endl<<"    Sorry! "<<endl;
        }
        else
        {
          welcomeScreen();  
        }
        
    }
};

class AtmPin 
{
    public:
    int press;
    void display()
    {
       cout<<"Press 1 and then Press Enter to access your account via Pin Number"<<endl<<"OR"<<endl<<"Press 0 and Press Enter to get Help"<<endl;
       cin>>press;
       
      switch(press)
      {
          case 0: // get Help
          getHelp();
          break;
          
          case 1: //Access account via pin number
          correctPin cp;
          cp.checkPswd();
          break;
          
          default: 
          cout<<"Invalid Input"<<endl;
          break;
      }

    }    
};


int Account :: totalBalance = 40000;
int main()
{
    welcomeScreen();
    
    AtmPin atm = AtmPin();
    atm.display();
}