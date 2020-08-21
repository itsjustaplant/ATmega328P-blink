cmake_minimum_required(VERSION 3.11)
project(blink)

set(MCU atmega328p)
set(PROGRAMMER usbasp)
set(PRODUCT_NAME blink)

set(BAUD 9600)
set(F_CPU 16000000)

set(lfuse 0x62)
set(hfuse 0xd9)
set(efuse 0xff)

#https://gitlab.kitware.com/cmake/community/-/wikis/doc/cmake/CrossCompiling
#If target is an embedded system set CMAKE_SYSTEM_NAME Generic

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_C_COMPILER /Users/alperen/Downloads/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc)

set(CMAKE_EXE_LINKER_FLAGS -mmcu=${MCU})

add_definitions(
    -DF_CPU=${F_CPU}
    -DBAUD=${BAUD}
)

add_compile_options(
	-mmcu=${MCU}
	-Wall 
	-Os
	)	

file(GLOB SRC_FILES "src/*.c") # Load all files in src folder

# Create one target
add_executable(${PRODUCT_NAME} ${SRC_FILES})

#change the format to .elf
set_target_properties(${PRODUCT_NAME} PROPERTIES OUTPUT_NAME ${PRODUCT_NAME}.elf)

#binary must be stripped to remove debugging symbols
add_custom_target(strip ALL /Users/alperen/Downloads/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-strip ${PRODUCT_NAME}.elf DEPENDS ${PRODUCT_NAME})
#make it depends to unchanged file 

#creating hex file from elf by objcopy
add_custom_target(hex ALL /Users/alperen/Downloads/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-objcopy -j .text -j .data  -O ihex ${PRODUCT_NAME}.elf ${PRODUCT_NAME}.hex DEPENDS strip)

#https://cmake.org/cmake/help/latest/command/add_custom_target.html

add_custom_target(flash /Users/alperen/Downloads/Arduino.app/Contents/Java/hardware/tools/avr/bin/avrdude -C /usr/local/CrossPack-AVR-20131216/etc/avrdude.conf -p ${MCU} -c ${PROGRAMMER} -F -B 10 -U lfuse:w:0x62:m -U hfuse:w:0xd9:m -U efuse:w:0x07:m -U flash:w:m:${PRODUCT_NAME}.hex DEPENDS hex)

#clean
