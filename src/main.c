//Simple led blink example on atmega328p

#include <avr/io.h>
#include <util/delay.h>

int main (){
	/*init PORTB as output */
	DDRB |= (1<<0); 	

	/*Loop*/
	while(1){
		PORTB |= (1<<0);    //Toggling the output of PB0
		_delay_ms(1000);    //1 sec delay
	}
}

