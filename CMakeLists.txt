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

set(CMAKE_C_COMPILER /usr/local/bin/avr-gcc)

#It is important to specify the MCU type when linking. The compiler uses the -mmcu option to choose start-up files and run-time libraries that get linked together. If this option isn't specified, the compiler defaults to the 8515 processor environment, which is most certainly what you didn't want.
#https://www.nongnu.org/avr-libc/user-manual/group__demo__project.html#:~:text=It%20is%20important%20to%20specify%20the%20MCU%20type%20when%20linking.
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
#Load all files in src folder
file(GLOB SRC_FILES "src/*.c") 

# Create one target
add_executable(${PRODUCT_NAME} ${SRC_FILES})

#change the format to .elf
set_target_properties(${PRODUCT_NAME} PROPERTIES OUTPUT_NAME ${PRODUCT_NAME}.elf)

#https://cmake.org/cmake/help/latest/command/add_custom_target.html

#binary must be stripped to remove debugging symbols
add_custom_target(strip ALL /usr/local/bin/avr-strip ${PRODUCT_NAME}.elf DEPENDS ${PRODUCT_NAME})
#make it depends to unchanged file 

#creating hex file from elf by objcopy
add_custom_target(hex ALL /usr/local/bin/avr-objcopy -j .text -j .data  -O ihex ${PRODUCT_NAME}.elf ${PRODUCT_NAME}.hex DEPENDS strip)

#flashing rom
add_custom_target(flash /usr/local/bin/avrdude -p ${MCU} -c ${PROGRAMMER} -F -B 10 -U lfuse:w:0x62:m -U hfuse:w:0xd9:m -U efuse:w:0x07:m -U flash:w:"${PRODUCT_NAME}.hex":i DEPENDS hex)

#clear
add_custom_target(clear rm -rf ${PRODUCT_NAME}.hex ${PRODUCT_NAME}.elf)
