#include <pic14/pic16f690.h>
#include <stdint.h>
#include "blink.h"

static __code uint16_t __at(_CONFIG) configword1 =
_INTOSC & _WDTE_OFF & _PWRTE_OFF & _MCLRE_OFF &
_CP_OFF & _BOR_OFF & _IESO_OFF & _FCMEN_OFF;

#define FOSC 1000000L

void delay()
{
    int i = 0;
    int k = 0;
    for (i=0;i<8000;i++) k=i*2.1;

}

void setleds(int l0, int l1, int l2, int l3)
{
    RC0 = l0;
    RC1 = l1;
    RC2 = l2;
    RC3 = l3;

}

int main ()
{

    int j = 0;

    char estados[5][4] = {{1,0,0,0},{1,1,0,0},{0,1,1,0},{0,0,1,1},{0,0,0,1}};

    TRISC0 = 0;
    TRISC1 = 0;
    TRISC2 = 0;
    TRISC3 = 0;
    TRISA3 = 1;

    ANSEL = 0;
    ANSELH = 0;

    while(!ANSEL) {

        for (j=0;j<5;j++) {
            setleds(estados[j][0],estados[j][1],estados[j][2],estados[j][3]);
            delay();
        }

        for (j=4;j>=0;j--) {
            setleds(estados[j][0],estados[j][1],estados[j][2],estados[j][3]);
            delay();
        }

    }
    return 0;
}