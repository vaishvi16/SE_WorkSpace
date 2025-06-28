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

class DepositCash
{
  public:
  int amount;
  void deposit()
  {
      cout<<"Deposit cash class called";
      cout<<"Enter Amount you want to deposit: ";
      cin>>amount;
      
      
  }
    
};

class WithdrawCash
{
  public:
   void withdraw()
  {
      cout<<"withdraw cash class called";
  }
    
};

class BalanceInquiry : public DepositCash
{
  public:
  int totalBalance = 40000;
  void showBalance()
  {
      cout<<"Your available balance is 40000";
      totalBalance += amount;
      cout<<"Total balance is "<<totalBalance<<endl;
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
        
        /*case 0 : 
        exit;
        break;*/
        
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


int main()
{
    welcomeScreen();
    
    AtmPin atm = AtmPin();
    atm.display();
}