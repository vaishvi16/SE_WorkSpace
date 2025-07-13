// Multiple Inheritance with Override Polymorphism

#include<iostream>
using namespace std;

// First parent class
class Teacher {
public:
    void teach() {
        cout << "Teacher is teaching..." << endl;
    }
};

// Second parent class
class Researcher {
public:
    void teach() {
        cout << "Researcher is researching..." << endl;
    }
};

// Child class inheriting from both Teacher and Researcher
class Professor : public Teacher, public Researcher {
public:
    void teach() {
        cout << "Professor is guiding students..." << endl;
    }
};

int main() {
    Professor prof = Professor();

    prof.teach();    // to acess values of professor class
    prof.Researcher :: teach();  //to access the values of researcher class using scope resolution operator

    return 0;
}

