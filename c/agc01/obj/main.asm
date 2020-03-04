;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _printf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/main.c:9: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	push	ix
	push	af
;src/main.c:12: printf("RPG GAME\r\n");
	ld	hl, #___str_0
	push	hl
	call	_printf
;src/main.c:13: printf("\r\n");
	ld	hl, #___str_1
	ex	(sp),hl
	call	_printf
;src/main.c:14: printf("PRESS ENTER TO START \r\n");
	ld	hl, #___str_2
	ex	(sp),hl
	call	_printf
;src/main.c:15: printf("\r\n");
	ld	hl, #___str_1
	ex	(sp),hl
	call	_printf
;src/main.c:16: printf("Juego hecho por David Ventas \r\n");
	ld	hl, #___str_3
	ex	(sp),hl
	call	_printf
;src/main.c:17: printf("\r\n");
	ld	hl, #___str_1
	ex	(sp),hl
	call	_printf
	pop	af
;src/main.c:20: while (i < 10) {
	ld	c,a
	ld	b,a
00101$:
	ld	a, c
	sub	a, #0x0a
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00103$
;src/main.c:21: printf(i);
	ld	e, c
	ld	d, b
	push	bc
	push	de
	call	_printf
	ld	hl, #___str_1
	ex	(sp),hl
	call	_printf
	pop	af
	pop	bc
;src/main.c:23: i++;
	inc	bc
	jr	00101$
00103$:
;src/main.c:27: printf("GAME START\r\n");
	ld	hl, #___str_4
	push	hl
	call	_printf
	pop	af
;src/main.c:32: while (1);
00105$:
	jr	00105$
___str_0:
	.ascii "RPG GAME"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_1:
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "PRESS ENTER TO START "
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_3:
	.ascii "Juego hecho por David Ventas "
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_4:
	.ascii "GAME START"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
