;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module redefine
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _v_reset_timers
	.globl _v_interrupt
	.globl _v_draw_logo
	.globl _v_print
	.globl _v_print_c
	.globl _v_wipe_scr
	.globl _v_clr_scr
	.globl _v_reset_pal
	.globl _v_blk_scr
	.globl _u_map_char_to_key
	.globl _u_map_key_to_char
	.globl _u_wait
	.globl _cpct_waitVSYNC
	.globl _cpct_getKeypressedAsASCII
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_f
	.globl _cpct_removeInterruptHandler
	.globl _cpct_setInterruptHandler
	.globl _controls
	.globl _r_start
	.globl _r_stop
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_controls::
	.ds 18
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
;src/redefine.c:30: void r_start(void) {
;	---------------------------------
; Function r_start
; ---------------------------------
_r_start::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/redefine.c:38: v_blk_scr();
	call	_v_blk_scr
;src/redefine.c:39: v_clr_scr();
	call	_v_clr_scr
;src/redefine.c:42: for (u8 i = 0; i < 9; i++)
	ld	bc, #_controls+0
	ld	e, #0x00
00132$:
	ld	a, e
	sub	a, #0x09
	jr	NC,00101$
;src/redefine.c:43: controls[i] = g_controls[i];
	ld	l, e
	ld	h, #0x00
	add	hl, hl
	push	hl
	pop	iy
	add	iy, bc
	ld	a, #<(_g_controls)
	add	a, l
	ld	l, a
	ld	a, #>(_g_controls)
	adc	a, h
	ld	h, a
	ld	a, (hl)
	inc	hl
	ld	d, (hl)
	ld	0 (iy), a
	ld	1 (iy), d
;src/redefine.c:42: for (u8 i = 0; i < 9; i++)
	inc	e
	jr	00132$
00101$:
;src/redefine.c:46: v_draw_logo();
	push	bc
	call	_v_draw_logo
	xor	a, a
	push	af
	inc	sp
	call	_h_draw_redefine
	inc	sp
	call	_v_reset_pal
	call	_v_reset_timers
	call	_cpct_waitVSYNC
	ld	hl, #_v_interrupt
	call	_cpct_setInterruptHandler
	pop	bc
;src/redefine.c:55: while (current <= KEY_PAUSE) {
	ld	e, #0x00
00127$:
	ld	a, #0x04
	sub	a, e
	jp	C, 00129$
;src/redefine.c:58: cpct_scanKeyboard_f();
	push	bc
	push	de
	call	_cpct_scanKeyboard_f
	call	_cpct_getKeypressedAsASCII
	pop	de
	pop	bc
	ld	d, l
;src/redefine.c:62: if ((ascii != 0) && (ascii >= 65) && (ascii <= 122)) {
	ld	a, d
	or	a, a
	jr	Z,00121$
	ld	a, d
	sub	a, #0x41
	jr	C,00121$
	ld	a, #0x7a
	sub	a, d
	ld	a, #0x00
	rla
	ld	l, a
	bit	0, l
	jr	NZ,00121$
;src/redefine.c:64: if (ascii >= 'a' && ascii <= 'z')
	ld	a, d
	sub	a, #0x61
	jr	C,00103$
	bit	0, l
	jr	NZ,00103$
;src/redefine.c:65: ascii = ascii - 32;
	ld	a, d
	add	a, #0xe0
	ld	d, a
00103$:
;src/redefine.c:67: key = u_map_char_to_key(ascii);
	push	bc
	push	de
	push	de
	inc	sp
	call	_u_map_char_to_key
	inc	sp
	pop	de
	pop	bc
	jr	00122$
00121$:
;src/redefine.c:71: if (cpct_isKeyPressed(Key_Esc))
	push	bc
	push	de
	ld	hl, #0x0408
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
;src/redefine.c:72: return;	
	jp	NZ,00137$
;src/redefine.c:73: else if (cpct_isKeyPressed(Key_CursorLeft))
	push	bc
	push	de
	ld	hl, #0x0101
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00115$
;src/redefine.c:74: key = Key_CursorLeft;
	ld	hl, #0x0101
	jr	00122$
00115$:
;src/redefine.c:75: else if (cpct_isKeyPressed(Key_CursorRight))
	push	bc
	push	de
	ld	hl, #0x0200
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00112$
;src/redefine.c:76: key = Key_CursorRight;
	ld	hl, #0x0200
	jr	00122$
00112$:
;src/redefine.c:77: else if (cpct_isKeyPressed(Key_CursorUp))
	push	bc
	push	de
	ld	hl, #0x0100
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00109$
;src/redefine.c:78: key = Key_CursorUp;
	ld	hl, #0x0100
	jr	00122$
00109$:
;src/redefine.c:79: else if (cpct_isKeyPressed(Key_CursorDown))
	push	bc
	push	de
	ld	hl, #0x0400
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00106$
;src/redefine.c:80: key = Key_CursorDown;
	ld	hl, #0x0400
	jr	00122$
00106$:
;src/redefine.c:82: key = controls[0];
	ld	hl, (#_controls + 0)
00122$:
;src/redefine.c:85: if (!r_is_control_used(key)) {
	push	hl
	push	bc
	push	de
	push	hl
	call	_r_is_control_used
	pop	af
	ld	a, l
	pop	de
	pop	bc
	pop	hl
	bit	0, a
	jp	NZ, 00127$
;src/redefine.c:86: controls[current] = key;
	ld	-2 (ix), e
	ld	-1 (ix), #0x00
	sla	-2 (ix)
	rl	-1 (ix)
	ld	iy, #_controls
	push	bc
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	add	iy, bc
	pop	bc
	ld	0 (iy), l
	ld	1 (iy), h
;src/redefine.c:87: ++current;
	inc	e
;src/redefine.c:88: cpct_waitVSYNC();
	push	bc
	push	de
	call	_cpct_waitVSYNC
	pop	de
	push	de
	ld	a, e
	push	af
	inc	sp
	call	_h_draw_redefine
	inc	sp
	ld	hl, #0x03e8
	push	hl
	call	_u_wait
	pop	af
	pop	de
	pop	bc
	jp	00127$
00129$:
;src/redefine.c:94: u_wait(1000);
	push	bc
	ld	hl, #0x03e8
	push	hl
	call	_u_wait
	pop	af
	pop	bc
;src/redefine.c:96: for (u8 i = 0; i < 9; i++)
	ld	c, #0x00
00135$:
	ld	a, c
	sub	a, #0x09
	jr	NC,00137$
;src/redefine.c:97: g_controls[i] = controls[i];
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ex	de,hl
	ld	iy, #_g_controls
	add	iy, de
	ld	hl, #_controls
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	b, (hl)
	ld	0 (iy), e
	ld	1 (iy), b
;src/redefine.c:96: for (u8 i = 0; i < 9; i++)
	inc	c
	jr	00135$
00137$:
	ld	sp, ix
	pop	ix
	ret
_title_loc:
	.db #0x01	; 1
	.db #0x08	; 8
_redefine_loc:
	.db #0x12	; 18
	.db #0x0f	; 15
_instruct_loc:
	.db #0x01	; 1
	.db #0x1e	; 30
;src/redefine.c:101: void r_stop(void) {
;	---------------------------------
; Function r_stop
; ---------------------------------
_r_stop::
;src/redefine.c:103: v_wipe_scr(true);
	ld	a, #0x01
	push	af
	inc	sp
	call	_v_wipe_scr
	inc	sp
;src/redefine.c:104: v_clr_scr();
	call	_v_clr_scr
;src/redefine.c:105: cpct_removeInterruptHandler();
	call	_cpct_removeInterruptHandler
;src/redefine.c:106: v_reset_timers();
	jp  _v_reset_timers
;src/redefine.c:110: static void h_draw_redefine(const control_t current) {
;	---------------------------------
; Function h_draw_redefine
; ---------------------------------
_h_draw_redefine:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-13
	add	hl, sp
	ld	sp, hl
;src/redefine.c:112: u8 y = redefine_loc.y * LINE_P_H;
	ld	a, (#_redefine_loc + 1)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	c, a
;src/redefine.c:114: char key[2] = "", ascii;
	ld	hl, #0x0002
	add	hl, sp
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	(hl), #0x00
	ld	a, -8 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0x00
;src/redefine.c:118: v_print_c(g_strings[50], title_loc.y * LINE_P_H, FONT_RED);
	ld	a, (#(_title_loc + 0x0001) + 0)
	ld	e, a
	add	a, a
	add	a, e
	add	a, a
	ld	b, a
	ld	de, (#_g_strings + 100)
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print_c
	pop	af
	pop	af
	pop	bc
;src/redefine.c:120: for (u8 i = KEY_UP; i < JOY_UP; i++) {
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	-9 (ix), c
	ld	-13 (ix), #0x00
00115$:
	ld	a, -13 (ix)
	sub	a, #0x05
	jp	NC, 00113$
;src/redefine.c:122: str = g_strings[i + 51];
	ld	a, -13 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -4 (ix)
	add	a, #0x33
	ld	l, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	h, a
	add	hl, hl
	ld	de, #_g_strings
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;src/redefine.c:123: col = i == current ? FONT_WHITE : FONT_BLUE;
	ld	a, -13 (ix)
	sub	a, 4 (ix)
	jr	NZ,00119$
	ld	e, #0x02
	jr	00120$
00119$:
	ld	e, #0x01
00120$:
	ld	-12 (ix), e
;src/redefine.c:124: v_print(str, redefine_loc.x, y, col);
	ld	hl, #_redefine_loc + 0
	ld	d, (hl)
	ld	h, -12 (ix)
	ld	l, -9 (ix)
	push	hl
	push	de
	inc	sp
	push	bc
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/redefine.c:125: v_print("     ", redefine_loc.x + 35, y, col);
	ld	a, (#_redefine_loc + 0)
	add	a, #0x23
	ld	b, a
	ld	h, -12 (ix)
	ld	l, -9 (ix)
	push	hl
	push	bc
	inc	sp
	ld	hl, #___str_1
	push	hl
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/redefine.c:127: if (controls[i] == Key_CursorLeft) {
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	add	hl, hl
	ld	de, #_controls
	add	hl, de
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	dec	a
	jr	NZ,00111$
	ld	a, -3 (ix)
	dec	a
	jr	NZ,00111$
;src/redefine.c:128: v_print(g_strings[64], redefine_loc.x + 35, y, col);
	ld	a, (#_redefine_loc + 0)
	add	a, #0x23
	ld	d, a
	ld	bc, (#_g_strings + 128)
	ld	h, -12 (ix)
	ld	l, -9 (ix)
	push	hl
	push	de
	inc	sp
	push	bc
	call	_v_print
	pop	af
	pop	af
	inc	sp
	jp	00112$
00111$:
;src/redefine.c:129: } else if (controls[i] == Key_CursorRight) {
	ld	a, -4 (ix)
	or	a, a
	jr	NZ,00108$
	ld	a, -3 (ix)
	sub	a, #0x02
	jr	NZ,00108$
;src/redefine.c:130: v_print(g_strings[65], redefine_loc.x + 35, y, col);
	ld	a, (#_redefine_loc + 0)
	add	a, #0x23
	ld	e, a
	ld	bc, (#_g_strings + 130)
	ld	a, -12 (ix)
	push	af
	inc	sp
	ld	d, -9 (ix)
	push	de
	push	bc
	call	_v_print
	pop	af
	pop	af
	inc	sp
	jp	00112$
00108$:
;src/redefine.c:131: } else if (controls[i] == Key_CursorUp) {
	ld	a, -4 (ix)
	or	a, a
	jr	NZ,00105$
	ld	a, -3 (ix)
	dec	a
	jr	NZ,00105$
;src/redefine.c:132: v_print(g_strings[62], redefine_loc.x + 35, y, col);
	ld	a, (#_redefine_loc + 0)
	add	a, #0x23
	ld	d, a
	ld	bc, (#_g_strings + 124)
	ld	h, -12 (ix)
	ld	l, -9 (ix)
	push	hl
	push	de
	inc	sp
	push	bc
	call	_v_print
	pop	af
	pop	af
	inc	sp
	jr	00112$
00105$:
;src/redefine.c:133: } else if (controls[i] == Key_CursorDown) {
	ld	a, -4 (ix)
	or	a, a
	jr	NZ,00102$
	ld	a, -3 (ix)
	sub	a, #0x04
	jr	NZ,00102$
;src/redefine.c:134: v_print(g_strings[63], redefine_loc.x + 35, y, col);
	ld	a, (#_redefine_loc + 0)
	add	a, #0x23
	ld	d, a
	ld	bc, (#_g_strings + 126)
	ld	h, -12 (ix)
	ld	l, -9 (ix)
	push	hl
	push	de
	inc	sp
	push	bc
	call	_v_print
	pop	af
	pop	af
	inc	sp
	jr	00112$
00102$:
;src/redefine.c:136: ascii = u_map_key_to_char(controls[i]);
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_u_map_key_to_char
	pop	af
	ld	c, l
;src/redefine.c:137: key[0] = ascii;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl), c
;src/redefine.c:138: key[1] = '\0';
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0x00
;src/redefine.c:139: v_print(key, redefine_loc.x + 43, y, col);
	ld	a, (#_redefine_loc + 0)
	add	a, #0x2b
	ld	d, a
	ld	c,-6 (ix)
	ld	b,-5 (ix)
	ld	h, -12 (ix)
	ld	l, -9 (ix)
	push	hl
	push	de
	inc	sp
	push	bc
	call	_v_print
	pop	af
	pop	af
	inc	sp
00112$:
;src/redefine.c:142: y += LINE_P_H * 2;
	ld	a, -9 (ix)
	add	a, #0x0c
	ld	-9 (ix), a
;src/redefine.c:120: for (u8 i = KEY_UP; i < JOY_UP; i++) {
	inc	-13 (ix)
	jp	00115$
00113$:
;src/redefine.c:145: str = g_strings[current + 56];
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	hl, #0x0038
	add	hl, bc
	add	hl, hl
	ld	de, #_g_strings
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;src/redefine.c:146: v_print_c(str, instruct_loc.y * LINE_P_H, FONT_RED);
	ld	a, (#(_instruct_loc + 0x0001) + 0)
	ld	e, a
	add	a, a
	add	a, e
	add	a, a
	ld	d, a
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_v_print_c
	pop	af
	pop	af
;src/redefine.c:147: str = g_strings[66];
	ld	bc, (#_g_strings + 132)
;src/redefine.c:148: v_print_c(str, (instruct_loc.y + 2) * LINE_P_H, FONT_RED);
	ld	a, (#(_instruct_loc + 0x0001) + 0)
	add	a, #0x02
	ld	e, a
	add	a, a
	add	a, e
	add	a, a
	ld	d, a
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_v_print_c
	ld	sp,ix
	pop	ix
	ret
___str_1:
	.ascii "     "
	.db 0x00
;src/redefine.c:152: static bool r_is_control_used(const cpct_keyID control) {
;	---------------------------------
; Function r_is_control_used
; ---------------------------------
_r_is_control_used:
	push	ix
	ld	ix,#0
	add	ix,sp
;src/redefine.c:154: for (control_t i = KEY_UP; i < JOY_UP; i++) {
	ld	c, #0x00
00105$:
	ld	a, c
	sub	a, #0x05
	jr	NC,00103$
;src/redefine.c:155: if (controls[i] == control)
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ld	de, #_controls
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, 4 (ix)
	sub	a, e
	jr	NZ,00106$
	ld	a, 5 (ix)
	sub	a, d
	jr	NZ,00106$
;src/redefine.c:156: return true;
	ld	l, #0x01
	jr	00107$
00106$:
;src/redefine.c:154: for (control_t i = KEY_UP; i < JOY_UP; i++) {
	inc	c
	jr	00105$
00103$:
;src/redefine.c:159: return false;
	ld	l, #0x00
00107$:
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
