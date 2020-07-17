
#include <avr/io.h>

#define LightPort PORTB
#define LightA 1
#define LightB 2

//#define F_CPU 1000000

#include <util/delay.h>

int main(void)
{
    DDRB = 7 ;
    LightPort = 2 ;

    while (1)
    {
        _delay_ms(500);
        LightPort = 4 ;
        _delay_ms(500);
        LightPort = 2 ;
    }
}