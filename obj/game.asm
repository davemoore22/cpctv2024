;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module game
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _c_can_continue
	.globl _c_scr_stop
	.globl _c_scr_start
	.globl _h_enter_start
	.globl _h_insert
	.globl _h_stop
	.globl _b_scr_stop
	.globl _b_scr_start
	.globl _v_draw_launch
	.globl _v_draw_player_bb
	.globl _v_draw_grid
	.globl _v_init_sprites
	.globl _v_draw_box
	.globl _v_draw_bolts
	.globl _v_draw_enemies
	.globl _v_draw_player
	.globl _v_print_n
	.globl _v_print
	.globl _v_print_c
	.globl _v_wipe_scr
	.globl _v_clr_scr
	.globl _v_reset_pal
	.globl _v_blk_scr
	.globl _u_check_collide
	.globl _u_power_2
	.globl _u_bounds_delta_check
	.globl _u_bounds_check
	.globl _u_get_xy
	.globl _u_get_delta
	.globl _u_reset_clock
	.globl _u_clear_input
	.globl _u_clock_interrupt
	.globl _u_get_width
	.globl _u_wait
	.globl _u_wait_for_key
	.globl _StopMusic
	.globl _PlaySound
	.globl _PlaySFX
	.globl _PlayMusic
	.globl _InitSound
	.globl _cpct_setPALColour
	.globl _cpct_isAnyKeyPressed
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_if
	.globl _cpct_scanKeyboard
	.globl _cpct_memset
	.globl _cpct_removeInterruptHandler
	.globl _cpct_setInterruptHandler
	.globl _g_bolt_count
	.globl _g_frame_c
	.globl _g_int_idx
	.globl _g_current_score
	.globl _g_controls
	.globl _g_hiscores
	.globl _g_player
	.globl _g_lives_left
	.globl _g_current_round
	.globl _g_current_level
	.globl _g_pods_left
	.globl _g_level
	.globl _g_bolts
	.globl _g_enemies
	.globl _g_music_sfx
	.globl _g_setup
	.globl _g_start
	.globl _g_stop
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_g_music_sfx::
	.ds 1
_g_enemies::
	.ds 32
_g_bolts::
	.ds 56
_g_level::
	.ds 425
_g_pods_left::
	.ds 1
_g_current_level::
	.ds 1
_g_current_round::
	.ds 1
_g_lives_left::
	.ds 1
_g_player::
	.ds 10
_g_hiscores::
	.ds 90
_g_controls::
	.ds 18
_g_current_score::
	.ds 4
_b_score:
	.ds 4
_r_px:
	.ds 1
_r_py:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_int_idx::
	.ds 1
_g_frame_c::
	.ds 1
