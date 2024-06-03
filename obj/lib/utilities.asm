;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module utilities
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cpct_getRandom_glfsr16_u8
	.globl _cpct_getRandom_lcg_u8
	.globl _cpct_isAnyKeyPressed
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_f
	.globl _cpct_scanKeyboard
	.globl _cpct_memset
	.globl _g_clock
	.globl _g_clock_on
	.globl _u_wait_kp
	.globl _u_power_2
	.globl _u_wait_for_key
	.globl _u_wait
	.globl _u_get_width
	.globl _u_get_random
	.globl _u_get_xy
	.globl _u_map_char_to_key
	.globl _u_map_key_to_char
	.globl _u_get_delta
	.globl _u_bounds_delta_check
	.globl _u_bounds_check
	.globl _u_clear_input
	.globl _u_clock_interrupt
	.globl _u_reset_clock
	.globl _u_check_collide
	.globl _u_sort_hiscores
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_g_clock_on::
	.ds 1
_u_clock_interrupt_count_1_315:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_clock::
	.ds 4
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
;src/lib/utilities.c:276: static u8 count = 0;
	ld	iy, #_u_clock_interrupt_count_1_315
	ld	0 (iy), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/lib/utilities.c:28: void u_wait_kp(void) {
;	---------------------------------
; Function u_wait_kp
; ---------------------------------
_u_wait_kp::
;src/lib/utilities.c:30: bool kp = false;
	ld	a, #0x00
;src/lib/utilities.c:31: while (!kp) {
00101$:
	bit	0, a
	ret	NZ
;src/lib/utilities.c:32: cpct_scanKeyboard();
	call	_cpct_scanKeyboard
;src/lib/utilities.c:33: kp = cpct_isAnyKeyPressed();
	call	_cpct_isAnyKeyPressed
	xor	a, a
	cp	a, l
	rla
	jr	00101$
;src/lib/utilities.c:38: inline u8 u_power_2(const u8 pow) {
;	---------------------------------
; Function u_power_2
; ---------------------------------
_u_power_2::
;src/lib/utilities.c:40: u8 result = 1;
;src/lib/utilities.c:42: for (u8 i = 0; i < pow; i++)
	ld	bc,#0x0001
00103$:
	ld	hl, #2
	add	hl, sp
	ld	a, b
	sub	a, (hl)
	jr	NC,00101$
;src/lib/utilities.c:43: result *= 2;
	sla	c
;src/lib/utilities.c:42: for (u8 i = 0; i < pow; i++)
	inc	b
	jr	00103$
00101$:
;src/lib/utilities.c:45: return result;
	ld	l, c
	ret
;src/lib/utilities.c:50: void u_wait_for_key(cpct_keyID key) {
;	---------------------------------
; Function u_wait_for_key
; ---------------------------------
_u_wait_for_key::
;src/lib/utilities.c:52: do
00101$:
;src/lib/utilities.c:53: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/lib/utilities.c:54: while(!cpct_isKeyPressed(key));
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00101$
;src/lib/utilities.c:56: do
00104$:
;src/lib/utilities.c:57: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/lib/utilities.c:58: while(cpct_isKeyPressed(key));
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	NZ,00104$
	ret
;src/lib/utilities.c:62: void u_wait(const u16 n) {
;	---------------------------------
; Function u_wait
; ---------------------------------
_u_wait::
;src/lib/utilities.c:64: for (u16 i = 0; i < n; i++)
	ld	bc, #0x0000
00103$:
	ld	hl, #2
	add	hl, sp
	ld	a, c
	sub	a, (hl)
	ld	a, b
	inc	hl
	sbc	a, (hl)
	ret	NC
;src/lib/utilities.c:65: __asm__("NOP");
	NOP
;src/lib/utilities.c:64: for (u16 i = 0; i < n; i++)
	inc	bc
	jr	00103$
;src/lib/utilities.c:69: u8 u_get_width(const u32 score) {
;	---------------------------------
; Function u_get_width
; ---------------------------------
_u_get_width::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/lib/utilities.c:72: u32 num = score;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	e, 6 (ix)
	ld	d, 7 (ix)
;src/lib/utilities.c:74: do {
	ld	-1 (ix), #0x00
00101$:
;src/lib/utilities.c:75: num /= 10;
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x000a
	push	hl
	push	de
	push	bc
	call	__divulong
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c, l
	ld	b, h
;src/lib/utilities.c:76: ++width;
	inc	-1 (ix)
;src/lib/utilities.c:77: } while (num != 0);
	ld	a, d
	or	a, e
	or	a, b
	or	a,c
	jr	NZ,00101$
;src/lib/utilities.c:79: return width;
	ld	l, -1 (ix)
	inc	sp
	pop	ix
	ret
;src/lib/utilities.c:83: u8 u_get_random(const u8 max) {
;	---------------------------------
; Function u_get_random
; ---------------------------------
_u_get_random::
;src/lib/utilities.c:85: bool finished = false;
	ld	b, #0x00
;src/lib/utilities.c:86: u8 num = max;
	ld	hl, #2+0
	add	hl, sp
	ld	c, (hl)
;src/lib/utilities.c:88: while (!finished) {
00101$:
	bit	0, b
	jr	NZ,00103$
;src/lib/utilities.c:89: num = cpct_getRandom_lcg_u8(cpct_getRandom_glfsr16_u8());
	call	_cpct_getRandom_glfsr16_u8
	call	_cpct_getRandom_lcg_u8
	ld	c, l
;src/lib/utilities.c:90: finished = num < max;
	ld	hl, #2
	add	hl, sp
	ld	a, c
	sub	a, (hl)
	ld	a, #0x00
	rla
	ld	b, a
	jr	00101$
00103$:
;src/lib/utilities.c:93: return num;
	ld	l, c
	ret
;src/lib/utilities.c:97: inline u16 u_get_xy(const i16 x, const i16 y) {
;	---------------------------------
; Function u_get_xy
; ---------------------------------
_u_get_xy::
;src/lib/utilities.c:99: return x + (y * GRID_U_W);
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ret
;src/lib/utilities.c:103: cpct_keyID u_map_char_to_key(const char key) {
;	---------------------------------
; Function u_map_char_to_key
; ---------------------------------
_u_map_char_to_key::
;src/lib/utilities.c:105: switch (key) {
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	sub	a, #0x41
	jp	C, 00127$
	ld	a, #0x5a
	sub	a, 0 (iy)
	jp	C, 00127$
	ld	a, 0 (iy)
	add	a, #0xbf
	ld	c, a
	ld	b, #0x00
	ld	hl, #00139$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00139$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
	jp	00107$
	jp	00108$
	jp	00109$
	jp	00110$
	jp	00111$
	jp	00112$
	jp	00113$
	jp	00114$
	jp	00115$
	jp	00116$
	jp	00117$
	jp	00118$
	jp	00119$
	jp	00120$
	jp	00121$
	jp	00122$
	jp	00123$
	jp	00124$
	jp	00125$
	jp	00126$
;src/lib/utilities.c:106: case 'A':
00101$:
;src/lib/utilities.c:107: return Key_A;
	ld	hl, #0x2008
	ret
;src/lib/utilities.c:108: case 'B':
00102$:
;src/lib/utilities.c:109: return Key_B;
	ld	hl, #0x4006
	ret
;src/lib/utilities.c:110: case 'C':
00103$:
;src/lib/utilities.c:111: return Key_C;
	ld	hl, #0x4007
	ret
;src/lib/utilities.c:112: case 'D':
00104$:
;src/lib/utilities.c:113: return Key_D;
	ld	hl, #0x2007
	ret
;src/lib/utilities.c:114: case 'E':
00105$:
;src/lib/utilities.c:115: return Key_E;
	ld	hl, #0x0407
	ret
;src/lib/utilities.c:116: case 'F':
00106$:
;src/lib/utilities.c:117: return Key_F;
	ld	hl, #0x2006
	ret
;src/lib/utilities.c:118: case 'G':
00107$:
;src/lib/utilities.c:119: return Key_G;
	ld	hl, #0x1006
	ret
;src/lib/utilities.c:120: case 'H':
00108$:
;src/lib/utilities.c:121: return Key_H;
	ld	hl, #0x1005
	ret
;src/lib/utilities.c:122: case 'I':
00109$:
;src/lib/utilities.c:123: return Key_I;
	ld	hl, #0x0804
	ret
;src/lib/utilities.c:124: case 'J':
00110$:
;src/lib/utilities.c:125: return Key_J;
	ld	hl, #0x2005
	ret
;src/lib/utilities.c:126: case 'K':
00111$:
;src/lib/utilities.c:127: return Key_K;
	ld	hl, #0x2004
	ret
;src/lib/utilities.c:128: case 'L':
00112$:
;src/lib/utilities.c:129: return Key_L;
	ld	hl, #0x1004
	ret
;src/lib/utilities.c:130: case 'M':
00113$:
;src/lib/utilities.c:131: return Key_M;
	ld	hl, #0x4004
	ret
;src/lib/utilities.c:132: case 'N':
00114$:
;src/lib/utilities.c:133: return Key_N;
	ld	hl, #0x4005
	ret
;src/lib/utilities.c:134: case 'O':
00115$:
;src/lib/utilities.c:135: return Key_O;
	ld	hl, #0x0404
	ret
;src/lib/utilities.c:136: case 'P':
00116$:
;src/lib/utilities.c:137: return Key_P;
	ld	hl, #0x0803
	ret
;src/lib/utilities.c:138: case 'Q':
00117$:
;src/lib/utilities.c:139: return Key_Q;
	ld	hl, #0x0808
	ret
;src/lib/utilities.c:140: case 'R':
00118$:
;src/lib/utilities.c:141: return Key_R;
	ld	hl, #0x0406
	ret
;src/lib/utilities.c:142: case 'S':
00119$:
;src/lib/utilities.c:143: return Key_S;
	ld	hl, #0x1007
	ret
;src/lib/utilities.c:144: case 'T':
00120$:
;src/lib/utilities.c:145: return Key_T;
	ld	hl, #0x0806
	ret
;src/lib/utilities.c:146: case 'U':
00121$:
;src/lib/utilities.c:147: return Key_U;
	ld	hl, #0x0405
	ret
;src/lib/utilities.c:148: case 'V':
00122$:
;src/lib/utilities.c:149: return Key_V;
	ld	hl, #0x8006
	ret
;src/lib/utilities.c:150: case 'W':
00123$:
;src/lib/utilities.c:151: return Key_W;
	ld	hl, #0x0807
	ret
;src/lib/utilities.c:152: case 'X':
00124$:
;src/lib/utilities.c:153: return Key_X;
	ld	hl, #0x8007
	ret
;src/lib/utilities.c:154: case 'Y':
00125$:
;src/lib/utilities.c:155: return Key_Y;
	ld	hl, #0x0805
	ret
;src/lib/utilities.c:156: case 'Z':
00126$:
;src/lib/utilities.c:157: return Key_Z;
	ld	hl, #0x8008
	ret
;src/lib/utilities.c:158: default:
00127$:
;src/lib/utilities.c:159: return Key_Space;
	ld	hl, #0x8005
;src/lib/utilities.c:160: }
	ret
;src/lib/utilities.c:164: char u_map_key_to_char(const cpct_keyID key) {
;	---------------------------------
; Function u_map_key_to_char
; ---------------------------------
_u_map_key_to_char::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/lib/utilities.c:166: switch (key) {
	ld	a, 4 (ix)
	sub	a, #0x06
	jr	NZ,00235$
	ld	a, 5 (ix)
	sub	a, #0x80
	jp	Z,00122$
00235$:
	ld	a, 4 (ix)
	sub	a, #0x07
	jr	NZ,00236$
	ld	a, 5 (ix)
	sub	a, #0x80
	jp	Z,00124$
00236$:
	ld	a, 4 (ix)
	sub	a, #0x08
	jr	NZ,00237$
	ld	a, 5 (ix)
	sub	a, #0x80
	jp	Z,00126$
00237$:
	ld	a, 4 (ix)
	sub	a, #0x04
	jr	NZ,00238$
	ld	a, 5 (ix)
	sub	a, #0x04
	jp	Z,00115$
00238$:
	ld	a, 4 (ix)
	sub	a, #0x05
	jr	NZ,00239$
	ld	a, 5 (ix)
	sub	a, #0x04
	jp	Z,00121$
00239$:
	ld	a, 4 (ix)
	sub	a, #0x06
	jr	NZ,00240$
	ld	a, 5 (ix)
	sub	a, #0x04
	jp	Z,00118$
00240$:
	ld	a, 4 (ix)
	sub	a, #0x07
	jr	NZ,00241$
	ld	a, 5 (ix)
	sub	a, #0x04
	jp	Z,00105$
00241$:
	ld	a, 4 (ix)
	sub	a, #0x03
	jr	NZ,00242$
	ld	a, 5 (ix)
	sub	a, #0x08
	jp	Z,00116$
00242$:
	ld	a, 4 (ix)
	sub	a, #0x04
	jr	NZ,00243$
	ld	a, 5 (ix)
	sub	a, #0x08
	jp	Z,00109$
00243$:
	ld	a, 4 (ix)
	sub	a, #0x05
	jr	NZ,00244$
	ld	a, 5 (ix)
	sub	a, #0x08
	jp	Z,00125$
00244$:
	ld	a, 4 (ix)
	sub	a, #0x06
	jr	NZ,00245$
	ld	a, 5 (ix)
	sub	a, #0x08
	jp	Z,00120$
00245$:
	ld	a, 4 (ix)
	sub	a, #0x07
	jr	NZ,00246$
	ld	a, 5 (ix)
	sub	a, #0x08
	jp	Z,00123$
00246$:
	ld	a, 4 (ix)
	sub	a, #0x08
	jr	NZ,00247$
	ld	a, 5 (ix)
	sub	a, #0x08
	jp	Z,00117$
00247$:
	ld	a, 4 (ix)
	sub	a, #0x04
	jr	NZ,00248$
	ld	a, 5 (ix)
	sub	a, #0x10
	jp	Z,00112$
00248$:
	ld	a, 4 (ix)
	sub	a, #0x05
	jr	NZ,00249$
	ld	a, 5 (ix)
	sub	a, #0x10
	jp	Z,00108$
00249$:
	ld	a, 4 (ix)
	sub	a, #0x06
	jr	NZ,00250$
	ld	a, 5 (ix)
	sub	a, #0x10
	jp	Z,00107$
00250$:
	ld	a, 4 (ix)
	sub	a, #0x07
	jr	NZ,00251$
	ld	a, 5 (ix)
	sub	a, #0x10
	jp	Z,00119$
00251$:
	ld	a, 4 (ix)
	sub	a, #0x04
	jr	NZ,00252$
	ld	a, 5 (ix)
	sub	a, #0x20
	jp	Z,00111$
00252$:
	ld	a, 4 (ix)
	sub	a, #0x05
	jr	NZ,00253$
	ld	a, 5 (ix)
	sub	a, #0x20
	jp	Z,00110$
00253$:
	ld	a, 4 (ix)
	sub	a, #0x06
	jr	NZ,00254$
	ld	a, 5 (ix)
	sub	a, #0x20
	jr	Z,00106$
00254$:
	ld	a, 4 (ix)
	sub	a, #0x07
	jr	NZ,00255$
	ld	a, 5 (ix)
	sub	a, #0x20
	jr	Z,00104$
00255$:
	ld	a, 4 (ix)
	sub	a, #0x08
	jr	NZ,00256$
	ld	a, 5 (ix)
	sub	a, #0x20
	jr	Z,00101$
00256$:
	ld	a, 4 (ix)
	sub	a, #0x04
	jr	NZ,00257$
	ld	a, 5 (ix)
	sub	a, #0x40
	jr	Z,00113$
00257$:
	ld	a, 4 (ix)
	sub	a, #0x05
	jr	NZ,00258$
	ld	a, 5 (ix)
	sub	a, #0x40
	jr	Z,00114$
00258$:
	ld	a, 4 (ix)
	sub	a, #0x06
	jr	NZ,00259$
	ld	a, 5 (ix)
	sub	a, #0x40
	jr	Z,00102$
00259$:
	ld	a, 4 (ix)
	sub	a, #0x07
	jr	NZ,00127$
	ld	a, 5 (ix)
	sub	a, #0x40
	jr	Z,00103$
	jp	00127$
;src/lib/utilities.c:167: case Key_A:
00101$:
;src/lib/utilities.c:168: return 'A';
	ld	l, #0x41
	jp	00129$
;src/lib/utilities.c:169: case Key_B:
00102$:
;src/lib/utilities.c:170: return 'B';
	ld	l, #0x42
	jr	00129$
;src/lib/utilities.c:171: case Key_C:
00103$:
;src/lib/utilities.c:172: return 'C';
	ld	l, #0x43
	jr	00129$
;src/lib/utilities.c:173: case Key_D:
00104$:
;src/lib/utilities.c:174: return 'D';
	ld	l, #0x44
	jr	00129$
;src/lib/utilities.c:175: case Key_E:
00105$:
;src/lib/utilities.c:176: return 'E';
	ld	l, #0x45
	jr	00129$
;src/lib/utilities.c:177: case Key_F:
00106$:
;src/lib/utilities.c:178: return 'F';
	ld	l, #0x46
	jr	00129$
;src/lib/utilities.c:179: case Key_G:
00107$:
;src/lib/utilities.c:180: return 'G';
	ld	l, #0x47
	jr	00129$
;src/lib/utilities.c:181: case Key_H:
00108$:
;src/lib/utilities.c:182: return 'H';
	ld	l, #0x48
	jr	00129$
;src/lib/utilities.c:183: case Key_I:
00109$:
;src/lib/utilities.c:184: return 'I';
	ld	l, #0x49
	jr	00129$
;src/lib/utilities.c:185: case Key_J:
00110$:
;src/lib/utilities.c:186: return 'J';
	ld	l, #0x4a
	jr	00129$
;src/lib/utilities.c:187: case Key_K:
00111$:
;src/lib/utilities.c:188: return 'K';
	ld	l, #0x4b
	jr	00129$
;src/lib/utilities.c:189: case Key_L:
00112$:
;src/lib/utilities.c:190: return 'L';
	ld	l, #0x4c
	jr	00129$
;src/lib/utilities.c:191: case Key_M:
00113$:
;src/lib/utilities.c:192: return 'M';
	ld	l, #0x4d
	jr	00129$
;src/lib/utilities.c:193: case Key_N:
00114$:
;src/lib/utilities.c:194: return 'N';
	ld	l, #0x4e
	jr	00129$
;src/lib/utilities.c:195: case Key_O:
00115$:
;src/lib/utilities.c:196: return 'O';
	ld	l, #0x4f
	jr	00129$
;src/lib/utilities.c:197: case Key_P:
00116$:
;src/lib/utilities.c:198: return 'P';
	ld	l, #0x50
	jr	00129$
;src/lib/utilities.c:199: case Key_Q:
00117$:
;src/lib/utilities.c:200: return 'Q';
	ld	l, #0x51
	jr	00129$
;src/lib/utilities.c:201: case Key_R:
00118$:
;src/lib/utilities.c:202: return 'R';
	ld	l, #0x52
	jr	00129$
;src/lib/utilities.c:203: case Key_S:
00119$:
;src/lib/utilities.c:204: return 'S';
	ld	l, #0x53
	jr	00129$
;src/lib/utilities.c:205: case Key_T:
00120$:
;src/lib/utilities.c:206: return 'T';
	ld	l, #0x54
	jr	00129$
;src/lib/utilities.c:207: case Key_U:
00121$:
;src/lib/utilities.c:208: return 'U';
	ld	l, #0x55
	jr	00129$
;src/lib/utilities.c:209: case Key_V:
00122$:
;src/lib/utilities.c:210: return 'V';
	ld	l, #0x56
	jr	00129$
;src/lib/utilities.c:211: case Key_W:
00123$:
;src/lib/utilities.c:212: return 'W';
	ld	l, #0x57
	jr	00129$
;src/lib/utilities.c:213: case Key_X:
00124$:
;src/lib/utilities.c:214: return 'X';
	ld	l, #0x58
	jr	00129$
;src/lib/utilities.c:215: case Key_Y:
00125$:
;src/lib/utilities.c:216: return 'Y';
	ld	l, #0x59
	jr	00129$
;src/lib/utilities.c:217: case Key_Z:
00126$:
;src/lib/utilities.c:218: return 'Z';
	ld	l, #0x5a
	jr	00129$
;src/lib/utilities.c:219: default:
00127$:
;src/lib/utilities.c:220: return ' ';
	ld	l, #0x20
;src/lib/utilities.c:221: }
00129$:
	pop	ix
	ret
;src/lib/utilities.c:225: inline void u_get_delta(const dir_t dir, i8 *dx, i8 *dy) {
;	---------------------------------
; Function u_get_delta
; ---------------------------------
_u_get_delta::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/lib/utilities.c:229: *dx = (offsets[(int)dir][0]);
	ld	c,5 (ix)
	ld	b,6 (ix)
	ld	de, #_u_get_delta_offsets_1_307+0
	ld	l, 4 (ix)
	ld	a, 4 (ix)
	rla
	sbc	a, a
	ld	h, a
	add	hl, hl
	add	hl,de
	ex	de,hl
	ld	a, (de)
	ld	(bc), a
;src/lib/utilities.c:230: *dy = (offsets[(int)dir][1]);
	ld	c,7 (ix)
	ld	b,8 (ix)
	ex	de,hl
	inc	hl
	ld	a, (hl)
	ld	(bc), a
;src/lib/utilities.c:232: return;
	pop	ix
	ret
_u_get_delta_offsets_1_307:
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0xff	; -1
	.db #0x00	;  0
;src/lib/utilities.c:236: inline bool u_bounds_delta_check(const i16 x, const i16 y, const i8 dx,
;	---------------------------------
; Function u_bounds_delta_check
; ---------------------------------
_u_bounds_delta_check::
;src/lib/utilities.c:239: if (x + dx >= GRID_U_W)
	ld	iy, #6
	add	iy, sp
	ld	c, 0 (iy)
	ld	a, 0 (iy)
	rla
	sbc	a, a
	ld	b, a
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	a, l
	sub	a, #0x19
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00102$
;src/lib/utilities.c:240: return false;
	ld	l, #0x00
	ret
00102$:
;src/lib/utilities.c:241: if (x + dx < 0)
	bit	7, h
	jr	Z,00104$
;src/lib/utilities.c:242: return false;
	ld	l, #0x00
	ret
00104$:
;src/lib/utilities.c:243: if (y + dy >= GRID_U_H)
	ld	iy, #7
	add	iy, sp
	ld	c, 0 (iy)
	ld	a, 0 (iy)
	rla
	sbc	a, a
	ld	b, a
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	a, l
	sub	a, #0x11
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00106$
;src/lib/utilities.c:244: return false;
	ld	l, #0x00
	ret
00106$:
;src/lib/utilities.c:245: if (y + dy < 0)
	bit	7, h
	jr	Z,00108$
;src/lib/utilities.c:246: return false;
	ld	l, #0x00
	ret
00108$:
;src/lib/utilities.c:248: return true;
	ld	l, #0x01
	ret
;src/lib/utilities.c:252: inline bool u_bounds_check(const i16 x, const i16 y) {
;	---------------------------------
; Function u_bounds_check
; ---------------------------------
_u_bounds_check::
;src/lib/utilities.c:254: if (x < 0)
	ld	hl, #2+1
	add	hl, sp
	bit	7, (hl)
	jr	Z,00102$
;src/lib/utilities.c:255: return false;
	ld	l, #0x00
	ret
00102$:
;src/lib/utilities.c:256: if (x >= GRID_U_W)
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	sub	a, #0x19
	ld	a, 1 (iy)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00104$
;src/lib/utilities.c:257: return false;
	ld	l, #0x00
	ret
00104$:
;src/lib/utilities.c:258: if (y >= GRID_U_H)
	ld	iy, #4
	add	iy, sp
	ld	a, 0 (iy)
	sub	a, #0x11
	ld	a, 1 (iy)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00106$
;src/lib/utilities.c:259: return false;
	ld	l, #0x00
	ret
00106$:
;src/lib/utilities.c:260: if (y < 0)
	ld	hl, #4+1
	add	hl, sp
	bit	7, (hl)
	jr	Z,00108$
;src/lib/utilities.c:261: return false;
	ld	l, #0x00
	ret
00108$:
;src/lib/utilities.c:263: return true;
	ld	l, #0x01
	ret
;src/lib/utilities.c:267: void u_clear_input(void) {
;	---------------------------------
; Function u_clear_input
; ---------------------------------
_u_clear_input::
;src/lib/utilities.c:269: cpct_memset(cpct_keyboardStatusBuffer, 0xff,
	ld	hl, #0x000a
	push	hl
	ld	a, #0xff
	push	af
	inc	sp
	ld	hl, #_cpct_keyboardStatusBuffer
	push	hl
	call	_cpct_memset
	ret
;src/lib/utilities.c:274: void u_clock_interrupt(void) {
;	---------------------------------
; Function u_clock_interrupt
; ---------------------------------
_u_clock_interrupt::
;src/lib/utilities.c:279: if (g_clock_on) {
	ld	hl,#_g_clock_on+0
	bit	0, (hl)
	ret	Z
;src/lib/utilities.c:286: count = ++count % 6;
	ld	hl, #_u_clock_interrupt_count_1_315+0
	inc	(hl)
	ld	a, #0x06
	push	af
	inc	sp
	ld	a, (_u_clock_interrupt_count_1_315)
	push	af
	inc	sp
	call	__moduchar
	pop	af
	ld	iy, #_u_clock_interrupt_count_1_315
	ld	0 (iy), l
;src/lib/utilities.c:287: if (count == 5) {
	ld	a, 0 (iy)
	sub	a, #0x05
	ret	NZ
;src/lib/utilities.c:288: g_clock.ms += 20;
	ld	bc, (#_g_clock + 0)
	ld	hl, #0x0014
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	(_g_clock), bc
;src/lib/utilities.c:289: if (g_clock.ms == 1000) {
	ld	a, c
	sub	a, #0xe8
	ret	NZ
	ld	a, b
	sub	a, #0x03
	ret	NZ
;src/lib/utilities.c:290: ++g_clock.s;
	ld	bc, (#(_g_clock + 0x0002) + 0)
	inc	bc
	ld	((_g_clock + 0x0002)), bc
;src/lib/utilities.c:291: g_clock.ms = 0;
	ld	hl, #0x0000
	ld	(_g_clock), hl
	ret
;src/lib/utilities.c:304: void u_reset_clock(void) {
;	---------------------------------
; Function u_reset_clock
; ---------------------------------
_u_reset_clock::
;src/lib/utilities.c:306: g_clock.ms = g_clock.s = 0;
	ld	hl, #0x0000
	ld	((_g_clock + 0x0002)), hl
	ld	l, #0x00
	ld	(_g_clock), hl
	ret
;src/lib/utilities.c:310: inline bool u_check_collide(const i8 x1, const i8 y1, const i8 x2,
;	---------------------------------
; Function u_check_collide
; ---------------------------------
_u_check_collide::
;src/lib/utilities.c:313: return ((x1 == x2) && (y1 == y2));
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	iy, #4
	add	iy, sp
	sub	a, 0 (iy)
	jr	NZ,00103$
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	ld	iy, #5
	add	iy, sp
	sub	a, 0 (iy)
	jr	Z,00104$
00103$:
	ld	l, #0x00
	ret
00104$:
	ld	l, #0x01
	ret
;src/lib/utilities.c:317: void u_sort_hiscores(void) {
;	---------------------------------
; Function u_sort_hiscores
; ---------------------------------
_u_sort_hiscores::
;src/lib/utilities.c:324: u_quicksort(g_hiscores, n);
	ld	a, #0x0a
	push	af
	inc	sp
	ld	hl, #_g_hiscores
	push	hl
	call	_u_quicksort
	pop	af
	inc	sp
	ret
;src/lib/utilities.c:329: static void u_quicksort(score_t *arr, u8 len) {
;	---------------------------------
; Function u_quicksort
; ---------------------------------
_u_quicksort:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-38
	add	hl, sp
	ld	sp, hl
;src/lib/utilities.c:335: if (len < 2)
	ld	a, 6 (ix)
	sub	a, #0x02
;src/lib/utilities.c:336: return;
	jp	C,00114$
;src/lib/utilities.c:338: pivot = arr[len / 2].score;
	ld	c, 6 (ix)
	srl	c
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl, bc
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-28 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-27 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-26 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-25 (ix), a
;src/lib/utilities.c:340: for (i = 0, j = len - 1;; i++, j--) {
	ld	-29 (ix), #0x00
	ld	a, 6 (ix)
	add	a, #0xff
	ld	-1 (ix), a
;src/lib/utilities.c:342: while (arr[i].score < pivot)
	ld	hl, #0x0000
	add	hl, sp
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, -8 (ix)
	ld	-21 (ix), a
	ld	a, -7 (ix)
	ld	-20 (ix), a
	ld	a, -8 (ix)
	ld	-24 (ix), a
	ld	a, -7 (ix)
	ld	-23 (ix), a
00103$:
	ld	c,-29 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, 4 (ix)
	add	a, c
	ld	-3 (ix), a
	ld	a, 5 (ix)
	adc	a, b
	ld	-2 (ix), a
	ld	a, -3 (ix)
	add	a, #0x04
	ld	-14 (ix), a
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	-13 (ix), a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;src/lib/utilities.c:343: i++;
	ld	a, -29 (ix)
	inc	a
	ld	-22 (ix), a
;src/lib/utilities.c:342: while (arr[i].score < pivot)
	ld	a, c
	sub	a, -28 (ix)
	ld	a, b
	sbc	a, -27 (ix)
	ld	a, e
	sbc	a, -26 (ix)
	ld	a, d
	sbc	a, -25 (ix)
	jr	NC,00120$
;src/lib/utilities.c:343: i++;
	ld	a, -22 (ix)
	ld	-29 (ix), a
	jr	00103$
;src/lib/utilities.c:344: while (arr[j].score > pivot)
00120$:
	ld	a, -1 (ix)
	ld	-6 (ix), a
00106$:
	ld	c,-6 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, 4 (ix)
	add	a, c
	ld	-5 (ix), a
	ld	a, 5 (ix)
	adc	a, b
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0x04
	ld	-16 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-15 (ix), a
	ld	e,-16 (ix)
	ld	d,-15 (ix)
	ld	hl, #0x001a
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;src/lib/utilities.c:345: j--;
	ld	a, -6 (ix)
	add	a, #0xff
	ld	-17 (ix), a
;src/lib/utilities.c:344: while (arr[j].score > pivot)
	ld	a, -28 (ix)
	sub	a, -12 (ix)
	ld	a, -27 (ix)
	sbc	a, -11 (ix)
	ld	a, -26 (ix)
	sbc	a, -10 (ix)
	ld	a, -25 (ix)
	sbc	a, -9 (ix)
	jr	NC,00108$
;src/lib/utilities.c:345: j--;
	ld	a, -17 (ix)
	ld	-6 (ix), a
	jr	00106$
00108$:
;src/lib/utilities.c:347: if (i >= j)
	ld	a, -29 (ix)
	sub	a, -6 (ix)
	jp	NC, 00111$
;src/lib/utilities.c:350: temp.score = arr[i].score;
	ld	a, -8 (ix)
	add	a, #0x04
	ld	-12 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-11 (ix), a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	inc	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/lib/utilities.c:351: temp.width = arr[i].width;
	ld	a, -8 (ix)
	add	a, #0x08
	ld	-19 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-18 (ix), a
	ld	iy, #0x0008
	ld	e,-3 (ix)
	ld	d,-2 (ix)
	add	iy, de
	ld	c, 0 (iy)
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	ld	(hl), c
;src/lib/utilities.c:352: strcpy(temp.initials, arr[i].initials);
	ld	e,-21 (ix)
	ld	d,-20 (ix)
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	xor	a, a
00141$:
	cp	a, (hl)
	ldi
	jr	NZ, 00141$
;src/lib/utilities.c:353: arr[i].score = arr[j].score;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	inc	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/lib/utilities.c:354: arr[i].width = arr[j].width;
	ld	a, -5 (ix)
	add	a, #0x08
	ld	c, a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	ld	0 (iy), a
;src/lib/utilities.c:355: strcpy(arr[i].initials, arr[j].initials);
	ld	e,-3 (ix)
	ld	d,-2 (ix)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	bc
	xor	a, a
00142$:
	cp	a, (hl)
	ldi
	jr	NZ, 00142$
	ld	e,-12 (ix)
	ld	d,-11 (ix)
	ld	hl, #0x001c
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	e,-16 (ix)
	ld	d,-15 (ix)
	ld	hl, #0x001c
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
;src/lib/utilities.c:357: arr[j].width = temp.width;
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	ld	a, (hl)
	ld	(bc), a
;src/lib/utilities.c:358: strcpy(arr[j].initials, temp.initials);
	ld	e,-5 (ix)
	ld	d,-4 (ix)
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	xor	a, a
00143$:
	cp	a, (hl)
	ldi
	jr	NZ, 00143$
;src/lib/utilities.c:340: for (i = 0, j = len - 1;; i++, j--) {
	ld	a, -22 (ix)
	ld	-29 (ix), a
	ld	a, -17 (ix)
	ld	-1 (ix), a
	jp	00103$
00111$:
;src/lib/utilities.c:361: u_quicksort(arr, i);
	ld	a, -29 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_u_quicksort
	pop	af
	inc	sp
;src/lib/utilities.c:362: u_quicksort(arr + i, len - i);
	ld	a, 6 (ix)
	sub	a, -29 (ix)
	ld	b, a
	push	bc
	inc	sp
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	call	_u_quicksort
	pop	af
	inc	sp
00114$:
	ld	sp, ix
	pop	ix
	ret
;src/lib/utilities.c:366: static void u_sort_swap(score_t *h1, score_t *h2) {
;	---------------------------------
; Function u_sort_swap
; ---------------------------------
_u_sort_swap:
;src/lib/utilities.c:370: h2 = temp;
	ret
;src/lib/utilities.c:374: static int u_qsort_compare(const void *h1, const void *h2) {
;	---------------------------------
; Function u_qsort_compare
; ---------------------------------
_u_qsort_compare:
;src/lib/utilities.c:391: return 0;
	ld	hl, #0x0000
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__g_clock:
	.dw #0x0000
	.dw #0x0000
	.area _CABS (ABS)
