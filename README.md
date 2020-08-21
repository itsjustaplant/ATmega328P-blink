# ATmega328P-blink
As Samuel Beckett said
> try again, fail again, fail better

## What do you need?

1- ATmega328P
  *or any other chip*

2- AVR Programmer 
  *USBASP, AVR ISP etc.  

3- Lot of jumper 
  *you'll need more in time*

4- LED

5- Multimeter

6- Resistor

**You don't need an external oscillator since you already have an internal one**

## Software Setup

1- You need an AVR cross-compiler *avr-gcc, win-avr etc.*

2- You need avrdude *or any other uploader*

3- You may or not use avr-objdump 

## Common mistakes and errors

avrdude: verification error, first mismatch at byte...

**this may happen because you buy cheap USBASP. Thus it supplies only 3.3V, your chip not gonna work properly**

avrdude: initialization failed, rc=-1

**That means your programmer and chip cannot communicate with each other, so you better check your connections again**

## Tips and Recommendations

-Check your connections before you move on to the circuit

-You **don't** have to set your fuses you can use default fuses

-**Don't** just binary values to registers. Use masking and bit shifting

-If you are on mac and having problem with 32 bit avr toolchain, download Arduino . It comes with avr toolchain and it works *magic* 

*Arduino.app/Contents/Java/hardware/tools/avr/bin/* check this folder

## Resources

https://markvanderlaan.nl/2019-10-25-avr-c-bitshifting/ -> **bit shifting**

https://www.engbedded.com/fusecalc/ -> **fuse calculator**

http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7810-Automotive-Microcontrollers-ATmega328P_Datasheet.pdf -> **official datasheet**
## Issues

1- 'flash' command  doesn't work actually 
	
As plant said once

>I'm just a plant making sphagetti da ba de
