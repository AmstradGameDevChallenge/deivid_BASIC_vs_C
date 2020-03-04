                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module main
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _main
                             12 	.globl _printf
                             13 ;--------------------------------------------------------
                             14 ; special function registers
                             15 ;--------------------------------------------------------
                             16 ;--------------------------------------------------------
                             17 ; ram data
                             18 ;--------------------------------------------------------
                             19 	.area _DATA
                             20 ;--------------------------------------------------------
                             21 ; ram data
                             22 ;--------------------------------------------------------
                             23 	.area _INITIALIZED
                             24 ;--------------------------------------------------------
                             25 ; absolute external ram data
                             26 ;--------------------------------------------------------
                             27 	.area _DABS (ABS)
                             28 ;--------------------------------------------------------
                             29 ; global & static initialisations
                             30 ;--------------------------------------------------------
                             31 	.area _HOME
                             32 	.area _GSINIT
                             33 	.area _GSFINAL
                             34 	.area _GSINIT
                             35 ;--------------------------------------------------------
                             36 ; Home
                             37 ;--------------------------------------------------------
                             38 	.area _HOME
                             39 	.area _HOME
                             40 ;--------------------------------------------------------
                             41 ; code
                             42 ;--------------------------------------------------------
                             43 	.area _CODE
                             44 ;src/main.c:9: void main(void) {
                             45 ;	---------------------------------
                             46 ; Function main
                             47 ; ---------------------------------
   4000                      48 _main::
   4000 DD E5         [15]   49 	push	ix
   4002 F5            [11]   50 	push	af
                             51 ;src/main.c:12: printf("RPG GAME\r\n");
   4003 21 58 40      [10]   52 	ld	hl, #___str_0
   4006 E5            [11]   53 	push	hl
   4007 CD D8 40      [17]   54 	call	_printf
                             55 ;src/main.c:13: printf("\r\n");
   400A 21 63 40      [10]   56 	ld	hl, #___str_1
   400D E3            [19]   57 	ex	(sp),hl
   400E CD D8 40      [17]   58 	call	_printf
                             59 ;src/main.c:14: printf("PRESS ENTER TO START \r\n");
   4011 21 66 40      [10]   60 	ld	hl, #___str_2
   4014 E3            [19]   61 	ex	(sp),hl
   4015 CD D8 40      [17]   62 	call	_printf
                             63 ;src/main.c:15: printf("\r\n");
   4018 21 63 40      [10]   64 	ld	hl, #___str_1
   401B E3            [19]   65 	ex	(sp),hl
   401C CD D8 40      [17]   66 	call	_printf
                             67 ;src/main.c:16: printf("Juego hecho por David Ventas \r\n");
   401F 21 7E 40      [10]   68 	ld	hl, #___str_3
   4022 E3            [19]   69 	ex	(sp),hl
   4023 CD D8 40      [17]   70 	call	_printf
                             71 ;src/main.c:17: printf("\r\n");
   4026 21 63 40      [10]   72 	ld	hl, #___str_1
   4029 E3            [19]   73 	ex	(sp),hl
   402A CD D8 40      [17]   74 	call	_printf
   402D F1            [10]   75 	pop	af
                             76 ;src/main.c:20: while (i < 10) {
   402E 4F            [ 4]   77 	ld	c,a
   402F 47            [ 4]   78 	ld	b,a
   4030                      79 00101$:
   4030 79            [ 4]   80 	ld	a, c
   4031 D6 0A         [ 7]   81 	sub	a, #0x0a
   4033 78            [ 4]   82 	ld	a, b
   4034 17            [ 4]   83 	rla
   4035 3F            [ 4]   84 	ccf
   4036 1F            [ 4]   85 	rra
   4037 DE 80         [ 7]   86 	sbc	a, #0x80
   4039 30 13         [12]   87 	jr	NC,00103$
                             88 ;src/main.c:21: printf(i);
   403B 59            [ 4]   89 	ld	e, c
   403C 50            [ 4]   90 	ld	d, b
   403D C5            [11]   91 	push	bc
   403E D5            [11]   92 	push	de
   403F CD D8 40      [17]   93 	call	_printf
   4042 21 63 40      [10]   94 	ld	hl, #___str_1
   4045 E3            [19]   95 	ex	(sp),hl
   4046 CD D8 40      [17]   96 	call	_printf
   4049 F1            [10]   97 	pop	af
   404A C1            [10]   98 	pop	bc
                             99 ;src/main.c:23: i++;
   404B 03            [ 6]  100 	inc	bc
   404C 18 E2         [12]  101 	jr	00101$
   404E                     102 00103$:
                            103 ;src/main.c:27: printf("GAME START\r\n");
   404E 21 9E 40      [10]  104 	ld	hl, #___str_4
   4051 E5            [11]  105 	push	hl
   4052 CD D8 40      [17]  106 	call	_printf
   4055 F1            [10]  107 	pop	af
                            108 ;src/main.c:32: while (1);
   4056                     109 00105$:
   4056 18 FE         [12]  110 	jr	00105$
   4058                     111 ___str_0:
   4058 52 50 47 20 47 41   112 	.ascii "RPG GAME"
        4D 45
   4060 0D                  113 	.db 0x0d
   4061 0A                  114 	.db 0x0a
   4062 00                  115 	.db 0x00
   4063                     116 ___str_1:
   4063 0D                  117 	.db 0x0d
   4064 0A                  118 	.db 0x0a
   4065 00                  119 	.db 0x00
   4066                     120 ___str_2:
   4066 50 52 45 53 53 20   121 	.ascii "PRESS ENTER TO START "
        45 4E 54 45 52 20
        54 4F 20 53 54 41
        52 54 20
   407B 0D                  122 	.db 0x0d
   407C 0A                  123 	.db 0x0a
   407D 00                  124 	.db 0x00
   407E                     125 ___str_3:
   407E 4A 75 65 67 6F 20   126 	.ascii "Juego hecho por David Ventas "
        68 65 63 68 6F 20
        70 6F 72 20 44 61
        76 69 64 20 56 65
        6E 74 61 73 20
   409B 0D                  127 	.db 0x0d
   409C 0A                  128 	.db 0x0a
   409D 00                  129 	.db 0x00
   409E                     130 ___str_4:
   409E 47 41 4D 45 20 53   131 	.ascii "GAME START"
        54 41 52 54
   40A8 0D                  132 	.db 0x0d
   40A9 0A                  133 	.db 0x0a
   40AA 00                  134 	.db 0x00
                            135 	.area _CODE
                            136 	.area _INITIALIZER
                            137 	.area _CABS (ABS)
