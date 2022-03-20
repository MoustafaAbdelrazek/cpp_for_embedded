#ifndef BIT_UTILS_H
#define BIT_UTILS_H

#define SET_BIT(REG,Bit)         (REG) |= (1<<(Bit))
#define CLR_BIT(REG,Bit)         (REG) &= ~(1<<(Bit))
#define GET_BIT(REG,Bit)         ((REG>>Bit)&(0x01))
#define RSHFT_REG(REG,Bit)       (REG) >>= Bit
#define LSHFT_REG(REG,Bit)       (REG) <<= Bit
#define CRSHFT_REG(REG,Bit)      (REG) = (REG << Bit) | (REG>>(sizeof(REG) * 8) - Bit)
#define CLSHFT_REG(REG,Bit)      (REG) = (REG >> Bit) | (REG<<(sizeof(REG) * 8) - Bit) 
#define ASSIGN_REG(REG,VALUE)    (REG) = (VALUE)
#define SET_REG(REG)             (REG) = ~(0);
#define CLR_REG(REG)             (REG) = 0;
#define TGL_BIT(REG,Bit_Bit)     (REG) ^= 1<<(Bit_Bit)
#define TGL_REG(REG)             (REG) ^= ~(0)
#define SET_H_NIB(REG)           (REG) |= 0xF0
#define SET_L_NIB(REG)           (REG) |= 0x0F
#define CLR_H_NIB(REG)           (REG) &= 0x0F
#define CLR_L_NIB(REG)           (REG) &= 0xF0
#define GET_H_NIB(REG)           (REG) >> 4
#define GET_L_NIB(REG)           ((REG) &  0x0F)
#define ASSIGN_H_NIB(REG,VALUE)  (REG) = ((REG&0x0F) | (VALUE<<4))
#define ASSIGN_L_NIB(REG,VALUE)  (REG) = ((REG & 0xF0) | VALUE)
#define TGL_H_NIB(REG)           (REG) ^= (0xF0)
#define TGL_L_NIB(REG)           (REG) ^= (0x0F)
#define SWAP_NIB(REG)            (REG) = (REG>>4) | (REG<<4)

#endif