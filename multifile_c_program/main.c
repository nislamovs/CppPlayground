#include <stdio.h>
#include <stdlib.h>
#include "mymath.h"

int main(int argc, char **argv) {
    printf("5 * 2: %d\n", timesTwo(10));
    printf("3 ^ 2: %d\n", squared(3));
    printf("42 even/odd?: %s\n", evenOddMessage(42));
}