_g_bolt_count::
	.ds 1
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
;src/game.c:63: void g_setup(void) {
;	---------------------------------
; Function g_setup
; ---------------------------------
_g_setup::
;src/game.c:66: g_music_sfx = true;
	ld	hl,#_g_music_sfx + 0
	ld	(hl), #0x01
;src/game.c:69: g_controls[KEY_UP] = Key_Q;
	ld	hl, #0x0808
	ld	(_g_controls), hl
;src/game.c:70: g_controls[KEY_DOWN] = Key_A;
	ld	h, #0x20
	ld	((_g_controls + 0x0002)), hl
;src/game.c:71: g_controls[KEY_LEFT] = Key_O;
	ld	hl, #0x0404
	ld	((_g_controls + 0x0004)), hl
;src/game.c:72: g_controls[KEY_RIGHT] = Key_P;
	ld	hl, #0x0803
	ld	((_g_controls + 0x0006)), hl
;src/game.c:73: g_controls[KEY_PAUSE] = Key_H;
	ld	hl, #0x1005
	ld	((_g_controls + 0x0008)), hl
;src/game.c:74: g_controls[JOY_UP] = Joy0_Up;
	ld	hl, #0x0109
	ld	((_g_controls + 0x000a)), hl
;src/game.c:75: g_controls[JOY_DOWN] = Joy0_Down;
	ld	h, #0x02
	ld	((_g_controls + 0x000c)), hl
;src/game.c:76: g_controls[JOY_LEFT] = Joy0_Left;
	ld	h, #0x04
	ld	((_g_controls + 0x000e)), hl
;src/game.c:77: g_controls[JOY_RIGHT] = Joy0_Right;
	ld	h, #0x08
	ld	((_g_controls + 0x0010)), hl
;src/game.c:83: h_insert("DSM", 10, 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x000a
	push	hl
	ld	hl, #___str_0
	push	hl
	call	_h_insert
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
;src/game.c:84: h_insert("DSM", 100, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x0064
	push	hl
	ld	hl, #___str_0
	push	hl
	call	_h_insert
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
;src/game.c:85: h_insert("DSM", 1000, 2);
	ld	a, #0x02
	push	af
	inc	sp
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x03e8
	push	hl
	ld	hl, #___str_0
	push	hl
	call	_h_insert
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
;src/game.c:86: h_insert("DSM", 10000, 3);
	ld	a, #0x03
	push	af
	inc	sp
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x2710
	push	hl
	ld	hl, #___str_0
	push	hl
	call	_h_insert
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
;src/game.c:87: h_insert("DSM", 20000, 4);
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x4e20
	push	hl
	ld	hl, #___str_0
	push	hl
	call	_h_insert
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
;src/game.c:88: h_insert("DSM", 30000, 5);
	ld	a, #0x05
	push	af
	inc	sp
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x7530
	push	hl
	ld	hl, #___str_0
	push	hl
	call	_h_insert
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
;src/game.c:89: h_insert("DSM", 40000, 6);
	ld	a, #0x06
	push	af
	inc	sp
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x9c40
	push	hl
	ld	hl, #___str_0
	push	hl
	call	_h_insert
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
;src/game.c:90: h_insert("DSM", 50000, 7);
	ld	a, #0x07
	push	af
	inc	sp
	ld	hl, #0x0000
	push	hl
	ld	hl, #0xc350
	push	hl
	ld	hl, #___str_0
	push	hl
	call	_h_insert
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
;src/game.c:91: h_insert("DSM", 100000, 8);
	ld	a, #0x08
	push	af
	inc	sp
	ld	hl, #0x0001
	push	hl
	ld	hl, #0x86a0
	push	hl
	ld	hl, #___str_0
	push	hl
	call	_h_insert
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
;src/game.c:92: h_insert("DSM", 250000, 9);
	ld	a, #0x09
	push	af
	inc	sp
	ld	hl, #0x0003
	push	hl
	ld	hl, #0xd090
	push	hl
	ld	hl, #___str_0
	push	hl
	call	_h_insert
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
	ret
_hud_loc:
	.db #0x00	; 0
	.db #0x00	; 0
_player_st:
	.db #0x0c	; 12
	.db #0x08	; 8
_sc_sz:
	.db #0x0d	; 13
	.db #0x0b	; 11
_pa_sz:
	.db #0x0d	; 13
	.db #0x05	; 5
___str_0:
	.ascii "DSM"
	.db 0x00
;src/game.c:96: void g_start(void) {
;	---------------------------------
; Function g_start
; ---------------------------------
_g_start::
	dec	sp
;src/game.c:98: bool game_over = false, lvl_complete = false, vic_cont;
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;src/game.c:101: g_current_level = 1;
	ld	hl,#_g_current_level + 0
	ld	(hl), #0x01
;src/game.c:102: g_current_round = 1;
	ld	hl,#_g_current_round + 0
	ld	(hl), #0x01
;src/game.c:103: g_lives_left = 5;
	ld	hl,#_g_lives_left + 0
	ld	(hl), #0x05
;src/game.c:104: g_current_score = 0;
	xor	a, a
	ld	iy, #_g_current_score
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
;src/game.c:107: while (!game_over) {
00115$:
	ld	hl, #0+0
	add	hl, sp
	bit	0, (hl)
	jp	NZ, 00118$
;src/game.c:111: b_scr_start(SCR_GET_READY);
	xor	a, a
	push	af
	inc	sp
	call	_b_scr_start
	inc	sp
;src/game.c:113: b_scr_stop();
	call	_b_scr_stop
;src/game.c:116: v_blk_scr();
	call	_v_blk_scr
;src/game.c:117: v_clr_scr();
	call	_v_clr_scr
;src/game.c:120: g_load_level();
	call	_g_load_level
;src/game.c:121: g_reset_enemies();
	call	_g_reset_enemies
;src/game.c:124: g_reset_timers();
	call	_g_reset_timers
;src/game.c:127: InitSound();
	call	_InitSound
;src/game.c:128: PlayMusic(0);
	xor	a, a
	push	af
	inc	sp
	call	_PlayMusic
	inc	sp
;src/game.c:129: cpct_setInterruptHandler(g_interrupt);
	ld	hl, #_g_interrupt
	call	_cpct_setInterruptHandler
;src/game.c:131: u_reset_clock();
	call	_u_reset_clock
;src/game.c:132: v_reset_pal();
	call	_v_reset_pal
;src/game.c:134: g_clock_on = true;
	ld	hl,#_g_clock_on + 0
	ld	(hl), #0x01
;src/game.c:137: lvl_complete = g_play_level();
	call	_g_play_level
	ld	c, l
;src/game.c:140: if (lvl_complete && (g_current_round == 1) &&
	bit	0, l
	jr	Z,00104$
	ld	a,(#_g_current_round + 0)
	dec	a
	jr	NZ,00104$
;src/game.c:141: (g_current_level == 8)) {
	ld	a,(#_g_current_level + 0)
	sub	a, #0x08
	jr	NZ,00104$
;src/game.c:143: c_scr_start();
	call	_c_scr_start
;src/game.c:144: vic_cont = c_can_continue();
	call	_c_can_continue
;src/game.c:145: if (!vic_cont) {
	bit	0, l
	jr	NZ,00102$
;src/game.c:146: game_over = true;
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x01
;src/game.c:147: g_lives_left = 0;
	ld	hl,#_g_lives_left + 0
	ld	(hl), #0x00
;src/game.c:148: lvl_complete = false;	
00102$:
;src/game.c:150: c_scr_stop();
	call	_c_scr_stop
;src/game.c:151: lvl_complete = true;
	ld	c, #0x01
00104$:
;src/game.c:155: g_clock_on = false;
	ld	hl,#_g_clock_on + 0
	ld	(hl), #0x00
;src/game.c:156: g_stop();
	push	bc
	call	_g_stop
	pop	bc
;src/game.c:158: if (lvl_complete) {
	bit	0, c
	jr	Z,00113$
;src/game.c:161: ++g_current_level;
	ld	iy, #_g_current_level
	inc	0 (iy)
;src/game.c:162: if (g_current_level > 8) {
	ld	a, #0x08
	sub	a, 0 (iy)
	jp	NC, 00115$
;src/game.c:163: ++g_current_round;
	ld	hl, #_g_current_round+0
	inc	(hl)
;src/game.c:164: g_current_level = 1;
	ld	hl,#_g_current_level + 0
	ld	(hl), #0x01
;src/game.c:165: ++g_lives_left;
	ld	hl, #_g_lives_left+0
	inc	(hl)
	jp	00115$
00113$:
;src/game.c:170: if (g_lives_left < 1) {
	ld	a,(#_g_lives_left + 0)
	sub	a, #0x01
	jr	NC,00110$
;src/game.c:173: g_stop();
	call	_g_stop
;src/game.c:174: b_scr_start(SCR_GAME_OVER);
	ld	a, #0x01
	push	af
	inc	sp
	call	_b_scr_start
	inc	sp
;src/game.c:175: b_scr_stop();
	call	_b_scr_stop
;src/game.c:176: h_enter_start();
	call	_h_enter_start
;src/game.c:177: h_stop();
	call	_h_stop
;src/game.c:179: game_over = true;
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x01
	jp	00115$
00110$:
;src/game.c:181: v_wipe_scr(true);
	ld	a, #0x01
	push	af
	inc	sp
	call	_v_wipe_scr
	inc	sp
;src/game.c:182: cpct_removeInterruptHandler();
	call	_cpct_removeInterruptHandler
;src/game.c:183: g_reset_timers();
	call	_g_reset_timers
;src/game.c:184: --g_lives_left;
	ld	hl, #_g_lives_left+0
	dec	(hl)
	jp	00115$
00118$:
	inc	sp
	ret
;src/game.c:191: void g_stop(void) {
;	---------------------------------
; Function g_stop
; ---------------------------------
_g_stop::
;src/game.c:193: v_wipe_scr(true);
	ld	a, #0x01
	push	af
	inc	sp
	call	_v_wipe_scr
	inc	sp
;src/game.c:194: v_blk_scr();
	call	_v_blk_scr
;src/game.c:195: v_clr_scr();
	call	_v_clr_scr
;src/game.c:196: cpct_removeInterruptHandler();
	call	_cpct_removeInterruptHandler
;src/game.c:197: StopMusic();
	jp  _StopMusic
;src/game.c:201: static void g_load_level(void) {
;	---------------------------------
; Function g_load_level
; ---------------------------------
_g_load_level:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
;src/game.c:205: u8 count = 0;
	ld	c, #0x00
;src/game.c:206: u16 idx = 0;
	ld	-5 (ix), #0x00
	ld	-4 (ix), #0x00
;src/game.c:210: cpct_memset(&g_level, FLAG_GRID, sizeof(g_level));
	push	bc
	ld	hl, #0x01a9
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_g_level
	push	hl
	call	_cpct_memset
	pop	bc
;src/game.c:211: byte_p = g_game_grids[g_current_level - 1];
	ld	hl,#_g_current_level + 0
	ld	e, (hl)
	dec	e
	ld	l, e
	ld	h, #0x00
	add	hl, hl
	ld	de, #_g_game_grids
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;src/game.c:214: v_init_sprites(g_current_level);
	push	bc
	push	de
	ld	a, (_g_current_level)
	push	af
	inc	sp
	call	_v_init_sprites
	inc	sp
	pop	de
	pop	bc
;src/game.c:217: for (u8 i = 0; i < 54; i++) {
	ld	-6 (ix), #0x00
00110$:
	ld	a, -6 (ix)
	sub	a, #0x36
	jr	NC,00108$
;src/game.c:219: byte = *byte_p;
	ld	a, (de)
	ld	-3 (ix), a
;src/game.c:221: while (--bit >= 0) {
	ld	a, -5 (ix)
	ld	-2 (ix), a
	ld	a, -4 (ix)
	ld	-1 (ix), a
	ld	b, #0x08
00103$:
	dec	b
	bit	7, b
	jr	NZ,00120$
;src/game.c:222: if (byte & u_power_2(bit)) {
	push	bc
	push	de
	push	bc
	inc	sp
	call	_u_power_2
	inc	sp
	pop	de
	pop	bc
	ld	a, -3 (ix)
	and	a,l
	jr	Z,00102$
;src/game.c:223: g_level[idx] |= FLAG_POD;
	ld	a, #<(_g_level)
	add	a, -2 (ix)
	ld	l, a
	ld	a, #>(_g_level)
	adc	a, -1 (ix)
	ld	h, a
	set	1, (hl)
	ld	a, (hl)
;src/game.c:224: ++count;
	inc	c
00102$:
;src/game.c:226: ++idx;
	inc	-2 (ix)
	jr	NZ,00103$
	inc	-1 (ix)
	jr	00103$
00120$:
	ld	a, -2 (ix)
	ld	-5 (ix), a
	ld	a, -1 (ix)
	ld	-4 (ix), a
;src/game.c:228: if (idx > 425)
	ld	a, #0xa9
	cp	a, -2 (ix)
	ld	a, #0x01
	sbc	a, -1 (ix)
	jr	C,00108$
;src/game.c:230: byte_p++;
	inc	de
;src/game.c:217: for (u8 i = 0; i < 54; i++) {
	inc	-6 (ix)
	jr	00110$
00108$:
;src/game.c:233: g_pods_left = count;
	ld	hl,#_g_pods_left + 0
	ld	(hl), c
	ld	sp, ix
	pop	ix
	ret
;src/game.c:237: static void g_draw_HUD(void) {
;	---------------------------------
; Function g_draw_HUD
; ---------------------------------
_g_draw_HUD:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;src/game.c:242: v_print(g_strings[81], 0, hud_loc.y, FONT_RED);
	ld	hl, #(_hud_loc + 0x0001) + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 162)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	xor	a, a
	push	af
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/game.c:243: v_print(g_strings[80], 6, hud_loc.y, FONT_BLUE);
	ld	hl, #(_hud_loc + 0x0001) + 0
	ld	b, (hl)
	ld	de, (#(_g_strings + 0x00a0) + 0)
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, #0x06
	push	af
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/game.c:244: g_draw_score();
	call	_g_draw_score
;src/game.c:247: v_print(g_strings[82], 54, hud_loc.y, FONT_RED);
	ld	hl, #(_hud_loc + 0x0001) + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 164)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, #0x36
	push	af
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/game.c:248: v_print(g_strings[80], 60, hud_loc.y, FONT_BLUE);
	ld	hl, #(_hud_loc + 0x0001) + 0
	ld	b, (hl)
	ld	de, (#(_g_strings + 0x00a0) + 0)
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, #0x3c
	push	af
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/game.c:249: width = u_get_width(g_hiscores[9].score);
	ld	bc, (#(_g_hiscores + 0x0055) + 0)
	ld	hl, (#(_g_hiscores + 0x0055) + 2)
	push	hl
	push	bc
	call	_u_get_width
	pop	af
	pop	af
	ld	c, l
;src/game.c:250: v_print_n(g_hiscores[9].score, 60 + (20 - (width * 2)), hud_loc.y,
	ld	hl, #(_hud_loc + 0x0001) + 0
	ld	b, (hl)
	sla	c
	ld	a, #0x50
	sub	a, c
	ld	c, a
	ld	de, (#(_g_hiscores + 0x0055) + 0)
	ld	hl, (#(_g_hiscores + 0x0055) + 2)
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x00
	ld	-2 (ix), #0x00
	ld	-1 (ix), #0x00
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
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
;src/game.c:254: v_print(g_strings[84], 28, hud_loc.y, FONT_RED);
	ld	hl, #(_hud_loc + 0x0001) + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 168)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, #0x1c
	push	af
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/game.c:255: v_print_n(g_current_round, 34, hud_loc.y, FONT_BLUE);
	ld	hl, #(_hud_loc + 0x0001) + 0
	ld	b, (hl)
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
	push	bc
	inc	sp
	ld	a, #0x22
	push	af
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
;src/game.c:256: v_print(g_strings[85], 36, hud_loc.y, FONT_BLUE);
	ld	hl, #(_hud_loc + 0x0001) + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 170)
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, #0x24
	push	af
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/game.c:257: v_print_n(g_current_level, 38, hud_loc.y, FONT_BLUE);
	ld	hl, #(_hud_loc + 0x0001) + 0
	ld	b, (hl)
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
	push	bc
	inc	sp
	ld	a, #0x26
	push	af
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
;src/game.c:260: v_print(g_strings[83], 42, hud_loc.y, FONT_RED);
	ld	hl, #(_hud_loc + 0x0001) + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 166)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, #0x2a
	push	af
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/game.c:261: v_print(g_strings[86], 48, hud_loc.y, FONT_BLUE);
	ld	hl, #(_hud_loc + 0x0001) + 0
	ld	b, (hl)
	ld	de, (#_g_strings + 172)
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, #0x30
	push	af
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
;src/game.c:262: width = u_get_width(g_lives_left);
	ld	hl,#_g_lives_left + 0
	ld	c, (hl)
	ld	b, #0x00
	ld	de,#0x0000
	push	de
	push	bc
	call	_u_get_width
	pop	af
	pop	af
	ld	c, l
;src/game.c:263: v_print_n(g_lives_left, 48 + (4 - (width * 2)), hud_loc.y, FONT_BLUE);
	ld	hl, #(_hud_loc + 0x0001) + 0
	ld	b, (hl)
	sla	c
	ld	a, #0x34
	sub	a, c
	ld	d, a
	ld	a,(#_g_lives_left + 0)
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
	ld	c, d
	push	bc
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
	ld	sp, ix
	pop	ix
	ret
;src/game.c:267: static void g_draw_score() {
;	---------------------------------
; Function g_draw_score
; ---------------------------------
_g_draw_score:
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;src/game.c:272: width = u_get_width(g_current_score);
	ld	hl, (_g_current_score + 2)
	push	hl
	ld	hl, (_g_current_score)
	push	hl
	call	_u_get_width
	pop	af
	pop	af
	ld	c, l
;src/game.c:274: g_current_score, 6 + (20 - (width * 2)), hud_loc.y, FONT_BLUE);
	ld	hl, #_hud_loc+1
	ld	d, (hl)
	sla	c
	ld	a, #0x1a
	sub	a, c
	ld	b, a
	ld	a,(#_g_current_score + 0)
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
	ld	a,(#_g_current_score + 1)
	ld	iy, #0
	add	iy, sp
	ld	1 (iy), a
	ld	a,(#_g_current_score + 2)
	ld	iy, #0
	add	iy, sp
	ld	2 (iy), a
	ld	a,(#_g_current_score + 3)
	ld	iy, #0
	add	iy, sp
	ld	3 (iy), a
	ld	4 (iy), #0x00
	ld	5 (iy), #0x00
	ld	6 (iy), #0x00
	ld	7 (iy), #0x00
	ld	a, #0x01
	push	af
	inc	sp
	ld	e, b
	push	de
	ld	h, 7 (iy)
	ld	l, 6 (iy)
	push	hl
	ld	h, 5 (iy)
	ld	l, 4 (iy)
	push	hl
	ld	h, 3 (iy)
	ld	l, 2 (iy)
	push	hl
	ld	h, 1 (iy)
	ld	l, 0 (iy)
	push	hl
	call	_v_print_n
	ld	hl, #11
	add	hl, sp
	ld	sp, hl
	ld	hl, #8
	add	hl, sp
	ld	sp, hl
	ret
;src/game.c:278: static void g_reset_player(void) {
;	---------------------------------
; Function g_reset_player
; ---------------------------------
_g_reset_player:
;src/game.c:280: g_player.dir = DIR_EAST;
	ld	hl, #(_g_player + 0x0006)
	ld	(hl), #0x01
;src/game.c:281: g_player.x = player_st.x;
	ld	hl, #_player_st+0
	ld	c, (hl)
	ld	hl, #_g_player
	ld	(hl), c
;src/game.c:282: g_player.y = player_st.y;
	ld	hl, #(_player_st + 0x0001) + 0
	ld	e, (hl)
	ld	hl, #(_g_player + 0x0001)
	ld	(hl), e
;src/game.c:283: g_player.px = player_st.x;
	ld	a, (#_player_st + 0)
	ld	(#(_g_player + 0x0002)),a
;src/game.c:284: g_player.py = player_st.y;
	ld	a, (#(_player_st + 0x0001) + 0)
	ld	(#(_g_player + 0x0003)),a
;src/game.c:285: g_player.boost = false;
	ld	hl, #(_g_player + 0x0007)
	ld	(hl), #0x00
;src/game.c:286: g_player.explode = false;
	ld	hl, #(_g_player + 0x0008)
	ld	(hl), #0x00
;src/game.c:287: g_player.explode_f = 0;
	ld	hl, #(_g_player + 0x0009)
	ld	(hl), #0x00
;src/game.c:290: g_player.sx = GRID_LOC_X + (g_player.x * GRID_P_W) + ADJ_PLAYER_PX;
	ld	a, c
	add	a, a
	add	a, c
	inc	a
	ld	(#(_g_player + 0x0004)),a
;src/game.c:291: g_player.sy = GRID_LOC_Y + (g_player.y * GRID_P_H) + ADJ_PLAYER_PY;
	ld	bc, #_g_player + 5
	ld	a, e
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	add	a, #0x0e
	ld	(bc), a
	ret
;src/game.c:295: static bool g_check_input_meta(bool *pause, bool *quit, bool *skip,
;	---------------------------------
; Function g_check_input_meta
; ---------------------------------
_g_check_input_meta:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/game.c:298: *pause = false;
	ld	c,4 (ix)
	ld	b,5 (ix)
	xor	a, a
	ld	(bc), a
;src/game.c:299: *quit = false;
	ld	e,6 (ix)
	ld	d,7 (ix)
	xor	a, a
	ld	(de), a
;src/game.c:300: *skip = false;
	ld	a, 8 (ix)
	ld	-2 (ix), a
	ld	a, 9 (ix)
	ld	-1 (ix), a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0x00
;src/game.c:301: *victory = false;
	ld	a, 10 (ix)
	ld	-4 (ix), a
	ld	a, 11 (ix)
	ld	-3 (ix), a
	pop	hl
	push	hl
	ld	(hl), #0x00
;src/game.c:304: if (cpct_isKeyPressed(g_controls[KEY_PAUSE])) {
	ld	hl, (#(_g_controls + 0x0008) + 0)
	push	bc
	push	de
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00110$
;src/game.c:305: *pause = true;
	ld	a, #0x01
	ld	(bc), a
;src/game.c:306: return true;
	ld	l, #0x01
	jr	00112$
00110$:
;src/game.c:307: } else if (cpct_isKeyPressed(Key_Esc)) {
	push	de
	ld	hl, #0x0408
	call	_cpct_isKeyPressed
	pop	de
	ld	a, l
	or	a, a
	jr	Z,00107$
;src/game.c:308: *quit = true;
	ld	a, #0x01
	ld	(de), a
;src/game.c:309: return true;
	ld	l, #0x01
	jr	00112$
00107$:
;src/game.c:310: } else if (cpct_isKeyPressed(Key_C)) {
	ld	hl, #0x4007
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00104$
;src/game.c:311: *skip = true;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0x01
;src/game.c:312: return true;
	ld	l, #0x01
	jr	00112$
00104$:
;src/game.c:313: } else if (cpct_isKeyPressed(Key_Z)) {
	ld	hl, #0x8008
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00108$
;src/game.c:314: *victory = true;
	pop	hl
	push	hl
	ld	(hl), #0x01
;src/game.c:315: return true;
	ld	l, #0x01
	jr	00112$
00108$:
;src/game.c:318: return false;
	ld	l, #0x00
00112$:
	ld	sp, ix
	pop	ix
	ret
;src/game.c:322: static bool g_check_input_movement(bool *moved, bool *rotated, bool *eaten) {
;	---------------------------------
; Function g_check_input_movement
; ---------------------------------
_g_check_input_movement:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/game.c:324: *moved = false;
	ld	c,4 (ix)
	ld	b,5 (ix)
	xor	a, a
	ld	(bc), a
;src/game.c:325: *rotated = false;
	ld	e,6 (ix)
	ld	d,7 (ix)
	xor	a, a
	ld	(de), a
;src/game.c:326: *eaten = false;
	ld	a, 8 (ix)
	ld	-2 (ix), a
	ld	a, 9 (ix)
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	(hl), #0x00
;src/game.c:329: if (cpct_isKeyPressed(g_controls[KEY_LEFT]) ||
	ld	hl, (#_g_controls + 4)
	push	bc
	push	de
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
	jr	NZ,00112$
;src/game.c:330: cpct_isKeyPressed(g_controls[JOY_LEFT])) {
	ld	hl, (#_g_controls + 14)
	push	bc
	push	de
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00113$
00112$:
;src/game.c:331: *moved = g_move_player(DIR_WEST, rotated);
	push	bc
	push	de
	ld	a, #0x03
	push	af
	inc	sp
	call	_g_move_player
	pop	af
	inc	sp
	ld	a, l
	pop	bc
	ld	(bc), a
;src/game.c:332: *eaten = g_eat_pod();
	call	_g_eat_pod
	ld	c, l
	pop	hl
	push	hl
	ld	(hl), c
;src/game.c:333: return true;
	ld	l, #0x01
	jp	00116$
00113$:
;src/game.c:334: } else if (cpct_isKeyPressed(g_controls[KEY_RIGHT]) ||
	ld	hl, (#_g_controls + 6)
	push	bc
	push	de
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
	jr	NZ,00108$
;src/game.c:335: cpct_isKeyPressed(g_controls[JOY_RIGHT])) {
	ld	hl, (#_g_controls + 16)
	push	bc
	push	de
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00109$
00108$:
;src/game.c:336: *moved = g_move_player(DIR_EAST, rotated);
	push	bc
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	call	_g_move_player
	pop	af
	inc	sp
	ld	a, l
	pop	bc
	ld	(bc), a
;src/game.c:337: *eaten = g_eat_pod();
	call	_g_eat_pod
	ld	c, l
	pop	hl
	push	hl
	ld	(hl), c
;src/game.c:338: return true;
	ld	l, #0x01
	jr	00116$
00109$:
;src/game.c:339: } else if (cpct_isKeyPressed(g_controls[KEY_UP]) ||
	ld	hl, (#_g_controls + 0)
	push	bc
	push	de
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
	jr	NZ,00104$
;src/game.c:340: cpct_isKeyPressed(g_controls[JOY_UP])) {
	ld	hl, (#_g_controls + 10)
	push	bc
	push	de
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00105$
00104$:
;src/game.c:341: *moved = g_move_player(DIR_NORTH, rotated);
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	call	_g_move_player
	pop	af
	inc	sp
	ld	a, l
	pop	bc
	ld	(bc), a
;src/game.c:342: *eaten = g_eat_pod();
	call	_g_eat_pod
	ld	c, l
	pop	hl
	push	hl
	ld	(hl), c
;src/game.c:343: return true;
	ld	l, #0x01
	jr	00116$
00105$:
;src/game.c:344: } else if (cpct_isKeyPressed(g_controls[KEY_DOWN]) ||
	ld	hl, (#_g_controls + 2)
	push	bc
	push	de
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
	jr	NZ,00101$
;src/game.c:345: cpct_isKeyPressed(g_controls[JOY_DOWN])) {
	ld	hl, (#_g_controls + 12)
	push	bc
	push	de
	call	_cpct_isKeyPressed
	pop	de
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00110$
00101$:
;src/game.c:346: *moved = g_move_player(DIR_SOUTH, rotated);
	push	bc
	push	de
	ld	a, #0x02
	push	af
	inc	sp
	call	_g_move_player
	pop	af
	inc	sp
	ld	a, l
	pop	bc
	ld	(bc), a
;src/game.c:347: *eaten = g_eat_pod();
	call	_g_eat_pod
	ld	c, l
	pop	hl
	push	hl
	ld	(hl), c
;src/game.c:348: return true;
	ld	l, #0x01
	jr	00116$
00110$:
;src/game.c:351: return false;
	ld	l, #0x00
00116$:
	ld	sp, ix
	pop	ix
	ret
;src/game.c:355: static bool g_check_launch_bolts() {
;	---------------------------------
; Function g_check_launch_bolts
; ---------------------------------
_g_check_launch_bolts:
;src/game.c:357: bool new_bolt = false;
;src/game.c:360: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	ld	bc,#0x0000
00105$:
	ld	a, #0x03
	sub	a, b
	jp	PO, 00122$
	xor	a, #0x80
00122$:
	jp	M, 00103$
;src/game.c:361: if (g_check_collision(i)) {
	push	bc
	push	bc
	inc	sp
	call	_g_check_collision
	inc	sp
	ld	e, l
	pop	bc
	bit	0, e
	jr	Z,00106$
;src/game.c:362: g_fire_bolt(i);
	push	bc
	push	bc
	inc	sp
	call	_g_fire_bolt
	inc	sp
	pop	bc
;src/game.c:363: g_enemies[i].fired = true;
	ld	a,b
	ld	l,a
	rla
	sbc	a, a
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #_g_enemies
	add	hl, de
	ld	de, #0x0007
	add	hl, de
	ld	(hl), #0x01
;src/game.c:364: new_bolt = true;
	ld	c, #0x01
00106$:
;src/game.c:360: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	inc	b
	jr	00105$
00103$:
;src/game.c:368: return new_bolt;
	ld	l, c
	ret
;src/game.c:372: static bool g_play_level(void) {
;	---------------------------------
; Function g_play_level
; ---------------------------------
_g_play_level:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-16
	add	hl, sp
	ld	sp, hl
;src/game.c:374: bool e_mv = false, e_sh = false, s_up = false, b_mv = false;
	ld	-1 (ix), #0x00
	ld	-5 (ix), #0x00
	ld	-9 (ix), #0x00
	ld	-10 (ix), #0x00
;src/game.c:375: bool p_rt = false, p_mv = false, p_et = false, input = false;
	ld	-7 (ix), #0x00
	ld	-8 (ix), #0x00
	ld	-6 (ix), #0x00
;src/game.c:376: bool pause = false, success = false, quit = false, victory = false;
	ld	-13 (ix), #0x00
	ld	-14 (ix), #0x00
	ld	-15 (ix), #0x00
	ld	-16 (ix), #0x00
;src/game.c:381: g_reset_player();
	call	_g_reset_player
;src/game.c:382: g_reset_enemies();
	call	_g_reset_enemies
;src/game.c:383: g_draw_HUD();
	call	_g_draw_HUD
;src/game.c:384: v_draw_grid();
	call	_v_draw_grid
;src/game.c:385: v_draw_enemies();
	call	_v_draw_enemies
;src/game.c:387: max_b_tm = g_pods_left;
	ld	a,(#_g_pods_left + 0)
	ld	-11 (ix), a
;src/game.c:388: sc_mod = g_current_level % 2 == 0 ? 50 : g_current_level;
	ld	hl,#_g_current_level+0
	bit	0, (hl)
	jr	NZ,00151$
	ld	c, #0x32
	jr	00152$
00151$:
	ld	hl,#_g_current_level + 0
	ld	c, (hl)
00152$:
	ld	-12 (ix), c
;src/game.c:391: v_draw_launch();
	call	_v_draw_launch
;src/game.c:392: PlaySFX(4, CHANNEL_A, MAX_VOL);
	ld	hl, #0x0000
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_PlaySFX
;src/game.c:393: u_wait(20000);
	inc	sp
	ld	hl,#0x4e20
	ex	(sp),hl
	call	_u_wait
	pop	af
;src/game.c:394: v_draw_grid();
	call	_v_draw_grid
;src/game.c:395: v_draw_player();
	call	_v_draw_player
;src/game.c:397: while (!quit && !success) {
00142$:
	bit	0, -15 (ix)
	jp	NZ, 00144$
	bit	0, -14 (ix)
	jp	NZ, 00144$
;src/game.c:400: if (g_frame_c % FC_TICK == 0) {
	ld	a, #0x05
	push	af
	inc	sp
	ld	a, (_g_frame_c)
	push	af
	inc	sp
	call	__moduchar
	pop	af
	ld	a, l
	or	a, a
	jp	NZ, 00121$
;src/game.c:403: input = g_check_input_movement(&p_mv, &p_rt, &p_et);
	ld	hl, #0x000a
	add	hl, sp
	ex	de,hl
	ld	hl, #0x0009
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	hl, #0x0008
	add	hl, sp
	push	de
	push	bc
	push	hl
	call	_g_check_input_movement
	pop	af
	pop	af
	pop	af
	ld	c, l
;src/game.c:404: if (!input)
	bit	0, l
	jr	NZ,00102$
;src/game.c:406: &pause, &quit, &success, &victory);
	ld	hl, #0x0000
	add	hl, sp
	ex	de,hl
	ld	hl, #0x0002
	add	hl, sp
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	hl, #0x0001
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	hl, #0x0003
	add	hl, sp
	push	de
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	push	de
	push	bc
	push	hl
	call	_g_check_input_meta
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c, l
00102$:
;src/game.c:409: if (input)
	bit	0, c
	jr	Z,00104$
;src/game.c:410: u_clear_input();
	call	_u_clear_input
00104$:
;src/game.c:413: if (pause) {
	bit	0, -13 (ix)
	jr	Z,00114$
;src/game.c:416: g_pause();
	call	_g_pause
;src/game.c:419: v_draw_grid();
	call	_v_draw_grid
;src/game.c:420: v_draw_player();
	call	_v_draw_player
;src/game.c:421: pause = false;
	ld	-13 (ix), #0x00
;src/game.c:422: continue;
	jp	00142$
00114$:
;src/game.c:423: } else if (quit) {
	bit	0, -15 (ix)
	jr	Z,00111$
;src/game.c:426: g_current_score = 0;
	xor	a, a
	ld	iy, #_g_current_score
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
;src/game.c:427: b_score = 0;
	xor	a, a
	ld	iy, #_b_score
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
;src/game.c:428: g_lives_left = 0;
	ld	hl,#_g_lives_left + 0
	ld	(hl), #0x00
;src/game.c:429: continue;
	jp	00142$
00111$:
;src/game.c:430: } else if (success) {
	bit	0, -14 (ix)
	jp	NZ, 00142$
;src/game.c:434: } else if (victory) {
	bit	0, -16 (ix)
	jr	Z,00112$
;src/game.c:437: g_current_level = 8;
	ld	hl,#_g_current_level + 0
	ld	(hl), #0x08
;src/game.c:438: g_current_round = 1;
	ld	hl,#_g_current_round + 0
	ld	(hl), #0x01
;src/game.c:439: continue;
	jp	00142$
00112$:
;src/game.c:443: if (p_et) {
	bit	0, -6 (ix)
	jr	Z,00117$
;src/game.c:444: g_pods_left--;
	ld	hl, #_g_pods_left+0
	dec	(hl)
;src/game.c:445: g_current_score += (sc_mod * g_current_round);
	ld	hl,#_g_current_round + 0
	ld	e, (hl)
	ld	h, -12 (ix)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00257$:
	add	hl, hl
	jr	NC,00258$
	add	hl, de
00258$:
	djnz	00257$
	ld	c, l
	ld	b, h
	ld	a, b
	rla
	sbc	a, a
	ld	e, a
	ld	d, a
	ld	hl, #_g_current_score
	ld	a, (hl)
	add	a, c
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, b
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, e
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, d
	ld	(hl), a
;src/game.c:446: p_et = false;
	ld	-6 (ix), #0x00
;src/game.c:447: s_up = true;
	ld	-9 (ix), #0x01
00117$:
;src/game.c:451: if (s_up) {
	bit	0, -9 (ix)
	jr	Z,00121$
;src/game.c:454: g_draw_score();
	call	_g_draw_score
;src/game.c:455: s_up = false;
	ld	-9 (ix), #0x00
00121$:
;src/game.c:459: if (g_frame_c % FC_TICK == 3) {
	ld	a, #0x05
	push	af
	inc	sp
	ld	a, (_g_frame_c)
	push	af
	inc	sp
	call	__moduchar
	pop	af
	ld	a, l
	sub	a, #0x03
	jr	NZ,00125$
;src/game.c:462: b_mv = g_move_bolts();
	call	_g_move_bolts
	ld	-10 (ix), l
;src/game.c:463: e_sh = g_check_launch_bolts();
	call	_g_check_launch_bolts
	ld	-5 (ix), l
;src/game.c:467: if (g_check_death()) {
	call	_g_check_death
	bit	0, l
	jr	Z,00125$
;src/game.c:470: g_explode_player();
	call	_g_explode_player
;src/game.c:471: return false;
	ld	l, #0x00
	jp	00149$
00125$:
;src/game.c:476: if (g_frame_c % FC_TICK == 3)
	ld	a, #0x05
	push	af
	inc	sp
	ld	a, (_g_frame_c)
	push	af
	inc	sp
	call	__moduchar
	pop	af
	ld	a, l
	sub	a, #0x03
	jr	NZ,00127$
;src/game.c:477: e_mv = g_move_enemies();
	call	_g_move_enemies
	ld	-1 (ix), l
00127$:
;src/game.c:481: if (b_mv || e_sh || p_mv) {
	bit	0, -10 (ix)
	jr	NZ,00133$
	bit	0, -5 (ix)
	jr	NZ,00133$
	bit	0, -8 (ix)
	jr	Z,00134$
00133$:
;src/game.c:484: if (b_mv || e_sh) {
	bit	0, -10 (ix)
	jr	NZ,00128$
	bit	0, -5 (ix)
	jr	Z,00129$
00128$:
;src/game.c:485: v_draw_bolts(true);
	ld	a, #0x01
	push	af
	inc	sp
	call	_v_draw_bolts
	inc	sp
;src/game.c:486: b_mv = false;
	ld	-10 (ix), #0x00
;src/game.c:487: e_sh = false;
	ld	-5 (ix), #0x00
00129$:
;src/game.c:490: if (p_mv) {
	bit	0, -8 (ix)
	jr	Z,00132$
;src/game.c:491: g_player.boost = !p_rt;
	ld	a, -7 (ix)
	xor	a, #0x01
	ld	c, a
	ld	hl, #(_g_player + 0x0007)
	ld	(hl), c
;src/game.c:494: v_draw_player_bb(r_px, r_py);
	ld	a, (_r_py)
	push	af
	inc	sp
	ld	a, (_r_px)
	push	af
	inc	sp
	call	_v_draw_player_bb
	pop	af
00132$:
;src/game.c:497: v_draw_player();
	call	_v_draw_player
;src/game.c:499: p_mv = false;
	ld	-8 (ix), #0x00
;src/game.c:500: p_rt = false;
	ld	-7 (ix), #0x00
00134$:
;src/game.c:503: if (e_mv) {
	bit	0, -1 (ix)
	jr	Z,00138$
;src/game.c:506: v_draw_enemies();
	call	_v_draw_enemies
;src/game.c:508: e_mv = false;
	ld	-1 (ix), #0x00
00138$:
;src/game.c:512: if (g_pods_left == 0) {
	ld	a,(#_g_pods_left + 0)
	or	a, a
	jp	NZ, 00142$
;src/game.c:515: b_tm = max_b_tm - g_clock.s;
	ld	c, -11 (ix)
	ld	b, #0x00
	ld	hl, (#(_g_clock + 0x0002) + 0)
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	ld	e, c
;src/game.c:516: b_score = b_tm > 0 ? b_tm * g_current_level *
	ld	a,b
	ld	d,a
	or	a,c
	jr	Z,00153$
	ld	hl,#_g_current_level + 0
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	push	de
	call	__mulint
	pop	af
	pop	af
	ld	c, l
	ld	b, h
	ld	hl,#_g_current_round + 0
	ld	e, (hl)
	ld	d, #0x00
	push	de
	push	bc
	call	__mulint
	pop	af
	pop	af
	jr	00154$
00153$:
;src/game.c:518: : 0;
	ld	hl, #0x0000
00154$:
	ld	iy, #_b_score
	ld	0 (iy), l
	ld	1 (iy), h
	ld	2 (iy), #0x00
	ld	3 (iy), #0x00
;src/game.c:520: success = true;
	ld	-14 (ix), #0x01
;src/game.c:521: continue;
	jp	00142$
00144$:
;src/game.c:525: if (quit)
	bit	0, -15 (ix)
	jr	Z,00146$
;src/game.c:526: return false;
	ld	l, #0x00
	jr	00149$
00146$:
;src/game.c:528: if (success) {
	bit	0, -14 (ix)
	jr	Z,00148$
;src/game.c:531: u_clear_input();
	call	_u_clear_input
;src/game.c:532: g_draw_stage_clear();
	call	_g_draw_stage_clear
;src/game.c:533: cpct_setBorder(HW_LIME);
	ld	hl, #0x1a10
	push	hl
	call	_cpct_setPALColour
;src/game.c:534: PlaySFX(3, CHANNEL_A, MAX_VOL);
	ld	hl, #0x0000
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_PlaySFX
	pop	af
	inc	sp
;src/game.c:535: u_clear_input();
	call	_u_clear_input
;src/game.c:536: g_stage_clear();
	call	_g_stage_clear
;src/game.c:537: cpct_setBorder(HW_BLACK);
	ld	hl, #0x1410
	push	hl
	call	_cpct_setPALColour
;src/game.c:538: return success;
	ld	l, -14 (ix)
	jr	00149$
00148$:
;src/game.c:541: return success;
	ld	l, -14 (ix)
00149$:
	ld	sp, ix
	pop	ix
	ret
;src/game.c:544: static bool g_check_death(void) {
;	---------------------------------
; Function g_check_death
; ---------------------------------
_g_check_death:
;src/game.c:546: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	ld	c, #0x00
00107$:
	ld	a, #0x03
	sub	a, c
	jp	PO, 00127$
	xor	a, #0x80
00127$:
	jp	M, 00105$
;src/game.c:548: if (g_bolts[i].active) {
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
	ex	de,hl
	ld	a, e
	add	a, #<(_g_bolts)
	ld	e, a
	ld	a, d
	adc	a, #>(_g_bolts)
	ld	d, a
	push	de
	pop	iy
	ld	b, 5 (iy)
	bit	0, b
	jr	Z,00108$
;src/game.c:551: g_bolts[i].x, g_bolts[i].y))
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	b, (hl)
	ex	de,hl
	inc	hl
	ld	d, (hl)
;src/game.c:550: if (u_check_collide(g_player.x, g_player.y,
	ld	a, (#_g_player + 1)
	ld	hl, #_g_player + 0
	ld	e, (hl)
	push	bc
	ld	c, d
	push	bc
	ld	d,a
	push	de
	call	_u_check_collide
	pop	af
	pop	af
	pop	bc
	bit	0, l
	jr	Z,00108$
;src/game.c:552: return true;
	ld	l, #0x01
	ret
00108$:
;src/game.c:546: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	inc	c
	jr	00107$
00105$:
;src/game.c:556: return false;
	ld	l, #0x00
	ret
;src/game.c:560: static bool g_check_collision(const dir_t enemy) {
;	---------------------------------
; Function g_check_collision
; ---------------------------------
_g_check_collision:
	push	ix
	ld	ix,#0
	add	ix,sp
;src/game.c:566: if (g_enemies[enemy].loc == (g_player.x))
	ld	l, 4 (ix)
	ld	a, 4 (ix)
	rla
	sbc	a, a
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
;src/game.c:563: switch (enemy) {
	ld	a, 4 (ix)
	or	a, a
	jr	Z,00102$
	ld	a, 4 (ix)
	dec	a
	jr	Z,00106$
	ld	a, 4 (ix)
	sub	a, #0x02
	jr	Z,00102$
	ld	a, 4 (ix)
	sub	a, #0x03
	jr	Z,00106$
	jr	00109$
;src/game.c:565: case DIR_SOUTH:
00102$:
;src/game.c:566: if (g_enemies[enemy].loc == (g_player.x))
	ld	hl,#_g_enemies+0+1
	add	hl,bc
	ld	c, (hl)
	ld	a, (#_g_player + 0)
	sub	a, c
	jr	NZ,00110$
;src/game.c:567: return true;
	ld	l, #0x01
	jr	00111$
;src/game.c:570: case DIR_WEST:
00106$:
;src/game.c:571: if (g_enemies[enemy].loc == (g_player.y))
	ld	hl,#_g_enemies+0+1
	add	hl,bc
	ld	c, (hl)
	ld	a, (#(_g_player + 0x0001) + 0)
	sub	a, c
	jr	NZ,00110$
;src/game.c:572: return true;
	ld	l, #0x01
	jr	00111$
;src/game.c:574: default:
00109$:
;src/game.c:575: return false;
	ld	l, #0x00
	jr	00111$
;src/game.c:576: }
00110$:
;src/game.c:578: return false;
	ld	l, #0x00
00111$:
	pop	ix
	ret
;src/game.c:582: static void g_stage_clear(void) {
;	---------------------------------
; Function g_stage_clear
; ---------------------------------
_g_stage_clear:
;src/game.c:585: bool kp = false;
	ld	c, #0x00
;src/game.c:588: g_clock_on = false;
	ld	hl,#_g_clock_on + 0
	ld	(hl), #0x00
;src/game.c:589: u_reset_clock();
	push	bc
	call	_u_reset_clock
	pop	bc
;src/game.c:590: g_clock_on = true;
	ld	hl,#_g_clock_on + 0
	ld	(hl), #0x01
;src/game.c:593: u_clear_input();
	push	bc
	call	_u_clear_input
	call	_u_clear_input
	pop	bc
;src/game.c:596: while ((!kp) && (g_clock.s < duration)) {
00102$:
	bit	0, c
	jr	NZ,00104$
	ld	hl, (#(_g_clock + 0x0002) + 0)
	ld	a, l
	sub	a, #0x05
	ld	a, h
	sbc	a, #0x00
	jr	NC,00104$
;src/game.c:599: cpct_scanKeyboard();
	call	_cpct_scanKeyboard
;src/game.c:600: kp = cpct_isAnyKeyPressed();
	call	_cpct_isAnyKeyPressed
	xor	a, a
	cp	a, l
	rla
	ld	c, a
	jr	00102$
00104$:
;src/game.c:604: g_clock_on = false;
	ld	hl,#_g_clock_on + 0
	ld	(hl), #0x00
;src/game.c:605: u_reset_clock();
	jp  _u_reset_clock
;src/game.c:609: static void g_pause(void) {
;	---------------------------------
; Function g_pause
; ---------------------------------
_g_pause:
;src/game.c:613: u_clear_input();
	call	_u_clear_input
;src/game.c:614: g_draw_pause();
	call	_g_draw_pause
;src/game.c:615: u_wait_for_key(Key_Space);
	ld	hl, #0x8005
	push	hl
	call	_u_wait_for_key
	pop	af
	ret
;src/game.c:619: static bool g_move_player(const dir_t new_dir, bool *is_rot) {
;	---------------------------------
; Function g_move_player
; ---------------------------------
_g_move_player:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/game.c:624: u_get_delta(new_dir, &dx, &dy);
	ld	hl, #0x0000
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	hl, #0x0001
	add	hl, sp
	push	bc
	push	hl
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_u_get_delta
	pop	af
	pop	af
	inc	sp
;src/game.c:625: if (u_bounds_delta_check(g_player.x, g_player.y, dx, dy)) {
	ld	hl, #(_g_player + 0x0001) + 0
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #_g_player + 0
	ld	c, (hl)
	ld	b, #0x00
	ld	h, -2 (ix)
	ld	l, -1 (ix)
	push	hl
	push	de
	push	bc
	call	_u_bounds_delta_check
	pop	af
	pop	af
	pop	af
	bit	0, l
	jr	Z,00104$
;src/game.c:628: r_px = g_player.x - 1;
	ld	a, (#_g_player + 0)
	ld	hl, #_r_px
	add	a, #0xff
	ld	(hl), a
;src/game.c:629: r_py = g_player.y - 1;
	ld	a, (#(_g_player + 0x0001) + 0)
	ld	hl, #_r_py
	add	a, #0xff
	ld	(hl), a
;src/game.c:630: if (r_px < 0)
	ld	iy, #_r_px
	bit	7,0 (iy)
	jr	Z,00102$
;src/game.c:631: r_px = 0;
	ld	0 (iy), #0x00
00102$:
;src/game.c:634: *is_rot = g_player.dir == new_dir;
	ld	c,5 (ix)
	ld	b,6 (ix)
	ld	hl, #(_g_player + 0x0006) + 0
	ld	a,4 (ix)
	sub	a,(hl)
	jr	NZ,00116$
	ld	a,#0x01
	jr	00117$
00116$:
	xor	a,a
00117$:
	ld	(bc), a
;src/game.c:635: g_player.dir = new_dir;
	ld	hl, #(_g_player + 0x0006)
	ld	a, 4 (ix)
	ld	(hl), a
;src/game.c:636: g_player.px = g_player.x;
	ld	bc, #_g_player + 2
	ld	a, (#_g_player + 0)
	ld	(bc), a
;src/game.c:637: g_player.py = g_player.y;
	ld	bc, #_g_player + 3
	ld	a, (#(_g_player + 0x0001) + 0)
	ld	(bc), a
;src/game.c:638: g_player.x += dx;
	ld	a,(#_g_player + 0)
	add	a, -1 (ix)
	ld	c, a
	ld	hl, #_g_player
	ld	(hl), c
;src/game.c:639: g_player.y += dy;
	ld	a,(#(_g_player + 0x0001) + 0)
	add	a, -2 (ix)
	ld	e, a
	ld	hl, #(_g_player + 0x0001)
	ld	(hl), e
;src/game.c:640: g_player.sx = GRID_LOC_X + (g_player.x * GRID_P_W) +
	ld	a, c
	add	a, a
	add	a, c
	inc	a
	ld	(#(_g_player + 0x0004)),a
;src/game.c:642: g_player.sy = GRID_LOC_Y + (g_player.y * GRID_P_H) +
	ld	bc, #_g_player + 5
	ld	a, e
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	add	a, #0x0e
	ld	(bc), a
;src/game.c:645: return true;
	ld	l, #0x01
	jr	00106$
00104$:
;src/game.c:647: return false;
	ld	l, #0x00
00106$:
	ld	sp, ix
	pop	ix
	ret
;src/game.c:651: static void g_reset_enemies(void) {
;	---------------------------------
; Function g_reset_enemies
; ---------------------------------
_g_reset_enemies:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-34
	add	hl, sp
	ld	sp, hl
;src/game.c:654: const i8 e_dt[4][2] = {{1, 0}, {0, 1}, {-1, 0}, {0, -1}};
	ld	hl, #0x0001
	add	hl, sp
	ld	(hl), #0x01
	ld	hl, #0x0002
	add	hl, sp
	ld	(hl), #0x00
	ld	hl, #0x0001
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	xor	a, a
	ld	(de), a
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0x01
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0xff
	ld	hl, #0x0005
	add	hl, bc
	ld	(hl), #0x00
	ld	hl, #0x0006
	add	hl, bc
	ld	(hl), #0x00
	ld	hl, #0x0007
	add	hl, bc
	ld	(hl), #0xff
;src/game.c:655: const i8 b_dt[4][2] = {{0, 1}, {-1, -0}, {0, -1}, {1, 0}};
	ld	hl, #0x0009
	add	hl, sp
	ld	(hl), #0x00
	ld	hl, #0x000a
	add	hl, sp
	ld	(hl), #0x01
	ld	hl, #0x0009
	add	hl, sp
	ld	e,l
	ld	d,h
	inc	hl
	inc	hl
	ld	(hl), #0xff
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0x00
	ld	hl, #0x0004
	add	hl, de
	ld	(hl), #0x00
	ld	hl, #0x0005
	add	hl, de
	ld	(hl), #0xff
	ld	hl, #0x0006
	add	hl, de
	ld	(hl), #0x01
	ld	hl, #0x0007
	add	hl, de
	ld	(hl), #0x00
;src/game.c:656: const u8 bounds[4][2] = {{0, GRID_U_W - 1}, {0, GRID_U_H - 1},
	ld	hl, #0x0011
	add	hl, sp
	ld	(hl), #0x00
	ld	hl, #0x0012
	add	hl, sp
	ld	(hl), #0x18
	ld	hl, #0x0011
	add	hl, sp
	ld	-7 (ix), l
	ld	-6 (ix), h
	inc	hl
	inc	hl
	ld	(hl), #0x00
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0x10
	ld	a, -7 (ix)
	add	a, #0x04
	ld	l, a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x00
	ld	a, -7 (ix)
	add	a, #0x05
	ld	l, a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x18
	ld	a, -7 (ix)
	add	a, #0x06
	ld	l, a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x00
	ld	a, -7 (ix)
	add	a, #0x07
	ld	l, a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x10
;src/game.c:660: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	ld	-34 (ix), #0x00
00104$:
	ld	a, #0x03
	sub	a, -34 (ix)
	jp	PO, 00135$
	xor	a, #0x80
00135$:
	jp	M, 00101$
;src/game.c:661: g_enemies[i].side = i;
	ld	a, -34 (ix)
	ld	-9 (ix), a
	ld	a, -34 (ix)
	rla
	sbc	a, a
	ld	-8 (ix), a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
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
	ld	a, -34 (ix)
	ld	(hl), a
;src/game.c:662: g_enemies[i].dx = e_dt[i][0];
	push	hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	inc	hl
	inc	hl
	inc	hl
	push	hl
	pop	iy
	pop	hl
	sla	-9 (ix)
	rl	-8 (ix)
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	add	hl, bc
	ld	a, (hl)
	ld	0 (iy), a
;src/game.c:663: g_enemies[i].dy = e_dt[i][1];
	ld	iy, #0x0004
	push	bc
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	add	iy, bc
	pop	bc
	inc	hl
	ld	l, (hl)
	ld	0 (iy), l
;src/game.c:664: g_enemies[i].fired = false;
	ld	a, -2 (ix)
	add	a, #0x07
	ld	l, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x00
;src/game.c:665: g_enemies[i].min = bounds[i][0];
	ld	iy, #0x0006
	push	bc
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	add	iy, bc
	pop	bc
	ld	a, -7 (ix)
	add	a, -9 (ix)
	ld	l, a
	ld	a, -6 (ix)
	adc	a, -8 (ix)
	ld	h, a
	ld	a, (hl)
	ld	0 (iy), a
;src/game.c:666: g_enemies[i].max = bounds[i][1];
	ld	a, -2 (ix)
	add	a, #0x05
	ld	-9 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	(hl), a
;src/game.c:667: g_enemies[i].loc = i <= DIR_EAST ? g_enemies[i].min + 1 :
	ld	a, -2 (ix)
	add	a, #0x01
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, #0x01
	sub	a, -34 (ix)
	jp	PO, 00138$
	xor	a, #0x80
00138$:
	jp	M, 00111$
	ld	a, 0 (iy)
	inc	a
	ld	-5 (ix), a
	jr	00112$
00111$:
;src/game.c:668: g_enemies[i].max - 1;
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a, (hl)
	add	a, #0xff
	ld	-5 (ix), a
00112$:
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
;src/game.c:669: g_enemies[i].prev = g_enemies[i].loc;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;src/game.c:660: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	inc	-34 (ix)
	jp	00104$
00101$:
;src/game.c:673: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	ld	-34 (ix), #0x00
00107$:
	ld	a, #0x03
	sub	a, -34 (ix)
	jp	PO, 00139$
	xor	a, #0x80
00139$:
	jp	M, 00102$
;src/game.c:674: g_bolts[i].side = i;
	ld	c, -34 (ix)
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
	ld	a, #<(_g_bolts)
	add	a, l
	ld	c, a
	ld	a, #>(_g_bolts)
	adc	a, h
	ld	b, a
	ld	a, -34 (ix)
	ld	(bc), a
;src/game.c:675: g_bolts[i].x = 0;
	ld	l, c
	ld	h, b
	inc	hl
	ld	(hl), #0x00
;src/game.c:676: g_bolts[i].y = 0;
	push	bc
	pop	iy
	inc	iy
	inc	iy
	ld	0 (iy), #0x00
;src/game.c:677: g_bolts[i].px = g_bolts[i].x;
	ld	a, c
	add	a, #0x03
	ld	-4 (ix), a
	ld	a, b
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, (hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), a
;src/game.c:678: g_bolts[i].py = g_bolts[i].y;
	ld	hl, #0x0004
	add	hl,bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, 0 (iy)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), a
;src/game.c:679: g_bolts[i].active = false;
	ld	hl, #0x0005
	add	hl, bc
	ld	(hl), #0x00
;src/game.c:680: g_bolts[i].dc = false;
	ld	hl, #0x000b
	add	hl, bc
	ld	(hl), #0x00
;src/game.c:681: g_bolts[i].dp = false;
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), #0x00
;src/game.c:682: g_bolts[i].dx = b_dt[i][0];
	ld	iy, #0x0006
	add	iy, bc
	ld	l, -34 (ix)
	ld	a, -34 (ix)
	rla
	sbc	a, a
	ld	h, a
	add	hl, hl
	add	hl, de
	ld	a, (hl)
	ld	0 (iy), a
;src/game.c:683: g_bolts[i].dy = b_dt[i][1];
	ld	a, c
	add	a, #0x07
	ld	c, a
	ld	a, b
	adc	a, #0x00
	ld	b, a
	inc	hl
	ld	a, (hl)
	ld	(bc), a
;src/game.c:673: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	inc	-34 (ix)
	jp	00107$
00102$:
;src/game.c:686: g_bolt_count = 0;
	ld	hl,#_g_bolt_count + 0
	ld	(hl), #0x00
	ld	sp, ix
	pop	ix
	ret
;src/game.c:690: static bool g_move_enemies(void) {
;	---------------------------------
; Function g_move_enemies
; ---------------------------------
_g_move_enemies:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-25
	add	hl, sp
	ld	sp, hl
;src/game.c:693: bool result = false;
	ld	-24 (ix), #0x00
;src/game.c:696: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	ld	-25 (ix), #0x00
00119$:
	ld	a, #0x03
	sub	a, -25 (ix)
	jp	PO, 00156$
	xor	a, #0x80
00156$:
	jp	M, 00117$
;src/game.c:699: if (!g_enemies[i].fired) {
	ld	a, -25 (ix)
	ld	-21 (ix), a
	ld	a, -25 (ix)
	rla
	sbc	a, a
	ld	-20 (ix), a
	ld	a, #0x03+1
	jr	00158$
00157$:
	sla	-21 (ix)
	rl	-20 (ix)
00158$:
	dec	a
	jr	NZ,00157$
	ld	a, #<(_g_enemies)
	add	a, -21 (ix)
	ld	-21 (ix), a
	ld	a, #>(_g_enemies)
	adc	a, -20 (ix)
	ld	-20 (ix), a
	ld	a, -21 (ix)
	ld	-10 (ix), a
	ld	a, -20 (ix)
	ld	-9 (ix), a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	de, #0x0007
	add	hl, de
	ld	a, (hl)
	ld	-10 (ix), a
;src/game.c:710: g_enemies[i].prev = g_enemies[i].loc;
	ld	a, -21 (ix)
	add	a, #0x01
	ld	-12 (ix), a
	ld	a, -20 (ix)
	adc	a, #0x00
	ld	-11 (ix), a
;src/game.c:702: loc = g_enemies[i].loc + g_enemies[i].dx;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a, (hl)
	ld	-13 (ix), a
;src/game.c:710: g_enemies[i].prev = g_enemies[i].loc;
	ld	a, -21 (ix)
	add	a, #0x02
	ld	-15 (ix), a
	ld	a, -20 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
;src/game.c:699: if (!g_enemies[i].fired) {
	bit	0, -10 (ix)
	jp	NZ, 00115$
;src/game.c:701: if (i % 2 == 0) {
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, -25 (ix)
	push	af
	inc	sp
;src/game.c:703: if (loc < g_enemies[i].min) {
	call	__moduschar
	pop	af
	ld	-10 (ix), l
	ld	a, -21 (ix)
	ld	-2 (ix), a
	ld	a, -20 (ix)
	ld	-1 (ix), a
;src/game.c:706: } else if (loc > g_enemies[i].max) {
	ld	a, -21 (ix)
	add	a, #0x05
	ld	-4 (ix), a
	ld	a, -20 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
;src/game.c:703: if (loc < g_enemies[i].min) {
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	de, #0x0006
	add	hl, de
	ld	a, (hl)
	ld	-2 (ix), a
;src/game.c:702: loc = g_enemies[i].loc + g_enemies[i].dx;
	ld	a, -13 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
;src/game.c:703: if (loc < g_enemies[i].min) {
	ld	a, -2 (ix)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
;src/game.c:701: if (i % 2 == 0) {
	ld	a, -10 (ix)
	or	a, a
	jp	NZ, 00112$
;src/game.c:702: loc = g_enemies[i].loc + g_enemies[i].dx;
	ld	a, -21 (ix)
	add	a, #0x03
	ld	-10 (ix), a
	ld	a, -20 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	c, (hl)
	ld	a,c
	ld	e,a
	rla
	sbc	a, a
	ld	d, a
	ld	a, -6 (ix)
	add	a, e
	ld	-8 (ix), a
	ld	a, -5 (ix)
	adc	a, d
	ld	-7 (ix), a
;src/game.c:705: g_enemies[i].dx = -g_enemies[i].dx;
	xor	a, a
	sub	a, c
	ld	-16 (ix), a
;src/game.c:703: if (loc < g_enemies[i].min) {
	ld	a, -8 (ix)
	sub	a, -2 (ix)
	ld	a, -7 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00159$
	xor	a, #0x80
00159$:
	jp	P, 00104$
;src/game.c:704: loc = g_enemies[i].min;
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
;src/game.c:705: g_enemies[i].dx = -g_enemies[i].dx;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a, -16 (ix)
	ld	(hl), a
	jr	00105$
00104$:
;src/game.c:706: } else if (loc > g_enemies[i].max) {
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a, (hl)
	ld	-17 (ix), a
	ld	-19 (ix), a
	ld	-18 (ix), #0x00
	ld	a, -19 (ix)
	sub	a, -8 (ix)
	ld	a, -18 (ix)
	sbc	a, -7 (ix)
	jp	PO, 00160$
	xor	a, #0x80
00160$:
	jp	P, 00105$
;src/game.c:707: loc = g_enemies[i].max;
	ld	a, -19 (ix)
	ld	-8 (ix), a
	ld	a, -18 (ix)
	ld	-7 (ix), a
;src/game.c:708: g_enemies[i].dx = -g_enemies[i].dx;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a, -16 (ix)
	ld	(hl), a
00105$:
;src/game.c:710: g_enemies[i].prev = g_enemies[i].loc;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	c, (hl)
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl), c
;src/game.c:711: g_enemies[i].loc = loc;
	ld	c, -8 (ix)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), c
;src/game.c:712: result = true;
	ld	-24 (ix), #0x01
	jp	00120$
00112$:
;src/game.c:714: loc = g_enemies[i].loc + g_enemies[i].dy;
	ld	a, -21 (ix)
	add	a, #0x04
	ld	-19 (ix), a
	ld	a, -20 (ix)
	adc	a, #0x00
	ld	-18 (ix), a
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	ld	a, (hl)
	ld	-17 (ix), a
	ld	-8 (ix), a
	ld	a, -17 (ix)
	rla
	sbc	a, a
	ld	-7 (ix), a
	ld	a, -6 (ix)
	add	a, -8 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	adc	a, -7 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-23 (ix), a
	ld	a, -7 (ix)
	ld	-22 (ix), a
;src/game.c:717: g_enemies[i].dy = -g_enemies[i].dy;
	xor	a, a
	sub	a, -17 (ix)
	ld	c, a
;src/game.c:715: if (loc < g_enemies[i].min) {
	ld	a, -23 (ix)
	sub	a, -2 (ix)
	ld	a, -22 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00161$
	xor	a, #0x80
00161$:
	jp	P, 00109$
;src/game.c:716: loc = g_enemies[i].min;
	ld	b, -2 (ix)
	ld	e, -1 (ix)
	ld	-23 (ix), b
	ld	-22 (ix), e
;src/game.c:717: g_enemies[i].dy = -g_enemies[i].dy;
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	ld	(hl), c
	jr	00110$
00109$:
;src/game.c:718: } else if (loc > g_enemies[i].max) {
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	e, (hl)
	ld	b, #0x00
	ld	a, e
	sub	a, -23 (ix)
	ld	a, b
	sbc	a, -22 (ix)
	jp	PO, 00162$
	xor	a, #0x80
00162$:
	jp	P, 00110$
;src/game.c:719: loc = g_enemies[i].max;
	ld	-23 (ix), e
	ld	-22 (ix), b
;src/game.c:720: g_enemies[i].dy = -g_enemies[i].dy;
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	ld	(hl), c
00110$:
;src/game.c:722: g_enemies[i].prev = g_enemies[i].loc;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	c, (hl)
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl), c
;src/game.c:723: g_enemies[i].loc = loc;
	ld	a, -23 (ix)
	ld	-19 (ix), a
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a, -19 (ix)
	ld	(hl), a
;src/game.c:724: result = true;
	ld	-24 (ix), #0x01
	jr	00120$
00115$:
;src/game.c:729: g_enemies[i].prev = g_enemies[i].loc;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	a, -13 (ix)
	ld	(hl), a
00120$:
;src/game.c:696: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	inc	-25 (ix)
	jp	00119$
00117$:
;src/game.c:733: return result;
	ld	l, -24 (ix)
	ld	sp, ix
	pop	ix
	ret
;src/game.c:737: static bool g_move_bolts(void) {
;	---------------------------------
; Function g_move_bolts
; ---------------------------------
_g_move_bolts:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-17
	add	hl, sp
	ld	sp, hl
;src/game.c:739: bool mv = false;
	ld	-16 (ix), #0x00
;src/game.c:744: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	ld	-17 (ix), #0x00
00108$:
	ld	a, #0x03
	sub	a, -17 (ix)
	jp	PO, 00135$
	xor	a, #0x80
00135$:
	jp	M, 00106$
;src/game.c:746: if (g_bolts[i].active) {
	ld	c, -17 (ix)
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
	ld	-12 (ix), l
	ld	-11 (ix), h
	ld	a, #<(_g_bolts)
	add	a, -12 (ix)
	ld	-12 (ix), a
	ld	a, #>(_g_bolts)
	adc	a, -11 (ix)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	add	a, #0x05
	ld	-6 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	bit	0, (hl)
	jp	Z, 00109$
;src/game.c:748: flag = i % 2 == 0 ? FLAG_V_BOLT : FLAG_H_BOLT;
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, -17 (ix)
	push	af
	inc	sp
	call	__moduschar
	pop	af
	ld	a, l
	or	a, a
	jr	NZ,00112$
	ld	c, #0x04
	jr	00113$
00112$:
	ld	c, #0x08
00113$:
	ld	-13 (ix), c
;src/game.c:751: idx = u_get_xy(g_bolts[i].x, g_bolts[i].y);
	ld	a, -12 (ix)
	add	a, #0x02
	ld	-10 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	e, (hl)
	ld	d, #0x00
	ld	c,-12 (ix)
	ld	b,-11 (ix)
	inc	bc
	ld	a, (bc)
	ld	l, a
	ld	h, #0x00
	push	bc
	push	de
	push	hl
	call	_u_get_xy
	pop	af
	pop	af
	ex	de,hl
	pop	bc
;src/game.c:752: g_level[idx] &= ~flag;
	ld	iy, #_g_level
	add	iy, de
	ld	e, 0 (iy)
	ld	a, -13 (ix)
	cpl
	ld	d, a
	ld	a, e
	and	a, d
	ld	0 (iy), a
;src/game.c:753: g_bolts[i].px = g_bolts[i].x;
	ld	e,-12 (ix)
	ld	d,-11 (ix)
	inc	de
	inc	de
	inc	de
	ld	a, (bc)
	ld	(de), a
;src/game.c:754: g_bolts[i].py = g_bolts[i].y;
	ld	a, -12 (ix)
	add	a, #0x04
	ld	e, a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	d, a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a, (hl)
	ld	(de), a
;src/game.c:756: g_bolts[i].dp = true;
	ld	a, -12 (ix)
	add	a, #0x08
	ld	l, a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x01
;src/game.c:757: g_bolts[i].dp_x = g_bolts[i].x;
	ld	a, -12 (ix)
	add	a, #0x09
	ld	e, a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	d, a
	ld	a, (bc)
	ld	(de), a
;src/game.c:758: g_bolts[i].dp_y = g_bolts[i].y;
	ld	a, -12 (ix)
	add	a, #0x0a
	ld	e, a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	d, a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a, (hl)
	ld	(de), a
;src/game.c:759: g_bolts[i].dc = false;
	ld	a, -12 (ix)
	add	a, #0x0b
	ld	-8 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl), #0x00
;src/game.c:762: tx = g_bolts[i].x + g_bolts[i].dx;
	ld	a, (bc)
	ld	e, a
	ld	d, #0x00
	ld	a, -12 (ix)
	add	a, #0x06
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	l, (hl)
	ld	a, l
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	ld	-15 (ix), l
	ld	-14 (ix), h
;src/game.c:763: ty = g_bolts[i].y + g_bolts[i].dy;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	e, (hl)
	ld	d, #0x00
	ld	a, -12 (ix)
	add	a, #0x07
	ld	-4 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	l, (hl)
	ld	a, l
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
;src/game.c:764: if (!u_bounds_check(tx, ty)) {
	push	bc
	push	hl
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	push	hl
	call	_u_bounds_check
	pop	af
	pop	af
	ld	e, l
	pop	bc
	bit	0, e
	jr	NZ,00102$
;src/game.c:767: g_bolts[i].active = false;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0x00
;src/game.c:768: --g_bolt_count;
	ld	hl, #_g_bolt_count+0
	dec	(hl)
;src/game.c:769: g_enemies[i].fired = false;
	ld	l, -17 (ix)
	ld	a, -17 (ix)
	rla
	sbc	a, a
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #_g_enemies
	add	hl, de
	ld	bc, #0x0007
	add	hl, bc
	ld	(hl), #0x00
	jr	00103$
00102$:
;src/game.c:776: g_bolts[i].x = g_bolts[i].x + g_bolts[i].dx;
	ld	a, (bc)
	ld	e, a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	d, (hl)
	ld	a, e
	add	a, d
	ld	(bc), a
;src/game.c:777: g_bolts[i].y = g_bolts[i].y + g_bolts[i].dy;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	e, (hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	d, (hl)
	ld	a, e
	add	a, d
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), a
;src/game.c:778: idx = u_get_xy(g_bolts[i].x, g_bolts[i].y);
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	e, (hl)
	ld	d, #0x00
	ld	a, (bc)
	ld	l, a
	ld	h, #0x00
	push	bc
	push	de
	push	hl
	call	_u_get_xy
	pop	af
	pop	af
	pop	bc
;src/game.c:779: g_level[idx] |= flag;
	ld	de, #_g_level
	add	hl, de
	ld	a, (hl)
	or	a, -13 (ix)
	ld	(hl), a
;src/game.c:780: g_bolts[i].dc = true;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl), #0x01
;src/game.c:781: g_bolts[i].dc_x = g_bolts[i].x;
	ld	a, -12 (ix)
	add	a, #0x0c
	ld	e, a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	d, a
	ld	a, (bc)
	ld	(de), a
;src/game.c:782: g_bolts[i].dc_y = g_bolts[i].y;
	ld	a, -12 (ix)
	add	a, #0x0d
	ld	c, a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a, (hl)
	ld	(bc), a
00103$:
;src/game.c:784: mv = true;
	ld	-16 (ix), #0x01
00109$:
;src/game.c:744: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
	inc	-17 (ix)
	jp	00108$
00106$:
;src/game.c:788: return mv;
	ld	l, -16 (ix)
	ld	sp, ix
	pop	ix
	ret
;src/game.c:792: static void g_fire_bolt(const dir_t dir) {
;	---------------------------------
; Function g_fire_bolt
; ---------------------------------
_g_fire_bolt:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
;src/game.c:797: if (g_bolts[dir].active || g_bolt_count == 4)
	ld	bc, #_g_bolts+0
	ld	e, 4 (ix)
	ld	a, e
	rlc	a
	sbc	a, a
	ld	d, a
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, #0x0005
	add	hl,bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	bit	0, (hl)
	jp	NZ,00110$
	ld	a,(#_g_bolt_count + 0)
	sub	a, #0x04
;src/game.c:798: return;
	jp	Z,00110$
;src/game.c:802: g_bolts[dir].x = g_enemies[dir].loc;
	ld	hl, #0x0001
	add	hl,bc
	ex	(sp), hl
	ld	l, 4 (ix)
	ld	a, 4 (ix)
	rla
	sbc	a, a
	ld	h, a
;src/game.c:803: g_bolts[dir].y = 0;
	ld	a, c
	add	a, #0x02
	ld	-2 (ix), a
	ld	a, b
	adc	a, #0x00
	ld	-1 (ix), a
;src/game.c:802: g_bolts[dir].x = g_enemies[dir].loc;
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
;src/game.c:800: switch (dir) {
	ld	a, 4 (ix)
	or	a, a
	jr	Z,00104$
	ld	a, 4 (ix)
	dec	a
	jr	Z,00106$
	ld	a, 4 (ix)
	sub	a, #0x02
	jr	Z,00105$
	ld	a, 4 (ix)
	sub	a, #0x03
	jp	Z,00107$
	jp	00110$
;src/game.c:801: case DIR_NORTH:
00104$:
;src/game.c:802: g_bolts[dir].x = g_enemies[dir].loc;
	ld	hl,#_g_enemies+0+1
	add	hl,de
	ld	e, (hl)
	pop	hl
	push	hl
	ld	(hl), e
;src/game.c:803: g_bolts[dir].y = 0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0x00
;src/game.c:804: idx = u_get_xy(g_bolts[dir].x, g_bolts[dir].y);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	l, (hl)
	ld	h, #0x00
	ld	d, #0x00
	push	bc
	push	hl
	push	de
	call	_u_get_xy
	pop	af
	pop	af
	ex	de,hl
	pop	bc
;src/game.c:805: g_level[idx] |= FLAG_V_BOLT;
	ld	hl, #_g_level+0
	add	hl, de
	set	2, (hl)
	ld	a, (hl)
;src/game.c:806: break;
	jp	00109$
;src/game.c:807: case DIR_SOUTH:
00105$:
;src/game.c:808: g_bolts[dir].x = g_enemies[dir].loc;
	ld	hl,#_g_enemies+0+1
	add	hl,de
	ld	e, (hl)
	pop	hl
	push	hl
	ld	(hl), e
;src/game.c:809: g_bolts[dir].y = GRID_U_H - 1;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0x10
;src/game.c:810: idx = u_get_xy(g_bolts[dir].x, g_bolts[dir].y);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	l, (hl)
	ld	h, #0x00
	ld	d, #0x00
	push	bc
	push	hl
	push	de
	call	_u_get_xy
	pop	af
	pop	af
	ex	de,hl
	pop	bc
;src/game.c:811: g_level[idx] |= FLAG_V_BOLT;
	ld	hl, #_g_level+0
	add	hl, de
	set	2, (hl)
	ld	a, (hl)
;src/game.c:812: break;
	jr	00109$
;src/game.c:813: case DIR_EAST:
00106$:
;src/game.c:814: g_bolts[dir].x = GRID_U_W - 1;
	pop	hl
	push	hl
	ld	(hl), #0x18
;src/game.c:815: g_bolts[dir].y = g_enemies[dir].loc;
	ld	hl,#_g_enemies+0+1
	add	hl,de
	ld	e, (hl)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), e
;src/game.c:816: idx = u_get_xy(g_bolts[dir].x, g_bolts[dir].y);
	ld	d, #0x00
	pop	hl
	push	hl
	ld	l, (hl)
	ld	h, #0x00
	push	bc
	push	de
	push	hl
	call	_u_get_xy
	pop	af
	pop	af
	ex	de,hl
	pop	bc
;src/game.c:817: g_level[idx] |= FLAG_H_BOLT;
	ld	hl, #_g_level+0
	add	hl, de
	set	3, (hl)
	ld	a, (hl)
;src/game.c:818: break;
	jr	00109$
;src/game.c:819: case DIR_WEST:
00107$:
;src/game.c:820: g_bolts[dir].x = 0;
	pop	hl
	push	hl
	ld	(hl), #0x00
;src/game.c:821: g_bolts[dir].y = g_enemies[dir].loc;
	ld	hl,#_g_enemies+0+1
	add	hl,de
	ld	e, (hl)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), e
;src/game.c:822: idx = u_get_xy(g_bolts[dir].x, g_bolts[dir].y);
	ld	d, #0x00
	pop	hl
	push	hl
	ld	l, (hl)
	ld	h, #0x00
	push	bc
	push	de
	push	hl
	call	_u_get_xy
	pop	af
	pop	af
	ex	de,hl
	pop	bc
;src/game.c:823: g_level[idx] |= FLAG_H_BOLT;
	ld	hl, #_g_level+0
	add	hl, de
	set	3, (hl)
;src/game.c:824: break;
;src/game.c:825: default:
;src/game.c:826: return;
;src/game.c:828: }
	ld	a, (hl)
00109$:
;src/game.c:831: g_bolts[dir].dp = false;
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), #0x00
;src/game.c:832: g_bolts[dir].dc = true;
	ld	hl, #0x000b
	add	hl, bc
	ld	(hl), #0x01
;src/game.c:833: g_bolts[dir].dc_x = g_bolts[dir].x;
	ld	hl, #0x000c
	add	hl,bc
	ex	de,hl
	pop	hl
	push	hl
	ld	a, (hl)
	ld	(de), a
;src/game.c:834: g_bolts[dir].dc_y = g_bolts[dir].y;
	ld	hl, #0x000d
	add	hl,bc
	ex	de,hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	ld	(de), a
;src/game.c:835: g_bolts[dir].px = g_bolts[dir].x;
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	pop	hl
	push	hl
	ld	a, (hl)
	ld	(de), a
;src/game.c:836: g_bolts[dir].py = g_bolts[dir].x;
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	pop	hl
	push	hl
	ld	a, (hl)
	ld	(bc), a
;src/game.c:837: g_bolts[dir].active = true;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0x01
;src/game.c:838: ++g_bolt_count;
	ld	hl, #_g_bolt_count+0
	inc	(hl)
00110$:
	ld	sp, ix
	pop	ix
	ret
;src/game.c:842: static bool g_eat_pod() {
;	---------------------------------
; Function g_eat_pod
; ---------------------------------
_g_eat_pod:
;src/game.c:847: idx = u_get_xy(g_player.x, g_player.y);
	ld	hl, #_g_player + 1
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #_g_player + 0
	ld	c, (hl)
	ld	b, #0x00
	push	de
	push	bc
	call	_u_get_xy
	pop	af
	pop	af
;src/game.c:849: if (g_level[idx] & FLAG_POD) {
	ld	bc,#_g_level+0
	add	hl,bc
	ld	c, (hl)
	bit	1, c
	jr	Z,00104$
;src/game.c:850: g_level[idx] &= ~FLAG_POD;
	res	1, c
	ld	(hl), c
;src/game.c:851: if (g_music_sfx)
	ld	hl,#_g_music_sfx+0
	bit	0, (hl)
	jr	Z,00102$
;src/game.c:852: PlaySFX(1, CHANNEL_A, MAX_VOL);
	ld	hl, #0x0000
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	call	_PlaySFX
	pop	af
	inc	sp
00102$:
;src/game.c:853: return true;
	ld	l, #0x01
	ret
00104$:
;src/game.c:855: return false;
	ld	l, #0x00
	ret
;src/game.c:859: void g_interrupt(void) {
;	---------------------------------
; Function g_interrupt
; ---------------------------------
_g_interrupt:
;src/game.c:861: if (g_int_idx == 0)
	ld	a,(#_g_int_idx + 0)
	or	a, a
	jr	NZ,00102$
;src/game.c:862: g_frame_c = ++g_frame_c % FC_MAX;
	ld	hl, #_g_frame_c+0
	inc	(hl)
	ld	a, #0x32
	push	af
	inc	sp
	ld	a, (_g_frame_c)
	push	af
	inc	sp
	call	__moduchar
	pop	af
	ld	iy, #_g_frame_c
	ld	0 (iy), l
00102$:
;src/game.c:864: if (g_int_idx == 1)
	ld	a,(#_g_int_idx + 0)
	dec	a
	jr	NZ,00104$
;src/game.c:865: cpct_scanKeyboard_if();
	call	_cpct_scanKeyboard_if
00104$:
;src/game.c:868: if (g_music_sfx)
	ld	hl,#_g_music_sfx+0
	bit	0, (hl)
	jr	Z,00108$
;src/game.c:869: if (g_int_idx == 3)
	ld	a,(#_g_int_idx + 0)
	sub	a, #0x03
	jr	NZ,00108$
;src/game.c:870: PlaySound();
	call	_PlaySound
00108$:
;src/game.c:872: g_int_idx = ++g_int_idx % 6;
	ld	hl, #_g_int_idx+0
	inc	(hl)
	ld	a, #0x06
	push	af
	inc	sp
	ld	a, (_g_int_idx)
	push	af
	inc	sp
	call	__moduchar
	pop	af
	ld	iy, #_g_int_idx
	ld	0 (iy), l
;src/game.c:875: u_clock_interrupt();
	jp  _u_clock_interrupt
;src/game.c:879: void g_reset_timers(void) {
;	---------------------------------
; Function g_reset_timers
; ---------------------------------
_g_reset_timers:
;src/game.c:881: g_int_idx = 0;
	ld	hl,#_g_int_idx + 0
	ld	(hl), #0x00
;src/game.c:882: g_frame_c = 0;
	ld	hl,#_g_frame_c + 0
	ld	(hl), #0x00
	ret
;src/game.c:886: static void g_draw_pause(void) {
;	---------------------------------
; Function g_draw_pause
; ---------------------------------
_g_draw_pause:
;src/game.c:888: const u8 pw = pa_sz.w * GRID_P_W, ph = pa_sz.h * GRID_P_H;
	ld	a, (#_pa_sz + 1)
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
;src/game.c:894: y = 200 - (ph + (2 * GRID_P_H));
	add	a, #0x14
	ld	c, a
	ld	a, #0xc8
	sub	a, c
	ld	c, a
;src/game.c:896: y = y / 2;
	srl	c
;src/game.c:898: v_draw_box(&pa_sz);
	push	bc
	ld	hl, #_pa_sz
	push	hl
	call	_v_draw_box
	pop	af
	pop	bc
;src/game.c:901: ty = y + LINE_P_H * 3;
	ld	a, c
	add	a, #0x12
	ld	b, a
;src/game.c:902: v_print_c(g_strings[94], ty, FONT_RED);
	ld	de, (#_g_strings + 188)
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
;src/game.c:903: ty = ty + LINE_P_H * 3;
	ld	a, b
	add	a, #0x12
	ld	d, a
;src/game.c:904: v_print_c(g_strings[95], ty, FONT_RED);
	ld	bc, (#_g_strings + 190)
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_v_print_c
	pop	af
	pop	af
	ret
;src/game.c:908: static void g_draw_stage_clear(void) {
;	---------------------------------
; Function g_draw_stage_clear
; ---------------------------------
_g_draw_stage_clear:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;src/game.c:910: const u8 pw = sc_sz.w * GRID_P_W, ph = sc_sz.h * GRID_P_H;
	ld	a, (#_sc_sz + 1)
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
;src/game.c:916: y = 200 - (ph + (2 * GRID_P_H));
	add	a, #0x14
	ld	c, a
	ld	a, #0xc8
	sub	a, c
	ld	c, a
;src/game.c:918: y = y / 2;
	srl	c
;src/game.c:920: v_draw_box(&sc_sz);
	push	bc
	ld	hl, #_sc_sz
	push	hl
	call	_v_draw_box
	pop	af
	pop	bc
;src/game.c:923: ty = y + LINE_P_H * 3;
	ld	a, c
	add	a, #0x12
	ld	b, a
;src/game.c:924: v_print_c(g_strings[90], ty, FONT_RED);
	ld	de, (#_g_strings + 180)
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
;src/game.c:925: ty += (LINE_P_H * 4);
	ld	a, b
	add	a, #0x18
	ld	b, a
;src/game.c:928: v_print_c(g_strings[91], ty, FONT_RED);
	ld	de, (#_g_strings + 182)
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
;src/game.c:929: ty += LINE_P_H + 2;
	ld	a, b
	add	a, #0x08
	ld	b, a
;src/game.c:930: v_print(g_strings[80], l, ty, FONT_BLUE);
	ld	de, (#(_g_strings + 0x00a0) + 0)
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, #0x1e
	push	af
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
	ld	hl, (_g_current_score + 2)
	push	hl
	ld	hl, (_g_current_score)
	push	hl
	call	_u_get_width
	pop	af
	pop	af
	pop	bc
;src/game.c:932: v_print_n(g_current_score, l + (20 - (width * 2)), ty, FONT_BLUE);
	sla	l
	ld	a, #0x14
	sub	a, l
	ld	c,a
	add	a, #0x1e
	ld	d, a
	ld	iy, #_g_current_score
	ld	a, 0 (iy)
	ld	-8 (ix), a
	ld	a, 1 (iy)
	ld	-7 (ix), a
	ld	a, 2 (iy)
	ld	-6 (ix), a
	ld	a, 3 (iy)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x00
	ld	-2 (ix), #0x00
	ld	-1 (ix), #0x00
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	c, d
	push	bc
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
;src/game.c:935: ty += (LINE_P_H * 2);
	ld	a, b
	add	a, #0x0c
	ld	b, a
;src/game.c:936: v_print_c(g_strings[92], ty, FONT_RED);
	ld	de, (#_g_strings + 184)
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
;src/game.c:937: ty += LINE_P_H + 2;
	ld	a, b
	add	a, #0x08
	ld	b, a
;src/game.c:938: v_print(g_strings[80], l, ty, FONT_BLUE);
	ld	de, (#(_g_strings + 0x00a0) + 0)
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, #0x1e
	push	af
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
	ld	hl, (_b_score + 2)
	push	hl
	ld	hl, (_b_score)
	push	hl
	call	_u_get_width
	pop	af
	pop	af
	pop	bc
;src/game.c:940: v_print_n(b_score, l + (20 - (width * 2)), ty, FONT_BLUE);
	sla	l
	ld	a, #0x14
	sub	a, l
	ld	c,a
	add	a, #0x1e
	ld	d, a
	ld	iy, #_b_score
	ld	a, 0 (iy)
	ld	-8 (ix), a
	ld	a, 1 (iy)
	ld	-7 (ix), a
	ld	a, 2 (iy)
	ld	-6 (ix), a
	ld	a, 3 (iy)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x00
	ld	-2 (ix), #0x00
	ld	-1 (ix), #0x00
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	c, d
	push	bc
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
;src/game.c:943: g_current_score += b_score;
	ld	hl, #_b_score
	push	de
	ld	iy, #_g_current_score
	push	iy
	pop	de
	ld	a, (de)
	add	a, (hl)
	ld	(de), a
	inc	de
	ld	a, (de)
	inc	hl
	adc	a, (hl)
	ld	(de), a
	inc	de
	ld	a, (de)
	inc	hl
	adc	a, (hl)
	ld	(de), a
	inc	de
	ld	a, (de)
	inc	hl
	adc	a, (hl)
	ld	(de), a
	pop	de
;src/game.c:944: ty += (LINE_P_H * 2);
	ld	a, b
	add	a, #0x0c
	ld	b, a
;src/game.c:945: v_print_c(g_strings[93], ty, FONT_RED);
	ld	de, (#_g_strings + 186)
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
;src/game.c:946: ty += LINE_P_H + 2;
	ld	a, b
	add	a, #0x08
	ld	b, a
;src/game.c:947: v_print(g_strings[80], l, ty, FONT_BLUE);
	ld	de, (#(_g_strings + 0x00a0) + 0)
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, #0x1e
	push	af
	inc	sp
	push	de
	call	_v_print
	pop	af
	pop	af
	inc	sp
	ld	hl, (_g_current_score + 2)
	push	hl
	ld	hl, (_g_current_score)
	push	hl
	call	_u_get_width
	pop	af
	pop	af
	pop	bc
;src/game.c:949: v_print_n(g_current_score, l + (20 - (width * 2)), ty, FONT_BLUE);
	sla	l
	ld	a, #0x14
	sub	a, l
	add	a, #0x1e
	ld	d, a
	ld	iy, #_g_current_score
	ld	a, 0 (iy)
	ld	-8 (ix), a
	ld	a, 1 (iy)
	ld	-7 (ix), a
	ld	a, 2 (iy)
	ld	-6 (ix), a
	ld	a, 3 (iy)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x00
	ld	-2 (ix), #0x00
	ld	-1 (ix), #0x00
	ld	a, #0x01
	push	af
	inc	sp
	ld	c, d
	push	bc
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
	ld	sp, ix
	pop	ix
	ret
;src/game.c:952: static void g_explode_player(void) {
;	---------------------------------
; Function g_explode_player
; ---------------------------------
_g_explode_player:
;src/game.c:954: cpct_setBorder(HW_BRIGHT_RED);
	ld	hl, #0x0c10
	push	hl
	call	_cpct_setPALColour
;src/game.c:955: PlaySFX(5, CHANNEL_A, MAX_VOL);
	ld	hl, #0x0000
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_PlaySFX
	pop	af
	inc	sp
;src/game.c:956: g_player.explode = true;
	ld	hl, #(_g_player + 0x0008)
	ld	(hl), #0x01
;src/game.c:957: g_player.explode_f = 0;
	ld	hl, #(_g_player + 0x0009)
	ld	(hl), #0x00
;src/game.c:958: v_draw_player_bb(r_px, r_py);
	ld	a, (_r_py)
	push	af
	inc	sp
	ld	a, (_r_px)
	push	af
	inc	sp
	call	_v_draw_player_bb
	pop	af
;src/game.c:959: v_draw_player();
	call	_v_draw_player
;src/game.c:960: while (g_player.explode_f < 5) {
00103$:
	ld	a, (#(_g_player + 0x0009) + 0)
	sub	a, #0x05
	jr	NC,00105$
;src/game.c:962: if (g_frame_c % FC_EXPLODE == 0) {
	ld	a, #0x0f
	push	af
	inc	sp
	ld	a, (_g_frame_c)
	push	af
	inc	sp
	call	__moduchar
	pop	af
	ld	a, l
	or	a, a
	jr	NZ,00103$
;src/game.c:963: v_draw_player_bb(r_px, r_py);
	ld	a, (_r_py)
	push	af
	inc	sp
	ld	a, (_r_px)
	push	af
	inc	sp
	call	_v_draw_player_bb
	pop	af
;src/game.c:964: v_draw_player();	
	call	_v_draw_player
;src/game.c:965: ++g_player.explode_f;		
	ld	a, (#(_g_player + 0x0009) + 0)
	inc	a
	ld	(#(_g_player + 0x0009)),a
	jr	00103$
00105$:
;src/game.c:968: cpct_setBorder(HW_BLACK);
	ld	hl, #0x1410
	push	hl
	call	_cpct_setPALColour
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__g_int_idx:
	.db #0x00	; 0
__xinit__g_frame_c:
	.db #0x00	; 0
__xinit__g_bolt_count:
	.db #0x00	; 0
	.area _CABS (ABS)
