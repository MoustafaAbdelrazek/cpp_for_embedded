#include <iostream>
#include "GenCls_REG.hpp"

using std ::cout;
using std ::endl;

int main(void)
{
    u16 portA;
    u16 *p= &portA;
    u8 per=0;
    REGE<u16,u16> porta(p,per);
    u8 condition = porta.setRegisterValue(255);
    cout << condition<<endl;

    return 0;
}