#include <iostream>
using namespace std;

class student
{
    private:
    int rollno;
    
    public:
    void setno(int no)
    {
        rollno = no;
    }
    
    friend void display(student s);
    
};

void display(student s)
{
    cout << s.rollno << endl;
}


int main()
{
   student s1;
   s1.setno(12);
   
   display(s1);

    return 0;
}