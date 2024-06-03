;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module victory
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _v_print
	.globl _v_wipe_scr
	.globl _v_clr_scr
	.globl _v_reset_pal_v
	.globl _v_reset_pal
	.globl _v_blk_scr
	.globl _StopMusic
	.globl _cpct_zx7b_decrunch_s
	.globl _cpct_isAnyKeyPressed
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard
	.globl _c_scr_start
	.globl _c_can_continue
	.globl _c_scr_stop
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_music:
	.ds 1
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
;src/victory.c:29: void c_scr_start(void) {
;	---------------------------------
; Function c_scr_start
; ---------------------------------
_c_scr_start::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/victory.c:31: bool kp = false;
	ld	c, #0x00
;src/victory.c:34: music = g_music_sfx;
	ld	a,(#_g_music_sfx + 0)
	ld	(#_music + 0),a
;src/victory.c:35: g_music_sfx = false;
	ld	hl,#_g_music_sfx + 0
	ld	(hl), #0x00
;src/victory.c:36: StopMusic();
	push	bc
	call	_StopMusic
	call	_v_clr_scr
	call	_v_reset_pal
	call	_v_blk_scr
	call	_v_clr_scr
	call	_c_draw_victory
	pop	bc
;src/victory.c:49: y = wd_loc.y;
	ld	a,(#_wd_loc + 1)
;src/victory.c:50: v_print(g_strings[110], wd_loc.x, y * LINE_P_H, FONT_WHITE);
	ld	-1 (ix), a
	ld	e, a
	add	a, a
	add	a, e
	add	a, a
	ld	-2 (ix), a
	ld	hl, #_wd_loc + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 220)
	push	bc
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, -2 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/victory.c:51: y = y + 2;
	ld	e, -1 (ix)
	inc	e
	inc	e
;src/victory.c:52: v_print(g_strings[111], wd_loc.x, y * LINE_P_H, FONT_WHITE);
	ld	a, e
	add	a, a
	add	a, e
	add	a, a
	ld	-2 (ix), a
	ld	hl, #_wd_loc + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 222)
	push	bc
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, -2 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/victory.c:54: y = yh_loc.y;
	ld	a,(#_yh_loc + 1)
;src/victory.c:55: v_print(g_strings[112], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	ld	-2 (ix), a
	ld	e, a
	add	a, a
	add	a, e
	add	a, a
	ld	-1 (ix), a
	ld	hl, #_yh_loc + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 224)
	push	bc
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/victory.c:56: y = y + 2;
	inc	-2 (ix)
	inc	-2 (ix)
;src/victory.c:57: v_print(g_strings[113], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	ld	a, -2 (ix)
	ld	e, a
	add	a, a
	add	a, e
	add	a, a
	ld	-1 (ix), a
	ld	hl, #_yh_loc + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 226)
	push	bc
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/victory.c:58: y = y + 2;
	inc	-2 (ix)
	inc	-2 (ix)
;src/victory.c:59: v_print(g_strings[114], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	ld	a, -2 (ix)
	ld	e, a
	add	a, a
	add	a, e
	add	a, a
	ld	-1 (ix), a
	ld	hl, #_yh_loc + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 228)
	push	bc
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/victory.c:60: y = y + 2;
	ld	a, -2 (ix)
	add	a, #0x02
;src/victory.c:61: v_print(g_strings[115], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	ld	-3 (ix), a
	ld	e, a
	add	a, a
	add	a, e
	add	a, a
	ld	-2 (ix), a
	ld	hl, #_yh_loc + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 230)
	push	bc
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, -2 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/victory.c:62: y = y + 4;
	ld	a, -3 (ix)
	add	a, #0x04
;src/victory.c:63: v_print(g_strings[116], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	ld	-2 (ix), a
	ld	e, a
	add	a, a
	add	a, e
	add	a, a
	ld	-1 (ix), a
	ld	hl, #_yh_loc + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 232)
	push	bc
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/victory.c:64: y = y + 2;
	ld	e, -2 (ix)
	inc	e
	inc	e
;src/victory.c:65: v_print(g_strings[117], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	ld	a, e
	add	a, a
	add	a, e
	add	a, a
	ld	-2 (ix), a
	ld	hl, #_yh_loc + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 234)
	push	bc
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, -2 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/victory.c:67: y = co_loc.y;
	ld	a, (#_co_loc+1)
;src/victory.c:68: v_print(g_strings[118], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	ld	-2 (ix), a
	ld	e, a
	add	a, a
	add	a, e
	add	a, a
	ld	-1 (ix), a
	ld	hl, #_yh_loc + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 236)
	push	bc
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/victory.c:69: y = y + 2;
	ld	e, -2 (ix)
	inc	e
	inc	e
;src/victory.c:70: v_print(g_strings[119], yh_loc.x, y * LINE_P_H, FONT_WHITE);
	ld	a, e
	add	a, a
	add	a, e
	add	a, a
	ld	-2 (ix), a
	ld	hl, #_yh_loc + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 238)
	push	bc
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, -2 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
	call	_v_reset_pal_v
	pop	bc
;src/victory.c:76: while (!kp) {
00101$:
	bit	0, c
	jr	NZ,00104$
;src/victory.c:79: cpct_scanKeyboard();
	call	_cpct_scanKeyboard
;src/victory.c:80: kp = cpct_isAnyKeyPressed();
	call	_cpct_isAnyKeyPressed
	xor	a, a
	cp	a, l
	rla
	ld	c, a
	jr	00101$
00104$:
	ld	sp, ix
	pop	ix
	ret
_wd_loc:
	.db #0x36	; 54	'6'
	.db #0x04	; 4
_yh_loc:
	.db #0x36	; 54	'6'
	.db #0x0b	; 11
_co_loc:
	.db #0x36	; 54	'6'
	.db #0x1c	; 28
;src/victory.c:85: bool c_can_continue(void) {
;	---------------------------------
; Function c_can_continue
; ---------------------------------
_c_can_continue::
;src/victory.c:89: while (!proceed) {
00105$:
;src/victory.c:91: cpct_scanKeyboard();
	call	_cpct_scanKeyboard
;src/victory.c:92: if (cpct_isKeyPressed(Key_Y))
	ld	hl, #0x0805
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00102$
;src/victory.c:93: return true;
	ld	l, #0x01
	ret
00102$:
;src/victory.c:94: if (cpct_isKeyPressed(Key_N))
	ld	hl, #0x4005
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00105$
;src/victory.c:95: return false;
	ld	l, #0x00
;src/victory.c:98: return false;
	ret
;src/victory.c:102: void c_scr_stop(void) {
;	---------------------------------
; Function c_scr_stop
; ---------------------------------
_c_scr_stop::
;src/victory.c:104: v_wipe_scr(true);
	ld	a, #0x01
	push	af
	inc	sp
	call	_v_wipe_scr
	inc	sp
;src/victory.c:106: g_music_sfx = music;
	ld	a,(#_music + 0)
	ld	(#_g_music_sfx + 0),a
	ret
;src/victory.c:110: static void c_draw_victory(void) {
;	---------------------------------
; Function c_draw_victory
; ---------------------------------
_c_draw_victory:
;src/victory.c:113: cpct_zx7b_decrunch_s(VIDEO_MEM_END, img_victory_end);
	ld	hl, #(_img_victory + 0x1150)
	push	hl
	ld	hl, #0xffff
	push	hl
	call	_cpct_zx7b_decrunch_s
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
