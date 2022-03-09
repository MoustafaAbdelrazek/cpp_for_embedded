#include "Bit_utils.h"
#include "Std_types.h"
template <class T, class t>
class REGE
{
private:
    u8 permission;
    T *Reg_Ptr;

public:
    REGE(T *p, u8 per);
    u8 setRegisterValue(t regs);
    T getRegisterValue();
    u8 setBit(u8 Bit_num);
    u8 clearBit(u8 Bit_num);
    T getBit(u8 Bit_Num);
    u8 setPermission(u8 per);
    ~REGE(); 
};