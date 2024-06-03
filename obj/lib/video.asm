;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module video
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _u_bounds_check
	.globl _u_get_xy
	.globl _u_wait
	.globl _PlaySound
	.globl _strlen
	.globl _sprintf
	.globl _cpct_zx7b_decrunch_s
	.globl _cpct_getScreenPtr
	.globl _cpct_setPALColour
	.globl _cpct_setPalette
	.globl _cpct_waitVSYNCStart
	.globl _cpct_waitVSYNC
	.globl _cpct_setVideoMode
	.globl _cpct_drawSpriteMasked
	.globl _cpct_drawSprite
	.globl _cpct_drawSolidBox
	.globl _cpct_drawToSpriteBufferMasked
	.globl _cpct_drawToSpriteBuffer
	.globl _cpct_scanKeyboard_if
	.globl _cpct_memset_f64
	.globl _cpct_memset
	.globl _cpct_removeInterruptHandler
	.globl _cpct_disableFirmware
	.globl _v_cycle_c
	.globl _v_frame_c
	.globl _v_pal_idx
	.globl _v_int_idx
	.globl _v_player_buf
	.globl _v_cells
	.globl _v_draw_logo
	.globl _v_init
	.globl _v_blk_scr
	.globl _v_wipe_scr
	.globl _v_clr_scr
	.globl _v_print_c
	.globl _v_print_n
	.globl _v_print
	.globl _v_reset_pal
	.globl _v_reset_pal_v
	.globl _v_wait_VSYNC
	.globl _v_get_pos
	.globl _v_flash_brd
	.globl _v_reset_timers
	.globl _v_interrupt
	.globl _v_draw_launch
	.globl _v_draw_player
	.globl _v_draw_enemies
	.globl _v_draw_bolts
	.globl _v_draw_box
	.globl _v_init_sprites
	.globl _v_get_sprite_p
	.globl _v_draw_player_bb
	.globl _v_draw_grid
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_v_player_buf::
	.ds 270
_v_cell_buf_0:
	.ds 30
_v_cell_buf_1:
	.ds 30
_v_cell_buf_2:
	.ds 30
_v_cell_buf_3:
	.ds 30
_v_cell_buf_4:
	.ds 30
_v_cell_buf_5:
	.ds 30
_v_cell_buf_6:
	.ds 30
_v_cell_buf_7:
	.ds 30
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_v_int_idx::
	.ds 1
_v_pal_idx::
	.ds 1
_v_frame_c::
	.ds 1
