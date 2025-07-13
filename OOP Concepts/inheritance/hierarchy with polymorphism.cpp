#include<iostream>
using namespace std;

class Employee
{
public:
	int empId;
	string name;
	string dept;
	string jDate;


};

class FullTime : public Employee
{
private:
	string role;
	int salary;

public:
	void display()
	{
		cout << "==========Full Time Data:=========="<<endl;
		cout << "Enter empId: ";
		cin >> empId;
		cout << "name: " << endl;
		cin >> name;
		cout << "dept: " << endl;
		cin >> dept;
		cout << "jDate: " << endl;
		cin >> jDate;
		cout << "role: " << endl;
		cin >> role;
		cout << "salary: " << endl;
		cin >> salary;

		cout << "Emp Id is: " << empId << endl;
		cout << "Name is: "<<  name << endl;
		cout << "Dept is: " << dept << endl;
		cout << "Join Date is: " << jDate << endl;
		cout << "Role is: " << role << endl;
		cout << "Salary is: " << salary << endl;

	}
};

class PartTime : public Employee
{
    public:
	int salary;

    public:
 	void display()
	{
      cout << "==========Part Time Data:=========="<<endl;
      cout << "Enter empId: ";
      cin >> empId;
      cout << "name: " << endl;
      cin >> name;
      cout << "dept: " << endl;
      cin >> dept;
      cout << "jDate: " << endl;
      cin >> jDate;
      cout << "salary: " << endl;
      cin >> salary;
      cout << "==========Part Time Data:=========="<<endl;
      
		cout << "Emp Id is: " << empId << endl;
		cout << "Name is: "<<  name << endl;
		cout << "Dept is: " << dept << endl;
		cout << "Join Date is: " << jDate << endl;
		cout << "Salary is: " << salary << endl;

	}

};

class Intern : public Employee
{
    public:
    int salary;
    
    public:
    void display()
	{
      cout << "==========Intern Data:=========="<<endl;
      cout << "Enter Intern Id: ";
      cin >> empId;
      cout << "Intern Name: " << endl;
      cin >> name;
      cout << "Intern Dept: " << endl;
      cin >> dept;
      cout << "Intern Join Date: " << endl;
      cin >> jDate;
      cout << "Intern Salary: " << endl;
      cin >> salary;
      
      cout << "==========Inter Data:=========="<<endl;
	  cout << "Intern Id is: " << empId << endl;
	  cout << "Intern Name is: "<<  name << endl;
	  cout << "Intern Dept is: " << dept << endl;
	  cout << "Intern Join Date is: " << jDate << endl;
	  cout << "Intern Salary is: " << salary << endl;

	}
};

class Contractor : public Employee
{
    public:
    int salary;
     public:
    void display()
	{
      cout << "==========Contractor Data:=========="<<endl;
      cout << "Enter Contractor Id: ";
      cin >> empId;
      cout << "Contractor Name: " << endl;
      cin >> name;
      cout << "Contractor Dept: " << endl;
      cin >> dept;
      cout << "Contractor Join Date: " << endl;
      cin >> jDate;
      cout << "Contractor Salary: " << endl;
      cin >> salary;
      
      cout << "==========Contractor Data:=========="<<endl;
	  cout << "Contractor Id is: " << empId << endl;
	  cout << "Contractor Name is: "<<  name << endl;
	  cout << "Contractor Dept is: " << dept << endl;
	  cout << "Contractor Join Date is: " << jDate << endl;
	  cout << "Contractor Salary is: " << salary << endl;

	}
    
    
};
int main()
{
	Employee *emp;
	FullTime ft;
	PartTime pt;
	Intern it;
	Contractor con;

	emp = &ft;
	emp = &pt;
	emp = &it;
	emp = &con;


	ft.display();
	pt.display();
	it.display();
	con.display();

}