#include "helloworld.h"

#include <iostream>

using namespace std;

int main(int argc, char** pszArgs) {
    int* x = (int*)7;
    int a = 3;
    char aa = 3;
    int z[10] = {0};
    int zz[10] = {1,2,3,4,5,6,7,8,9,10};

    cout << &x << endl;
    cout << x << endl;
    cout << argc << endl;
    cout << pszArgs[0] << endl;

    cout << &a << endl;
    cout << a << endl;
    cout << *(&a) << endl;

    cout << "-----------------" << endl;

    cout << sizeof(*(&a)) << endl;
    cout << sizeof(x) << endl;
    cout << sizeof(&a) << endl;
    cout << sizeof(a) << endl;

    cout << "-----------------" << endl;

    cout << *(&a) << endl;

    cout << "-----------------" << endl;

    cout << &z[0] << endl;
    cout << &z[1] << endl;
    cout << &z[2] << endl;

    cout << "-----------------" << endl;
    cout << &z << endl;
    cout << (z+2) << endl;

    cout << "-----------------" << endl;
    cout << z << endl;

    cout << "-----------------" << endl;
    cout << *(zz+6) << endl;
    *(zz+6)=99;
    cout << *(zz+6) << endl;

    return 0;
}