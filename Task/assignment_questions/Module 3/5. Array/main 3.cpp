#include<iostream>
#include<string.h>
using namespace std;

int main()
{
    char string[100], revString[100];
    int i, length = 0;
    
    cout << "Enter any string: ";
    cin >> string;

    while (string[length] != '\0')
    {
        length++;
    }

    for (i = 0; i < length; i++)
    {
        revString[i] = string[length - 1 - i];
    }

    revString[length] = '\0';

    if (strcmp(string, revString) == 0)
    {
        cout << "\nThe given string is Palindrome!";
    }
    else
    {
        cout << "\nThe given string is not Palindrome!";
    }

    return 0;
}
