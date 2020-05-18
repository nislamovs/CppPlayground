#include "mymath.h"

int timesTwo(int n) {
    return n * 2;
}

int squared(int n) {
    return n^2;
}

char* evenOddMessage(int n){
    return n % 2 == 0 ? "Even" : "Odd";
}
