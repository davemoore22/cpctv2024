;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module between
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _v_print_n
	.globl _v_print
	.globl _v_print_c
	.globl _v_wipe_scr
	.globl _v_clr_scr
	.globl _v_reset_pal
	.globl _v_blk_scr
	.globl _u_reset_clock
	.globl _u_clock_interrupt
	.globl _cpct_zx7b_decrunch_s
	.globl _cpct_isAnyKeyPressed
	.globl _cpct_scanKeyboard
	.globl _cpct_removeInterruptHandler
	.globl _cpct_setInterruptHandler
	.globl _b_scr_start
	.globl _b_scr_stop
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
;src/between.c:28: void b_scr_start(const screen_t type) {
;	---------------------------------
; Function b_scr_start
; ---------------------------------
_b_scr_start::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-9
	add	hl, sp
	ld	sp, hl
;src/between.c:31: bool kp = false;
	ld	-9 (ix), #0x00
;src/between.c:33: v_clr_scr();
	call	_v_clr_scr
;src/between.c:34: v_reset_pal();
	call	_v_reset_pal
;src/between.c:38: v_blk_scr();
	call	_v_blk_scr
;src/between.c:39: v_clr_scr();
	call	_v_clr_scr
;src/between.c:42: g_clock_on = false;
	ld	hl,#_g_clock_on + 0
	ld	(hl), #0x00
;src/between.c:44: if (type == SCR_GET_READY) {
	ld	a, 4 (ix)
	or	a, a
	jp	NZ, 00104$
;src/between.c:47: b_draw_transition();
	call	_b_draw_transition
;src/between.c:50: v_print(g_strings[70], pg_loc.x, pg_loc.y * LINE_P_H,
	ld	a, (#(_pg_loc + 0x0001) + 0)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	d, a
	ld	hl, #_pg_loc + 0
	ld	e, (hl)
	ld	bc, (#_g_strings + 140)
	ld	a, #0x01
	push	af
	inc	sp
	push	de
	push	bc
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/between.c:52: v_print(g_strings[71], pg_loc.x + 18, pg_loc.y * LINE_P_H,
	ld	a, (#(_pg_loc + 0x0001) + 0)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	d, a
	ld	a, (#_pg_loc + 0)
	add	a, #0x12
	ld	e, a
	ld	bc, (#_g_strings + 142)
	ld	a, #0x01
	push	af
	inc	sp
	push	de
	push	bc
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/between.c:54: v_print_n(g_current_round, pg_loc.x + 12, pg_loc.y * LINE_P_H, FONT_BLUE);
	ld	a, (#(_pg_loc + 0x0001) + 0)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	d, a
	ld	a, (#_pg_loc + 0)
	add	a, #0x0c
	ld	b, a
	ld	a,(#_g_current_round + 0)
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	-6 (ix), #0x00
	ld	-5 (ix), #0x00
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x00
	ld	-2 (ix), #0x00
	ld	-1 (ix), #0x00
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, b
	push	de
	ld	h, -1 (ix)
	ld	l, -2 (ix)
	push	hl
	ld	h, -3 (ix)
	ld	l, -4 (ix)
	push	hl
	ld	h, -5 (ix)
	ld	l, -6 (ix)
	push	hl
	ld	h, -7 (ix)
	ld	l, -8 (ix)
	push	hl
	call	_v_print_n
	ld	hl, #11
	add	hl, sp
	ld	sp, hl
;src/between.c:55: v_print_n(g_current_level, pg_loc.x + 29, pg_loc.y * LINE_P_H, FONT_BLUE);
	ld	a, (#(_pg_loc + 0x0001) + 0)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	d, a
	ld	a, (#_pg_loc + 0)
	add	a, #0x1d
	ld	b, a
	ld	a,(#_g_current_level + 0)
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	-6 (ix), #0x00
	ld	-5 (ix), #0x00
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x00
	ld	-2 (ix), #0x00
	ld	-1 (ix), #0x00
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, b
	push	de
	ld	h, -1 (ix)
	ld	l, -2 (ix)
	push	hl
	ld	h, -3 (ix)
	ld	l, -4 (ix)
	push	hl
	ld	h, -5 (ix)
	ld	l, -6 (ix)
	push	hl
	ld	h, -7 (ix)
	ld	l, -8 (ix)
	push	hl
	call	_v_print_n
	ld	hl, #11
	add	hl, sp
	ld	sp, hl
;src/between.c:56: v_print_c(g_strings[72], gr_loc.y * LINE_P_H, FONT_RED);
	ld	a, (#(_gr_loc + 0x0001) + 0)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	d, a
	ld	bc, (#_g_strings + 144)
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_v_print_c
	pop	af
	pop	af
	jr	00105$
00104$:
;src/between.c:58: } else if (type == SCR_GAME_OVER) {
	ld	a, 4 (ix)
	dec	a
	jr	NZ,00105$
;src/between.c:61: b_draw_transition();
	call	_b_draw_transition
;src/between.c:64: v_print_c(g_strings[75], pg_loc.y * LINE_P_H, FONT_BLUE);
	ld	a, (#(_pg_loc + 0x0001) + 0)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	d, a
	ld	bc, (#_g_strings + 150)
	ld	a, #0x01
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_v_print_c
	pop	af
	pop	af
;src/between.c:65: v_print_c(g_strings[73], gr_loc.y * LINE_P_H, FONT_RED);
	ld	a, (#(_gr_loc + 0x0001) + 0)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	d, a
	ld	bc, (#_g_strings + 146)
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_v_print_c
	pop	af
	pop	af
00105$:
;src/between.c:69: v_reset_pal();
	call	_v_reset_pal
;src/between.c:71: g_clock_on = false;
	ld	hl,#_g_clock_on + 0
	ld	(hl), #0x00
;src/between.c:72: u_reset_clock();
	call	_u_reset_clock
;src/between.c:73: cpct_setInterruptHandler(u_clock_interrupt);
	ld	hl, #_u_clock_interrupt
	call	_cpct_setInterruptHandler
;src/between.c:76: duration = type == SCR_GET_READY ? 5 : 10;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ,00112$
	ld	c, #0x05
	jr	00113$
00112$:
	ld	c, #0x0a
00113$:
	ld	b, #0x00
;src/between.c:77: g_clock_on = true;
	ld	hl,#_g_clock_on + 0
	ld	(hl), #0x01
;src/between.c:80: while ((!kp) && (g_clock.s < duration)) {
00107$:
	bit	0, -9 (ix)
	jr	NZ,00109$
	ld	hl, (#(_g_clock + 0x0002) + 0)
	cp	a, a
	sbc	hl, bc
	jr	NC,00109$
;src/between.c:83: cpct_scanKeyboard();
	push	bc
	call	_cpct_scanKeyboard
	call	_cpct_isAnyKeyPressed
	pop	bc
	xor	a, a
	cp	a, l
	rla
	ld	-9 (ix), a
	jr	00107$
00109$:
;src/between.c:88: g_clock_on = false;
	ld	hl,#_g_clock_on + 0
	ld	(hl), #0x00
;src/between.c:89: cpct_removeInterruptHandler();
	call	_cpct_removeInterruptHandler
;src/between.c:90: u_reset_clock();
	call	_u_reset_clock
	ld	sp, ix
	pop	ix
	ret
_pg_loc:
	.db #0x18	; 24
	.db #0x04	; 4
_gr_loc:
	.db #0x00	; 0
	.db #0x1c	; 28
_go_loc:
	.db #0x00	; 0
	.db #0x0b	; 11
_wd_loc:
	.db #0x00	; 0
	.db #0x0b	; 11
;src/between.c:94: void b_scr_stop(void) {
;	---------------------------------
; Function b_scr_stop
; ---------------------------------
_b_scr_stop::
;src/between.c:96: v_wipe_scr(true);
	ld	a, #0x01
	push	af
	inc	sp
	call	_v_wipe_scr
	inc	sp
	ret
;src/between.c:100: static void b_draw_transition(void) {
;	---------------------------------
; Function b_draw_transition
; ---------------------------------
_b_draw_transition:
;src/between.c:103: cpct_zx7b_decrunch_s(VIDEO_MEM_END, img_transition_end);
	ld	hl, #(_img_transition + 0x0263)
	push	hl
	ld	hl, #0xffff
	push	hl
	call	_cpct_zx7b_decrunch_s
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
