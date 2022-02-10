//
// GPIO.hpp file
//
// Author Moustafa Ahmed Abdelrazek
//
//

#ifndef GPIO_hpp
#define GPIO_hpp

class GPIO
{
    public:
        void            pinMode(unsigned char PinNum , unsigned char PinMode)        ;
        void            digitalWrite(unsigned char PinNum , unsigned char PinMode);
        unsigned char   digitalRead(unsigned char PinNum)                                  ;

};



#endif