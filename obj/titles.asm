;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module titles
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
	.globl _StopMusic
	.globl _PlayMusic
	.globl _cpct_isKeyPressed
	.globl _cpct_removeInterruptHandler
	.globl _cpct_setInterruptHandler
	.globl _t_in_titles
	.globl _t_start
	.globl _t_stop
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_t_in_titles::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_int_idx:
	.ds 1
_pal_idx:
	.ds 1
_frame_c:
	.ds 2
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
;src/titles.c:37: cpct_keyID t_start(bool skip) {
;	---------------------------------
; Function t_start
; ---------------------------------
_t_start::
	push	af
;src/titles.c:40: u16 count = 0;
	ld	hl, #0x0000
	ex	(sp), hl
;src/titles.c:43: v_blk_scr();
	call	_v_blk_scr
;src/titles.c:44: v_clr_scr();
	call	_v_clr_scr
;src/titles.c:46: t_in_titles = true;
	ld	hl,#_t_in_titles + 0
	ld	(hl), #0x01
;src/titles.c:49: PlayMusic(0);
	xor	a, a
	push	af
	inc	sp
	call	_PlayMusic
	inc	sp
;src/titles.c:52: if (!skip) {
	ld	hl, #4+0
	add	hl, sp
	bit	0, (hl)
	jp	NZ, 00128$
;src/titles.c:54: v_draw_logo();
	call	_v_draw_logo
;src/titles.c:55: t_draw_titles();
	call	_t_draw_titles
;src/titles.c:56: t_draw_menu();
	call	_t_draw_menu
;src/titles.c:57: v_reset_pal();
	call	_v_reset_pal
;src/titles.c:60: v_reset_timers();
	call	_v_reset_timers
;src/titles.c:61: cpct_setInterruptHandler(v_interrupt);
	ld	hl, #_v_interrupt
	call	_cpct_setInterruptHandler
;src/titles.c:67: while (1) {
00125$:
;src/titles.c:68: ++count;
	ld	iy, #0
	add	iy, sp
	inc	0 (iy)
	jr	NZ,00176$
	inc	1 (iy)
00176$:
;src/titles.c:71: if (count % 200 == 0) {
	ld	hl, #0x00c8
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	__moduint
	pop	af
	pop	af
	ld	a, h
	or	a,l
	jr	NZ,00121$
;src/titles.c:72: if (cpct_isKeyPressed(Key_0)) {
	ld	hl, #0x0104
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00118$
;src/titles.c:75: return Key_0;
	ld	hl, #0x0104
	jp	00130$
00118$:
;src/titles.c:77: } else if (cpct_isKeyPressed(Key_1)) {
	ld	hl, #0x0108
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00115$
;src/titles.c:80: return Key_1;
	ld	hl, #0x0108
	jr	00130$
00115$:
;src/titles.c:82: } else if (cpct_isKeyPressed(Key_2)) {
	ld	hl, #0x0208
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00112$
;src/titles.c:85: g_music_sfx = !g_music_sfx;
	ld	iy, #_g_music_sfx
	ld	a, 0 (iy)
	xor	a, #0x01
	ld	0 (iy), a
;src/titles.c:86: if (!g_music_sfx)
	bit	0, 0 (iy)
	jr	NZ,00121$
;src/titles.c:87: StopMusic();
	call	_StopMusic
	jr	00121$
00112$:
;src/titles.c:89: } else if (cpct_isKeyPressed(Key_3)) {
	ld	hl, #0x0207
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00109$
;src/titles.c:92: return Key_3;
	ld	hl, #0x0207
	jr	00130$
00109$:
;src/titles.c:94: } else if (cpct_isKeyPressed(Key_4)) {
	ld	hl, #0x0107
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00106$
;src/titles.c:97: return Key_4;
	ld	hl, #0x0107
	jr	00130$
00106$:
;src/titles.c:99: } else if (cpct_isKeyPressed(Key_9)) {
	ld	hl, #0x0204
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00121$
;src/titles.c:102: return Key_9;
	ld	hl, #0x0204
	jr	00130$
00121$:
;src/titles.c:106: if (count > 30002)
	ld	a, #0x32
	ld	iy, #0
	add	iy, sp
	cp	a, 0 (iy)
	ld	a, #0x75
	sbc	a, 1 (iy)
	jp	NC, 00125$
;src/titles.c:107: count = 0;
	ld	hl, #0x0000
	ex	(sp), hl
	jp	00125$
00128$:
;src/titles.c:112: return Key_9;
	ld	hl, #0x0204
00130$:
	pop	af
	ret
_text_loc:
	.db #0x01	; 1
	.db #0x08	; 8
_blurb_loc:
	.db #0x01	; 1
	.db #0x19	; 25
_menu_loc:
	.db #0x0e	; 14
	.db #0x0c	; 12
_menu_key_x:
	.db #0x15	; 21
_menu_name_x:
	.db #0x1a	; 26
;src/titles.c:117: void t_stop(void) {
;	---------------------------------
; Function t_stop
; ---------------------------------
_t_stop::
;src/titles.c:119: v_wipe_scr(true);
	ld	a, #0x01
	push	af
	inc	sp
	call	_v_wipe_scr
	inc	sp
;src/titles.c:120: v_blk_scr();
	call	_v_blk_scr
;src/titles.c:121: v_clr_scr();
	call	_v_clr_scr
;src/titles.c:122: cpct_removeInterruptHandler();
	call	_cpct_removeInterruptHandler
;src/titles.c:123: StopMusic();
	call	_StopMusic
;src/titles.c:124: t_in_titles = false;
	ld	hl,#_t_in_titles + 0
	ld	(hl), #0x00
;src/titles.c:125: v_reset_timers();
	jp  _v_reset_timers
;src/titles.c:129: static void t_draw_titles(void) {
;	---------------------------------
; Function t_draw_titles
; ---------------------------------
_t_draw_titles:
;src/titles.c:131: u8 y = LINE_P_H * text_loc.y;
	ld	a, (#(_text_loc + 0x0001) + 0)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	b, a
;src/titles.c:132: v_print_c(g_strings[0], y, FONT_RED);
	ld	de, (#_g_strings + 0)
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
;src/titles.c:133: y = y + (LINE_P_H) + 2;
	ld	a, b
	add	a, #0x08
	ld	d, a
;src/titles.c:134: v_print_c(g_strings[1], y, FONT_WHITE);
	ld	bc, (#_g_strings + 2)
	ld	a, #0x02
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_v_print_c
	pop	af
	pop	af
;src/titles.c:135: y = LINE_P_H * blurb_loc.y;
	ld	a, (#(_blurb_loc + 0x0001) + 0)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	b, a
;src/titles.c:136: v_print_c(g_strings[2], y, FONT_RED);
	ld	de, (#_g_strings + 4)
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
;src/titles.c:137: y = y + (LINE_P_H) + 2;
	ld	a, b
	add	a, #0x08
	ld	b, a
;src/titles.c:138: v_print_c(g_strings[3], y, FONT_WHITE);
	ld	de, (#_g_strings + 6)
	push	bc
	ld	a, #0x02
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_print_c
	pop	af
	pop	af
	pop	bc
;src/titles.c:139: y = y + (LINE_P_H) + 2;
	ld	a, b
	add	a, #0x08
	ld	d, a
;src/titles.c:140: v_print_c(g_strings[4], y, FONT_WHITE);
	ld	bc, (#_g_strings + 8)
	ld	a, #0x02
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_v_print_c
	pop	af
	pop	af
;src/titles.c:142: v_print_c(g_strings[5], y, FONT_RED);
	ld	hl, (#_g_strings + 10)
	ld	bc, #0x00b4
	push	bc
	push	hl
	call	_v_print_c
	pop	af
	pop	af
;src/titles.c:144: v_print_c(g_strings[6], y, FONT_WHITE);
	ld	hl, (#_g_strings + 12)
	ld	bc, #0x02bc
	push	bc
	push	hl
	call	_v_print_c
	pop	af
	pop	af
	ret
;src/titles.c:148: static void t_draw_menu(void) {
;	---------------------------------
; Function t_draw_menu
; ---------------------------------
_t_draw_menu:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/titles.c:150: int ly = menu_loc.y;
	ld	a, (#(_menu_loc + 0x0001) + 0)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
;src/titles.c:154: t_draw_opt(g_strings[10], g_strings[16], ly);
	ld	e, -2 (ix)
	ld	bc, (#_g_strings + 32)
	ld	hl, (#_g_strings + 20)
	ld	a, e
	push	af
	inc	sp
	push	bc
	push	hl
	call	_t_draw_opt
	pop	af
	pop	af
	inc	sp
;src/titles.c:155: t_draw_opt(g_strings[11], g_strings[17], ly += 2);
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	inc	de
	inc	de
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	bc, (#_g_strings + 34)
	ld	hl, (#_g_strings + 22)
	ld	a, e
	push	af
	inc	sp
	push	bc
	push	hl
	call	_t_draw_opt
	pop	af
	pop	af
	inc	sp
;src/titles.c:156: t_draw_opt(g_strings[12], g_strings[18], ly += 2);
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	inc	de
	inc	de
	inc	sp
	inc	sp
	push	de
	ld	bc, (#_g_strings + 36)
	ld	hl, (#_g_strings + 24)
	ld	a, e
	push	af
	inc	sp
	push	bc
	push	hl
	call	_t_draw_opt
	pop	af
	pop	af
	inc	sp
;src/titles.c:157: t_draw_opt(g_strings[13], g_strings[19], ly += 2);
	pop	de
	push	de
	inc	de
	inc	de
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	bc, (#_g_strings + 38)
	ld	hl, (#_g_strings + 26)
	ld	a, e
	push	af
	inc	sp
	push	bc
	push	hl
	call	_t_draw_opt
	pop	af
	pop	af
	inc	sp
;src/titles.c:158: t_draw_opt(g_strings[14], g_strings[20], ly += 2);
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	inc	de
	inc	de
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	bc, (#_g_strings + 40)
	ld	hl, (#_g_strings + 28)
	ld	a, e
	push	af
	inc	sp
	push	bc
	push	hl
	call	_t_draw_opt
	pop	af
	pop	af
	inc	sp
;src/titles.c:159: t_draw_opt(g_strings[15], g_strings[21], ly += 2);
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	inc	de
	inc	de
	ld	bc, (#_g_strings + 42)
	ld	hl, (#_g_strings + 30)
	ld	a, e
	push	af
	inc	sp
	push	bc
	push	hl
	call	_t_draw_opt
	ld	sp,ix
	pop	ix
	ret
;src/titles.c:163: static void t_draw_opt(const char *key, const char *str, const u8 y) {
;	---------------------------------
; Function t_draw_opt
; ---------------------------------
_t_draw_opt:
;src/titles.c:166: v_print(key, menu_key_x, y * LINE_P_H, FONT_RED);
	ld	hl, #6+0
	add	hl, sp
	ld	a, (hl)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	d, a
	ld	hl,#_menu_key_x + 0
	ld	b, (hl)
	push	de
	xor	a, a
	push	af
	inc	sp
	ld	e, b
	push	de
	ld	hl, #7
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_v_print
	pop	af
	pop	af
	inc	sp
	pop	de
;src/titles.c:167: v_print(str, menu_name_x, y * LINE_P_H, FONT_BLUE);
	ld	hl,#_menu_name_x + 0
	ld	b, (hl)
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, b
	push	de
	ld	hl, #7
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_v_print
	pop	af
	pop	af
	inc	sp
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__int_idx:
	.db #0x00	; 0
__xinit__pal_idx:
	.db #0x00	; 0
__xinit__frame_c:
	.dw #0x0000
	.area _CABS (ABS)
