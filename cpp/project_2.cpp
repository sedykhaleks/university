#include <iostream>  // библиотека
#include <string>
using namespace std; // пространство имен

class Human 
{
public:          // модификатор доступа

    int age;
    int weight;   // свойства класса
    string name;

};

int main()
{

    Human firstHuman;

    firstHuman.age = 30;
    firstHuman.name = "Dima";
    firstHuman.weight = 112;

    cout << firstHuman.age << endl;
    cout << firstHuman.name << endl;
    cout << firstHuman.weight << endl;

    Human secondHuman;

    secondHuman.age = 59;
    secondHuman.name = "Iren";
    secondHuman.weight = 71;

    cout << secondHuman.age << endl;
    cout << secondHuman.name << endl;
    cout << secondHuman.weight << endl;

    return 0;
}
