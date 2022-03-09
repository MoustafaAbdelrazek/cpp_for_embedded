#include "GenCls_REG.hpp"

template <class T, class t>
REGE<T, t>::REGE(T *p, u8 per)
{
    permission = per;
    Reg_Ptr = p;
}
template <class T, class t>
u8 REGE<T, t>::setRegisterValue(t value)
{
    if (sizeof(t) <= sizeof(T) && permission == 1)
    {
        *Reg_Ptr = value;
    }
    else
    {
        return 1;
    }
    return 0;
}
template <class T, class t>
T REGE<T, t>::getRegisterValue()
{
    if (permission == 0 | permission == 2)
    {
        return *Reg_Ptr;
    }
    else
    {
        return 1;
    }
    return 0;
}
template <class T, class t>
u8 REGE<T, t>::setBit(u8 Bit_num)
{
    if (permission == 1 | permission == 2)
    {
        SET_BIT(*Reg_Ptr, Bit_num);
        return 0;
    }
    else
    {
        return 1;
    }
}
template <class T, class t>
u8 REGE<T, t>::clearBit(u8 Bit_num)
{
    if (permission == 1 | permission == 2)
    {
        CLR_BIT(*Reg_Ptr, Bit_num);
        return 0;
    }
    else
    {
        return 1;
    }
}
template <class T, class t>
T REGE<T, t>::getBit(u8 Bit_Num)
{
    if (permission == 0 | permission == 2)
    {
        return GET_BIT(*Reg_Ptr, Bit_Num);
    }
    else
    {
        return 1;
    }
    return 0;
}
template <class T, class t>
u8 REGE<T, t>::setPermission(u8 per)
{
    permission = per;
    return 0;
}
template <class T, class t>
REGE<T, t>::~REGE()
{
    CLR_REG(*Reg_Ptr);
}