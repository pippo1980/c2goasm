//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

DATA LCDATA1<>+0x000(SB)/8, $0x400000003f800000
DATA LCDATA1<>+0x008(SB)/8, $0x4080000040400000
DATA LCDATA1<>+0x010(SB)/8, $0x40c0000040a00000
DATA LCDATA1<>+0x018(SB)/8, $0x4100000040e00000
GLOBL LCDATA1<>(SB), 8, $32

TEXT ·_MultiplyAndAddConstant(SB), 7, $0

    MOVQ arg1+0(FP), DI
    MOVQ arg2+8(FP), SI
    MOVQ arg3+16(FP), DX

    LEAQ LCDATA1<>(SB), BP

    LONG $0x0710fcc5             // vmovups    ymm0, [rdi]
    LONG $0x0e10fcc5             // vmovups    ymm1, [rsi]
    LONG $0xa87de2c4; WORD $0x004d // vfmadd213ps    ymm1, ymm0, 0[rbp] /* [rip + __ZL1a] */
    LONG $0x0a11fcc5             // vmovups    [rdx], ymm1
    VZEROUPPER
    RET