_v_cycle_c::
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
;src/lib/video.c:57: void v_draw_logo() {
;	---------------------------------
; Function v_draw_logo
; ---------------------------------
_v_draw_logo::
;src/lib/video.c:60: cpct_zx7b_decrunch_s(VIDEO_MEM_END, img_titles_end);
	ld	hl, #(_img_titles + 0x013d)
	push	hl
	ld	hl, #0xffff
	push	hl
	call	_cpct_zx7b_decrunch_s
	ret
_v_cells:
	.dw _v_cell_buf_0
	.dw _v_cell_buf_1
	.dw _v_cell_buf_2
	.dw _v_cell_buf_3
	.dw _v_cell_buf_4
	.dw _v_cell_buf_5
	.dw _v_cell_buf_6
	.dw _v_cell_buf_7
_v_spr_map:
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x0d	; 13
	.db #0x07	; 7
	.db #0x0b	; 11
	.db #0x0f	; 15
_launch_st:
	.db #0x0c	; 12
	.db #0x07	; 7
;src/lib/video.c:64: void v_init(void) {
;	---------------------------------
; Function v_init
; ---------------------------------
_v_init::
;src/lib/video.c:67: cpct_disableFirmware();
	call	_cpct_disableFirmware
;src/lib/video.c:68: cpct_setVideoMode(0);
	ld	l, #0x00
	call	_cpct_setVideoMode
;src/lib/video.c:69: cpct_waitVSYNCStart();
	call	_cpct_waitVSYNCStart
;src/lib/video.c:70: cpct_clearScreen_f64(0);
	ld	hl, #0x4000
	push	hl
	ld	h, #0x00
	push	hl
	ld	h, #0xc0
	push	hl
	call	_cpct_memset_f64
	ret
;src/lib/video.c:74: void v_blk_scr(void) {
;	---------------------------------
; Function v_blk_scr
; ---------------------------------
_v_blk_scr::
;src/lib/video.c:80: cpct_removeInterruptHandler();
	call	_cpct_removeInterruptHandler
;src/lib/video.c:81: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/lib/video.c:82: cpct_setPalette(blank_pal, sizeof(blank_pal));
	ld	hl, #0x0010
	push	hl
	ld	hl, #_v_blk_scr_blank_pal_1_285
	push	hl
	call	_cpct_setPalette
;src/lib/video.c:83: cpct_setBorder(HW_BLACK);
	ld	hl, #0x1410
	push	hl
	call	_cpct_setPALColour
	ret
_v_blk_scr_blank_pal_1_285:
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
;src/lib/video.c:87: void v_wipe_scr(bool dir) {
;	---------------------------------
; Function v_wipe_scr
; ---------------------------------
_v_wipe_scr::
;src/lib/video.c:91: if (dir) {
	ld	hl, #2+0
	add	hl, sp
	bit	0, (hl)
	jr	Z,00126$
;src/lib/video.c:94: for (u8 x = 0; x < 80; x++) {
	ld	b, #0x00
00111$:
	ld	a, b
	sub	a, #0x50
	ret	NC
;src/lib/video.c:95: if (x % 2 == 0) {
	bit	0, b
	jr	NZ,00112$
;src/lib/video.c:96: cpct_waitVSYNC();
	push	bc
	call	_cpct_waitVSYNC
	pop	bc
;src/lib/video.c:97: v_pos = v_get_pos(x, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_v_get_pos
	pop	af
	ld	de, #0xc802
	push	de
	ld	de, #0x0000
	push	de
	push	hl
	call	_cpct_drawSolidBox
	pop	bc
00112$:
;src/lib/video.c:94: for (u8 x = 0; x < 80; x++) {
	inc	b
	jr	00111$
;src/lib/video.c:104: for (u8 x = 78; x > 0; x--) {
00126$:
	ld	c, #0x4e
00114$:
	ld	a, c
	or	a, a
	ret	Z
;src/lib/video.c:105: if (x % 2 == 0) {
	bit	0, c
	jr	NZ,00115$
;src/lib/video.c:106: cpct_waitVSYNC();
	push	bc
	call	_cpct_waitVSYNC
	pop	bc
;src/lib/video.c:107: v_pos = v_get_pos(x, 0);
	push	bc
	xor	a, a
	ld	b, a
	push	bc
	call	_v_get_pos
	pop	af
	ld	de, #0xc802
	push	de
	ld	de, #0x0000
	push	de
	push	hl
	call	_cpct_drawSolidBox
	pop	bc
00115$:
;src/lib/video.c:104: for (u8 x = 78; x > 0; x--) {
	dec	c
	jr	00114$
;src/lib/video.c:115: void v_clr_scr(void) {
;	---------------------------------
; Function v_clr_scr
; ---------------------------------
_v_clr_scr::
;src/lib/video.c:117: cpct_waitVSYNCStart();
	call	_cpct_waitVSYNCStart
;src/lib/video.c:118: cpct_clearScreen_f64(0);
	ld	hl, #0x4000
	push	hl
	ld	h, #0x00
	push	hl
	ld	h, #0xc0
	push	hl
	call	_cpct_memset_f64
	ret
;src/lib/video.c:122: void v_print_c(const char *str, const u8 y, const pen_t pen) {
;	---------------------------------
; Function v_print_c
; ---------------------------------
_v_print_c::
;src/lib/video.c:124: u8 x = (40) - (strlen(str) * 2) / 2;
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_strlen
	pop	af
	add	hl, hl
	ld	c, l
	srl	h
	rr	c
	ld	a, #0x28
	sub	a, c
	ld	b, a
;src/lib/video.c:126: v_print(str, x, y, pen);
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #5
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
;src/lib/video.c:130: void v_print_n(const i64 num, const u8 x, const u8 y, const pen_t pen) {
;	---------------------------------
; Function v_print_n
; ---------------------------------
_v_print_n::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-40
	add	hl, sp
	ld	sp, hl
;src/lib/video.c:135: sprintf(str, "%lld", num);
	ld	hl, #0x0000
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	push	bc
	ld	h, 11 (ix)
	ld	l, 10 (ix)
	push	hl
	ld	h, 9 (ix)
	ld	l, 8 (ix)
	push	hl
	ld	h, 7 (ix)
	ld	l, 6 (ix)
	push	hl
	ld	h, 5 (ix)
	ld	l, 4 (ix)
	push	hl
	ld	hl, #___str_0
	push	hl
	push	de
	call	_sprintf
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	pop	bc
;src/lib/video.c:136: v_print(str, x, y, pen);
	ld	h, 14 (ix)
	ld	l, 13 (ix)
	push	hl
	ld	a, 12 (ix)
	push	af
	inc	sp
	push	bc
	call	_v_print
	ld	sp,ix
	pop	ix
	ret
___str_0:
	.ascii "%lld"
	.db 0x00
;src/lib/video.c:140: void v_print(const char *str, const u8 x, const u8 y, const pen_t pen) {
;	---------------------------------
; Function v_print
; ---------------------------------
_v_print::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/lib/video.c:143: u8 cx = x, cy = y;
	ld	a, 6 (ix)
	ld	-1 (ix), a
	ld	a, 7 (ix)
	ld	-4 (ix), a
;src/lib/video.c:148: while (str[i] != '\0') {
	ld	a, 8 (ix)
	dec	a
	jr	NZ,00127$
	ld	a,#0x01
	jr	00128$
00127$:
	xor	a,a
00128$:
	ld	-3 (ix), a
	ld	a, 8 (ix)
	sub	a, #0x02
	jr	NZ,00129$
	ld	a,#0x01
	jr	00130$
00129$:
	xor	a,a
00130$:
	ld	-2 (ix), a
	ld	de, #0x0000
00105$:
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl, de
	ld	c, (hl)
	ld	a, c
	or	a, a
	jr	Z,00108$
;src/lib/video.c:151: switch (pen) {
	ld	a, -3 (ix)
	or	a, a
	jr	NZ,00101$
	ld	a, -2 (ix)
	or	a, a
	jr	NZ,00102$
	jr	00103$
;src/lib/video.c:152: case FONT_BLUE:
00101$:
;src/lib/video.c:153: offset = 96;
	ld	hl, #0x0060
;src/lib/video.c:154: break;
	jr	00104$
;src/lib/video.c:155: case FONT_WHITE:
00102$:
;src/lib/video.c:156: offset = 96 + 96;
	ld	hl, #0x00c0
;src/lib/video.c:157: break;
	jr	00104$
;src/lib/video.c:158: default:
00103$:
;src/lib/video.c:159: offset = 0;
	ld	hl, #0x0000
;src/lib/video.c:161: };
00104$:
;src/lib/video.c:162: idx = (int)str[i] - 32;
	ld	b, #0x00
	ld	a, c
	add	a, #0xe0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;src/lib/video.c:163: idx += offset;
	add	hl,bc
;src/lib/video.c:165: v_pos = v_get_pos(cx, cy);
	push	hl
	push	de
	ld	h, -4 (ix)
	ld	l, -1 (ix)
	push	hl
	call	_v_get_pos
	pop	af
	pop	de
	pop	bc
;src/lib/video.c:166: cpct_drawSprite(font_ts[idx], v_pos, 2, 6);
	push	hl
	pop	iy
	ld	l, c
	ld	h, b
	add	hl, hl
	ld	bc, #_font_ts
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	de
	ld	hl, #0x0602
	push	hl
	push	iy
	push	bc
	call	_cpct_drawSprite
	pop	de
;src/lib/video.c:169: cx = cx + LINE_P_W;
	inc	-1 (ix)
	inc	-1 (ix)
;src/lib/video.c:170: i++;
	inc	de
	jr	00105$
00108$:
	ld	sp, ix
	pop	ix
	ret
;src/lib/video.c:175: void v_reset_pal(void) {
;	---------------------------------
; Function v_reset_pal
; ---------------------------------
_v_reset_pal::
;src/lib/video.c:183: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/lib/video.c:184: cpct_setPalette(normal_pal, sizeof(normal_pal));
	ld	hl, #0x0010
	push	hl
	ld	hl, #_v_reset_pal_normal_pal_1_307
	push	hl
	call	_cpct_setPalette
;src/lib/video.c:185: cpct_setBorder(HW_BLACK);
	ld	hl, #0x1410
	push	hl
	call	_cpct_setPALColour
	ret
_v_reset_pal_normal_pal_1_307:
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x0a	; 10
	.db #0x03	; 3
	.db #0x0b	; 11
;src/lib/video.c:189: void v_reset_pal_v(void) {
;	---------------------------------
; Function v_reset_pal_v
; ---------------------------------
_v_reset_pal_v::
;src/lib/video.c:196: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/lib/video.c:197: cpct_setPalette(victory_pal, sizeof(victory_pal));
	ld	hl, #0x0010
	push	hl
	ld	hl, #_v_reset_pal_v_victory_pal_1_309
	push	hl
	call	_cpct_setPalette
;src/lib/video.c:198: cpct_setBorder(HW_BLACK);
	ld	hl, #0x1410
	push	hl
	call	_cpct_setPALColour
	ret
_v_reset_pal_v_victory_pal_1_309:
	.db #0x14	; 20
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x17	; 23
	.db #0x0b	; 11
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x1e	; 30
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x0e	; 14
	.db #0x1f	; 31
	.db #0x1b	; 27
	.db #0x03	; 3
	.db #0x05	; 5
;src/lib/video.c:203: void v_wait_VSYNC(u8 n) {
;	---------------------------------
; Function v_wait_VSYNC
; ---------------------------------
_v_wait_VSYNC::
;src/lib/video.c:205: do {
	ld	hl, #2+0
	add	hl, sp
	ld	c, (hl)
00103$:
;src/lib/video.c:206: cpct_waitVSYNC();
	push	bc
	call	_cpct_waitVSYNC
	pop	bc
;src/lib/video.c:207: if (--n) {
	dec	c
	ld	a, c
	or	a, a
	jr	Z,00104$
;src/lib/video.c:208: __asm__("halt");
	halt
;src/lib/video.c:209: __asm__("halt");
	halt
00104$:
;src/lib/video.c:211: } while (n);
	ld	a, c
	or	a, a
	jr	NZ,00103$
	ret
;src/lib/video.c:215: inline u8* v_get_pos(const u8 x, const u8 y) {
;	---------------------------------
; Function v_get_pos
; ---------------------------------
_v_get_pos::
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ret
;src/lib/video.c:221: void v_flash_brd(u8 col, u16 n) {
;	---------------------------------
; Function v_flash_brd
; ---------------------------------
_v_flash_brd::
;src/lib/video.c:223: cpct_setPALColour(16, col);
	ld	hl, #2+0
	add	hl, sp
	ld	d, (hl)
	ld	e,#0x10
	push	de
	call	_cpct_setPALColour
;src/lib/video.c:224: u_wait(n * 15);
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	push	hl
	call	_u_wait
;src/lib/video.c:225: cpct_setPALColour(16, HW_BLACK);
	ld	hl, #0x1410
	ex	(sp),hl
	call	_cpct_setPALColour
	ret
;src/lib/video.c:229: void v_reset_timers(void) {
;	---------------------------------
; Function v_reset_timers
; ---------------------------------
_v_reset_timers::
;src/lib/video.c:231: v_int_idx = 0;
	ld	hl,#_v_int_idx + 0
	ld	(hl), #0x00
;src/lib/video.c:232: v_pal_idx = 0;
	ld	hl,#_v_pal_idx + 0
	ld	(hl), #0x00
;src/lib/video.c:233: v_frame_c = 0;
	ld	hl,#_v_frame_c + 0
	ld	(hl), #0x00
	ret
;src/lib/video.c:237: void v_interrupt(void) {
;	---------------------------------
; Function v_interrupt
; ---------------------------------
_v_interrupt::
;src/lib/video.c:271: if (v_int_idx == 0)
	ld	a,(#_v_int_idx + 0)
	or	a, a
	jr	NZ,00104$
;src/lib/video.c:272: cpct_setPalette(anim_pal[v_pal_idx], 9);
	ld	bc, #_v_interrupt_anim_pal_1_321+0
	ld	de, (_v_pal_idx)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	bc, #0x0009
	push	bc
	push	hl
	call	_cpct_setPalette
	jr	00105$
00104$:
;src/lib/video.c:273: else if (v_int_idx == 1)
	ld	a,(#_v_int_idx + 0)
	dec	a
	jr	NZ,00105$
;src/lib/video.c:274: cpct_setPalette(fixed_pal, 16);
	ld	hl, #0x0010
	push	hl
	ld	hl, #_v_interrupt_fixed_pal_1_321
	push	hl
	call	_cpct_setPalette
00105$:
;src/lib/video.c:276: if (v_frame_c == 0)
	ld	a,(#_v_frame_c + 0)
	or	a, a
	jr	NZ,00107$
;src/lib/video.c:277: v_pal_idx = ++v_pal_idx % 7;
	ld	hl, #_v_pal_idx+0
	inc	(hl)
	ld	a, #0x07
	push	af
	inc	sp
	ld	a, (_v_pal_idx)
	push	af
	inc	sp
	call	__moduchar
	pop	af
	ld	iy, #_v_pal_idx
	ld	0 (iy), l
00107$:
;src/lib/video.c:280: if (v_int_idx == 2)
	ld	a,(#_v_int_idx + 0)
	sub	a, #0x02
	jr	NZ,00109$
;src/lib/video.c:281: cpct_scanKeyboard_if();
	call	_cpct_scanKeyboard_if
00109$:
;src/lib/video.c:284: if (t_in_titles && g_music_sfx)
	ld	hl,#_t_in_titles+0
	bit	0, (hl)
	jr	Z,00113$
	ld	hl,#_g_music_sfx+0
	bit	0, (hl)
	jr	Z,00113$
;src/lib/video.c:285: if (v_int_idx == 3)
	ld	a,(#_v_int_idx + 0)
	sub	a, #0x03
	jr	NZ,00113$
;src/lib/video.c:286: PlaySound();
	call	_PlaySound
00113$:
;src/lib/video.c:289: v_int_idx = ++v_int_idx % 6;
	ld	hl, #_v_int_idx+0
	inc	(hl)
	ld	a, #0x06
	push	af
	inc	sp
	ld	a, (_v_int_idx)
	push	af
	inc	sp
	call	__moduchar
	pop	af
	ld	iy, #_v_int_idx
	ld	0 (iy), l
;src/lib/video.c:290: v_frame_c = ++v_frame_c % 50;
	ld	hl, #_v_frame_c+0
	inc	(hl)
	ld	a, #0x32
	push	af
	inc	sp
	ld	a, (_v_frame_c)
	push	af
	inc	sp
	call	__moduchar
;src/lib/video.c:291: v_cycle_c = ++v_cycle_c % 12000;
	ld	a,l
	ld	(#_v_frame_c + 0),a
	pop	af
	ld	iy,#_v_cycle_c
	inc	0 (iy)
	jr	NZ,00151$
	inc	1 (iy)
00151$:
	ld	hl, #0x2ee0
	push	hl
	ld	hl, (_v_cycle_c)
	push	hl
	call	__moduint
	pop	af
	pop	af
	ld	(_v_cycle_c), hl
	ret
_v_interrupt_anim_pal_1_321:
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x15	; 21
	.db #0x17	; 23
	.db #0x13	; 19
	.db #0x0b	; 11
	.db #0x13	; 19
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x17	; 23
	.db #0x13	; 19
	.db #0x0b	; 11
	.db #0x13	; 19
	.db #0x17	; 23
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x17	; 23
	.db #0x13	; 19
	.db #0x0b	; 11
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x13	; 19
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x17	; 23
	.db #0x13	; 19
	.db #0x0b	; 11
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x0b	; 11
	.db #0x13	; 19
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x17	; 23
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x13	; 19
	.db #0x0b	; 11
	.db #0x13	; 19
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x17	; 23
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x17	; 23
	.db #0x13	; 19
	.db #0x0b	; 11
	.db #0x13	; 19
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x15	; 21
_v_interrupt_fixed_pal_1_321:
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x0a	; 10
	.db #0x03	; 3
	.db #0x0b	; 11
;src/lib/video.c:295: void v_draw_launch(void) {
;	---------------------------------
; Function v_draw_launch
; ---------------------------------
_v_draw_launch::
;src/lib/video.c:300: GRID_LOC_Y + (launch_st.y * GRID_P_H) + 4);
	ld	a, (#_launch_st + 1)
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, #0x16
	ld	d, a
;src/lib/video.c:299: v_pos = v_get_pos(GRID_LOC_X + (launch_st.x * GRID_P_W) - 2,
	ld	a, (#_launch_st + 0)
	ld	c, a
	add	a, a
	add	a, c
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	ld	e,a
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/lib/video.c:300: GRID_LOC_Y + (launch_st.y * GRID_P_H) + 4);
;src/lib/video.c:302: cpct_drawSpriteMasked(img_launch, v_pos, 7, 20);
	ld	bc, #_img_launch+0
	ld	de, #0x1407
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMasked
	ret
;src/lib/video.c:307: void v_draw_player(void) {
;	---------------------------------
; Function v_draw_player
; ---------------------------------
_v_draw_player::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-19
	add	hl, sp
	ld	sp, hl
;src/lib/video.c:316: if (!g_player.explode) {
	ld	a,(#_g_player + 8)
	ld	-3 (ix), a
;src/lib/video.c:317: v_pos = v_get_pos(g_player.sx, g_player.sy);
	ld	a,(#_g_player + 5)
	ld	-7 (ix), a
	ld	a,(#_g_player + 4)
	ld	-4 (ix), a
;src/lib/video.c:316: if (!g_player.explode) {
	bit	0, -3 (ix)
	jr	NZ,00102$
;src/lib/video.c:317: v_pos = v_get_pos(g_player.sx, g_player.sy);
	ld	d, -7 (ix)
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	ld	e, -4 (ix)
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
;src/lib/video.c:317: v_pos = v_get_pos(g_player.sx, g_player.sy);
;src/lib/video.c:318: idx = g_player.boost ? spr_idx[g_player.dir] : b_spr_idx[g_player.dir];
	ld	hl, #_g_player + 7
	ld	e, (hl)
	ld	a, (#_g_player + 6)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	bit	0, e
	jr	Z,00111$
	ld	de, #_v_draw_player_spr_idx_1_328+0
	add	hl, de
	ld	l, (hl)
	jr	00112$
00111$:
	ld	de, #_v_draw_player_b_spr_idx_1_328+0
	add	hl,de
	ex	de,hl
	ld	a, (de)
	ld	l, a
00112$:
;src/lib/video.c:319: cpct_drawSpriteMasked(player_ts[idx], v_pos, SZ_PLAYER_PX, 
	ld	de, #_player_ts+0
	ld	h, #0x00
	add	hl, hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x1405
	push	hl
	push	bc
	push	de
	call	_cpct_drawSpriteMasked
	jp	00109$
00102$:
;src/lib/video.c:322: ex = g_player.sx;
;src/lib/video.c:323: ey = g_player.sy;
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	ld	h, -7 (ix)
	ld	l, -4 (ix)
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	-12 (ix), h
	ld	-13 (ix), l
	ld	-6 (ix), l
	ld	a, -12 (ix)
	ld	-5 (ix), a
;src/lib/video.c:325: cpct_drawSpriteMasked(explode_ts[g_player.explode_f], e_pos,
	ld	a,(#(_g_player + 0x0009) + 0)
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	sla	-2 (ix)
	rl	-1 (ix)
	ld	a, #<(_explode_ts)
	add	a, -2 (ix)
	ld	-2 (ix), a
	ld	a, #>(_explode_ts)
	adc	a, -1 (ix)
	ld	-1 (ix), a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	hl, #0x0a03
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_cpct_drawSpriteMasked
;src/lib/video.c:327: ex += SZ_GRID_PX;
	ld	a, -4 (ix)
	add	a, #0x03
	ld	-16 (ix), a
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	ld	h, -7 (ix)
	ld	l, -16 (ix)
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	-14 (ix), h
	ld	-15 (ix), l
	ld	-2 (ix), l
	ld	a, -14 (ix)
	ld	-1 (ix), a
;src/lib/video.c:329: cpct_drawSpriteMasked(explode_ts[g_player.explode_f], e_pos,
	ld	a,(#(_g_player + 0x0009) + 0)
	ld	-6 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	sla	-6 (ix)
	rl	-5 (ix)
	ld	a, #<(_explode_ts)
	add	a, -6 (ix)
	ld	-6 (ix), a
	ld	a, #>(_explode_ts)
	adc	a, -5 (ix)
	ld	-5 (ix), a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	hl, #0x0a03
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	call	_cpct_drawSpriteMasked
;src/lib/video.c:331: ey += SZ_GRID_PY;
	ld	a, -7 (ix)
	add	a, #0x0a
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	ld	-17 (ix), a
	push	af
	inc	sp
	ld	a, -16 (ix)
	push	af
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	-10 (ix), h
;src/lib/video.c:332: e_pos = v_get_pos(ex, ey);
	ld	-11 (ix), l
	ld	-19 (ix), l
	ld	a, -10 (ix)
	ld	-18 (ix), a
;src/lib/video.c:333: cpct_drawSpriteMasked(explode_ts[g_player.explode_f], e_pos,
	ld	a, -19 (ix)
	ld	-2 (ix), a
	ld	a, -18 (ix)
	ld	-1 (ix), a
	ld	a,(#(_g_player + 0x0009) + 0)
	ld	-6 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	sla	-6 (ix)
	rl	-5 (ix)
	ld	a, #<(_explode_ts)
	add	a, -6 (ix)
	ld	-6 (ix), a
	ld	a, #>(_explode_ts)
	adc	a, -5 (ix)
	ld	-5 (ix), a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	hl, #0x0a03
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	call	_cpct_drawSpriteMasked
;src/lib/video.c:335: ex -= SZ_GRID_PX;
	ld	a, -16 (ix)
	add	a, #0xfd
	ld	b, a
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	ld	a, -17 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	-8 (ix), h
	ld	-9 (ix), l
	ld	-2 (ix), l
	ld	a, -8 (ix)
	ld	-1 (ix), a
;src/lib/video.c:337: cpct_drawSpriteMasked(explode_ts[g_player.explode_f], e_pos,
	ld	a,(#(_g_player + 0x0009) + 0)
	ld	-6 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	sla	-6 (ix)
	rl	-5 (ix)
	ld	a, #<(_explode_ts)
	add	a, -6 (ix)
	ld	-6 (ix), a
	ld	a, #>(_explode_ts)
	adc	a, -5 (ix)
	ld	-5 (ix), a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	hl, #0x0a03
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	call	_cpct_drawSpriteMasked
00109$:
	ld	sp, ix
	pop	ix
	ret
_v_draw_player_spr_idx_1_328:
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x05	; 5
_v_draw_player_b_spr_idx_1_328:
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x01	; 1
;src/lib/video.c:342: void v_draw_enemies(void) {
;	---------------------------------
; Function v_draw_enemies
; ---------------------------------
_v_draw_enemies::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-12
	add	hl, sp
	ld	sp, hl
;src/lib/video.c:352: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	ld	-12 (ix), #0x00
00125$:
	ld	a, #0x03
	sub	a, -12 (ix)
	jp	PO, 00180$
	xor	a, #0x80
00180$:
	jp	M, 00127$
;src/lib/video.c:355: spr_st = g_enemies[i].fired ? spr_idx_f[i] : spr_idx[i];
	ld	c, -12 (ix)
	ld	a, -12 (ix)
	rla
	sbc	a, a
	ld	b, a
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, #<(_g_enemies)
	add	a, l
	ld	-2 (ix), a
	ld	a, #>(_g_enemies)
	adc	a, h
	ld	-1 (ix), a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	de, #0x0007
	add	hl, de
	bit	0, (hl)
	jr	Z,00129$
	ld	hl, #_v_draw_enemies_spr_idx_f_1_347
	add	hl, bc
	ld	c, (hl)
	jr	00130$
00129$:
	ld	hl, #_v_draw_enemies_spr_idx_1_347
	add	hl, bc
	ld	c, (hl)
00130$:
	ld	-11 (ix), c
;src/lib/video.c:358: loc = g_enemies[i].loc;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	ld	c, (hl)
;src/lib/video.c:361: if (i % 2 == 0) {
	push	bc
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, -12 (ix)
	push	af
	inc	sp
;src/lib/video.c:362: px = GRID_LOC_X + ((loc - 1) * GRID_P_W);
	call	__moduschar
	pop	af
	ld	-2 (ix), l
	pop	bc
	ld	b, #0x00
	ld	a, c
	add	a, #0xff
	ld	-4 (ix), a
	ld	a, b
	adc	a, #0xff
	ld	-3 (ix), a
;src/lib/video.c:361: if (i % 2 == 0) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ,00110$
;src/lib/video.c:362: px = GRID_LOC_X + ((loc - 1) * GRID_P_W);
	ld	c,-4 (ix)
	ld	b,-3 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	add	a, #0x02
	ld	-8 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
;src/lib/video.c:363: py = i == DIR_NORTH ? GRID_LOC_Y - 8 : 
	ld	a, -12 (ix)
	or	a, a
	jr	NZ,00131$
	ld	c, #0x0a
	jr	00132$
00131$:
;src/lib/video.c:364: GRID_LOC_Y + (GRID_U_H * GRID_P_H);
	ld	c, #0xbc
00132$:
	ld	-10 (ix), c
	ld	-9 (ix), #0x00
;src/lib/video.c:365: if (px < 0)
	bit	7, -7 (ix)
	jr	Z,00102$
;src/lib/video.c:366: px = 0;
	ld	-8 (ix), #0x00
	ld	-7 (ix), #0x00
00102$:
;src/lib/video.c:367: if (py < 0)
	bit	7, -9 (ix)
	jr	Z,00111$
;src/lib/video.c:368: py = 0;
	ld	-10 (ix), #0x00
	ld	-9 (ix), #0x00
	jr	00111$
00110$:
;src/lib/video.c:370: px = i == DIR_WEST ? GRID_LOC_X - 2 :
	ld	a, -12 (ix)
	sub	a,#0x03
	jr	Z,00134$
;src/lib/video.c:371: GRID_LOC_X + (GRID_U_W * GRID_P_W);
	ld	a, #0x4d
00134$:
	ld	-8 (ix), a
	rla
	sbc	a, a
	ld	-7 (ix), a
;src/lib/video.c:372: py = GRID_LOC_Y + ((loc - 1) * GRID_P_H);
	ld	c,-4 (ix)
	ld	b,-3 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	bc,#0x0012
	add	hl,bc
	ld	-10 (ix), l
	ld	-9 (ix), h
;src/lib/video.c:373: if (px < 0)
	bit	7, -7 (ix)
	jr	Z,00106$
;src/lib/video.c:374: px = 0;
	ld	-8 (ix), #0x00
	ld	-7 (ix), #0x00
00106$:
;src/lib/video.c:375: if (py < 0)
	bit	7, -9 (ix)
	jr	Z,00111$
;src/lib/video.c:376: py = 0;
	ld	-10 (ix), #0x00
	ld	-9 (ix), #0x00
00111$:
;src/lib/video.c:383: v_pos = v_get_pos(px - 1, py);
	ld	c, -10 (ix)
;src/lib/video.c:385: v_pos = v_get_pos(px, py);
	ld	b, -8 (ix)
;src/lib/video.c:386: cpct_drawSprite(enemies_h_ts[spr_st], v_pos, 3, 8);
	ld	l, -11 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	e, l
	ld	d, h
;src/lib/video.c:380: if (i % 2 == 0) {
	ld	a, -2 (ix)
	or	a, a
	jp	NZ, 00113$
;src/lib/video.c:383: v_pos = v_get_pos(px - 1, py);
	ld	h, c
	ld	a, -8 (ix)
	ld	-6 (ix), a
	add	a, #0xff
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	push	de
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
;src/lib/video.c:384: cpct_drawSolidBox(v_pos, 0, 1, 8);
	push	hl
	pop	iy
	push	bc
	push	de
	ld	hl, #0x0801
	push	hl
	ld	hl, #0x0000
	push	hl
	push	iy
	call	_cpct_drawSolidBox
	pop	de
	pop	bc
;src/lib/video.c:385: v_pos = v_get_pos(px, py);
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	push	de
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
;src/lib/video.c:386: cpct_drawSprite(enemies_h_ts[spr_st], v_pos, 3, 8);
	push	hl
	pop	iy
	ld	hl, #_enemies_h_ts
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	ld	hl, #0x0803
	push	hl
	push	iy
	push	de
	call	_cpct_drawSprite
	pop	bc
;src/lib/video.c:387: v_pos = v_get_pos(px + 3, py);
	ld	b, -6 (ix)
	inc	b
	inc	b
	inc	b
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/lib/video.c:388: cpct_drawSprite(enemies_h_ts[spr_st + 1], v_pos, 3, 8);
	push	hl
	pop	iy
	ld	l, -11 (ix)
	inc	l
	ld	h, #0x00
	add	hl, hl
	ld	de, #_enemies_h_ts
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	ld	hl, #0x0803
	push	hl
	push	iy
	push	de
	call	_cpct_drawSprite
	pop	bc
;src/lib/video.c:389: v_pos = v_get_pos(px + 6, py);
	ld	a, -6 (ix)
	add	a, #0x06
	ld	b, a
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/lib/video.c:390: cpct_drawSprite(enemies_h_ts[spr_st + 2], v_pos, 3, 8);
	push	hl
	pop	iy
	ld	l, -11 (ix)
	inc	l
	inc	l
	ld	h, #0x00
	add	hl, hl
	ld	de, #_enemies_h_ts
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	ld	hl, #0x0803
	push	hl
	push	iy
	push	de
	call	_cpct_drawSprite
	pop	bc
;src/lib/video.c:391: v_pos = v_get_pos(px + 9, py);
	ld	a, -6 (ix)
	add	a, #0x09
	ld	b, a
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/lib/video.c:391: v_pos = v_get_pos(px + 9, py);
;src/lib/video.c:392: cpct_drawSolidBox(v_pos, 0, 1, 8);
	ld	bc, #0x0801
	push	bc
	ld	bc, #0x0000
	push	bc
	push	hl
	call	_cpct_drawSolidBox
	jp	00126$
00113$:
;src/lib/video.c:396: v_pos = v_get_pos(px, py);
	ld	h, b
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	push	de
	ld	a, c
	push	af
	inc	sp
	push	hl
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
;src/lib/video.c:397: cpct_drawSprite(enemies_v_ts[spr_st], v_pos, 2, 12);
	push	hl
	pop	iy
	ld	hl, #_enemies_v_ts
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	ld	hl, #0x0c02
	push	hl
	push	iy
	push	de
	call	_cpct_drawSprite
	pop	bc
;src/lib/video.c:398: v_pos = v_get_pos(px, py + 12);
	ld	c, -10 (ix)
	ld	a, c
	add	a, #0x0c
	ld	d, a
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	ld	e, b
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/lib/video.c:399: cpct_drawSprite(enemies_v_ts[spr_st + 4], v_pos, 2, 12);
	push	hl
	pop	iy
	ld	a, -11 (ix)
	add	a, #0x04
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	ld	de, #_enemies_v_ts
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	ld	hl, #0x0c02
	push	hl
	push	iy
	push	de
	call	_cpct_drawSprite
	pop	bc
;src/lib/video.c:400: v_pos = v_get_pos(px, py + 24);
	ld	a, c
	add	a, #0x18
	ld	d, a
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	ld	e, b
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/lib/video.c:401: cpct_drawSprite(enemies_v_ts[spr_st + 8], v_pos, 2, 12);
	ld	a, -11 (ix)
	add	a, #0x08
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	ld	bc, #_enemies_v_ts
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0c02
	push	hl
	push	de
	push	bc
	call	_cpct_drawSprite
00126$:
;src/lib/video.c:352: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	inc	-12 (ix)
	jp	00125$
00127$:
	ld	sp, ix
	pop	ix
	ret
_v_draw_enemies_spr_idx_1_347:
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x00	; 0
_v_draw_enemies_spr_idx_f_1_347:
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x01	; 1
;src/lib/video.c:407: void v_draw_bolts(const bool all) {
;	---------------------------------
; Function v_draw_bolts
; ---------------------------------
_v_draw_bolts::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/lib/video.c:409: if (g_bolt_count == 0)
	ld	a,(#_g_bolt_count + 0)
	or	a, a
;src/lib/video.c:410: return;
;src/lib/video.c:412: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	jp	Z,00114$
	ld	-3 (ix), #0x00
00112$:
	ld	a, #0x03
	sub	a, -3 (ix)
	jp	PO, 00141$
	xor	a, #0x80
00141$:
	jp	M, 00114$
;src/lib/video.c:413: if (all || g_bolts[i].active) {
	ld	c, -3 (ix)
	ld	a, c
	rlc	a
	sbc	a, a
	ld	b, a
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c, l
	ld	b, h
	bit	0, 4 (ix)
	jr	NZ,00107$
	ld	hl, #_g_bolts
	add	hl, bc
	ld	de, #0x0005
	add	hl, de
	bit	0, (hl)
	jr	Z,00113$
00107$:
;src/lib/video.c:414: if (g_bolts[i].dc) {
	ld	hl, #_g_bolts
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, #0x000b
	add	hl,bc
	ex	de,hl
	ld	a, (de)
	bit	0, a
	jr	Z,00104$
;src/lib/video.c:416: g_bolts[i].dc_y);
	push	bc
	pop	iy
	ld	a, 13 (iy)
	ld	-2 (ix), a
;src/lib/video.c:415: v_draw_grid_cell(g_bolts[i].dc_x,
	push	bc
	pop	iy
	ld	a, 12 (iy)
	ld	-1 (ix), a
	push	bc
	push	de
	ld	h, -2 (ix)
	ld	l, -1 (ix)
	push	hl
	call	_v_draw_grid_cell
	pop	af
	pop	de
	pop	bc
;src/lib/video.c:417: g_bolts[i].dc = false;
	xor	a, a
	ld	(de), a
00104$:
;src/lib/video.c:419: if (g_bolts[i].dp) {
	ld	hl, #0x0008
	add	hl,bc
	ex	de,hl
	ld	a, (de)
	bit	0, a
	jr	Z,00113$
;src/lib/video.c:421: g_bolts[i].dp_y);
	push	bc
	pop	iy
	ld	a, 10 (iy)
;src/lib/video.c:420: v_draw_grid_cell(g_bolts[i].dp_x,
	ld	l, c
	ld	h, b
	ld	bc, #0x0009
	add	hl, bc
	ld	c, (hl)
	push	de
	ld	b, a
	push	bc
	call	_v_draw_grid_cell
	pop	af
	pop	de
;src/lib/video.c:422: g_bolts[i].dp = false;
	xor	a, a
	ld	(de), a
00113$:
;src/lib/video.c:412: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	inc	-3 (ix)
	jp	00112$
00114$:
	ld	sp, ix
	pop	ix
	ret
;src/lib/video.c:429: void v_draw_box(const dim_t *sz) {
;	---------------------------------
; Function v_draw_box
; ---------------------------------
_v_draw_box::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-12
	add	hl, sp
	ld	sp, hl
;src/lib/video.c:434: pw = sz->w * GRID_P_W;
	ld	a, 4 (ix)
	ld	-4 (ix), a
	ld	a, 5 (ix)
	ld	-3 (ix), a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	c, (hl)
	ld	a, c
	add	a, a
	add	a, c
	ld	e, a
;src/lib/video.c:435: ph = sz->h * GRID_P_H;
	ld	a, -4 (ix)
	add	a, #0x01
	ld	-7 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c, (hl)
	ld	a, c
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	ld	-8 (ix), a
;src/lib/video.c:438: x = 80 - (pw + (2 * GRID_P_W));
	ld	a, e
	add	a, #0x06
	ld	c, a
	ld	a, #0x50
	sub	a, c
	ld	b, a
;src/lib/video.c:439: y = 200 - (ph + (2 * GRID_P_H));
	ld	a, -8 (ix)
	add	a, #0x14
	ld	c, a
	ld	a, #0xc8
	sub	a, c
	ld	c, a
;src/lib/video.c:440: x = x / 2;
	ld	a, b
	srl	a
	ld	-9 (ix), a
;src/lib/video.c:441: y = y / 2;
	ld	a, c
	srl	a
;src/lib/video.c:442: v_pos = v_get_pos(x + 1, y + 2);
	ld	-10 (ix), a
	ld	d, a
	inc	d
	inc	d
	ld	b, -9 (ix)
	inc	b
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	de
	ld	e, b
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
	pop	de
;src/lib/video.c:445: cpct_drawSolidBox(v_pos, 0, pw + 4, ph + 4);
	ld	d, -8 (ix)
	inc	d
	inc	d
	inc	d
	inc	d
	ld	a, e
	add	a, #0x04
	ld	e, a
	push	de
	ld	hl, #0x0000
	push	hl
	push	bc
	call	_cpct_drawSolidBox
;src/lib/video.c:449: gy = y;
	ld	b, -10 (ix)
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	ld	h, -10 (ix)
	ld	l, -9 (ix)
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
	pop	bc
;src/lib/video.c:452: gui_ts[GUI_NORTH_WEST], v_pos, GRID_P_W, GRID_P_H);
	ld	hl, (#_gui_ts + 2)
	push	hl
	pop	iy
	push	bc
	ld	hl, #0x0a03
	push	hl
	push	de
	push	iy
	call	_cpct_drawSpriteMasked
	pop	bc
;src/lib/video.c:453: gx += GRID_P_W;
	ld	a, -9 (ix)
	add	a, #0x03
	ld	-5 (ix), a
	ld	c, a
;src/lib/video.c:454: for (u8 i = 0; i < sz->w; i++) {
	ld	-12 (ix), #0x00
00115$:
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,-12 (ix)
	sub	a,(hl)
	jr	NC,00101$
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	push	bc
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/lib/video.c:457: gui_ts[GUI_NORTH], v_pos, GRID_P_W, GRID_P_H);
	push	hl
	pop	iy
	ld	hl, (#_gui_ts + 4)
	push	bc
	ld	de, #0x0a03
	push	de
	push	iy
	push	hl
	call	_cpct_drawSpriteMasked
	pop	bc
;src/lib/video.c:458: gx += GRID_P_W;
	inc	c
	inc	c
	inc	c
;src/lib/video.c:454: for (u8 i = 0; i < sz->w; i++) {
	inc	-12 (ix)
	jr	00115$
00101$:
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	push	bc
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/lib/video.c:462: gui_ts[GUI_NORTH_EAST], v_pos, GRID_P_W, GRID_P_H);
	push	hl
	pop	iy
	ld	hl, (#_gui_ts + 6)
	push	bc
	ld	de, #0x0a03
	push	de
	push	iy
	push	hl
	call	_cpct_drawSpriteMasked
	pop	bc
;src/lib/video.c:463: r = gx;
;src/lib/video.c:467: gy = y + ph;
	ld	a, -10 (ix)
	add	a, -8 (ix)
	ld	e, a
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	push	de
	ld	d, e
	ld	e, -9 (ix)
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
;src/lib/video.c:468: v_pos = v_get_pos(gx, gy);
	ld	b, l
	ld	d, h
;src/lib/video.c:470: gui_ts[GUI_SOUTH_WEST], v_pos, GRID_P_W, GRID_P_H);
	ld	hl, (#_gui_ts + 12)
	push	hl
	pop	iy
	push	bc
	push	de
	ld	hl, #0x0a03
	push	hl
	ld	e,b
	push	de
	push	iy
	call	_cpct_drawSpriteMasked
	pop	de
	pop	bc
;src/lib/video.c:471: gx += GRID_P_W;
	ld	d, -5 (ix)
;src/lib/video.c:472: for (u8 i = 0; i < sz->w; i++) {
	ld	-12 (ix), #0x00
00118$:
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	b, (hl)
	ld	a, -12 (ix)
	sub	a, b
	jr	NC,00102$
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	push	de
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
;src/lib/video.c:475: gui_ts[GUI_SOUTH], v_pos, GRID_P_W, GRID_P_H);
	push	hl
	pop	iy
	ld	hl, (#_gui_ts + 14)
	ld	-2 (ix), l
	ld	-1 (ix), h
	push	bc
	push	de
	ld	hl, #0x0a03
	push	hl
	push	iy
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_cpct_drawSpriteMasked
	pop	de
	pop	bc
;src/lib/video.c:476: gx += GRID_P_W;
	inc	d
	inc	d
	inc	d
;src/lib/video.c:472: for (u8 i = 0; i < sz->w; i++) {
	inc	-12 (ix)
	jr	00118$
00102$:
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/lib/video.c:480: gui_ts[GUI_SOUTH_EAST], v_pos, GRID_P_W, GRID_P_H);
	push	hl
	pop	iy
	ld	hl, (#_gui_ts + 16)
	push	bc
	ld	de, #0x0a03
	push	de
	push	iy
	push	hl
	call	_cpct_drawSpriteMasked
	pop	bc
;src/lib/video.c:483: gx = x;
	ld	a, -9 (ix)
	ld	-11 (ix), a
;src/lib/video.c:484: gy = y + GRID_P_H;
	ld	a, -10 (ix)
	add	a, #0x0a
	ld	e, a
	ld	-2 (ix), e
;src/lib/video.c:485: for (u8 i = 1; i < sz->h; i++) {
	ld	-12 (ix), #0x01
00121$:
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	b, (hl)
	ld	a, -12 (ix)
	sub	a, b
	jr	NC,00103$
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	push	de
	ld	h, -2 (ix)
	ld	l, -11 (ix)
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
;src/lib/video.c:488: gui_ts[GUI_WEST], v_pos, GRID_P_W, GRID_P_H);
	push	hl
	pop	iy
	ld	hl, (#_gui_ts + 8)
	ld	b, l
	ld	d, h
	push	bc
	push	de
	ld	hl, #0x0a03
	push	hl
	push	iy
	ld	e,b
	push	de
	call	_cpct_drawSpriteMasked
	pop	de
	pop	bc
;src/lib/video.c:489: gy += GRID_P_H;
	ld	a, -2 (ix)
	add	a, #0x0a
	ld	-2 (ix), a
;src/lib/video.c:485: for (u8 i = 1; i < sz->h; i++) {
	inc	-12 (ix)
	jr	00121$
00103$:
;src/lib/video.c:493: gx = r;
	ld	-2 (ix), c
;src/lib/video.c:494: gy = y + GRID_P_H;
;src/lib/video.c:495: for (u8 i = 1; i < sz->h; i++) {
	ld	-12 (ix), #0x01
00124$:
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	a,-12 (ix)
	sub	a,(hl)
	jr	NC,00126$
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	de
	ld	d, e
	ld	e, -2 (ix)
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
	pop	de
;src/lib/video.c:498: gui_ts[GUI_EAST], v_pos, GRID_P_W, GRID_P_H);
	ld	hl, (#_gui_ts + 10)
	push	hl
	pop	iy
	push	de
	ld	hl, #0x0a03
	push	hl
	push	bc
	push	iy
	call	_cpct_drawSpriteMasked
	pop	de
;src/lib/video.c:499: gy += GRID_P_H;
	ld	a, e
	add	a, #0x0a
	ld	e, a
;src/lib/video.c:495: for (u8 i = 1; i < sz->h; i++) {
	inc	-12 (ix)
	jr	00124$
00126$:
	ld	sp, ix
	pop	ix
	ret
;src/lib/video.c:504: void v_init_sprites(const u8 level) {
;	---------------------------------
; Function v_init_sprites
; ---------------------------------
_v_init_sprites::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/lib/video.c:506: for (u8 i = CELL_G; i <= CELL_G_P_V_H; i++) {
	ld	c, #0x00
00103$:
	ld	a, #0x07
	sub	a, c
	jr	C,00105$
;src/lib/video.c:507: cpct_memset(v_cells[i], 0, sizeof(v_cells[i]));
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ld	de, #_v_cells
	add	hl, de
	ld	e,l
	ld	d,h
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	hl
	pop	iy
	push	bc
	push	de
	ld	hl, #0x0002
	push	hl
	xor	a, a
	push	af
	inc	sp
	push	iy
	call	_cpct_memset
	pop	de
	pop	bc
;src/lib/video.c:508: v_generate_sprite(v_cells[i], v_spr_map[i], level);
	ld	hl, #_v_spr_map
	ld	b, #0x00
	add	hl, bc
	ld	b, (hl)
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	ld	a, 4 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_v_generate_sprite
	pop	af
	pop	af
	pop	bc
;src/lib/video.c:506: for (u8 i = CELL_G; i <= CELL_G_P_V_H; i++) {
	inc	c
	jr	00103$
00105$:
	pop	ix
	ret
;src/lib/video.c:513: inline u8* v_get_sprite_p(const u8 value) {
;	---------------------------------
; Function v_get_sprite_p
; ---------------------------------
_v_get_sprite_p::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/lib/video.c:515: switch (value) {
	ld	a, 4 (ix)
	dec	a
	jr	Z,00101$
	ld	a, 4 (ix)
	sub	a, #0x03
	jr	Z,00102$
	ld	a, 4 (ix)
	sub	a, #0x05
	jr	Z,00103$
	ld	a, 4 (ix)
	sub	a, #0x07
	jr	Z,00106$
	ld	a, 4 (ix)
	sub	a, #0x09
	jr	Z,00104$
	ld	a, 4 (ix)
	sub	a, #0x0b
	jr	Z,00107$
	ld	a, 4 (ix)
	sub	a, #0x0d
	jr	Z,00105$
	ld	a, 4 (ix)
	sub	a, #0x0f
	jr	Z,00108$
	jr	00109$
;src/lib/video.c:516: case FLAG_GRID:
00101$:
;src/lib/video.c:517: return v_cells[CELL_G];
	ld	hl, (#_v_cells + 0)
	jr	00111$
;src/lib/video.c:519: case FLAG_GRID | FLAG_POD:
00102$:
;src/lib/video.c:520: return v_cells[CELL_G_P];
	ld	hl, (#(_v_cells + 0x0002) + 0)
	jr	00111$
;src/lib/video.c:522: case FLAG_GRID | FLAG_V_BOLT:
00103$:
;src/lib/video.c:523: return v_cells[CELL_G_V];
	ld	hl, (#(_v_cells + 0x0004) + 0)
	jr	00111$
;src/lib/video.c:525: case FLAG_GRID | FLAG_H_BOLT:
00104$:
;src/lib/video.c:526: return v_cells[CELL_G_H];
	ld	hl, (#(_v_cells + 0x0006) + 0)
	jr	00111$
;src/lib/video.c:528: case FLAG_GRID | FLAG_V_BOLT | FLAG_H_BOLT:
00105$:
;src/lib/video.c:529: return v_cells[CELL_G_V_H];
	ld	hl, (#(_v_cells + 0x0008) + 0)
	jr	00111$
;src/lib/video.c:531: case FLAG_GRID | FLAG_POD | FLAG_V_BOLT:
00106$:
;src/lib/video.c:532: return v_cells[CELL_G_P_V];
	ld	hl, (#(_v_cells + 0x000a) + 0)
	jr	00111$
;src/lib/video.c:534: case FLAG_GRID | FLAG_POD | FLAG_H_BOLT:
00107$:
;src/lib/video.c:535: return v_cells[CELL_G_P_H];
	ld	hl, (#(_v_cells + 0x000c) + 0)
	jr	00111$
;src/lib/video.c:537: case FLAG_GRID | FLAG_POD | FLAG_V_BOLT | FLAG_H_BOLT:
00108$:
;src/lib/video.c:538: return v_cells[CELL_G_P_V_H];
	ld	hl, (#(_v_cells + 0x000e) + 0)
	jr	00111$
;src/lib/video.c:540: default:
00109$:
;src/lib/video.c:541: return v_cells[CELL_G];
	ld	hl, (#_v_cells + 0)
;src/lib/video.c:542: }
00111$:
	pop	ix
	ret
;src/lib/video.c:546: void v_draw_player_bb(const i8 x, const i8 y) {
;	---------------------------------
; Function v_draw_player_bb
; ---------------------------------
_v_draw_player_bb::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-9
	add	hl, sp
	ld	sp, hl
;src/lib/video.c:552: cpct_memset(v_player_buf, 0, sizeof(v_player_buf));
	ld	hl, #0x010e
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	hl, #_v_player_buf
	push	hl
	call	_cpct_memset
;src/lib/video.c:553: for (i8 j = x; j < x + PLAYER_BUF_W; j++) {
	ld	a, 4 (ix)
	ld	-9 (ix), a
00121$:
	ld	c, 4 (ix)
	ld	a, 4 (ix)
	rla
	sbc	a, a
	ld	b, a
	inc	bc
	inc	bc
	inc	bc
	ld	a, -9 (ix)
	ld	-4 (ix), a
	ld	a, -9 (ix)
	rla
	sbc	a, a
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sub	a, c
	ld	a, -3 (ix)
	sbc	a, b
	jp	PO, 00179$
	xor	a, #0x80
00179$:
	jp	P, 00105$
;src/lib/video.c:554: for (i8 k = y; k < y + PLAYER_BUF_H; k++) {
	ld	a, 5 (ix)
	ld	-5 (ix), a
	ld	a, -9 (ix)
	sub	a, 4 (ix)
	ld	-6 (ix), a
	ld	c, a
	add	a, a
	add	a, c
	ld	-6 (ix), a
00119$:
	ld	a, 5 (ix)
	ld	-2 (ix), a
	ld	a, 5 (ix)
	rla
	sbc	a, a
	ld	-1 (ix), a
	ld	a, -2 (ix)
	add	a, #0x03
	ld	-2 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	a, -5 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	rla
	sbc	a, a
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sub	a, -2 (ix)
	ld	a, -7 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00180$
	xor	a, #0x80
00180$:
	jp	P, 00122$
;src/lib/video.c:556: if (!u_bounds_check(j, k))
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_u_bounds_check
	pop	af
	pop	af
	ld	c, l
	bit	0, c
	jp	Z, 00103$
;src/lib/video.c:560: by = (k - y) * GRID_P_H;
	ld	a, -5 (ix)
	sub	a, 5 (ix)
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
;src/lib/video.c:562: b_pos = cpctm_spriteBufferPtr(v_player_buf,
	ld	c,a
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	de, #_v_player_buf
	add	hl, de
	ld	a, -6 (ix)
	add	a, l
	ld	c, a
	ld	a, #0x00
	adc	a, h
	ld	b, a
;src/lib/video.c:564: cell = g_level[u_get_xy(j, k)];
	push	bc
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_u_get_xy
	pop	af
	pop	af
	pop	bc
	ld	de, #_g_level
	add	hl, de
	ld	a, (hl)
;src/lib/video.c:515: switch (value) {
	cp	a, #0x01
	jr	Z,00106$
	cp	a, #0x03
	jr	Z,00107$
	cp	a, #0x05
	jr	Z,00108$
	cp	a, #0x07
	jr	Z,00111$
	cp	a, #0x09
	jr	Z,00109$
	cp	a, #0x0b
	jr	Z,00112$
	cp	a, #0x0d
	jr	Z,00110$
	sub	a, #0x0f
	jr	Z,00113$
	jr	00114$
;src/lib/video.c:516: case FLAG_GRID:
00106$:
;src/lib/video.c:517: return v_cells[CELL_G];
	ld	hl, (#_v_cells + 0)
	jr	00116$
;src/lib/video.c:519: case FLAG_GRID | FLAG_POD:
00107$:
;src/lib/video.c:520: return v_cells[CELL_G_P];
	ld	hl, (#_v_cells + 2)
	jr	00116$
;src/lib/video.c:522: case FLAG_GRID | FLAG_V_BOLT:
00108$:
;src/lib/video.c:523: return v_cells[CELL_G_V];
	ld	hl, (#_v_cells + 4)
	jr	00116$
;src/lib/video.c:525: case FLAG_GRID | FLAG_H_BOLT:
00109$:
;src/lib/video.c:526: return v_cells[CELL_G_H];
	ld	hl, (#_v_cells + 6)
	jr	00116$
;src/lib/video.c:528: case FLAG_GRID | FLAG_V_BOLT | FLAG_H_BOLT:
00110$:
;src/lib/video.c:529: return v_cells[CELL_G_V_H];
	ld	hl, (#_v_cells + 8)
	jr	00116$
;src/lib/video.c:531: case FLAG_GRID | FLAG_POD | FLAG_V_BOLT:
00111$:
;src/lib/video.c:532: return v_cells[CELL_G_P_V];
	ld	hl, (#_v_cells + 10)
	jr	00116$
;src/lib/video.c:534: case FLAG_GRID | FLAG_POD | FLAG_H_BOLT:
00112$:
;src/lib/video.c:535: return v_cells[CELL_G_P_H];
	ld	hl, (#_v_cells + 12)
	jr	00116$
;src/lib/video.c:537: case FLAG_GRID | FLAG_POD | FLAG_V_BOLT | FLAG_H_BOLT:
00113$:
;src/lib/video.c:538: return v_cells[CELL_G_P_V_H];
	ld	hl, (#_v_cells + 14)
	jr	00116$
;src/lib/video.c:540: default:
00114$:
;src/lib/video.c:541: return v_cells[CELL_G];
	ld	hl, (#_v_cells + 0)
;src/lib/video.c:565: spr = v_get_sprite_p(cell);
00116$:
;src/lib/video.c:567: GRID_P_W, GRID_P_H, spr);
;src/lib/video.c:566: cpct_drawToSpriteBuffer(PLAYER_BUF_PW, b_pos,
	push	hl
	ld	hl, #0x0a03
	push	hl
	push	bc
	ld	hl, #0x0009
	push	hl
	call	_cpct_drawToSpriteBuffer
00103$:
;src/lib/video.c:554: for (i8 k = y; k < y + PLAYER_BUF_H; k++) {
	inc	-5 (ix)
	jp	00119$
00122$:
;src/lib/video.c:553: for (i8 j = x; j < x + PLAYER_BUF_W; j++) {
	inc	-9 (ix)
	jp	00121$
00105$:
;src/lib/video.c:572: px = x * GRID_P_W; 
	ld	c, 4 (ix)
	ld	a, c
	rlc	a
	sbc	a, a
	ld	b, a
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	c, l
;src/lib/video.c:573: py = y * GRID_P_H;
	ld	e, 5 (ix)
	ld	a, e
	rlc	a
	sbc	a, a
	ld	d, a
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
;src/lib/video.c:575: v_pos = v_get_pos(GRID_LOC_X + px, GRID_LOC_Y + py);
	ld	a, l
	add	a, #0x12
	ld	d, a
	inc	c
	inc	c
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	ld	e, c
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/lib/video.c:575: v_pos = v_get_pos(GRID_LOC_X + px, GRID_LOC_Y + py);
;src/lib/video.c:576: cpct_drawSprite(v_player_buf, v_pos, PLAYER_BUF_PW, PLAYER_BUF_PH);
	ld	bc, #0x1e09
	push	bc
	push	hl
	ld	hl, #_v_player_buf
	push	hl
	call	_cpct_drawSprite
	ld	sp, ix
	pop	ix
	ret
;src/lib/video.c:580: static void v_generate_sprite(u8* addr, const u8 mask, const u8 level) {
;	---------------------------------
; Function v_generate_sprite
; ---------------------------------
_v_generate_sprite:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/lib/video.c:582: const u8 bg = g_game_grid_bg[level - 1];
	ld	de, #_g_game_grid_bg+0
	ld	c, 7 (ix)
	dec	c
	ld	l,c
	ld	h,#0x00
	add	hl, de
	ld	e, (hl)
;src/lib/video.c:583: const u8 fg = g_game_grid_fg[level - 1];
	ld	hl, #_g_game_grid_fg+0
	ld	b, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	-2 (ix), a
;src/lib/video.c:584: const u8 bt = g_game_grid_bt[level - 1];
	ld	hl, #_g_game_grid_bt+0
	ld	b,#0x00
	add	hl, bc
	ld	a, (hl)
	ld	-1 (ix), a
;src/lib/video.c:587: spr = cpctm_spriteBufferPtr(addr, CELL_BUF_PW, 0, 0);
	ld	c,4 (ix)
	ld	b,5 (ix)
;src/lib/video.c:591: CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_bg_ts[bg]);
;src/lib/video.c:589: if (mask & FLAG_GRID)
	bit	0, 6 (ix)
	jr	Z,00102$
;src/lib/video.c:591: CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_bg_ts[bg]);
	ld	l, e
	ld	h, #0x00
	add	hl, hl
	ld	de, #_grid_bg_ts
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	push	de
	ld	hl, #0x0a03
	push	hl
	push	bc
	ld	h, #0x00
	push	hl
	call	_cpct_drawToSpriteBuffer
	pop	bc
00102$:
;src/lib/video.c:592: if (mask & FLAG_POD)
	bit	1, 6 (ix)
	jr	Z,00104$
;src/lib/video.c:594: CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_fg_ts[fg]);
	ld	de, #_grid_fg_ts+0
	ld	l, -2 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	push	de
	ld	hl, #0x0a03
	push	hl
	push	bc
	ld	h, #0x00
	push	hl
	call	_cpct_drawToSpriteBufferMasked
	pop	bc
00104$:
;src/lib/video.c:595: if (mask & FLAG_V_BOLT)
	bit	2, 6 (ix)
	jr	Z,00106$
;src/lib/video.c:597: CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_fg_ts[bt + 2]);
	ld	de, #_grid_fg_ts+0
	ld	l, -1 (ix)
	inc	l
	inc	l
	ld	h, #0x00
	add	hl, hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	push	de
	ld	hl, #0x0a03
	push	hl
	push	bc
	ld	h, #0x00
	push	hl
	call	_cpct_drawToSpriteBufferMasked
	pop	bc
00106$:
;src/lib/video.c:598: if (mask & FLAG_H_BOLT)
	bit	3, 6 (ix)
	jr	Z,00109$
;src/lib/video.c:600: CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_fg_ts[bt]);
	ld	de, #_grid_fg_ts+0
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	de
	ld	hl, #0x0a03
	push	hl
	push	bc
	ld	h, #0x00
	push	hl
	call	_cpct_drawToSpriteBufferMasked
00109$:
	ld	sp, ix
	pop	ix
	ret
;src/lib/video.c:604: static void v_draw_grid_cell(const u8 x, const u8 y) {
;	---------------------------------
; Function v_draw_grid_cell
; ---------------------------------
_v_draw_grid_cell:
	push	ix
	ld	ix,#0
	add	ix,sp
;src/lib/video.c:610: idx = u_get_xy(x, y);
	ld	e, 5 (ix)
	ld	d, #0x00
	ld	c, 4 (ix)
	ld	b, #0x00
	push	de
	push	bc
	call	_u_get_xy
	pop	af
	pop	af
	ld	c, l
	ld	b, h
;src/lib/video.c:612: cell = g_level[idx];
	ld	hl, #_g_level+0
	add	hl, bc
	ld	a, (hl)
;src/lib/video.c:515: switch (value) {
	cp	a, #0x01
	jr	Z,00101$
	cp	a, #0x03
	jr	Z,00102$
	cp	a, #0x05
	jr	Z,00103$
	cp	a, #0x07
	jr	Z,00106$
	cp	a, #0x09
	jr	Z,00104$
	cp	a, #0x0b
	jr	Z,00107$
	cp	a, #0x0d
	jr	Z,00105$
	sub	a, #0x0f
	jr	Z,00108$
	jr	00109$
;src/lib/video.c:516: case FLAG_GRID:
00101$:
;src/lib/video.c:517: return v_cells[CELL_G];
	ld	bc, (#_v_cells + 0)
	jr	00111$
;src/lib/video.c:519: case FLAG_GRID | FLAG_POD:
00102$:
;src/lib/video.c:520: return v_cells[CELL_G_P];
	ld	bc, (#(_v_cells + 0x0002) + 0)
	jr	00111$
;src/lib/video.c:522: case FLAG_GRID | FLAG_V_BOLT:
00103$:
;src/lib/video.c:523: return v_cells[CELL_G_V];
	ld	bc, (#(_v_cells + 0x0004) + 0)
	jr	00111$
;src/lib/video.c:525: case FLAG_GRID | FLAG_H_BOLT:
00104$:
;src/lib/video.c:526: return v_cells[CELL_G_H];
	ld	bc, (#(_v_cells + 0x0006) + 0)
	jr	00111$
;src/lib/video.c:528: case FLAG_GRID | FLAG_V_BOLT | FLAG_H_BOLT:
00105$:
;src/lib/video.c:529: return v_cells[CELL_G_V_H];
	ld	bc, (#(_v_cells + 0x0008) + 0)
	jr	00111$
;src/lib/video.c:531: case FLAG_GRID | FLAG_POD | FLAG_V_BOLT:
00106$:
;src/lib/video.c:532: return v_cells[CELL_G_P_V];
	ld	bc, (#(_v_cells + 0x000a) + 0)
	jr	00111$
;src/lib/video.c:534: case FLAG_GRID | FLAG_POD | FLAG_H_BOLT:
00107$:
;src/lib/video.c:535: return v_cells[CELL_G_P_H];
	ld	bc, (#(_v_cells + 0x000c) + 0)
	jr	00111$
;src/lib/video.c:537: case FLAG_GRID | FLAG_POD | FLAG_V_BOLT | FLAG_H_BOLT:
00108$:
;src/lib/video.c:538: return v_cells[CELL_G_P_V_H];
	ld	bc, (#(_v_cells + 0x000e) + 0)
	jr	00111$
;src/lib/video.c:540: default:
00109$:
;src/lib/video.c:541: return v_cells[CELL_G];
	ld	bc, (#_v_cells + 0)
;src/lib/video.c:613: spr = v_get_sprite_p(cell);
00111$:
;src/lib/video.c:615: px = x * GRID_P_W;
	ld	e,4 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
;src/lib/video.c:616: py = y * GRID_P_H;
	push	hl
	ld	e,5 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
;src/lib/video.c:619: v_pos = v_get_pos(GRID_LOC_X + px, GRID_LOC_Y + py);
	ld	a, l
	add	a, #0x12
	ld	h, a
	ld	d, e
	inc	d
	inc	d
;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	ld	l, d
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/lib/video.c:619: v_pos = v_get_pos(GRID_LOC_X + px, GRID_LOC_Y + py);
;src/lib/video.c:620: cpct_drawSprite(spr, v_pos, GRID_P_W, GRID_P_H);
	ld	de, #0x0a03
	push	de
	push	hl
	push	bc
	call	_cpct_drawSprite
	pop	ix
	ret
;src/lib/video.c:624: void v_draw_grid(void) {
;	---------------------------------
; Function v_draw_grid
; ---------------------------------
_v_draw_grid::
;src/lib/video.c:627: for (int x = 0; x < GRID_U_W; x++) {
	ld	bc, #0x0000
00107$:
	ld	a, c
	sub	a, #0x19
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	ret	NC
;src/lib/video.c:628: for (int y = 0; y < GRID_U_H; y++) {
	ld	de, #0x0000
00104$:
	ld	a, e
	sub	a, #0x11
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00108$
;src/lib/video.c:629: v_draw_grid_cell(x, y);
	ld	h, e
	ld	a, c
	push	bc
	push	de
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_v_draw_grid_cell
	pop	af
	pop	de
	pop	bc
;src/lib/video.c:628: for (int y = 0; y < GRID_U_H; y++) {
	inc	de
	jr	00104$
00108$:
;src/lib/video.c:627: for (int x = 0; x < GRID_U_W; x++) {
	inc	bc
	jr	00107$
	.area _CODE
	.area _INITIALIZER
__xinit__v_int_idx:
	.db #0x00	; 0
__xinit__v_pal_idx:
	.db #0x00	; 0
__xinit__v_frame_c:
	.db #0x00	; 0
__xinit__v_cycle_c:
	.dw #0x0000
	.area _CABS (ABS)
