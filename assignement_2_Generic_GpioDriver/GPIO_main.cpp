#include <iostream>
#include "GPIO.hpp"

using namespace std;

void GPIO::pinMode(unsigned char Cpy_u8PinNum , unsigned char Cpy_u8PinMode)
{
    #ifdef _AVR_GPIO_H_
    AVR_pinMode(PinNUM , PinMode);
    #endif
    #ifdef _ARM_GPIO_H_
    ARM_pinMode(PinNUM , PinMode);
    #endif
    
}