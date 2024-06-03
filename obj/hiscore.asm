;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module hiscore
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _v_reset_timers
	.globl _v_interrupt
	.globl _v_draw_logo
	.globl _v_print_n
	.globl _v_print
	.globl _v_print_c
	.globl _v_wipe_scr
	.globl _v_clr_scr
	.globl _v_reset_pal
	.globl _v_blk_scr
	.globl _u_get_width
	.globl _u_sort_hiscores
	.globl _cpct_waitVSYNC
	.globl _cpct_getKeypressedAsASCII
	.globl _cpct_isAnyKeyPressed
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard
	.globl _cpct_removeInterruptHandler
	.globl _cpct_setInterruptHandler
	.globl _h_start
	.globl _h_enter_start
	.globl _h_stop
	.globl _h_insert
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
;src/hiscore.c:30: void h_start(void) {
;	---------------------------------
; Function h_start
; ---------------------------------
_h_start::
	dec	sp
;src/hiscore.c:32: bool kp = false;
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;src/hiscore.c:35: v_blk_scr();
	call	_v_blk_scr
;src/hiscore.c:36: v_clr_scr();
	call	_v_clr_scr
;src/hiscore.c:39: v_draw_logo();
	call	_v_draw_logo
;src/hiscore.c:40: h_draw_hiscores();
	call	_h_draw_hiscores
;src/hiscore.c:41: v_reset_pal();
	call	_v_reset_pal
;src/hiscore.c:43: v_reset_timers();
	call	_v_reset_timers
;src/hiscore.c:44: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/hiscore.c:45: cpct_setInterruptHandler(v_interrupt);
	ld	hl, #_v_interrupt
	call	_cpct_setInterruptHandler
;src/hiscore.c:48: while (!kp)
00101$:
	ld	hl, #0+0
	add	hl, sp
	bit	0, (hl)
	jr	NZ,00104$
;src/hiscore.c:49: kp = cpct_isAnyKeyPressed();
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
_scores_loc:
	.db #0x12	; 18
	.db #0x0b	; 11
_key_loc:
	.db #0x01	; 1
	.db #0x20	; 32
_cg_loc:
	.db #0x00	; 0
	.db #0x0b	; 11
_ei_loc:
	.db #0x00	; 0
	.db #0x13	; 19
;src/hiscore.c:53: void h_enter_start(void) {
;	---------------------------------
; Function h_enter_start
; ---------------------------------
_h_enter_start::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-14
	add	hl, sp
	ld	sp, hl
;src/hiscore.c:55: u8 y = cg_loc.y * LINE_P_H;
	ld	a, (#(_cg_loc + 0x0001) + 0)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	-3 (ix), a
;src/hiscore.c:56: char name[4] = "", key;
	ld	hl, #0x0000
	add	hl, sp
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	(hl), #0x00
	ld	c,-7 (ix)
	ld	b,-6 (ix)
	inc	bc
	xor	a, a
	ld	(bc), a
	ld	c,-7 (ix)
	ld	b,-6 (ix)
	inc	bc
	inc	bc
	xor	a, a
	ld	(bc), a
	ld	a, -7 (ix)
	add	a, #0x03
	ld	-5 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	(hl), #0x00
;src/hiscore.c:57: u8 len = 0;
	ld	-10 (ix), #0x00
;src/hiscore.c:58: u16 count = 0;
	ld	-9 (ix), #0x00
	ld	-8 (ix), #0x00
;src/hiscore.c:61: if (g_current_score > g_hiscores[0].score) {
	ld	bc, (#(_g_hiscores + 0x0004) + 0)
	ld	de, (#(_g_hiscores + 0x0004) + 2)
	ld	a, c
	ld	iy, #_g_current_score
	sub	a, 0 (iy)
	ld	a, b
	sbc	a, 1 (iy)
	ld	a, e
	sbc	a, 2 (iy)
	ld	a, d
	sbc	a, 3 (iy)
	jp	NC, 00119$
;src/hiscore.c:64: v_blk_scr();
	call	_v_blk_scr
;src/hiscore.c:65: v_clr_scr();
	call	_v_clr_scr
;src/hiscore.c:67: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/hiscore.c:69: v_print_c(g_strings[100], y, FONT_RED);
	ld	bc, (#_g_strings + 200)
	xor	a, a
	push	af
	inc	sp
	ld	a, -3 (ix)
	push	af
	inc	sp
	push	bc
	call	_v_print_c
	pop	af
	pop	af
;src/hiscore.c:70: v_print_c(g_strings[101], y += (LINE_P_H * 3), FONT_BLUE);
	ld	a, -3 (ix)
	add	a, #0x12
	ld	b, a
	ld	c, b
	ld	de, (#_g_strings + 202)
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
;src/hiscore.c:71: v_print_c(g_strings[102], y += (LINE_P_H * 2), FONT_BLUE);
	ld	a, c
	add	a, #0x0c
	ld	d, a
	ld	bc, (#_g_strings + 204)
	ld	a, #0x01
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_v_print_c
	pop	af
	pop	af
;src/hiscore.c:72: v_reset_pal();
	call	_v_reset_pal
;src/hiscore.c:75: y = ei_loc.y * LINE_P_H;
	ld	a, (#(_ei_loc + 0x0001) + 0)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	-3 (ix), a
;src/hiscore.c:76: while (len <= 2) {
	ld	a, -7 (ix)
	ld	-2 (ix), a
	ld	a, -6 (ix)
	ld	-1 (ix), a
00113$:
	ld	a, #0x02
	sub	a, -10 (ix)
	jp	C, 00115$
;src/hiscore.c:78: if (count % 200 == 0) {
	ld	hl, #0x00c8
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	call	__moduint
	pop	af
	pop	af
	ld	e, l
	ld	a, h
	or	a,e
	jr	NZ,00110$
;src/hiscore.c:80: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/hiscore.c:81: v_print(g_strings[103], 36, y, FONT_WHITE);
	ld	bc, (#_g_strings + 206)
	ld	a, #0x02
	push	af
	inc	sp
	ld	d, -3 (ix)
	ld	e,#0x24
	push	de
	push	bc
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/hiscore.c:82: v_print(name, 36, y, FONT_WHITE);
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	ld	a, #0x02
	push	af
	inc	sp
	ld	d, -3 (ix)
	ld	e,#0x24
	push	de
	push	bc
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/hiscore.c:85: cpct_scanKeyboard();
	call	_cpct_scanKeyboard
;src/hiscore.c:88: if (cpct_isKeyPressed(Key_Del) && (len > 0)) {
	ld	hl, #0x8009
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00106$
	ld	a, -10 (ix)
	or	a, a
	jr	Z,00106$
;src/hiscore.c:89: --len;
	dec	-10 (ix)
;src/hiscore.c:90: name[len] = '\0';
	ld	a, -7 (ix)
	add	a, -10 (ix)
	ld	c, a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	b, a
	xor	a, a
	ld	(bc), a
	jr	00110$
00106$:
;src/hiscore.c:92: key = cpct_getKeypressedAsASCII();
	call	_cpct_getKeypressedAsASCII
	ld	c, l
;src/hiscore.c:93: if ((key != 0) && (key >= 65) &&
	ld	a, c
	or	a, a
	jr	Z,00110$
	ld	a, c
	sub	a, #0x41
	jr	C,00110$
;src/hiscore.c:94: (key <= 122)) {
	ld	a, #0x7a
	sub	a, c
	jr	C,00110$
;src/hiscore.c:96: name[len] = key;
	ld	a, -7 (ix)
	add	a, -10 (ix)
	ld	l, a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), c
;src/hiscore.c:97: ++len;
	inc	-10 (ix)
00110$:
;src/hiscore.c:102: ++count;
	inc	-9 (ix)
	jr	NZ,00166$
	inc	-8 (ix)
00166$:
;src/hiscore.c:104: if (count > 10000)
	ld	a, #0x10
	cp	a, -9 (ix)
	ld	a, #0x27
	sbc	a, -8 (ix)
	jp	NC, 00113$
;src/hiscore.c:105: count = 0;
	ld	-9 (ix), #0x00
	ld	-8 (ix), #0x00
	jp	00113$
00115$:
;src/hiscore.c:113: name[3] = '\0';
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	(hl), #0x00
;src/hiscore.c:114: if (g_current_score > g_hiscores[0].score) {
	ld	bc, (#(_g_hiscores + 0x0004) + 0)
	ld	de, (#(_g_hiscores + 0x0004) + 2)
	ld	a, c
	ld	iy, #_g_current_score
	sub	a, 0 (iy)
	ld	a, b
	sbc	a, 1 (iy)
	ld	a, e
	sbc	a, 2 (iy)
	ld	a, d
	sbc	a, 3 (iy)
	jr	NC,00119$
;src/hiscore.c:115: h_insert(name, g_current_score, 0);
	ld	c,-7 (ix)
	ld	b,-6 (ix)
	xor	a, a
	push	af
	inc	sp
	ld	hl, (_g_current_score + 2)
	push	hl
	ld	hl, (_g_current_score)
	push	hl
	push	bc
	call	_h_insert
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
;src/hiscore.c:116: u_sort_hiscores();
	call	_u_sort_hiscores
00119$:
;src/hiscore.c:120: v_wipe_scr(true);
	ld	a, #0x01
	push	af
	inc	sp
	call	_v_wipe_scr
	ld	sp,ix
	pop	ix
	ret
;src/hiscore.c:124: void h_stop(void) {
;	---------------------------------
; Function h_stop
; ---------------------------------
_h_stop::
;src/hiscore.c:126: v_wipe_scr(true);
	ld	a, #0x01
	push	af
	inc	sp
	call	_v_wipe_scr
	inc	sp
;src/hiscore.c:127: v_blk_scr();
	call	_v_blk_scr
;src/hiscore.c:128: v_clr_scr();
	call	_v_clr_scr
;src/hiscore.c:129: cpct_removeInterruptHandler();
	call	_cpct_removeInterruptHandler
;src/hiscore.c:130: v_reset_timers();
	jp  _v_reset_timers
;src/hiscore.c:134: void h_insert(const char *initials, const u32 score, const u8 pos) {
;	---------------------------------
; Function h_insert
; ---------------------------------
_h_insert::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/hiscore.c:136: g_hiscores[pos].score = score;
	ld	bc, #_g_hiscores+0
	ld	e,10 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, #0x0004
	add	hl,bc
	ex	de,hl
	push	bc
	ld	hl, #0x0008
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;src/hiscore.c:137: strcpy(g_hiscores[pos].initials, initials);
	ld	e, c
	ld	d, b
	push	bc
	ld	l,4 (ix)
	ld	h,5 (ix)
	xor	a, a
00103$:
	cp	a, (hl)
	ldi
	jr	NZ, 00103$
	pop	bc
;src/hiscore.c:138: g_hiscores[pos].width = u_get_width(score);
	ld	hl, #0x0008
	add	hl, bc
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	call	_u_get_width
	pop	af
	pop	af
	ld	c, l
	pop	hl
	ld	(hl), c
	pop	ix
	ret
;src/hiscore.c:142: static bool h_check(void) {
;	---------------------------------
; Function h_check
; ---------------------------------
_h_check:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/hiscore.c:144: u32 min = g_hiscores[0].score;
	ld	bc, (#_g_hiscores + 4)
	ld	de, (#_g_hiscores + 6)
;src/hiscore.c:147: for (u8 i = 1; i < 10; i++) {
	ld	-5 (ix), #0x01
00105$:
	ld	a, -5 (ix)
	sub	a, #0x0a
	jr	NC,00103$
;src/hiscore.c:148: if (g_hiscores[i].score < min)
	push	de
	ld	e,-5 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	ld	iy, #_g_hiscores
	push	bc
	ld	c, l
	ld	b, h
	add	iy, bc
	pop	bc
	ld	a, 4 (iy)
	ld	-4 (ix), a
	ld	a, 5 (iy)
	ld	-3 (ix), a
	ld	a, 6 (iy)
	ld	-2 (ix), a
	ld	a, 7 (iy)
	ld	-1 (ix), a
	ld	a, -4 (ix)
	sub	a, c
	ld	a, -3 (ix)
	sbc	a, b
	ld	a, -2 (ix)
	sbc	a, e
	ld	a, -1 (ix)
	sbc	a, d
	jr	NC,00106$
;src/hiscore.c:149: min = g_hiscores[i].score;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	e, -2 (ix)
	ld	d, -1 (ix)
00106$:
;src/hiscore.c:147: for (u8 i = 1; i < 10; i++) {
	inc	-5 (ix)
	jr	00105$
00103$:
;src/hiscore.c:152: return g_current_score > min;
	ld	a, c
	ld	iy, #_g_current_score
	sub	a, 0 (iy)
	ld	a, b
	sbc	a, 1 (iy)
	ld	a, e
	sbc	a, 2 (iy)
	ld	a, d
	sbc	a, 3 (iy)
	ld	a, #0x00
	rla
	ld	l, a
	ld	sp, ix
	pop	ix
	ret
;src/hiscore.c:156: static void h_draw_hiscores(void) {
;	---------------------------------
; Function h_draw_hiscores
; ---------------------------------
_h_draw_hiscores:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-10
	add	hl, sp
	ld	sp, hl
;src/hiscore.c:158: u8 y = scores_loc.y * LINE_P_H;
	ld	a, (#_scores_loc + 1)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	c, a
;src/hiscore.c:162: v_print_c(g_strings[29], title_loc.y * LINE_P_H, FONT_RED);
	ld	a, (#(_title_loc + 0x0001) + 0)
	ld	e, a
	add	a, a
	add	a, e
	add	a, a
	ld	b, a
	ld	de, (#_g_strings + 58)
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
;src/hiscore.c:165: for (int i = 9; i >= 0; i--) {
	ld	hl, #0x0009
	ex	(sp), hl
00103$:
	bit	7, -9 (ix)
	jp	NZ, 00101$
;src/hiscore.c:169: v_print(g_hiscores[i].initials, scores_loc.x, y, FONT_BLUE);
	ld	hl, #_scores_loc + 0
	ld	b, (hl)
	pop	de
	push	de
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de,hl
	ld	hl, #_g_hiscores
	add	hl,de
	ld	-8 (ix), l
	ld	-7 (ix), h
	ex	de,hl
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	a, c
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
;src/hiscore.c:170: v_print(g_strings[27], scores_loc.x + 7, y, FONT_BLUE);
	ld	a, (#_scores_loc + 0)
	add	a, #0x07
	ld	b, a
	ld	de, (#_g_strings + 54)
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	a, c
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
;src/hiscore.c:171: v_print(g_strings[28], scores_loc.x + 23, y, FONT_BLUE);
	ld	a, (#_scores_loc + 0)
	add	a, #0x17
	ld	b, a
	ld	de, (#_g_strings + 56)
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	a, c
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
;src/hiscore.c:173: (scores_loc.x + 43) - (g_hiscores[i].width * 2), y,
	ld	a, (#_scores_loc + 0)
	add	a, #0x2b
	ld	e, a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	bc
	ld	bc, #0x0008
	add	hl, bc
	pop	bc
	ld	l, (hl)
	sla	l
	ld	a, e
	sub	a, l
	ld	b, a
;src/hiscore.c:172: v_print_n(g_hiscores[i].score,
	pop	de
	pop	hl
	push	hl
	push	de
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	hl
	inc	hl
	ld	a, (hl)
	dec	hl
	ld	l, (hl)
	ld	h, a
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x00
	ld	-2 (ix), #0x00
	ld	-1 (ix), #0x00
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
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
	pop	bc
;src/hiscore.c:175: y += (LINE_P_H * 2);
	ld	a, c
	add	a, #0x0c
	ld	c, a
;src/hiscore.c:165: for (int i = 9; i >= 0; i--) {
	pop	hl
	push	hl
	dec	hl
	ex	(sp), hl
	jp	00103$
00101$:
;src/hiscore.c:178: v_print_c(g_strings[49], key_loc.y * LINE_P_H, FONT_RED);
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
	ld	sp,ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
