//Simple led blink example on atmega328p
#define F_CPU 1000000UL

#include <avr/io.h>
#include <util/delay.h>

int main (){
	/*init PORTB as output */
	DDRB = 0b00000001; 	//can be replaced with masked value DDRB |= (1 << PB0)

	/*Loop*/
	while(1){
		PORTB = 0b00000001; //Toggling the output of PB0
		_delay_ms(1000);    //1 sec delay
	}
}

