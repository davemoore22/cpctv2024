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
	.globl _t_stop
	.globl _t_start
	.globl _r_stop
	.globl _r_start
	.globl _i_stop
	.globl _i_start
	.globl _h_stop
	.globl _h_start
	.globl _g_stop
	.globl _g_start
	.globl _g_setup
	.globl _v_init
	.globl _InitSound
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
;src/main.c:22: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
;src/main.c:24: bool quit = false;
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;src/main.c:28: g_setup();
	call	_g_setup
;src/main.c:31: v_init();
	call	_v_init
;src/main.c:34: InitSound();
	call	_InitSound
;src/main.c:40: key = t_start(false);
	xor	a, a
	push	af
	inc	sp
	call	_t_start
	inc	sp
;src/main.c:43: while (!quit) {
00112$:
	ld	iy, #0
	add	iy, sp
	bit	0, 0 (iy)
	jp	NZ, 00114$
;src/main.c:44: quit = key == Key_0;
	ld	a, l
	sub	a, #0x04
	jr	NZ,00147$
	ld	a, h
	dec	a
	jr	NZ,00147$
	ld	a,#0x01
	jr	00148$
00147$:
	xor	a,a
00148$:
	inc	sp
	push	af
	inc	sp
;src/main.c:46: if (key == Key_1) {
	ld	a, l
	sub	a, #0x08
	jr	NZ,00110$
	ld	a, h
	dec	a
	jr	NZ,00110$
;src/main.c:49: t_stop();
	call	_t_stop
;src/main.c:50: r_start();
	call	_r_start
;src/main.c:51: r_stop();
	call	_r_stop
;src/main.c:54: key = t_start(false);
	xor	a, a
	push	af
	inc	sp
	call	_t_start
	inc	sp
	jr	00112$
00110$:
;src/main.c:55: } else if (key == Key_3) {
	ld	a, l
	sub	a, #0x07
	jr	NZ,00107$
	ld	a, h
	sub	a, #0x02
	jr	NZ,00107$
;src/main.c:58: t_stop();
	call	_t_stop
;src/main.c:59: h_start();
	call	_h_start
;src/main.c:60: h_stop();
	call	_h_stop
;src/main.c:63: key = t_start(false);
	xor	a, a
	push	af
	inc	sp
	call	_t_start
	inc	sp
	jr	00112$
00107$:
;src/main.c:64: } else if (key == Key_4) {
	ld	a, l
	sub	a, #0x07
	jr	NZ,00104$
	ld	a, h
	dec	a
	jr	NZ,00104$
;src/main.c:67: t_stop();
	call	_t_stop
;src/main.c:68: i_start();
	call	_i_start
;src/main.c:69: i_stop();
	call	_i_stop
;src/main.c:72: key = t_start(false);
	xor	a, a
	push	af
	inc	sp
	call	_t_start
	inc	sp
	jr	00112$
00104$:
;src/main.c:73: } else if (key == Key_9) {
	ld	a, l
	sub	a, #0x04
	jr	NZ,00112$
	ld	a, h
	sub	a, #0x02
	jr	NZ,00112$
;src/main.c:76: t_stop();
	call	_t_stop
;src/main.c:77: g_start();
	call	_g_start
;src/main.c:78: g_stop();
	call	_g_stop
;src/main.c:81: key = t_start(false);
	xor	a, a
	push	af
	inc	sp
	call	_t_start
	inc	sp
	jp	00112$
00114$:
;src/main.c:86: if (quit)
	ld	hl, #0+0
	add	hl, sp
	bit	0, (hl)
	jr	Z,00117$
;src/main.c:87: t_stop();
	call	_t_stop
00117$:
	inc	sp
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
