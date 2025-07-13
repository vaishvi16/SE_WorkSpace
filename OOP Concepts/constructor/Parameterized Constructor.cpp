#include<iostream>
using namespace std;

class student
{
public:
	student(int age, int rollno)
	{
		cout<<"Your age is: "<<age<<endl;
        cout<<"Your roll number is: "<<rollno<<endl;
	}

};

int main()
{
    int age1, rollno1;
    
	cout<<"Enter your age: "<<endl;
	cin>>age1;
	cout<<"Enter your roll number: "<<endl;
	cin>>rollno1;

	student s1 = student(age1,rollno1);
	
}