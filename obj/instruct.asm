;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module instruct
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _v_reset_timers
	.globl _v_interrupt
	.globl _v_draw_logo
	.globl _v_print_c
	.globl _v_wipe_scr
	.globl _v_clr_scr
	.globl _v_reset_pal
	.globl _v_blk_scr
	.globl _cpct_waitVSYNC
	.globl _cpct_isAnyKeyPressed
	.globl _cpct_removeInterruptHandler
	.globl _cpct_setInterruptHandler
	.globl _i_start
	.globl _i_stop
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
;src/instruct.c:27: void i_start(void) {
;	---------------------------------
; Function i_start
; ---------------------------------
_i_start::
	dec	sp
;src/instruct.c:29: bool kp = false;
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;src/instruct.c:32: v_blk_scr();
	call	_v_blk_scr
;src/instruct.c:33: v_clr_scr();
	call	_v_clr_scr
;src/instruct.c:36: v_draw_logo();
	call	_v_draw_logo
;src/instruct.c:37: i_draw_instructions();
	call	_i_draw_instructions
;src/instruct.c:38: v_reset_pal();
	call	_v_reset_pal
;src/instruct.c:40: v_reset_timers();
	call	_v_reset_timers
;src/instruct.c:41: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/instruct.c:42: cpct_setInterruptHandler(v_interrupt);
	ld	hl, #_v_interrupt
	call	_cpct_setInterruptHandler
;src/instruct.c:45: while (!kp)
00101$:
	ld	hl, #0+0
	add	hl, sp
	bit	0, (hl)
	jr	NZ,00104$
;src/instruct.c:46: kp = cpct_isAnyKeyPressed();
	call	_cpct_isAnyKeyPressed
	xor	a, a
	cp	a, l
	rla
	inc	sp
	push	af
	inc	sp
	jr	00101$
00104$:
	inc	sp
	ret
_title_loc:
	.db #0x01	; 1
	.db #0x08	; 8
_text_loc:
	.db #0x01	; 1
	.db #0x0b	; 11
_key_loc:
	.db #0x01	; 1
	.db #0x20	; 32
;src/instruct.c:50: void i_stop(void) {
;	---------------------------------
; Function i_stop
; ---------------------------------
_i_stop::
;src/instruct.c:52: v_wipe_scr(true);
	ld	a, #0x01
	push	af
	inc	sp
	call	_v_wipe_scr
	inc	sp
;src/instruct.c:53: v_blk_scr();
	call	_v_blk_scr
;src/instruct.c:54: v_clr_scr();
	call	_v_clr_scr
;src/instruct.c:55: cpct_removeInterruptHandler();
	call	_cpct_removeInterruptHandler
;src/instruct.c:56: v_reset_timers();
	jp  _v_reset_timers
;src/instruct.c:60: static void i_draw_instructions() {
;	---------------------------------
; Function i_draw_instructions
; ---------------------------------
_i_draw_instructions:
;src/instruct.c:62: v_print_c(g_strings[48], title_loc.y * LINE_P_H, FONT_RED);
	ld	a, (#(_title_loc + 0x0001) + 0)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	d, a
	ld	bc, (#_g_strings + 96)
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_v_print_c
	pop	af
	pop	af
;src/instruct.c:64: for (u8 y = 0; y < 14; y++)
	ld	c, #0x00
00103$:
	ld	a, c
	sub	a, #0x0e
	jr	NC,00101$
;src/instruct.c:66: ((y + text_loc.y) * LINE_P_H) + (y * 2), FONT_BLUE);
	ld	hl, #(_text_loc + 0x0001) + 0
	ld	l, (hl)
	add	hl, bc
	ld	e, l
	add	hl, hl
	add	hl, de
	add	hl, hl
	ld	a, c
	add	a, a
	add	a,l
	ld	b, a
;src/instruct.c:65: v_print_c(g_strings[y + 30],
	ld	e, c
	ld	d, #0x00
	ld	hl, #0x001e
	add	hl, de
	add	hl, hl
	ld	de, #_g_strings
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print_c
	pop	af
	pop	af
	pop	bc
;src/instruct.c:64: for (u8 y = 0; y < 14; y++)
	inc	c
	jr	00103$
00101$:
;src/instruct.c:68: v_print_c(g_strings[49], key_loc.y * LINE_P_H, FONT_RED);
	ld	a, (#(_key_loc + 0x0001) + 0)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	b, a
	ld	de, (#_g_strings + 98)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print_c
	pop	af
	pop	af
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
