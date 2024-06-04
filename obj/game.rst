                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module game
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _c_can_continue
                             12 	.globl _c_scr_stop
                             13 	.globl _c_scr_start
                             14 	.globl _h_enter_start
                             15 	.globl _h_insert
                             16 	.globl _h_stop
                             17 	.globl _b_scr_stop
                             18 	.globl _b_scr_start
                             19 	.globl _v_draw_launch
                             20 	.globl _v_draw_player_bb
                             21 	.globl _v_draw_grid
                             22 	.globl _v_init_sprites
                             23 	.globl _v_draw_box
                             24 	.globl _v_draw_bolts
                             25 	.globl _v_draw_enemies
                             26 	.globl _v_draw_player
                             27 	.globl _v_print_n
                             28 	.globl _v_print
                             29 	.globl _v_print_c
                             30 	.globl _v_wipe_scr
                             31 	.globl _v_clr_scr
                             32 	.globl _v_reset_pal
                             33 	.globl _v_blk_scr
                             34 	.globl _u_check_collide
                             35 	.globl _u_power_2
                             36 	.globl _u_bounds_delta_check
                             37 	.globl _u_bounds_check
                             38 	.globl _u_get_xy
                             39 	.globl _u_get_delta
                             40 	.globl _u_reset_clock
                             41 	.globl _u_clear_input
                             42 	.globl _u_clock_interrupt
                             43 	.globl _u_get_width
                             44 	.globl _u_wait
                             45 	.globl _u_wait_for_key
                             46 	.globl _StopMusic
                             47 	.globl _PlaySound
                             48 	.globl _PlaySFX
                             49 	.globl _PlayMusic
                             50 	.globl _InitSound
                             51 	.globl _cpct_setPALColour
                             52 	.globl _cpct_isAnyKeyPressed
                             53 	.globl _cpct_isKeyPressed
                             54 	.globl _cpct_scanKeyboard_if
                             55 	.globl _cpct_scanKeyboard
                             56 	.globl _cpct_memset
                             57 	.globl _cpct_removeInterruptHandler
                             58 	.globl _cpct_setInterruptHandler
                             59 	.globl _g_bolt_count
                             60 	.globl _g_frame_c
                             61 	.globl _g_int_idx
                             62 	.globl _g_current_score
                             63 	.globl _g_controls
                             64 	.globl _g_hiscores
                             65 	.globl _g_player
                             66 	.globl _g_lives_left
                             67 	.globl _g_current_round
                             68 	.globl _g_current_level
                             69 	.globl _g_pods_left
                             70 	.globl _g_level
                             71 	.globl _g_bolts
                             72 	.globl _g_enemies
                             73 	.globl _g_music_sfx
                             74 	.globl _g_setup
                             75 	.globl _g_start
                             76 	.globl _g_stop
                             77 ;--------------------------------------------------------
                             78 ; special function registers
                             79 ;--------------------------------------------------------
                             80 ;--------------------------------------------------------
                             81 ; ram data
                             82 ;--------------------------------------------------------
                             83 	.area _DATA
   9BBE                      84 _g_music_sfx::
   9BBE                      85 	.ds 1
   9BBF                      86 _g_enemies::
   9BBF                      87 	.ds 32
   9BDF                      88 _g_bolts::
   9BDF                      89 	.ds 56
   9C17                      90 _g_level::
   9C17                      91 	.ds 425
   9DC0                      92 _g_pods_left::
   9DC0                      93 	.ds 1
   9DC1                      94 _g_current_level::
   9DC1                      95 	.ds 1
   9DC2                      96 _g_current_round::
   9DC2                      97 	.ds 1
   9DC3                      98 _g_lives_left::
   9DC3                      99 	.ds 1
   9DC4                     100 _g_player::
   9DC4                     101 	.ds 10
   9DCE                     102 _g_hiscores::
   9DCE                     103 	.ds 90
   9E28                     104 _g_controls::
   9E28                     105 	.ds 18
   9E3A                     106 _g_current_score::
   9E3A                     107 	.ds 4
   9E3E                     108 _b_score:
   9E3E                     109 	.ds 4
   9E42                     110 _r_px:
   9E42                     111 	.ds 1
   9E43                     112 _r_py:
   9E43                     113 	.ds 1
                            114 ;--------------------------------------------------------
                            115 ; ram data
                            116 ;--------------------------------------------------------
                            117 	.area _INITIALIZED
   A060                     118 _g_int_idx::
   A060                     119 	.ds 1
   A061                     120 _g_frame_c::
   A061                     121 	.ds 1
   A062                     122 _g_bolt_count::
   A062                     123 	.ds 1
                            124 ;--------------------------------------------------------
                            125 ; absolute external ram data
                            126 ;--------------------------------------------------------
                            127 	.area _DABS (ABS)
                            128 ;--------------------------------------------------------
                            129 ; global & static initialisations
                            130 ;--------------------------------------------------------
                            131 	.area _HOME
                            132 	.area _GSINIT
                            133 	.area _GSFINAL
                            134 	.area _GSINIT
                            135 ;--------------------------------------------------------
                            136 ; Home
                            137 ;--------------------------------------------------------
                            138 	.area _HOME
                            139 	.area _HOME
                            140 ;--------------------------------------------------------
                            141 ; code
                            142 ;--------------------------------------------------------
                            143 	.area _CODE
                            144 ;src/game.c:63: void g_setup(void) {
                            145 ;	---------------------------------
                            146 ; Function g_setup
                            147 ; ---------------------------------
   021A                     148 _g_setup::
                            149 ;src/game.c:66: g_music_sfx = true;
   021A 21 BE 9B      [10]  150 	ld	hl,#_g_music_sfx + 0
   021D 36 01         [10]  151 	ld	(hl), #0x01
                            152 ;src/game.c:69: g_controls[KEY_UP] = Key_Q;
   021F 21 08 08      [10]  153 	ld	hl, #0x0808
   0222 22 28 9E      [16]  154 	ld	(_g_controls), hl
                            155 ;src/game.c:70: g_controls[KEY_DOWN] = Key_A;
   0225 26 20         [ 7]  156 	ld	h, #0x20
   0227 22 2A 9E      [16]  157 	ld	((_g_controls + 0x0002)), hl
                            158 ;src/game.c:71: g_controls[KEY_LEFT] = Key_O;
   022A 21 04 04      [10]  159 	ld	hl, #0x0404
   022D 22 2C 9E      [16]  160 	ld	((_g_controls + 0x0004)), hl
                            161 ;src/game.c:72: g_controls[KEY_RIGHT] = Key_P;
   0230 21 03 08      [10]  162 	ld	hl, #0x0803
   0233 22 2E 9E      [16]  163 	ld	((_g_controls + 0x0006)), hl
                            164 ;src/game.c:73: g_controls[KEY_PAUSE] = Key_H;
   0236 21 05 10      [10]  165 	ld	hl, #0x1005
   0239 22 30 9E      [16]  166 	ld	((_g_controls + 0x0008)), hl
                            167 ;src/game.c:74: g_controls[JOY_UP] = Joy0_Up;
   023C 21 09 01      [10]  168 	ld	hl, #0x0109
   023F 22 32 9E      [16]  169 	ld	((_g_controls + 0x000a)), hl
                            170 ;src/game.c:75: g_controls[JOY_DOWN] = Joy0_Down;
   0242 26 02         [ 7]  171 	ld	h, #0x02
   0244 22 34 9E      [16]  172 	ld	((_g_controls + 0x000c)), hl
                            173 ;src/game.c:76: g_controls[JOY_LEFT] = Joy0_Left;
   0247 26 04         [ 7]  174 	ld	h, #0x04
   0249 22 36 9E      [16]  175 	ld	((_g_controls + 0x000e)), hl
                            176 ;src/game.c:77: g_controls[JOY_RIGHT] = Joy0_Right;
   024C 26 08         [ 7]  177 	ld	h, #0x08
   024E 22 38 9E      [16]  178 	ld	((_g_controls + 0x0010)), hl
                            179 ;src/game.c:83: h_insert("DSM", 10, 0);
   0251 AF            [ 4]  180 	xor	a, a
   0252 F5            [11]  181 	push	af
   0253 33            [ 6]  182 	inc	sp
   0254 21 00 00      [10]  183 	ld	hl, #0x0000
   0257 E5            [11]  184 	push	hl
   0258 21 0A 00      [10]  185 	ld	hl, #0x000a
   025B E5            [11]  186 	push	hl
   025C 21 49 03      [10]  187 	ld	hl, #___str_0
   025F E5            [11]  188 	push	hl
   0260 CD D6 1C      [17]  189 	call	_h_insert
   0263 21 07 00      [10]  190 	ld	hl, #7
   0266 39            [11]  191 	add	hl, sp
   0267 F9            [ 6]  192 	ld	sp, hl
                            193 ;src/game.c:84: h_insert("DSM", 100, 1);
   0268 3E 01         [ 7]  194 	ld	a, #0x01
   026A F5            [11]  195 	push	af
   026B 33            [ 6]  196 	inc	sp
   026C 21 00 00      [10]  197 	ld	hl, #0x0000
   026F E5            [11]  198 	push	hl
   0270 21 64 00      [10]  199 	ld	hl, #0x0064
   0273 E5            [11]  200 	push	hl
   0274 21 49 03      [10]  201 	ld	hl, #___str_0
   0277 E5            [11]  202 	push	hl
   0278 CD D6 1C      [17]  203 	call	_h_insert
   027B 21 07 00      [10]  204 	ld	hl, #7
   027E 39            [11]  205 	add	hl, sp
   027F F9            [ 6]  206 	ld	sp, hl
                            207 ;src/game.c:85: h_insert("DSM", 1000, 2);
   0280 3E 02         [ 7]  208 	ld	a, #0x02
   0282 F5            [11]  209 	push	af
   0283 33            [ 6]  210 	inc	sp
   0284 21 00 00      [10]  211 	ld	hl, #0x0000
   0287 E5            [11]  212 	push	hl
   0288 21 E8 03      [10]  213 	ld	hl, #0x03e8
   028B E5            [11]  214 	push	hl
   028C 21 49 03      [10]  215 	ld	hl, #___str_0
   028F E5            [11]  216 	push	hl
   0290 CD D6 1C      [17]  217 	call	_h_insert
   0293 21 07 00      [10]  218 	ld	hl, #7
   0296 39            [11]  219 	add	hl, sp
   0297 F9            [ 6]  220 	ld	sp, hl
                            221 ;src/game.c:86: h_insert("DSM", 10000, 3);
   0298 3E 03         [ 7]  222 	ld	a, #0x03
   029A F5            [11]  223 	push	af
   029B 33            [ 6]  224 	inc	sp
   029C 21 00 00      [10]  225 	ld	hl, #0x0000
   029F E5            [11]  226 	push	hl
   02A0 21 10 27      [10]  227 	ld	hl, #0x2710
   02A3 E5            [11]  228 	push	hl
   02A4 21 49 03      [10]  229 	ld	hl, #___str_0
   02A7 E5            [11]  230 	push	hl
   02A8 CD D6 1C      [17]  231 	call	_h_insert
   02AB 21 07 00      [10]  232 	ld	hl, #7
   02AE 39            [11]  233 	add	hl, sp
   02AF F9            [ 6]  234 	ld	sp, hl
                            235 ;src/game.c:87: h_insert("DSM", 20000, 4);
   02B0 3E 04         [ 7]  236 	ld	a, #0x04
   02B2 F5            [11]  237 	push	af
   02B3 33            [ 6]  238 	inc	sp
   02B4 21 00 00      [10]  239 	ld	hl, #0x0000
   02B7 E5            [11]  240 	push	hl
   02B8 21 20 4E      [10]  241 	ld	hl, #0x4e20
   02BB E5            [11]  242 	push	hl
   02BC 21 49 03      [10]  243 	ld	hl, #___str_0
   02BF E5            [11]  244 	push	hl
   02C0 CD D6 1C      [17]  245 	call	_h_insert
   02C3 21 07 00      [10]  246 	ld	hl, #7
   02C6 39            [11]  247 	add	hl, sp
   02C7 F9            [ 6]  248 	ld	sp, hl
                            249 ;src/game.c:88: h_insert("DSM", 30000, 5);
   02C8 3E 05         [ 7]  250 	ld	a, #0x05
   02CA F5            [11]  251 	push	af
   02CB 33            [ 6]  252 	inc	sp
   02CC 21 00 00      [10]  253 	ld	hl, #0x0000
   02CF E5            [11]  254 	push	hl
   02D0 21 30 75      [10]  255 	ld	hl, #0x7530
   02D3 E5            [11]  256 	push	hl
   02D4 21 49 03      [10]  257 	ld	hl, #___str_0
   02D7 E5            [11]  258 	push	hl
   02D8 CD D6 1C      [17]  259 	call	_h_insert
   02DB 21 07 00      [10]  260 	ld	hl, #7
   02DE 39            [11]  261 	add	hl, sp
   02DF F9            [ 6]  262 	ld	sp, hl
                            263 ;src/game.c:89: h_insert("DSM", 40000, 6);
   02E0 3E 06         [ 7]  264 	ld	a, #0x06
   02E2 F5            [11]  265 	push	af
   02E3 33            [ 6]  266 	inc	sp
   02E4 21 00 00      [10]  267 	ld	hl, #0x0000
   02E7 E5            [11]  268 	push	hl
   02E8 21 40 9C      [10]  269 	ld	hl, #0x9c40
   02EB E5            [11]  270 	push	hl
   02EC 21 49 03      [10]  271 	ld	hl, #___str_0
   02EF E5            [11]  272 	push	hl
   02F0 CD D6 1C      [17]  273 	call	_h_insert
   02F3 21 07 00      [10]  274 	ld	hl, #7
   02F6 39            [11]  275 	add	hl, sp
   02F7 F9            [ 6]  276 	ld	sp, hl
                            277 ;src/game.c:90: h_insert("DSM", 50000, 7);
   02F8 3E 07         [ 7]  278 	ld	a, #0x07
   02FA F5            [11]  279 	push	af
   02FB 33            [ 6]  280 	inc	sp
   02FC 21 00 00      [10]  281 	ld	hl, #0x0000
   02FF E5            [11]  282 	push	hl
   0300 21 50 C3      [10]  283 	ld	hl, #0xc350
   0303 E5            [11]  284 	push	hl
   0304 21 49 03      [10]  285 	ld	hl, #___str_0
   0307 E5            [11]  286 	push	hl
   0308 CD D6 1C      [17]  287 	call	_h_insert
   030B 21 07 00      [10]  288 	ld	hl, #7
   030E 39            [11]  289 	add	hl, sp
   030F F9            [ 6]  290 	ld	sp, hl
                            291 ;src/game.c:91: h_insert("DSM", 100000, 8);
   0310 3E 08         [ 7]  292 	ld	a, #0x08
   0312 F5            [11]  293 	push	af
   0313 33            [ 6]  294 	inc	sp
   0314 21 01 00      [10]  295 	ld	hl, #0x0001
   0317 E5            [11]  296 	push	hl
   0318 21 A0 86      [10]  297 	ld	hl, #0x86a0
   031B E5            [11]  298 	push	hl
   031C 21 49 03      [10]  299 	ld	hl, #___str_0
   031F E5            [11]  300 	push	hl
   0320 CD D6 1C      [17]  301 	call	_h_insert
   0323 21 07 00      [10]  302 	ld	hl, #7
   0326 39            [11]  303 	add	hl, sp
   0327 F9            [ 6]  304 	ld	sp, hl
                            305 ;src/game.c:92: h_insert("DSM", 250000, 9);
   0328 3E 09         [ 7]  306 	ld	a, #0x09
   032A F5            [11]  307 	push	af
   032B 33            [ 6]  308 	inc	sp
   032C 21 03 00      [10]  309 	ld	hl, #0x0003
   032F E5            [11]  310 	push	hl
   0330 21 90 D0      [10]  311 	ld	hl, #0xd090
   0333 E5            [11]  312 	push	hl
   0334 21 49 03      [10]  313 	ld	hl, #___str_0
   0337 E5            [11]  314 	push	hl
   0338 CD D6 1C      [17]  315 	call	_h_insert
   033B 21 07 00      [10]  316 	ld	hl, #7
   033E 39            [11]  317 	add	hl, sp
   033F F9            [ 6]  318 	ld	sp, hl
   0340 C9            [10]  319 	ret
   0341                     320 _hud_loc:
   0341 00                  321 	.db #0x00	; 0
   0342 00                  322 	.db #0x00	; 0
   0343                     323 _player_st:
   0343 0C                  324 	.db #0x0c	; 12
   0344 08                  325 	.db #0x08	; 8
   0345                     326 _sc_sz:
   0345 0D                  327 	.db #0x0d	; 13
   0346 0B                  328 	.db #0x0b	; 11
   0347                     329 _pa_sz:
   0347 0D                  330 	.db #0x0d	; 13
   0348 05                  331 	.db #0x05	; 5
   0349                     332 ___str_0:
   0349 44 53 4D            333 	.ascii "DSM"
   034C 00                  334 	.db 0x00
                            335 ;src/game.c:96: void g_start(void) {
                            336 ;	---------------------------------
                            337 ; Function g_start
                            338 ; ---------------------------------
   034D                     339 _g_start::
   034D 3B            [ 6]  340 	dec	sp
                            341 ;src/game.c:98: bool game_over = false, lvl_complete = false, vic_cont;
   034E FD 21 00 00   [14]  342 	ld	iy, #0
   0352 FD 39         [15]  343 	add	iy, sp
   0354 FD 36 00 00   [19]  344 	ld	0 (iy), #0x00
                            345 ;src/game.c:101: g_current_level = 1;
   0358 21 C1 9D      [10]  346 	ld	hl,#_g_current_level + 0
   035B 36 01         [10]  347 	ld	(hl), #0x01
                            348 ;src/game.c:102: g_current_round = 1;
   035D 21 C2 9D      [10]  349 	ld	hl,#_g_current_round + 0
   0360 36 01         [10]  350 	ld	(hl), #0x01
                            351 ;src/game.c:103: g_lives_left = 5;
   0362 21 C3 9D      [10]  352 	ld	hl,#_g_lives_left + 0
   0365 36 05         [10]  353 	ld	(hl), #0x05
                            354 ;src/game.c:104: g_current_score = 0;
   0367 AF            [ 4]  355 	xor	a, a
   0368 FD 21 3A 9E   [14]  356 	ld	iy, #_g_current_score
   036C FD 77 00      [19]  357 	ld	0 (iy), a
   036F FD 77 01      [19]  358 	ld	1 (iy), a
   0372 FD 77 02      [19]  359 	ld	2 (iy), a
   0375 FD 77 03      [19]  360 	ld	3 (iy), a
                            361 ;src/game.c:107: while (!game_over) {
   0378                     362 00115$:
   0378 21 00 00      [10]  363 	ld	hl, #0+0
   037B 39            [11]  364 	add	hl, sp
   037C CB 46         [12]  365 	bit	0, (hl)
   037E C2 52 04      [10]  366 	jp	NZ, 00118$
                            367 ;src/game.c:111: b_scr_start(SCR_GET_READY);
   0381 AF            [ 4]  368 	xor	a, a
   0382 F5            [11]  369 	push	af
   0383 33            [ 6]  370 	inc	sp
   0384 CD 40 00      [17]  371 	call	_b_scr_start
   0387 33            [ 6]  372 	inc	sp
                            373 ;src/game.c:113: b_scr_stop();
   0388 CD 05 02      [17]  374 	call	_b_scr_stop
                            375 ;src/game.c:116: v_blk_scr();
   038B CD 72 30      [17]  376 	call	_v_blk_scr
                            377 ;src/game.c:117: v_clr_scr();
   038E CD F2 30      [17]  378 	call	_v_clr_scr
                            379 ;src/game.c:120: g_load_level();
   0391 CD 68 04      [17]  380 	call	_g_load_level
                            381 ;src/game.c:121: g_reset_enemies();
   0394 CD 9C 0E      [17]  382 	call	_g_reset_enemies
                            383 ;src/game.c:124: g_reset_timers();
   0397 CD AF 17      [17]  384 	call	_g_reset_timers
                            385 ;src/game.c:127: InitSound();
   039A CD 92 66      [17]  386 	call	_InitSound
                            387 ;src/game.c:128: PlayMusic(0);
   039D AF            [ 4]  388 	xor	a, a
   039E F5            [11]  389 	push	af
   039F 33            [ 6]  390 	inc	sp
   03A0 CD E2 66      [17]  391 	call	_PlayMusic
   03A3 33            [ 6]  392 	inc	sp
                            393 ;src/game.c:129: cpct_setInterruptHandler(g_interrupt);
   03A4 21 5C 17      [10]  394 	ld	hl, #_g_interrupt
   03A7 CD 55 90      [17]  395 	call	_cpct_setInterruptHandler
                            396 ;src/game.c:131: u_reset_clock();
   03AA CD 9E 2D      [17]  397 	call	_u_reset_clock
                            398 ;src/game.c:132: v_reset_pal();
   03AD CD 2D 32      [17]  399 	call	_v_reset_pal
                            400 ;src/game.c:134: g_clock_on = true;
   03B0 21 58 9E      [10]  401 	ld	hl,#_g_clock_on + 0
   03B3 36 01         [10]  402 	ld	(hl), #0x01
                            403 ;src/game.c:137: lvl_complete = g_play_level();
   03B5 CD 11 0A      [17]  404 	call	_g_play_level
   03B8 4D            [ 4]  405 	ld	c, l
                            406 ;src/game.c:140: if (lvl_complete && (g_current_round == 1) &&
   03B9 CB 45         [ 8]  407 	bit	0, l
   03BB 28 2B         [12]  408 	jr	Z,00104$
   03BD 3A C2 9D      [13]  409 	ld	a,(#_g_current_round + 0)
   03C0 3D            [ 4]  410 	dec	a
   03C1 20 25         [12]  411 	jr	NZ,00104$
                            412 ;src/game.c:141: (g_current_level == 8)) {
   03C3 3A C1 9D      [13]  413 	ld	a,(#_g_current_level + 0)
   03C6 D6 08         [ 7]  414 	sub	a, #0x08
   03C8 20 1E         [12]  415 	jr	NZ,00104$
                            416 ;src/game.c:143: c_scr_start();
   03CA CD AA 26      [17]  417 	call	_c_scr_start
                            418 ;src/game.c:144: vic_cont = c_can_continue();
   03CD CD 94 28      [17]  419 	call	_c_can_continue
                            420 ;src/game.c:145: if (!vic_cont) {
   03D0 CB 45         [ 8]  421 	bit	0, l
   03D2 20 0F         [12]  422 	jr	NZ,00102$
                            423 ;src/game.c:146: game_over = true;
   03D4 FD 21 00 00   [14]  424 	ld	iy, #0
   03D8 FD 39         [15]  425 	add	iy, sp
   03DA FD 36 00 01   [19]  426 	ld	0 (iy), #0x01
                            427 ;src/game.c:147: g_lives_left = 0;
   03DE 21 C3 9D      [10]  428 	ld	hl,#_g_lives_left + 0
   03E1 36 00         [10]  429 	ld	(hl), #0x00
                            430 ;src/game.c:148: lvl_complete = false;	
   03E3                     431 00102$:
                            432 ;src/game.c:150: c_scr_stop();
   03E3 CD B1 28      [17]  433 	call	_c_scr_stop
                            434 ;src/game.c:151: lvl_complete = true;
   03E6 0E 01         [ 7]  435 	ld	c, #0x01
   03E8                     436 00104$:
                            437 ;src/game.c:155: g_clock_on = false;
   03E8 21 58 9E      [10]  438 	ld	hl,#_g_clock_on + 0
   03EB 36 00         [10]  439 	ld	(hl), #0x00
                            440 ;src/game.c:156: g_stop();
   03ED C5            [11]  441 	push	bc
   03EE CD 54 04      [17]  442 	call	_g_stop
   03F1 C1            [10]  443 	pop	bc
                            444 ;src/game.c:158: if (lvl_complete) {
   03F2 CB 41         [ 8]  445 	bit	0, c
   03F4 28 1F         [12]  446 	jr	Z,00113$
                            447 ;src/game.c:161: ++g_current_level;
   03F6 FD 21 C1 9D   [14]  448 	ld	iy, #_g_current_level
   03FA FD 34 00      [23]  449 	inc	0 (iy)
                            450 ;src/game.c:162: if (g_current_level > 8) {
   03FD 3E 08         [ 7]  451 	ld	a, #0x08
   03FF FD 96 00      [19]  452 	sub	a, 0 (iy)
   0402 D2 78 03      [10]  453 	jp	NC, 00115$
                            454 ;src/game.c:163: ++g_current_round;
   0405 21 C2 9D      [10]  455 	ld	hl, #_g_current_round+0
   0408 34            [11]  456 	inc	(hl)
                            457 ;src/game.c:164: g_current_level = 1;
   0409 21 C1 9D      [10]  458 	ld	hl,#_g_current_level + 0
   040C 36 01         [10]  459 	ld	(hl), #0x01
                            460 ;src/game.c:165: ++g_lives_left;
   040E 21 C3 9D      [10]  461 	ld	hl, #_g_lives_left+0
   0411 34            [11]  462 	inc	(hl)
   0412 C3 78 03      [10]  463 	jp	00115$
   0415                     464 00113$:
                            465 ;src/game.c:170: if (g_lives_left < 1) {
   0415 3A C3 9D      [13]  466 	ld	a,(#_g_lives_left + 0)
   0418 D6 01         [ 7]  467 	sub	a, #0x01
   041A 30 21         [12]  468 	jr	NC,00110$
                            469 ;src/game.c:173: g_stop();
   041C CD 54 04      [17]  470 	call	_g_stop
                            471 ;src/game.c:174: b_scr_start(SCR_GAME_OVER);
   041F 3E 01         [ 7]  472 	ld	a, #0x01
   0421 F5            [11]  473 	push	af
   0422 33            [ 6]  474 	inc	sp
   0423 CD 40 00      [17]  475 	call	_b_scr_start
   0426 33            [ 6]  476 	inc	sp
                            477 ;src/game.c:175: b_scr_stop();
   0427 CD 05 02      [17]  478 	call	_b_scr_stop
                            479 ;src/game.c:176: h_enter_start();
   042A CD E3 1A      [17]  480 	call	_h_enter_start
                            481 ;src/game.c:177: h_stop();
   042D CD C2 1C      [17]  482 	call	_h_stop
                            483 ;src/game.c:179: game_over = true;
   0430 FD 21 00 00   [14]  484 	ld	iy, #0
   0434 FD 39         [15]  485 	add	iy, sp
   0436 FD 36 00 01   [19]  486 	ld	0 (iy), #0x01
   043A C3 78 03      [10]  487 	jp	00115$
   043D                     488 00110$:
                            489 ;src/game.c:181: v_wipe_scr(true);
   043D 3E 01         [ 7]  490 	ld	a, #0x01
   043F F5            [11]  491 	push	af
   0440 33            [ 6]  492 	inc	sp
   0441 CD 9B 30      [17]  493 	call	_v_wipe_scr
   0444 33            [ 6]  494 	inc	sp
                            495 ;src/game.c:182: cpct_removeInterruptHandler();
   0445 CD 59 8A      [17]  496 	call	_cpct_removeInterruptHandler
                            497 ;src/game.c:183: g_reset_timers();
   0448 CD AF 17      [17]  498 	call	_g_reset_timers
                            499 ;src/game.c:184: --g_lives_left;
   044B 21 C3 9D      [10]  500 	ld	hl, #_g_lives_left+0
   044E 35            [11]  501 	dec	(hl)
   044F C3 78 03      [10]  502 	jp	00115$
   0452                     503 00118$:
   0452 33            [ 6]  504 	inc	sp
   0453 C9            [10]  505 	ret
                            506 ;src/game.c:191: void g_stop(void) {
                            507 ;	---------------------------------
                            508 ; Function g_stop
                            509 ; ---------------------------------
   0454                     510 _g_stop::
                            511 ;src/game.c:193: v_wipe_scr(true);
   0454 3E 01         [ 7]  512 	ld	a, #0x01
   0456 F5            [11]  513 	push	af
   0457 33            [ 6]  514 	inc	sp
   0458 CD 9B 30      [17]  515 	call	_v_wipe_scr
   045B 33            [ 6]  516 	inc	sp
                            517 ;src/game.c:194: v_blk_scr();
   045C CD 72 30      [17]  518 	call	_v_blk_scr
                            519 ;src/game.c:195: v_clr_scr();
   045F CD F2 30      [17]  520 	call	_v_clr_scr
                            521 ;src/game.c:196: cpct_removeInterruptHandler();
   0462 CD 59 8A      [17]  522 	call	_cpct_removeInterruptHandler
                            523 ;src/game.c:197: StopMusic();
   0465 C3 24 67      [10]  524 	jp  _StopMusic
                            525 ;src/game.c:201: static void g_load_level(void) {
                            526 ;	---------------------------------
                            527 ; Function g_load_level
                            528 ; ---------------------------------
   0468                     529 _g_load_level:
   0468 DD E5         [15]  530 	push	ix
   046A DD 21 00 00   [14]  531 	ld	ix,#0
   046E DD 39         [15]  532 	add	ix,sp
   0470 21 FA FF      [10]  533 	ld	hl, #-6
   0473 39            [11]  534 	add	hl, sp
   0474 F9            [ 6]  535 	ld	sp, hl
                            536 ;src/game.c:205: u8 count = 0;
   0475 0E 00         [ 7]  537 	ld	c, #0x00
                            538 ;src/game.c:206: u16 idx = 0;
   0477 DD 36 FB 00   [19]  539 	ld	-5 (ix), #0x00
   047B DD 36 FC 00   [19]  540 	ld	-4 (ix), #0x00
                            541 ;src/game.c:210: cpct_memset(&g_level, FLAG_GRID, sizeof(g_level));
   047F C5            [11]  542 	push	bc
   0480 21 A9 01      [10]  543 	ld	hl, #0x01a9
   0483 E5            [11]  544 	push	hl
   0484 3E 01         [ 7]  545 	ld	a, #0x01
   0486 F5            [11]  546 	push	af
   0487 33            [ 6]  547 	inc	sp
   0488 21 17 9C      [10]  548 	ld	hl, #_g_level
   048B E5            [11]  549 	push	hl
   048C CD 02 8F      [17]  550 	call	_cpct_memset
   048F C1            [10]  551 	pop	bc
                            552 ;src/game.c:211: byte_p = g_game_grids[g_current_level - 1];
   0490 21 C1 9D      [10]  553 	ld	hl,#_g_current_level + 0
   0493 5E            [ 7]  554 	ld	e, (hl)
   0494 1D            [ 4]  555 	dec	e
   0495 6B            [ 4]  556 	ld	l, e
   0496 26 00         [ 7]  557 	ld	h, #0x00
   0498 29            [11]  558 	add	hl, hl
   0499 11 82 66      [10]  559 	ld	de, #_g_game_grids
   049C 19            [11]  560 	add	hl, de
   049D 5E            [ 7]  561 	ld	e, (hl)
   049E 23            [ 6]  562 	inc	hl
   049F 56            [ 7]  563 	ld	d, (hl)
                            564 ;src/game.c:214: v_init_sprites(g_current_level);
   04A0 C5            [11]  565 	push	bc
   04A1 D5            [11]  566 	push	de
   04A2 3A C1 9D      [13]  567 	ld	a, (_g_current_level)
   04A5 F5            [11]  568 	push	af
   04A6 33            [ 6]  569 	inc	sp
   04A7 CD AE 3B      [17]  570 	call	_v_init_sprites
   04AA 33            [ 6]  571 	inc	sp
   04AB D1            [10]  572 	pop	de
   04AC C1            [10]  573 	pop	bc
                            574 ;src/game.c:217: for (u8 i = 0; i < 54; i++) {
   04AD DD 36 FA 00   [19]  575 	ld	-6 (ix), #0x00
   04B1                     576 00110$:
   04B1 DD 7E FA      [19]  577 	ld	a, -6 (ix)
   04B4 D6 36         [ 7]  578 	sub	a, #0x36
   04B6 30 5F         [12]  579 	jr	NC,00108$
                            580 ;src/game.c:219: byte = *byte_p;
   04B8 1A            [ 7]  581 	ld	a, (de)
   04B9 DD 77 FD      [19]  582 	ld	-3 (ix), a
                            583 ;src/game.c:221: while (--bit >= 0) {
   04BC DD 7E FB      [19]  584 	ld	a, -5 (ix)
   04BF DD 77 FE      [19]  585 	ld	-2 (ix), a
   04C2 DD 7E FC      [19]  586 	ld	a, -4 (ix)
   04C5 DD 77 FF      [19]  587 	ld	-1 (ix), a
   04C8 06 08         [ 7]  588 	ld	b, #0x08
   04CA                     589 00103$:
   04CA 05            [ 4]  590 	dec	b
   04CB CB 78         [ 8]  591 	bit	7, b
   04CD 20 2A         [12]  592 	jr	NZ,00120$
                            593 ;src/game.c:222: if (byte & u_power_2(bit)) {
   04CF C5            [11]  594 	push	bc
   04D0 D5            [11]  595 	push	de
   04D1 C5            [11]  596 	push	bc
   04D2 33            [ 6]  597 	inc	sp
   04D3 CD DC 28      [17]  598 	call	_u_power_2
   04D6 33            [ 6]  599 	inc	sp
   04D7 D1            [10]  600 	pop	de
   04D8 C1            [10]  601 	pop	bc
   04D9 DD 7E FD      [19]  602 	ld	a, -3 (ix)
   04DC A5            [ 4]  603 	and	a,l
   04DD 28 10         [12]  604 	jr	Z,00102$
                            605 ;src/game.c:223: g_level[idx] |= FLAG_POD;
   04DF 3E 17         [ 7]  606 	ld	a, #<(_g_level)
   04E1 DD 86 FE      [19]  607 	add	a, -2 (ix)
   04E4 6F            [ 4]  608 	ld	l, a
   04E5 3E 9C         [ 7]  609 	ld	a, #>(_g_level)
   04E7 DD 8E FF      [19]  610 	adc	a, -1 (ix)
   04EA 67            [ 4]  611 	ld	h, a
   04EB CB CE         [15]  612 	set	1, (hl)
   04ED 7E            [ 7]  613 	ld	a, (hl)
                            614 ;src/game.c:224: ++count;
   04EE 0C            [ 4]  615 	inc	c
   04EF                     616 00102$:
                            617 ;src/game.c:226: ++idx;
   04EF DD 34 FE      [23]  618 	inc	-2 (ix)
   04F2 20 D6         [12]  619 	jr	NZ,00103$
   04F4 DD 34 FF      [23]  620 	inc	-1 (ix)
   04F7 18 D1         [12]  621 	jr	00103$
   04F9                     622 00120$:
   04F9 DD 7E FE      [19]  623 	ld	a, -2 (ix)
   04FC DD 77 FB      [19]  624 	ld	-5 (ix), a
   04FF DD 7E FF      [19]  625 	ld	a, -1 (ix)
   0502 DD 77 FC      [19]  626 	ld	-4 (ix), a
                            627 ;src/game.c:228: if (idx > 425)
   0505 3E A9         [ 7]  628 	ld	a, #0xa9
   0507 DD BE FE      [19]  629 	cp	a, -2 (ix)
   050A 3E 01         [ 7]  630 	ld	a, #0x01
   050C DD 9E FF      [19]  631 	sbc	a, -1 (ix)
   050F 38 06         [12]  632 	jr	C,00108$
                            633 ;src/game.c:230: byte_p++;
   0511 13            [ 6]  634 	inc	de
                            635 ;src/game.c:217: for (u8 i = 0; i < 54; i++) {
   0512 DD 34 FA      [23]  636 	inc	-6 (ix)
   0515 18 9A         [12]  637 	jr	00110$
   0517                     638 00108$:
                            639 ;src/game.c:233: g_pods_left = count;
   0517 21 C0 9D      [10]  640 	ld	hl,#_g_pods_left + 0
   051A 71            [ 7]  641 	ld	(hl), c
   051B DD F9         [10]  642 	ld	sp, ix
   051D DD E1         [14]  643 	pop	ix
   051F C9            [10]  644 	ret
                            645 ;src/game.c:237: static void g_draw_HUD(void) {
                            646 ;	---------------------------------
                            647 ; Function g_draw_HUD
                            648 ; ---------------------------------
   0520                     649 _g_draw_HUD:
   0520 DD E5         [15]  650 	push	ix
   0522 DD 21 00 00   [14]  651 	ld	ix,#0
   0526 DD 39         [15]  652 	add	ix,sp
   0528 21 F8 FF      [10]  653 	ld	hl, #-8
   052B 39            [11]  654 	add	hl, sp
   052C F9            [ 6]  655 	ld	sp, hl
                            656 ;src/game.c:242: v_print(g_strings[81], 0, hud_loc.y, FONT_RED);
   052D 21 42 03      [10]  657 	ld	hl, #(_hud_loc + 0x0001) + 0
   0530 46            [ 7]  658 	ld	b, (hl)
   0531 ED 5B C9 67   [20]  659 	ld	de, (#_g_strings + 162)
   0535 AF            [ 4]  660 	xor	a, a
   0536 F5            [11]  661 	push	af
   0537 33            [ 6]  662 	inc	sp
   0538 C5            [11]  663 	push	bc
   0539 33            [ 6]  664 	inc	sp
   053A AF            [ 4]  665 	xor	a, a
   053B F5            [11]  666 	push	af
   053C 33            [ 6]  667 	inc	sp
   053D D5            [11]  668 	push	de
   053E CD 8F 31      [17]  669 	call	_v_print
   0541 F1            [10]  670 	pop	af
   0542 F1            [10]  671 	pop	af
   0543 33            [ 6]  672 	inc	sp
                            673 ;src/game.c:243: v_print(g_strings[80], 6, hud_loc.y, FONT_BLUE);
   0544 21 42 03      [10]  674 	ld	hl, #(_hud_loc + 0x0001) + 0
   0547 46            [ 7]  675 	ld	b, (hl)
   0548 ED 5B C7 67   [20]  676 	ld	de, (#(_g_strings + 0x00a0) + 0)
   054C 3E 01         [ 7]  677 	ld	a, #0x01
   054E F5            [11]  678 	push	af
   054F 33            [ 6]  679 	inc	sp
   0550 C5            [11]  680 	push	bc
   0551 33            [ 6]  681 	inc	sp
   0552 3E 06         [ 7]  682 	ld	a, #0x06
   0554 F5            [11]  683 	push	af
   0555 33            [ 6]  684 	inc	sp
   0556 D5            [11]  685 	push	de
   0557 CD 8F 31      [17]  686 	call	_v_print
   055A F1            [10]  687 	pop	af
   055B F1            [10]  688 	pop	af
   055C 33            [ 6]  689 	inc	sp
                            690 ;src/game.c:244: g_draw_score();
   055D CD 6C 07      [17]  691 	call	_g_draw_score
                            692 ;src/game.c:247: v_print(g_strings[82], 54, hud_loc.y, FONT_RED);
   0560 21 42 03      [10]  693 	ld	hl, #(_hud_loc + 0x0001) + 0
   0563 46            [ 7]  694 	ld	b, (hl)
   0564 ED 5B CB 67   [20]  695 	ld	de, (#_g_strings + 164)
   0568 AF            [ 4]  696 	xor	a, a
   0569 F5            [11]  697 	push	af
   056A 33            [ 6]  698 	inc	sp
   056B C5            [11]  699 	push	bc
   056C 33            [ 6]  700 	inc	sp
   056D 3E 36         [ 7]  701 	ld	a, #0x36
   056F F5            [11]  702 	push	af
   0570 33            [ 6]  703 	inc	sp
   0571 D5            [11]  704 	push	de
   0572 CD 8F 31      [17]  705 	call	_v_print
   0575 F1            [10]  706 	pop	af
   0576 F1            [10]  707 	pop	af
   0577 33            [ 6]  708 	inc	sp
                            709 ;src/game.c:248: v_print(g_strings[80], 60, hud_loc.y, FONT_BLUE);
   0578 21 42 03      [10]  710 	ld	hl, #(_hud_loc + 0x0001) + 0
   057B 46            [ 7]  711 	ld	b, (hl)
   057C ED 5B C7 67   [20]  712 	ld	de, (#(_g_strings + 0x00a0) + 0)
   0580 3E 01         [ 7]  713 	ld	a, #0x01
   0582 F5            [11]  714 	push	af
   0583 33            [ 6]  715 	inc	sp
   0584 C5            [11]  716 	push	bc
   0585 33            [ 6]  717 	inc	sp
   0586 3E 3C         [ 7]  718 	ld	a, #0x3c
   0588 F5            [11]  719 	push	af
   0589 33            [ 6]  720 	inc	sp
   058A D5            [11]  721 	push	de
   058B CD 8F 31      [17]  722 	call	_v_print
   058E F1            [10]  723 	pop	af
   058F F1            [10]  724 	pop	af
   0590 33            [ 6]  725 	inc	sp
                            726 ;src/game.c:249: width = u_get_width(g_hiscores[9].score);
   0591 ED 4B 23 9E   [20]  727 	ld	bc, (#(_g_hiscores + 0x0055) + 0)
   0595 2A 25 9E      [16]  728 	ld	hl, (#(_g_hiscores + 0x0055) + 2)
   0598 E5            [11]  729 	push	hl
   0599 C5            [11]  730 	push	bc
   059A CD 1C 29      [17]  731 	call	_u_get_width
   059D F1            [10]  732 	pop	af
   059E F1            [10]  733 	pop	af
   059F 4D            [ 4]  734 	ld	c, l
                            735 ;src/game.c:250: v_print_n(g_hiscores[9].score, 60 + (20 - (width * 2)), hud_loc.y,
   05A0 21 42 03      [10]  736 	ld	hl, #(_hud_loc + 0x0001) + 0
   05A3 46            [ 7]  737 	ld	b, (hl)
   05A4 CB 21         [ 8]  738 	sla	c
   05A6 3E 50         [ 7]  739 	ld	a, #0x50
   05A8 91            [ 4]  740 	sub	a, c
   05A9 4F            [ 4]  741 	ld	c, a
   05AA ED 5B 23 9E   [20]  742 	ld	de, (#(_g_hiscores + 0x0055) + 0)
   05AE 2A 25 9E      [16]  743 	ld	hl, (#(_g_hiscores + 0x0055) + 2)
   05B1 DD 73 F8      [19]  744 	ld	-8 (ix), e
   05B4 DD 72 F9      [19]  745 	ld	-7 (ix), d
   05B7 DD 75 FA      [19]  746 	ld	-6 (ix), l
   05BA DD 74 FB      [19]  747 	ld	-5 (ix), h
   05BD DD 36 FC 00   [19]  748 	ld	-4 (ix), #0x00
   05C1 DD 36 FD 00   [19]  749 	ld	-3 (ix), #0x00
   05C5 DD 36 FE 00   [19]  750 	ld	-2 (ix), #0x00
   05C9 DD 36 FF 00   [19]  751 	ld	-1 (ix), #0x00
   05CD 3E 01         [ 7]  752 	ld	a, #0x01
   05CF F5            [11]  753 	push	af
   05D0 33            [ 6]  754 	inc	sp
   05D1 C5            [11]  755 	push	bc
   05D2 DD 66 FF      [19]  756 	ld	h, -1 (ix)
   05D5 DD 6E FE      [19]  757 	ld	l, -2 (ix)
   05D8 E5            [11]  758 	push	hl
   05D9 DD 66 FD      [19]  759 	ld	h, -3 (ix)
   05DC DD 6E FC      [19]  760 	ld	l, -4 (ix)
   05DF E5            [11]  761 	push	hl
   05E0 DD 66 FB      [19]  762 	ld	h, -5 (ix)
   05E3 DD 6E FA      [19]  763 	ld	l, -6 (ix)
   05E6 E5            [11]  764 	push	hl
   05E7 DD 66 F9      [19]  765 	ld	h, -7 (ix)
   05EA DD 6E F8      [19]  766 	ld	l, -8 (ix)
   05ED E5            [11]  767 	push	hl
   05EE CD 35 31      [17]  768 	call	_v_print_n
   05F1 21 0B 00      [10]  769 	ld	hl, #11
   05F4 39            [11]  770 	add	hl, sp
   05F5 F9            [ 6]  771 	ld	sp, hl
                            772 ;src/game.c:254: v_print(g_strings[84], 28, hud_loc.y, FONT_RED);
   05F6 21 42 03      [10]  773 	ld	hl, #(_hud_loc + 0x0001) + 0
   05F9 46            [ 7]  774 	ld	b, (hl)
   05FA ED 5B CF 67   [20]  775 	ld	de, (#_g_strings + 168)
   05FE AF            [ 4]  776 	xor	a, a
   05FF F5            [11]  777 	push	af
   0600 33            [ 6]  778 	inc	sp
   0601 C5            [11]  779 	push	bc
   0602 33            [ 6]  780 	inc	sp
   0603 3E 1C         [ 7]  781 	ld	a, #0x1c
   0605 F5            [11]  782 	push	af
   0606 33            [ 6]  783 	inc	sp
   0607 D5            [11]  784 	push	de
   0608 CD 8F 31      [17]  785 	call	_v_print
   060B F1            [10]  786 	pop	af
   060C F1            [10]  787 	pop	af
   060D 33            [ 6]  788 	inc	sp
                            789 ;src/game.c:255: v_print_n(g_current_round, 34, hud_loc.y, FONT_BLUE);
   060E 21 42 03      [10]  790 	ld	hl, #(_hud_loc + 0x0001) + 0
   0611 46            [ 7]  791 	ld	b, (hl)
   0612 3A C2 9D      [13]  792 	ld	a,(#_g_current_round + 0)
   0615 DD 77 F8      [19]  793 	ld	-8 (ix), a
   0618 DD 36 F9 00   [19]  794 	ld	-7 (ix), #0x00
   061C DD 36 FA 00   [19]  795 	ld	-6 (ix), #0x00
   0620 DD 36 FB 00   [19]  796 	ld	-5 (ix), #0x00
   0624 DD 36 FC 00   [19]  797 	ld	-4 (ix), #0x00
   0628 DD 36 FD 00   [19]  798 	ld	-3 (ix), #0x00
   062C DD 36 FE 00   [19]  799 	ld	-2 (ix), #0x00
   0630 DD 36 FF 00   [19]  800 	ld	-1 (ix), #0x00
   0634 3E 01         [ 7]  801 	ld	a, #0x01
   0636 F5            [11]  802 	push	af
   0637 33            [ 6]  803 	inc	sp
   0638 C5            [11]  804 	push	bc
   0639 33            [ 6]  805 	inc	sp
   063A 3E 22         [ 7]  806 	ld	a, #0x22
   063C F5            [11]  807 	push	af
   063D 33            [ 6]  808 	inc	sp
   063E DD 66 FF      [19]  809 	ld	h, -1 (ix)
   0641 DD 6E FE      [19]  810 	ld	l, -2 (ix)
   0644 E5            [11]  811 	push	hl
   0645 DD 66 FD      [19]  812 	ld	h, -3 (ix)
   0648 DD 6E FC      [19]  813 	ld	l, -4 (ix)
   064B E5            [11]  814 	push	hl
   064C DD 66 FB      [19]  815 	ld	h, -5 (ix)
   064F DD 6E FA      [19]  816 	ld	l, -6 (ix)
   0652 E5            [11]  817 	push	hl
   0653 DD 66 F9      [19]  818 	ld	h, -7 (ix)
   0656 DD 6E F8      [19]  819 	ld	l, -8 (ix)
   0659 E5            [11]  820 	push	hl
   065A CD 35 31      [17]  821 	call	_v_print_n
   065D 21 0B 00      [10]  822 	ld	hl, #11
   0660 39            [11]  823 	add	hl, sp
   0661 F9            [ 6]  824 	ld	sp, hl
                            825 ;src/game.c:256: v_print(g_strings[85], 36, hud_loc.y, FONT_BLUE);
   0662 21 42 03      [10]  826 	ld	hl, #(_hud_loc + 0x0001) + 0
   0665 46            [ 7]  827 	ld	b, (hl)
   0666 ED 5B D1 67   [20]  828 	ld	de, (#_g_strings + 170)
   066A 3E 01         [ 7]  829 	ld	a, #0x01
   066C F5            [11]  830 	push	af
   066D 33            [ 6]  831 	inc	sp
   066E C5            [11]  832 	push	bc
   066F 33            [ 6]  833 	inc	sp
   0670 3E 24         [ 7]  834 	ld	a, #0x24
   0672 F5            [11]  835 	push	af
   0673 33            [ 6]  836 	inc	sp
   0674 D5            [11]  837 	push	de
   0675 CD 8F 31      [17]  838 	call	_v_print
   0678 F1            [10]  839 	pop	af
   0679 F1            [10]  840 	pop	af
   067A 33            [ 6]  841 	inc	sp
                            842 ;src/game.c:257: v_print_n(g_current_level, 38, hud_loc.y, FONT_BLUE);
   067B 21 42 03      [10]  843 	ld	hl, #(_hud_loc + 0x0001) + 0
   067E 46            [ 7]  844 	ld	b, (hl)
   067F 3A C1 9D      [13]  845 	ld	a,(#_g_current_level + 0)
   0682 DD 77 F8      [19]  846 	ld	-8 (ix), a
   0685 DD 36 F9 00   [19]  847 	ld	-7 (ix), #0x00
   0689 DD 36 FA 00   [19]  848 	ld	-6 (ix), #0x00
   068D DD 36 FB 00   [19]  849 	ld	-5 (ix), #0x00
   0691 DD 36 FC 00   [19]  850 	ld	-4 (ix), #0x00
   0695 DD 36 FD 00   [19]  851 	ld	-3 (ix), #0x00
   0699 DD 36 FE 00   [19]  852 	ld	-2 (ix), #0x00
   069D DD 36 FF 00   [19]  853 	ld	-1 (ix), #0x00
   06A1 3E 01         [ 7]  854 	ld	a, #0x01
   06A3 F5            [11]  855 	push	af
   06A4 33            [ 6]  856 	inc	sp
   06A5 C5            [11]  857 	push	bc
   06A6 33            [ 6]  858 	inc	sp
   06A7 3E 26         [ 7]  859 	ld	a, #0x26
   06A9 F5            [11]  860 	push	af
   06AA 33            [ 6]  861 	inc	sp
   06AB DD 66 FF      [19]  862 	ld	h, -1 (ix)
   06AE DD 6E FE      [19]  863 	ld	l, -2 (ix)
   06B1 E5            [11]  864 	push	hl
   06B2 DD 66 FD      [19]  865 	ld	h, -3 (ix)
   06B5 DD 6E FC      [19]  866 	ld	l, -4 (ix)
   06B8 E5            [11]  867 	push	hl
   06B9 DD 66 FB      [19]  868 	ld	h, -5 (ix)
   06BC DD 6E FA      [19]  869 	ld	l, -6 (ix)
   06BF E5            [11]  870 	push	hl
   06C0 DD 66 F9      [19]  871 	ld	h, -7 (ix)
   06C3 DD 6E F8      [19]  872 	ld	l, -8 (ix)
   06C6 E5            [11]  873 	push	hl
   06C7 CD 35 31      [17]  874 	call	_v_print_n
   06CA 21 0B 00      [10]  875 	ld	hl, #11
   06CD 39            [11]  876 	add	hl, sp
   06CE F9            [ 6]  877 	ld	sp, hl
                            878 ;src/game.c:260: v_print(g_strings[83], 42, hud_loc.y, FONT_RED);
   06CF 21 42 03      [10]  879 	ld	hl, #(_hud_loc + 0x0001) + 0
   06D2 46            [ 7]  880 	ld	b, (hl)
   06D3 ED 5B CD 67   [20]  881 	ld	de, (#_g_strings + 166)
   06D7 AF            [ 4]  882 	xor	a, a
   06D8 F5            [11]  883 	push	af
   06D9 33            [ 6]  884 	inc	sp
   06DA C5            [11]  885 	push	bc
   06DB 33            [ 6]  886 	inc	sp
   06DC 3E 2A         [ 7]  887 	ld	a, #0x2a
   06DE F5            [11]  888 	push	af
   06DF 33            [ 6]  889 	inc	sp
   06E0 D5            [11]  890 	push	de
   06E1 CD 8F 31      [17]  891 	call	_v_print
   06E4 F1            [10]  892 	pop	af
   06E5 F1            [10]  893 	pop	af
   06E6 33            [ 6]  894 	inc	sp
                            895 ;src/game.c:261: v_print(g_strings[86], 48, hud_loc.y, FONT_BLUE);
   06E7 21 42 03      [10]  896 	ld	hl, #(_hud_loc + 0x0001) + 0
   06EA 46            [ 7]  897 	ld	b, (hl)
   06EB ED 5B D3 67   [20]  898 	ld	de, (#_g_strings + 172)
   06EF 3E 01         [ 7]  899 	ld	a, #0x01
   06F1 F5            [11]  900 	push	af
   06F2 33            [ 6]  901 	inc	sp
   06F3 C5            [11]  902 	push	bc
   06F4 33            [ 6]  903 	inc	sp
   06F5 3E 30         [ 7]  904 	ld	a, #0x30
   06F7 F5            [11]  905 	push	af
   06F8 33            [ 6]  906 	inc	sp
   06F9 D5            [11]  907 	push	de
   06FA CD 8F 31      [17]  908 	call	_v_print
   06FD F1            [10]  909 	pop	af
   06FE F1            [10]  910 	pop	af
   06FF 33            [ 6]  911 	inc	sp
                            912 ;src/game.c:262: width = u_get_width(g_lives_left);
   0700 21 C3 9D      [10]  913 	ld	hl,#_g_lives_left + 0
   0703 4E            [ 7]  914 	ld	c, (hl)
   0704 06 00         [ 7]  915 	ld	b, #0x00
   0706 11 00 00      [10]  916 	ld	de,#0x0000
   0709 D5            [11]  917 	push	de
   070A C5            [11]  918 	push	bc
   070B CD 1C 29      [17]  919 	call	_u_get_width
   070E F1            [10]  920 	pop	af
   070F F1            [10]  921 	pop	af
   0710 4D            [ 4]  922 	ld	c, l
                            923 ;src/game.c:263: v_print_n(g_lives_left, 48 + (4 - (width * 2)), hud_loc.y, FONT_BLUE);
   0711 21 42 03      [10]  924 	ld	hl, #(_hud_loc + 0x0001) + 0
   0714 46            [ 7]  925 	ld	b, (hl)
   0715 CB 21         [ 8]  926 	sla	c
   0717 3E 34         [ 7]  927 	ld	a, #0x34
   0719 91            [ 4]  928 	sub	a, c
   071A 57            [ 4]  929 	ld	d, a
   071B 3A C3 9D      [13]  930 	ld	a,(#_g_lives_left + 0)
   071E DD 77 F8      [19]  931 	ld	-8 (ix), a
   0721 DD 36 F9 00   [19]  932 	ld	-7 (ix), #0x00
   0725 DD 36 FA 00   [19]  933 	ld	-6 (ix), #0x00
   0729 DD 36 FB 00   [19]  934 	ld	-5 (ix), #0x00
   072D DD 36 FC 00   [19]  935 	ld	-4 (ix), #0x00
   0731 DD 36 FD 00   [19]  936 	ld	-3 (ix), #0x00
   0735 DD 36 FE 00   [19]  937 	ld	-2 (ix), #0x00
   0739 DD 36 FF 00   [19]  938 	ld	-1 (ix), #0x00
   073D 3E 01         [ 7]  939 	ld	a, #0x01
   073F F5            [11]  940 	push	af
   0740 33            [ 6]  941 	inc	sp
   0741 4A            [ 4]  942 	ld	c, d
   0742 C5            [11]  943 	push	bc
   0743 DD 66 FF      [19]  944 	ld	h, -1 (ix)
   0746 DD 6E FE      [19]  945 	ld	l, -2 (ix)
   0749 E5            [11]  946 	push	hl
   074A DD 66 FD      [19]  947 	ld	h, -3 (ix)
   074D DD 6E FC      [19]  948 	ld	l, -4 (ix)
   0750 E5            [11]  949 	push	hl
   0751 DD 66 FB      [19]  950 	ld	h, -5 (ix)
   0754 DD 6E FA      [19]  951 	ld	l, -6 (ix)
   0757 E5            [11]  952 	push	hl
   0758 DD 66 F9      [19]  953 	ld	h, -7 (ix)
   075B DD 6E F8      [19]  954 	ld	l, -8 (ix)
   075E E5            [11]  955 	push	hl
   075F CD 35 31      [17]  956 	call	_v_print_n
   0762 21 0B 00      [10]  957 	ld	hl, #11
   0765 39            [11]  958 	add	hl, sp
   0766 F9            [ 6]  959 	ld	sp, hl
   0767 DD F9         [10]  960 	ld	sp, ix
   0769 DD E1         [14]  961 	pop	ix
   076B C9            [10]  962 	ret
                            963 ;src/game.c:267: static void g_draw_score() {
                            964 ;	---------------------------------
                            965 ; Function g_draw_score
                            966 ; ---------------------------------
   076C                     967 _g_draw_score:
   076C 21 F8 FF      [10]  968 	ld	hl, #-8
   076F 39            [11]  969 	add	hl, sp
   0770 F9            [ 6]  970 	ld	sp, hl
                            971 ;src/game.c:272: width = u_get_width(g_current_score);
   0771 2A 3C 9E      [16]  972 	ld	hl, (_g_current_score + 2)
   0774 E5            [11]  973 	push	hl
   0775 2A 3A 9E      [16]  974 	ld	hl, (_g_current_score)
   0778 E5            [11]  975 	push	hl
   0779 CD 1C 29      [17]  976 	call	_u_get_width
   077C F1            [10]  977 	pop	af
   077D F1            [10]  978 	pop	af
   077E 4D            [ 4]  979 	ld	c, l
                            980 ;src/game.c:274: g_current_score, 6 + (20 - (width * 2)), hud_loc.y, FONT_BLUE);
   077F 21 42 03      [10]  981 	ld	hl, #_hud_loc+1
   0782 56            [ 7]  982 	ld	d, (hl)
   0783 CB 21         [ 8]  983 	sla	c
   0785 3E 1A         [ 7]  984 	ld	a, #0x1a
   0787 91            [ 4]  985 	sub	a, c
   0788 47            [ 4]  986 	ld	b, a
   0789 3A 3A 9E      [13]  987 	ld	a,(#_g_current_score + 0)
   078C FD 21 00 00   [14]  988 	ld	iy, #0
   0790 FD 39         [15]  989 	add	iy, sp
   0792 FD 77 00      [19]  990 	ld	0 (iy), a
   0795 3A 3B 9E      [13]  991 	ld	a,(#_g_current_score + 1)
   0798 FD 21 00 00   [14]  992 	ld	iy, #0
   079C FD 39         [15]  993 	add	iy, sp
   079E FD 77 01      [19]  994 	ld	1 (iy), a
   07A1 3A 3C 9E      [13]  995 	ld	a,(#_g_current_score + 2)
   07A4 FD 21 00 00   [14]  996 	ld	iy, #0
   07A8 FD 39         [15]  997 	add	iy, sp
   07AA FD 77 02      [19]  998 	ld	2 (iy), a
   07AD 3A 3D 9E      [13]  999 	ld	a,(#_g_current_score + 3)
   07B0 FD 21 00 00   [14] 1000 	ld	iy, #0
   07B4 FD 39         [15] 1001 	add	iy, sp
   07B6 FD 77 03      [19] 1002 	ld	3 (iy), a
   07B9 FD 36 04 00   [19] 1003 	ld	4 (iy), #0x00
   07BD FD 36 05 00   [19] 1004 	ld	5 (iy), #0x00
   07C1 FD 36 06 00   [19] 1005 	ld	6 (iy), #0x00
   07C5 FD 36 07 00   [19] 1006 	ld	7 (iy), #0x00
   07C9 3E 01         [ 7] 1007 	ld	a, #0x01
   07CB F5            [11] 1008 	push	af
   07CC 33            [ 6] 1009 	inc	sp
   07CD 58            [ 4] 1010 	ld	e, b
   07CE D5            [11] 1011 	push	de
   07CF FD 66 07      [19] 1012 	ld	h, 7 (iy)
   07D2 FD 6E 06      [19] 1013 	ld	l, 6 (iy)
   07D5 E5            [11] 1014 	push	hl
   07D6 FD 66 05      [19] 1015 	ld	h, 5 (iy)
   07D9 FD 6E 04      [19] 1016 	ld	l, 4 (iy)
   07DC E5            [11] 1017 	push	hl
   07DD FD 66 03      [19] 1018 	ld	h, 3 (iy)
   07E0 FD 6E 02      [19] 1019 	ld	l, 2 (iy)
   07E3 E5            [11] 1020 	push	hl
   07E4 FD 66 01      [19] 1021 	ld	h, 1 (iy)
   07E7 FD 6E 00      [19] 1022 	ld	l, 0 (iy)
   07EA E5            [11] 1023 	push	hl
   07EB CD 35 31      [17] 1024 	call	_v_print_n
   07EE 21 0B 00      [10] 1025 	ld	hl, #11
   07F1 39            [11] 1026 	add	hl, sp
   07F2 F9            [ 6] 1027 	ld	sp, hl
   07F3 21 08 00      [10] 1028 	ld	hl, #8
   07F6 39            [11] 1029 	add	hl, sp
   07F7 F9            [ 6] 1030 	ld	sp, hl
   07F8 C9            [10] 1031 	ret
                           1032 ;src/game.c:278: static void g_reset_player(void) {
                           1033 ;	---------------------------------
                           1034 ; Function g_reset_player
                           1035 ; ---------------------------------
   07F9                    1036 _g_reset_player:
                           1037 ;src/game.c:280: g_player.dir = DIR_EAST;
   07F9 21 CA 9D      [10] 1038 	ld	hl, #(_g_player + 0x0006)
   07FC 36 01         [10] 1039 	ld	(hl), #0x01
                           1040 ;src/game.c:281: g_player.x = player_st.x;
   07FE 21 43 03      [10] 1041 	ld	hl, #_player_st+0
   0801 4E            [ 7] 1042 	ld	c, (hl)
   0802 21 C4 9D      [10] 1043 	ld	hl, #_g_player
   0805 71            [ 7] 1044 	ld	(hl), c
                           1045 ;src/game.c:282: g_player.y = player_st.y;
   0806 21 44 03      [10] 1046 	ld	hl, #(_player_st + 0x0001) + 0
   0809 5E            [ 7] 1047 	ld	e, (hl)
   080A 21 C5 9D      [10] 1048 	ld	hl, #(_g_player + 0x0001)
   080D 73            [ 7] 1049 	ld	(hl), e
                           1050 ;src/game.c:283: g_player.px = player_st.x;
   080E 3A 43 03      [13] 1051 	ld	a, (#_player_st + 0)
   0811 32 C6 9D      [13] 1052 	ld	(#(_g_player + 0x0002)),a
                           1053 ;src/game.c:284: g_player.py = player_st.y;
   0814 3A 44 03      [13] 1054 	ld	a, (#(_player_st + 0x0001) + 0)
   0817 32 C7 9D      [13] 1055 	ld	(#(_g_player + 0x0003)),a
                           1056 ;src/game.c:285: g_player.boost = false;
   081A 21 CB 9D      [10] 1057 	ld	hl, #(_g_player + 0x0007)
   081D 36 00         [10] 1058 	ld	(hl), #0x00
                           1059 ;src/game.c:286: g_player.explode = false;
   081F 21 CC 9D      [10] 1060 	ld	hl, #(_g_player + 0x0008)
   0822 36 00         [10] 1061 	ld	(hl), #0x00
                           1062 ;src/game.c:287: g_player.explode_f = 0;
   0824 21 CD 9D      [10] 1063 	ld	hl, #(_g_player + 0x0009)
   0827 36 00         [10] 1064 	ld	(hl), #0x00
                           1065 ;src/game.c:290: g_player.sx = GRID_LOC_X + (g_player.x * GRID_P_W) + ADJ_PLAYER_PX;
   0829 79            [ 4] 1066 	ld	a, c
   082A 87            [ 4] 1067 	add	a, a
   082B 81            [ 4] 1068 	add	a, c
   082C 3C            [ 4] 1069 	inc	a
   082D 32 C8 9D      [13] 1070 	ld	(#(_g_player + 0x0004)),a
                           1071 ;src/game.c:291: g_player.sy = GRID_LOC_Y + (g_player.y * GRID_P_H) + ADJ_PLAYER_PY;
   0830 01 C9 9D      [10] 1072 	ld	bc, #_g_player + 5
   0833 7B            [ 4] 1073 	ld	a, e
   0834 87            [ 4] 1074 	add	a, a
   0835 87            [ 4] 1075 	add	a, a
   0836 83            [ 4] 1076 	add	a, e
   0837 87            [ 4] 1077 	add	a, a
   0838 C6 0E         [ 7] 1078 	add	a, #0x0e
   083A 02            [ 7] 1079 	ld	(bc), a
   083B C9            [10] 1080 	ret
                           1081 ;src/game.c:295: static bool g_check_input_meta(bool *pause, bool *quit, bool *skip,
                           1082 ;	---------------------------------
                           1083 ; Function g_check_input_meta
                           1084 ; ---------------------------------
   083C                    1085 _g_check_input_meta:
   083C DD E5         [15] 1086 	push	ix
   083E DD 21 00 00   [14] 1087 	ld	ix,#0
   0842 DD 39         [15] 1088 	add	ix,sp
   0844 F5            [11] 1089 	push	af
   0845 F5            [11] 1090 	push	af
                           1091 ;src/game.c:298: *pause = false;
   0846 DD 4E 04      [19] 1092 	ld	c,4 (ix)
   0849 DD 46 05      [19] 1093 	ld	b,5 (ix)
   084C AF            [ 4] 1094 	xor	a, a
   084D 02            [ 7] 1095 	ld	(bc), a
                           1096 ;src/game.c:299: *quit = false;
   084E DD 5E 06      [19] 1097 	ld	e,6 (ix)
   0851 DD 56 07      [19] 1098 	ld	d,7 (ix)
   0854 AF            [ 4] 1099 	xor	a, a
   0855 12            [ 7] 1100 	ld	(de), a
                           1101 ;src/game.c:300: *skip = false;
   0856 DD 7E 08      [19] 1102 	ld	a, 8 (ix)
   0859 DD 77 FE      [19] 1103 	ld	-2 (ix), a
   085C DD 7E 09      [19] 1104 	ld	a, 9 (ix)
   085F DD 77 FF      [19] 1105 	ld	-1 (ix), a
   0862 DD 6E FE      [19] 1106 	ld	l,-2 (ix)
   0865 DD 66 FF      [19] 1107 	ld	h,-1 (ix)
   0868 36 00         [10] 1108 	ld	(hl), #0x00
                           1109 ;src/game.c:301: *victory = false;
   086A DD 7E 0A      [19] 1110 	ld	a, 10 (ix)
   086D DD 77 FC      [19] 1111 	ld	-4 (ix), a
   0870 DD 7E 0B      [19] 1112 	ld	a, 11 (ix)
   0873 DD 77 FD      [19] 1113 	ld	-3 (ix), a
   0876 E1            [10] 1114 	pop	hl
   0877 E5            [11] 1115 	push	hl
   0878 36 00         [10] 1116 	ld	(hl), #0x00
                           1117 ;src/game.c:304: if (cpct_isKeyPressed(g_controls[KEY_PAUSE])) {
   087A 2A 30 9E      [16] 1118 	ld	hl, (#(_g_controls + 0x0008) + 0)
   087D C5            [11] 1119 	push	bc
   087E D5            [11] 1120 	push	de
   087F CD EA 8A      [17] 1121 	call	_cpct_isKeyPressed
   0882 D1            [10] 1122 	pop	de
   0883 C1            [10] 1123 	pop	bc
   0884 7D            [ 4] 1124 	ld	a, l
   0885 B7            [ 4] 1125 	or	a, a
   0886 28 07         [12] 1126 	jr	Z,00110$
                           1127 ;src/game.c:305: *pause = true;
   0888 3E 01         [ 7] 1128 	ld	a, #0x01
   088A 02            [ 7] 1129 	ld	(bc), a
                           1130 ;src/game.c:306: return true;
   088B 2E 01         [ 7] 1131 	ld	l, #0x01
   088D 18 3D         [12] 1132 	jr	00112$
   088F                    1133 00110$:
                           1134 ;src/game.c:307: } else if (cpct_isKeyPressed(Key_Esc)) {
   088F D5            [11] 1135 	push	de
   0890 21 08 04      [10] 1136 	ld	hl, #0x0408
   0893 CD EA 8A      [17] 1137 	call	_cpct_isKeyPressed
   0896 D1            [10] 1138 	pop	de
   0897 7D            [ 4] 1139 	ld	a, l
   0898 B7            [ 4] 1140 	or	a, a
   0899 28 07         [12] 1141 	jr	Z,00107$
                           1142 ;src/game.c:308: *quit = true;
   089B 3E 01         [ 7] 1143 	ld	a, #0x01
   089D 12            [ 7] 1144 	ld	(de), a
                           1145 ;src/game.c:309: return true;
   089E 2E 01         [ 7] 1146 	ld	l, #0x01
   08A0 18 2A         [12] 1147 	jr	00112$
   08A2                    1148 00107$:
                           1149 ;src/game.c:310: } else if (cpct_isKeyPressed(Key_C)) {
   08A2 21 07 40      [10] 1150 	ld	hl, #0x4007
   08A5 CD EA 8A      [17] 1151 	call	_cpct_isKeyPressed
   08A8 7D            [ 4] 1152 	ld	a, l
   08A9 B7            [ 4] 1153 	or	a, a
   08AA 28 0C         [12] 1154 	jr	Z,00104$
                           1155 ;src/game.c:311: *skip = true;
   08AC DD 6E FE      [19] 1156 	ld	l,-2 (ix)
   08AF DD 66 FF      [19] 1157 	ld	h,-1 (ix)
   08B2 36 01         [10] 1158 	ld	(hl), #0x01
                           1159 ;src/game.c:312: return true;
   08B4 2E 01         [ 7] 1160 	ld	l, #0x01
   08B6 18 14         [12] 1161 	jr	00112$
   08B8                    1162 00104$:
                           1163 ;src/game.c:313: } else if (cpct_isKeyPressed(Key_Z)) {
   08B8 21 08 80      [10] 1164 	ld	hl, #0x8008
   08BB CD EA 8A      [17] 1165 	call	_cpct_isKeyPressed
   08BE 7D            [ 4] 1166 	ld	a, l
   08BF B7            [ 4] 1167 	or	a, a
   08C0 28 08         [12] 1168 	jr	Z,00108$
                           1169 ;src/game.c:314: *victory = true;
   08C2 E1            [10] 1170 	pop	hl
   08C3 E5            [11] 1171 	push	hl
   08C4 36 01         [10] 1172 	ld	(hl), #0x01
                           1173 ;src/game.c:315: return true;
   08C6 2E 01         [ 7] 1174 	ld	l, #0x01
   08C8 18 02         [12] 1175 	jr	00112$
   08CA                    1176 00108$:
                           1177 ;src/game.c:318: return false;
   08CA 2E 00         [ 7] 1178 	ld	l, #0x00
   08CC                    1179 00112$:
   08CC DD F9         [10] 1180 	ld	sp, ix
   08CE DD E1         [14] 1181 	pop	ix
   08D0 C9            [10] 1182 	ret
                           1183 ;src/game.c:322: static bool g_check_input_movement(bool *moved, bool *rotated, bool *eaten) {
                           1184 ;	---------------------------------
                           1185 ; Function g_check_input_movement
                           1186 ; ---------------------------------
   08D1                    1187 _g_check_input_movement:
   08D1 DD E5         [15] 1188 	push	ix
   08D3 DD 21 00 00   [14] 1189 	ld	ix,#0
   08D7 DD 39         [15] 1190 	add	ix,sp
   08D9 F5            [11] 1191 	push	af
                           1192 ;src/game.c:324: *moved = false;
   08DA DD 4E 04      [19] 1193 	ld	c,4 (ix)
   08DD DD 46 05      [19] 1194 	ld	b,5 (ix)
   08E0 AF            [ 4] 1195 	xor	a, a
   08E1 02            [ 7] 1196 	ld	(bc), a
                           1197 ;src/game.c:325: *rotated = false;
   08E2 DD 5E 06      [19] 1198 	ld	e,6 (ix)
   08E5 DD 56 07      [19] 1199 	ld	d,7 (ix)
   08E8 AF            [ 4] 1200 	xor	a, a
   08E9 12            [ 7] 1201 	ld	(de), a
                           1202 ;src/game.c:326: *eaten = false;
   08EA DD 7E 08      [19] 1203 	ld	a, 8 (ix)
   08ED DD 77 FE      [19] 1204 	ld	-2 (ix), a
   08F0 DD 7E 09      [19] 1205 	ld	a, 9 (ix)
   08F3 DD 77 FF      [19] 1206 	ld	-1 (ix), a
   08F6 E1            [10] 1207 	pop	hl
   08F7 E5            [11] 1208 	push	hl
   08F8 36 00         [10] 1209 	ld	(hl), #0x00
                           1210 ;src/game.c:329: if (cpct_isKeyPressed(g_controls[KEY_LEFT]) ||
   08FA 2A 2C 9E      [16] 1211 	ld	hl, (#_g_controls + 4)
   08FD C5            [11] 1212 	push	bc
   08FE D5            [11] 1213 	push	de
   08FF CD EA 8A      [17] 1214 	call	_cpct_isKeyPressed
   0902 D1            [10] 1215 	pop	de
   0903 C1            [10] 1216 	pop	bc
   0904 7D            [ 4] 1217 	ld	a, l
   0905 B7            [ 4] 1218 	or	a, a
   0906 20 0E         [12] 1219 	jr	NZ,00112$
                           1220 ;src/game.c:330: cpct_isKeyPressed(g_controls[JOY_LEFT])) {
   0908 2A 36 9E      [16] 1221 	ld	hl, (#_g_controls + 14)
   090B C5            [11] 1222 	push	bc
   090C D5            [11] 1223 	push	de
   090D CD EA 8A      [17] 1224 	call	_cpct_isKeyPressed
   0910 D1            [10] 1225 	pop	de
   0911 C1            [10] 1226 	pop	bc
   0912 7D            [ 4] 1227 	ld	a, l
   0913 B7            [ 4] 1228 	or	a, a
   0914 28 1A         [12] 1229 	jr	Z,00113$
   0916                    1230 00112$:
                           1231 ;src/game.c:331: *moved = g_move_player(DIR_WEST, rotated);
   0916 C5            [11] 1232 	push	bc
   0917 D5            [11] 1233 	push	de
   0918 3E 03         [ 7] 1234 	ld	a, #0x03
   091A F5            [11] 1235 	push	af
   091B 33            [ 6] 1236 	inc	sp
   091C CD E0 0D      [17] 1237 	call	_g_move_player
   091F F1            [10] 1238 	pop	af
   0920 33            [ 6] 1239 	inc	sp
   0921 7D            [ 4] 1240 	ld	a, l
   0922 C1            [10] 1241 	pop	bc
   0923 02            [ 7] 1242 	ld	(bc), a
                           1243 ;src/game.c:332: *eaten = g_eat_pod();
   0924 CD 23 17      [17] 1244 	call	_g_eat_pod
   0927 4D            [ 4] 1245 	ld	c, l
   0928 E1            [10] 1246 	pop	hl
   0929 E5            [11] 1247 	push	hl
   092A 71            [ 7] 1248 	ld	(hl), c
                           1249 ;src/game.c:333: return true;
   092B 2E 01         [ 7] 1250 	ld	l, #0x01
   092D C3 D0 09      [10] 1251 	jp	00116$
   0930                    1252 00113$:
                           1253 ;src/game.c:334: } else if (cpct_isKeyPressed(g_controls[KEY_RIGHT]) ||
   0930 2A 2E 9E      [16] 1254 	ld	hl, (#_g_controls + 6)
   0933 C5            [11] 1255 	push	bc
   0934 D5            [11] 1256 	push	de
   0935 CD EA 8A      [17] 1257 	call	_cpct_isKeyPressed
   0938 D1            [10] 1258 	pop	de
   0939 C1            [10] 1259 	pop	bc
   093A 7D            [ 4] 1260 	ld	a, l
   093B B7            [ 4] 1261 	or	a, a
   093C 20 0E         [12] 1262 	jr	NZ,00108$
                           1263 ;src/game.c:335: cpct_isKeyPressed(g_controls[JOY_RIGHT])) {
   093E 2A 38 9E      [16] 1264 	ld	hl, (#_g_controls + 16)
   0941 C5            [11] 1265 	push	bc
   0942 D5            [11] 1266 	push	de
   0943 CD EA 8A      [17] 1267 	call	_cpct_isKeyPressed
   0946 D1            [10] 1268 	pop	de
   0947 C1            [10] 1269 	pop	bc
   0948 7D            [ 4] 1270 	ld	a, l
   0949 B7            [ 4] 1271 	or	a, a
   094A 28 19         [12] 1272 	jr	Z,00109$
   094C                    1273 00108$:
                           1274 ;src/game.c:336: *moved = g_move_player(DIR_EAST, rotated);
   094C C5            [11] 1275 	push	bc
   094D D5            [11] 1276 	push	de
   094E 3E 01         [ 7] 1277 	ld	a, #0x01
   0950 F5            [11] 1278 	push	af
   0951 33            [ 6] 1279 	inc	sp
   0952 CD E0 0D      [17] 1280 	call	_g_move_player
   0955 F1            [10] 1281 	pop	af
   0956 33            [ 6] 1282 	inc	sp
   0957 7D            [ 4] 1283 	ld	a, l
   0958 C1            [10] 1284 	pop	bc
   0959 02            [ 7] 1285 	ld	(bc), a
                           1286 ;src/game.c:337: *eaten = g_eat_pod();
   095A CD 23 17      [17] 1287 	call	_g_eat_pod
   095D 4D            [ 4] 1288 	ld	c, l
   095E E1            [10] 1289 	pop	hl
   095F E5            [11] 1290 	push	hl
   0960 71            [ 7] 1291 	ld	(hl), c
                           1292 ;src/game.c:338: return true;
   0961 2E 01         [ 7] 1293 	ld	l, #0x01
   0963 18 6B         [12] 1294 	jr	00116$
   0965                    1295 00109$:
                           1296 ;src/game.c:339: } else if (cpct_isKeyPressed(g_controls[KEY_UP]) ||
   0965 2A 28 9E      [16] 1297 	ld	hl, (#_g_controls + 0)
   0968 C5            [11] 1298 	push	bc
   0969 D5            [11] 1299 	push	de
   096A CD EA 8A      [17] 1300 	call	_cpct_isKeyPressed
   096D D1            [10] 1301 	pop	de
   096E C1            [10] 1302 	pop	bc
   096F 7D            [ 4] 1303 	ld	a, l
   0970 B7            [ 4] 1304 	or	a, a
   0971 20 0E         [12] 1305 	jr	NZ,00104$
                           1306 ;src/game.c:340: cpct_isKeyPressed(g_controls[JOY_UP])) {
   0973 2A 32 9E      [16] 1307 	ld	hl, (#_g_controls + 10)
   0976 C5            [11] 1308 	push	bc
   0977 D5            [11] 1309 	push	de
   0978 CD EA 8A      [17] 1310 	call	_cpct_isKeyPressed
   097B D1            [10] 1311 	pop	de
   097C C1            [10] 1312 	pop	bc
   097D 7D            [ 4] 1313 	ld	a, l
   097E B7            [ 4] 1314 	or	a, a
   097F 28 18         [12] 1315 	jr	Z,00105$
   0981                    1316 00104$:
                           1317 ;src/game.c:341: *moved = g_move_player(DIR_NORTH, rotated);
   0981 C5            [11] 1318 	push	bc
   0982 D5            [11] 1319 	push	de
   0983 AF            [ 4] 1320 	xor	a, a
   0984 F5            [11] 1321 	push	af
   0985 33            [ 6] 1322 	inc	sp
   0986 CD E0 0D      [17] 1323 	call	_g_move_player
   0989 F1            [10] 1324 	pop	af
   098A 33            [ 6] 1325 	inc	sp
   098B 7D            [ 4] 1326 	ld	a, l
   098C C1            [10] 1327 	pop	bc
   098D 02            [ 7] 1328 	ld	(bc), a
                           1329 ;src/game.c:342: *eaten = g_eat_pod();
   098E CD 23 17      [17] 1330 	call	_g_eat_pod
   0991 4D            [ 4] 1331 	ld	c, l
   0992 E1            [10] 1332 	pop	hl
   0993 E5            [11] 1333 	push	hl
   0994 71            [ 7] 1334 	ld	(hl), c
                           1335 ;src/game.c:343: return true;
   0995 2E 01         [ 7] 1336 	ld	l, #0x01
   0997 18 37         [12] 1337 	jr	00116$
   0999                    1338 00105$:
                           1339 ;src/game.c:344: } else if (cpct_isKeyPressed(g_controls[KEY_DOWN]) ||
   0999 2A 2A 9E      [16] 1340 	ld	hl, (#_g_controls + 2)
   099C C5            [11] 1341 	push	bc
   099D D5            [11] 1342 	push	de
   099E CD EA 8A      [17] 1343 	call	_cpct_isKeyPressed
   09A1 D1            [10] 1344 	pop	de
   09A2 C1            [10] 1345 	pop	bc
   09A3 7D            [ 4] 1346 	ld	a, l
   09A4 B7            [ 4] 1347 	or	a, a
   09A5 20 0E         [12] 1348 	jr	NZ,00101$
                           1349 ;src/game.c:345: cpct_isKeyPressed(g_controls[JOY_DOWN])) {
   09A7 2A 34 9E      [16] 1350 	ld	hl, (#_g_controls + 12)
   09AA C5            [11] 1351 	push	bc
   09AB D5            [11] 1352 	push	de
   09AC CD EA 8A      [17] 1353 	call	_cpct_isKeyPressed
   09AF D1            [10] 1354 	pop	de
   09B0 C1            [10] 1355 	pop	bc
   09B1 7D            [ 4] 1356 	ld	a, l
   09B2 B7            [ 4] 1357 	or	a, a
   09B3 28 19         [12] 1358 	jr	Z,00110$
   09B5                    1359 00101$:
                           1360 ;src/game.c:346: *moved = g_move_player(DIR_SOUTH, rotated);
   09B5 C5            [11] 1361 	push	bc
   09B6 D5            [11] 1362 	push	de
   09B7 3E 02         [ 7] 1363 	ld	a, #0x02
   09B9 F5            [11] 1364 	push	af
   09BA 33            [ 6] 1365 	inc	sp
   09BB CD E0 0D      [17] 1366 	call	_g_move_player
   09BE F1            [10] 1367 	pop	af
   09BF 33            [ 6] 1368 	inc	sp
   09C0 7D            [ 4] 1369 	ld	a, l
   09C1 C1            [10] 1370 	pop	bc
   09C2 02            [ 7] 1371 	ld	(bc), a
                           1372 ;src/game.c:347: *eaten = g_eat_pod();
   09C3 CD 23 17      [17] 1373 	call	_g_eat_pod
   09C6 4D            [ 4] 1374 	ld	c, l
   09C7 E1            [10] 1375 	pop	hl
   09C8 E5            [11] 1376 	push	hl
   09C9 71            [ 7] 1377 	ld	(hl), c
                           1378 ;src/game.c:348: return true;
   09CA 2E 01         [ 7] 1379 	ld	l, #0x01
   09CC 18 02         [12] 1380 	jr	00116$
   09CE                    1381 00110$:
                           1382 ;src/game.c:351: return false;
   09CE 2E 00         [ 7] 1383 	ld	l, #0x00
   09D0                    1384 00116$:
   09D0 DD F9         [10] 1385 	ld	sp, ix
   09D2 DD E1         [14] 1386 	pop	ix
   09D4 C9            [10] 1387 	ret
                           1388 ;src/game.c:355: static bool g_check_launch_bolts() {
                           1389 ;	---------------------------------
                           1390 ; Function g_check_launch_bolts
                           1391 ; ---------------------------------
   09D5                    1392 _g_check_launch_bolts:
                           1393 ;src/game.c:357: bool new_bolt = false;
                           1394 ;src/game.c:360: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   09D5 01 00 00      [10] 1395 	ld	bc,#0x0000
   09D8                    1396 00105$:
   09D8 3E 03         [ 7] 1397 	ld	a, #0x03
   09DA 90            [ 4] 1398 	sub	a, b
   09DB E2 E0 09      [10] 1399 	jp	PO, 00122$
   09DE EE 80         [ 7] 1400 	xor	a, #0x80
   09E0                    1401 00122$:
   09E0 FA 0F 0A      [10] 1402 	jp	M, 00103$
                           1403 ;src/game.c:361: if (g_check_collision(i)) {
   09E3 C5            [11] 1404 	push	bc
   09E4 C5            [11] 1405 	push	bc
   09E5 33            [ 6] 1406 	inc	sp
   09E6 CD 3C 0D      [17] 1407 	call	_g_check_collision
   09E9 33            [ 6] 1408 	inc	sp
   09EA 5D            [ 4] 1409 	ld	e, l
   09EB C1            [10] 1410 	pop	bc
   09EC CB 43         [ 8] 1411 	bit	0, e
   09EE 28 1C         [12] 1412 	jr	Z,00106$
                           1413 ;src/game.c:362: g_fire_bolt(i);
   09F0 C5            [11] 1414 	push	bc
   09F1 C5            [11] 1415 	push	bc
   09F2 33            [ 6] 1416 	inc	sp
   09F3 CD BB 15      [17] 1417 	call	_g_fire_bolt
   09F6 33            [ 6] 1418 	inc	sp
   09F7 C1            [10] 1419 	pop	bc
                           1420 ;src/game.c:363: g_enemies[i].fired = true;
   09F8 78            [ 4] 1421 	ld	a,b
   09F9 6F            [ 4] 1422 	ld	l,a
   09FA 17            [ 4] 1423 	rla
   09FB 9F            [ 4] 1424 	sbc	a, a
   09FC 67            [ 4] 1425 	ld	h, a
   09FD 29            [11] 1426 	add	hl, hl
   09FE 29            [11] 1427 	add	hl, hl
   09FF 29            [11] 1428 	add	hl, hl
   0A00 11 BF 9B      [10] 1429 	ld	de, #_g_enemies
   0A03 19            [11] 1430 	add	hl, de
   0A04 11 07 00      [10] 1431 	ld	de, #0x0007
   0A07 19            [11] 1432 	add	hl, de
   0A08 36 01         [10] 1433 	ld	(hl), #0x01
                           1434 ;src/game.c:364: new_bolt = true;
   0A0A 0E 01         [ 7] 1435 	ld	c, #0x01
   0A0C                    1436 00106$:
                           1437 ;src/game.c:360: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   0A0C 04            [ 4] 1438 	inc	b
   0A0D 18 C9         [12] 1439 	jr	00105$
   0A0F                    1440 00103$:
                           1441 ;src/game.c:368: return new_bolt;
   0A0F 69            [ 4] 1442 	ld	l, c
   0A10 C9            [10] 1443 	ret
                           1444 ;src/game.c:372: static bool g_play_level(void) {
                           1445 ;	---------------------------------
                           1446 ; Function g_play_level
                           1447 ; ---------------------------------
   0A11                    1448 _g_play_level:
   0A11 DD E5         [15] 1449 	push	ix
   0A13 DD 21 00 00   [14] 1450 	ld	ix,#0
   0A17 DD 39         [15] 1451 	add	ix,sp
   0A19 21 F0 FF      [10] 1452 	ld	hl, #-16
   0A1C 39            [11] 1453 	add	hl, sp
   0A1D F9            [ 6] 1454 	ld	sp, hl
                           1455 ;src/game.c:374: bool e_mv = false, e_sh = false, s_up = false, b_mv = false;
   0A1E DD 36 FF 00   [19] 1456 	ld	-1 (ix), #0x00
   0A22 DD 36 FB 00   [19] 1457 	ld	-5 (ix), #0x00
   0A26 DD 36 F7 00   [19] 1458 	ld	-9 (ix), #0x00
   0A2A DD 36 F6 00   [19] 1459 	ld	-10 (ix), #0x00
                           1460 ;src/game.c:375: bool p_rt = false, p_mv = false, p_et = false, input = false;
   0A2E DD 36 F9 00   [19] 1461 	ld	-7 (ix), #0x00
   0A32 DD 36 F8 00   [19] 1462 	ld	-8 (ix), #0x00
   0A36 DD 36 FA 00   [19] 1463 	ld	-6 (ix), #0x00
                           1464 ;src/game.c:376: bool pause = false, success = false, quit = false, victory = false;
   0A3A DD 36 F3 00   [19] 1465 	ld	-13 (ix), #0x00
   0A3E DD 36 F2 00   [19] 1466 	ld	-14 (ix), #0x00
   0A42 DD 36 F1 00   [19] 1467 	ld	-15 (ix), #0x00
   0A46 DD 36 F0 00   [19] 1468 	ld	-16 (ix), #0x00
                           1469 ;src/game.c:381: g_reset_player();
   0A4A CD F9 07      [17] 1470 	call	_g_reset_player
                           1471 ;src/game.c:382: g_reset_enemies();
   0A4D CD 9C 0E      [17] 1472 	call	_g_reset_enemies
                           1473 ;src/game.c:383: g_draw_HUD();
   0A50 CD 20 05      [17] 1474 	call	_g_draw_HUD
                           1475 ;src/game.c:384: v_draw_grid();
   0A53 CD 62 3F      [17] 1476 	call	_v_draw_grid
                           1477 ;src/game.c:385: v_draw_enemies();
   0A56 CD 3B 36      [17] 1478 	call	_v_draw_enemies
                           1479 ;src/game.c:387: max_b_tm = g_pods_left;
   0A59 3A C0 9D      [13] 1480 	ld	a,(#_g_pods_left + 0)
   0A5C DD 77 F5      [19] 1481 	ld	-11 (ix), a
                           1482 ;src/game.c:388: sc_mod = g_current_level % 2 == 0 ? 50 : g_current_level;
   0A5F 21 C1 9D      [10] 1483 	ld	hl,#_g_current_level+0
   0A62 CB 46         [12] 1484 	bit	0, (hl)
   0A64 20 04         [12] 1485 	jr	NZ,00151$
   0A66 0E 32         [ 7] 1486 	ld	c, #0x32
   0A68 18 04         [12] 1487 	jr	00152$
   0A6A                    1488 00151$:
   0A6A 21 C1 9D      [10] 1489 	ld	hl,#_g_current_level + 0
   0A6D 4E            [ 7] 1490 	ld	c, (hl)
   0A6E                    1491 00152$:
   0A6E DD 71 F4      [19] 1492 	ld	-12 (ix), c
                           1493 ;src/game.c:391: v_draw_launch();
   0A71 CD E5 33      [17] 1494 	call	_v_draw_launch
                           1495 ;src/game.c:392: PlaySFX(4, CHANNEL_A, MAX_VOL);
   0A74 21 00 00      [10] 1496 	ld	hl, #0x0000
   0A77 E5            [11] 1497 	push	hl
   0A78 3E 04         [ 7] 1498 	ld	a, #0x04
   0A7A F5            [11] 1499 	push	af
   0A7B 33            [ 6] 1500 	inc	sp
   0A7C CD C4 66      [17] 1501 	call	_PlaySFX
                           1502 ;src/game.c:393: u_wait(20000);
   0A7F 33            [ 6] 1503 	inc	sp
   0A80 21 20 4E      [10] 1504 	ld	hl,#0x4e20
   0A83 E3            [19] 1505 	ex	(sp),hl
   0A84 CD 0B 29      [17] 1506 	call	_u_wait
   0A87 F1            [10] 1507 	pop	af
                           1508 ;src/game.c:394: v_draw_grid();
   0A88 CD 62 3F      [17] 1509 	call	_v_draw_grid
                           1510 ;src/game.c:395: v_draw_player();
   0A8B CD 0C 34      [17] 1511 	call	_v_draw_player
                           1512 ;src/game.c:397: while (!quit && !success) {
   0A8E                    1513 00142$:
   0A8E DD CB F1 46   [20] 1514 	bit	0, -15 (ix)
   0A92 C2 A5 0C      [10] 1515 	jp	NZ, 00144$
   0A95 DD CB F2 46   [20] 1516 	bit	0, -14 (ix)
   0A99 C2 A5 0C      [10] 1517 	jp	NZ, 00144$
                           1518 ;src/game.c:400: if (g_frame_c % FC_TICK == 0) {
   0A9C 3E 05         [ 7] 1519 	ld	a, #0x05
   0A9E F5            [11] 1520 	push	af
   0A9F 33            [ 6] 1521 	inc	sp
   0AA0 3A 61 A0      [13] 1522 	ld	a, (_g_frame_c)
   0AA3 F5            [11] 1523 	push	af
   0AA4 33            [ 6] 1524 	inc	sp
   0AA5 CD 10 8C      [17] 1525 	call	__moduchar
   0AA8 F1            [10] 1526 	pop	af
   0AA9 7D            [ 4] 1527 	ld	a, l
   0AAA B7            [ 4] 1528 	or	a, a
   0AAB C2 A7 0B      [10] 1529 	jp	NZ, 00121$
                           1530 ;src/game.c:403: input = g_check_input_movement(&p_mv, &p_rt, &p_et);
   0AAE 21 0A 00      [10] 1531 	ld	hl, #0x000a
   0AB1 39            [11] 1532 	add	hl, sp
   0AB2 EB            [ 4] 1533 	ex	de,hl
   0AB3 21 09 00      [10] 1534 	ld	hl, #0x0009
   0AB6 39            [11] 1535 	add	hl, sp
   0AB7 4D            [ 4] 1536 	ld	c, l
   0AB8 44            [ 4] 1537 	ld	b, h
   0AB9 21 08 00      [10] 1538 	ld	hl, #0x0008
   0ABC 39            [11] 1539 	add	hl, sp
   0ABD D5            [11] 1540 	push	de
   0ABE C5            [11] 1541 	push	bc
   0ABF E5            [11] 1542 	push	hl
   0AC0 CD D1 08      [17] 1543 	call	_g_check_input_movement
   0AC3 F1            [10] 1544 	pop	af
   0AC4 F1            [10] 1545 	pop	af
   0AC5 F1            [10] 1546 	pop	af
   0AC6 4D            [ 4] 1547 	ld	c, l
                           1548 ;src/game.c:404: if (!input)
   0AC7 CB 45         [ 8] 1549 	bit	0, l
   0AC9 20 2B         [12] 1550 	jr	NZ,00102$
                           1551 ;src/game.c:406: &pause, &quit, &success, &victory);
   0ACB 21 00 00      [10] 1552 	ld	hl, #0x0000
   0ACE 39            [11] 1553 	add	hl, sp
   0ACF EB            [ 4] 1554 	ex	de,hl
   0AD0 21 02 00      [10] 1555 	ld	hl, #0x0002
   0AD3 39            [11] 1556 	add	hl, sp
   0AD4 DD 75 FC      [19] 1557 	ld	-4 (ix), l
   0AD7 DD 74 FD      [19] 1558 	ld	-3 (ix), h
   0ADA 21 01 00      [10] 1559 	ld	hl, #0x0001
   0ADD 39            [11] 1560 	add	hl, sp
   0ADE 4D            [ 4] 1561 	ld	c, l
   0ADF 44            [ 4] 1562 	ld	b, h
   0AE0 21 03 00      [10] 1563 	ld	hl, #0x0003
   0AE3 39            [11] 1564 	add	hl, sp
   0AE4 D5            [11] 1565 	push	de
   0AE5 DD 5E FC      [19] 1566 	ld	e,-4 (ix)
   0AE8 DD 56 FD      [19] 1567 	ld	d,-3 (ix)
   0AEB D5            [11] 1568 	push	de
   0AEC C5            [11] 1569 	push	bc
   0AED E5            [11] 1570 	push	hl
   0AEE CD 3C 08      [17] 1571 	call	_g_check_input_meta
   0AF1 F1            [10] 1572 	pop	af
   0AF2 F1            [10] 1573 	pop	af
   0AF3 F1            [10] 1574 	pop	af
   0AF4 F1            [10] 1575 	pop	af
   0AF5 4D            [ 4] 1576 	ld	c, l
   0AF6                    1577 00102$:
                           1578 ;src/game.c:409: if (input)
   0AF6 CB 41         [ 8] 1579 	bit	0, c
   0AF8 28 03         [12] 1580 	jr	Z,00104$
                           1581 ;src/game.c:410: u_clear_input();
   0AFA CD 44 2D      [17] 1582 	call	_u_clear_input
   0AFD                    1583 00104$:
                           1584 ;src/game.c:413: if (pause) {
   0AFD DD CB F3 46   [20] 1585 	bit	0, -13 (ix)
   0B01 28 10         [12] 1586 	jr	Z,00114$
                           1587 ;src/game.c:416: g_pause();
   0B03 CD D1 0D      [17] 1588 	call	_g_pause
                           1589 ;src/game.c:419: v_draw_grid();
   0B06 CD 62 3F      [17] 1590 	call	_v_draw_grid
                           1591 ;src/game.c:420: v_draw_player();
   0B09 CD 0C 34      [17] 1592 	call	_v_draw_player
                           1593 ;src/game.c:421: pause = false;
   0B0C DD 36 F3 00   [19] 1594 	ld	-13 (ix), #0x00
                           1595 ;src/game.c:422: continue;
   0B10 C3 8E 0A      [10] 1596 	jp	00142$
   0B13                    1597 00114$:
                           1598 ;src/game.c:423: } else if (quit) {
   0B13 DD CB F1 46   [20] 1599 	bit	0, -15 (ix)
   0B17 28 2A         [12] 1600 	jr	Z,00111$
                           1601 ;src/game.c:426: g_current_score = 0;
   0B19 AF            [ 4] 1602 	xor	a, a
   0B1A FD 21 3A 9E   [14] 1603 	ld	iy, #_g_current_score
   0B1E FD 77 00      [19] 1604 	ld	0 (iy), a
   0B21 FD 77 01      [19] 1605 	ld	1 (iy), a
   0B24 FD 77 02      [19] 1606 	ld	2 (iy), a
   0B27 FD 77 03      [19] 1607 	ld	3 (iy), a
                           1608 ;src/game.c:427: b_score = 0;
   0B2A AF            [ 4] 1609 	xor	a, a
   0B2B FD 21 3E 9E   [14] 1610 	ld	iy, #_b_score
   0B2F FD 77 00      [19] 1611 	ld	0 (iy), a
   0B32 FD 77 01      [19] 1612 	ld	1 (iy), a
   0B35 FD 77 02      [19] 1613 	ld	2 (iy), a
   0B38 FD 77 03      [19] 1614 	ld	3 (iy), a
                           1615 ;src/game.c:428: g_lives_left = 0;
   0B3B 21 C3 9D      [10] 1616 	ld	hl,#_g_lives_left + 0
   0B3E 36 00         [10] 1617 	ld	(hl), #0x00
                           1618 ;src/game.c:429: continue;
   0B40 C3 8E 0A      [10] 1619 	jp	00142$
   0B43                    1620 00111$:
                           1621 ;src/game.c:430: } else if (success) {
   0B43 DD CB F2 46   [20] 1622 	bit	0, -14 (ix)
   0B47 C2 8E 0A      [10] 1623 	jp	NZ, 00142$
                           1624 ;src/game.c:434: } else if (victory) {
   0B4A DD CB F0 46   [20] 1625 	bit	0, -16 (ix)
   0B4E 28 0D         [12] 1626 	jr	Z,00112$
                           1627 ;src/game.c:437: g_current_level = 8;
   0B50 21 C1 9D      [10] 1628 	ld	hl,#_g_current_level + 0
   0B53 36 08         [10] 1629 	ld	(hl), #0x08
                           1630 ;src/game.c:438: g_current_round = 1;
   0B55 21 C2 9D      [10] 1631 	ld	hl,#_g_current_round + 0
   0B58 36 01         [10] 1632 	ld	(hl), #0x01
                           1633 ;src/game.c:439: continue;
   0B5A C3 8E 0A      [10] 1634 	jp	00142$
   0B5D                    1635 00112$:
                           1636 ;src/game.c:443: if (p_et) {
   0B5D DD CB FA 46   [20] 1637 	bit	0, -6 (ix)
   0B61 28 37         [12] 1638 	jr	Z,00117$
                           1639 ;src/game.c:444: g_pods_left--;
   0B63 21 C0 9D      [10] 1640 	ld	hl, #_g_pods_left+0
   0B66 35            [11] 1641 	dec	(hl)
                           1642 ;src/game.c:445: g_current_score += (sc_mod * g_current_round);
   0B67 21 C2 9D      [10] 1643 	ld	hl,#_g_current_round + 0
   0B6A 5E            [ 7] 1644 	ld	e, (hl)
   0B6B DD 66 F4      [19] 1645 	ld	h, -12 (ix)
   0B6E 2E 00         [ 7] 1646 	ld	l, #0x00
   0B70 55            [ 4] 1647 	ld	d, l
   0B71 06 08         [ 7] 1648 	ld	b, #0x08
   0B73                    1649 00257$:
   0B73 29            [11] 1650 	add	hl, hl
   0B74 30 01         [12] 1651 	jr	NC,00258$
   0B76 19            [11] 1652 	add	hl, de
   0B77                    1653 00258$:
   0B77 10 FA         [13] 1654 	djnz	00257$
   0B79 4D            [ 4] 1655 	ld	c, l
   0B7A 44            [ 4] 1656 	ld	b, h
   0B7B 78            [ 4] 1657 	ld	a, b
   0B7C 17            [ 4] 1658 	rla
   0B7D 9F            [ 4] 1659 	sbc	a, a
   0B7E 5F            [ 4] 1660 	ld	e, a
   0B7F 57            [ 4] 1661 	ld	d, a
   0B80 21 3A 9E      [10] 1662 	ld	hl, #_g_current_score
   0B83 7E            [ 7] 1663 	ld	a, (hl)
   0B84 81            [ 4] 1664 	add	a, c
   0B85 77            [ 7] 1665 	ld	(hl), a
   0B86 23            [ 6] 1666 	inc	hl
   0B87 7E            [ 7] 1667 	ld	a, (hl)
   0B88 88            [ 4] 1668 	adc	a, b
   0B89 77            [ 7] 1669 	ld	(hl), a
   0B8A 23            [ 6] 1670 	inc	hl
   0B8B 7E            [ 7] 1671 	ld	a, (hl)
   0B8C 8B            [ 4] 1672 	adc	a, e
   0B8D 77            [ 7] 1673 	ld	(hl), a
   0B8E 23            [ 6] 1674 	inc	hl
   0B8F 7E            [ 7] 1675 	ld	a, (hl)
   0B90 8A            [ 4] 1676 	adc	a, d
   0B91 77            [ 7] 1677 	ld	(hl), a
                           1678 ;src/game.c:446: p_et = false;
   0B92 DD 36 FA 00   [19] 1679 	ld	-6 (ix), #0x00
                           1680 ;src/game.c:447: s_up = true;
   0B96 DD 36 F7 01   [19] 1681 	ld	-9 (ix), #0x01
   0B9A                    1682 00117$:
                           1683 ;src/game.c:451: if (s_up) {
   0B9A DD CB F7 46   [20] 1684 	bit	0, -9 (ix)
   0B9E 28 07         [12] 1685 	jr	Z,00121$
                           1686 ;src/game.c:454: g_draw_score();
   0BA0 CD 6C 07      [17] 1687 	call	_g_draw_score
                           1688 ;src/game.c:455: s_up = false;
   0BA3 DD 36 F7 00   [19] 1689 	ld	-9 (ix), #0x00
   0BA7                    1690 00121$:
                           1691 ;src/game.c:459: if (g_frame_c % FC_TICK == 3) {
   0BA7 3E 05         [ 7] 1692 	ld	a, #0x05
   0BA9 F5            [11] 1693 	push	af
   0BAA 33            [ 6] 1694 	inc	sp
   0BAB 3A 61 A0      [13] 1695 	ld	a, (_g_frame_c)
   0BAE F5            [11] 1696 	push	af
   0BAF 33            [ 6] 1697 	inc	sp
   0BB0 CD 10 8C      [17] 1698 	call	__moduchar
   0BB3 F1            [10] 1699 	pop	af
   0BB4 7D            [ 4] 1700 	ld	a, l
   0BB5 D6 03         [ 7] 1701 	sub	a, #0x03
   0BB7 20 1B         [12] 1702 	jr	NZ,00125$
                           1703 ;src/game.c:462: b_mv = g_move_bolts();
   0BB9 CD 96 13      [17] 1704 	call	_g_move_bolts
   0BBC DD 75 F6      [19] 1705 	ld	-10 (ix), l
                           1706 ;src/game.c:463: e_sh = g_check_launch_bolts();
   0BBF CD D5 09      [17] 1707 	call	_g_check_launch_bolts
   0BC2 DD 75 FB      [19] 1708 	ld	-5 (ix), l
                           1709 ;src/game.c:467: if (g_check_death()) {
   0BC5 CD E9 0C      [17] 1710 	call	_g_check_death
   0BC8 CB 45         [ 8] 1711 	bit	0, l
   0BCA 28 08         [12] 1712 	jr	Z,00125$
                           1713 ;src/game.c:470: g_explode_player();
   0BCC CD 35 1A      [17] 1714 	call	_g_explode_player
                           1715 ;src/game.c:471: return false;
   0BCF 2E 00         [ 7] 1716 	ld	l, #0x00
   0BD1 C3 E4 0C      [10] 1717 	jp	00149$
   0BD4                    1718 00125$:
                           1719 ;src/game.c:476: if (g_frame_c % FC_TICK == 3)
   0BD4 3E 05         [ 7] 1720 	ld	a, #0x05
   0BD6 F5            [11] 1721 	push	af
   0BD7 33            [ 6] 1722 	inc	sp
   0BD8 3A 61 A0      [13] 1723 	ld	a, (_g_frame_c)
   0BDB F5            [11] 1724 	push	af
   0BDC 33            [ 6] 1725 	inc	sp
   0BDD CD 10 8C      [17] 1726 	call	__moduchar
   0BE0 F1            [10] 1727 	pop	af
   0BE1 7D            [ 4] 1728 	ld	a, l
   0BE2 D6 03         [ 7] 1729 	sub	a, #0x03
   0BE4 20 06         [12] 1730 	jr	NZ,00127$
                           1731 ;src/game.c:477: e_mv = g_move_enemies();
   0BE6 CD 1F 11      [17] 1732 	call	_g_move_enemies
   0BE9 DD 75 FF      [19] 1733 	ld	-1 (ix), l
   0BEC                    1734 00127$:
                           1735 ;src/game.c:481: if (b_mv || e_sh || p_mv) {
   0BEC DD CB F6 46   [20] 1736 	bit	0, -10 (ix)
   0BF0 20 0C         [12] 1737 	jr	NZ,00133$
   0BF2 DD CB FB 46   [20] 1738 	bit	0, -5 (ix)
   0BF6 20 06         [12] 1739 	jr	NZ,00133$
   0BF8 DD CB F8 46   [20] 1740 	bit	0, -8 (ix)
   0BFC 28 45         [12] 1741 	jr	Z,00134$
   0BFE                    1742 00133$:
                           1743 ;src/game.c:484: if (b_mv || e_sh) {
   0BFE DD CB F6 46   [20] 1744 	bit	0, -10 (ix)
   0C02 20 06         [12] 1745 	jr	NZ,00128$
   0C04 DD CB FB 46   [20] 1746 	bit	0, -5 (ix)
   0C08 28 10         [12] 1747 	jr	Z,00129$
   0C0A                    1748 00128$:
                           1749 ;src/game.c:485: v_draw_bolts(true);
   0C0A 3E 01         [ 7] 1750 	ld	a, #0x01
   0C0C F5            [11] 1751 	push	af
   0C0D 33            [ 6] 1752 	inc	sp
   0C0E CD CF 38      [17] 1753 	call	_v_draw_bolts
   0C11 33            [ 6] 1754 	inc	sp
                           1755 ;src/game.c:486: b_mv = false;
   0C12 DD 36 F6 00   [19] 1756 	ld	-10 (ix), #0x00
                           1757 ;src/game.c:487: e_sh = false;
   0C16 DD 36 FB 00   [19] 1758 	ld	-5 (ix), #0x00
   0C1A                    1759 00129$:
                           1760 ;src/game.c:490: if (p_mv) {
   0C1A DD CB F8 46   [20] 1761 	bit	0, -8 (ix)
   0C1E 28 18         [12] 1762 	jr	Z,00132$
                           1763 ;src/game.c:491: g_player.boost = !p_rt;
   0C20 DD 7E F9      [19] 1764 	ld	a, -7 (ix)
   0C23 EE 01         [ 7] 1765 	xor	a, #0x01
   0C25 4F            [ 4] 1766 	ld	c, a
   0C26 21 CB 9D      [10] 1767 	ld	hl, #(_g_player + 0x0007)
   0C29 71            [ 7] 1768 	ld	(hl), c
                           1769 ;src/game.c:494: v_draw_player_bb(r_px, r_py);
   0C2A 3A 43 9E      [13] 1770 	ld	a, (_r_py)
   0C2D F5            [11] 1771 	push	af
   0C2E 33            [ 6] 1772 	inc	sp
   0C2F 3A 42 9E      [13] 1773 	ld	a, (_r_px)
   0C32 F5            [11] 1774 	push	af
   0C33 33            [ 6] 1775 	inc	sp
   0C34 CD 6D 3C      [17] 1776 	call	_v_draw_player_bb
   0C37 F1            [10] 1777 	pop	af
   0C38                    1778 00132$:
                           1779 ;src/game.c:497: v_draw_player();
   0C38 CD 0C 34      [17] 1780 	call	_v_draw_player
                           1781 ;src/game.c:499: p_mv = false;
   0C3B DD 36 F8 00   [19] 1782 	ld	-8 (ix), #0x00
                           1783 ;src/game.c:500: p_rt = false;
   0C3F DD 36 F9 00   [19] 1784 	ld	-7 (ix), #0x00
   0C43                    1785 00134$:
                           1786 ;src/game.c:503: if (e_mv) {
   0C43 DD CB FF 46   [20] 1787 	bit	0, -1 (ix)
   0C47 28 07         [12] 1788 	jr	Z,00138$
                           1789 ;src/game.c:506: v_draw_enemies();
   0C49 CD 3B 36      [17] 1790 	call	_v_draw_enemies
                           1791 ;src/game.c:508: e_mv = false;
   0C4C DD 36 FF 00   [19] 1792 	ld	-1 (ix), #0x00
   0C50                    1793 00138$:
                           1794 ;src/game.c:512: if (g_pods_left == 0) {
   0C50 3A C0 9D      [13] 1795 	ld	a,(#_g_pods_left + 0)
   0C53 B7            [ 4] 1796 	or	a, a
   0C54 C2 8E 0A      [10] 1797 	jp	NZ, 00142$
                           1798 ;src/game.c:515: b_tm = max_b_tm - g_clock.s;
   0C57 DD 4E F5      [19] 1799 	ld	c, -11 (ix)
   0C5A 06 00         [ 7] 1800 	ld	b, #0x00
   0C5C 2A 69 A0      [16] 1801 	ld	hl, (#(_g_clock + 0x0002) + 0)
   0C5F 79            [ 4] 1802 	ld	a, c
   0C60 95            [ 4] 1803 	sub	a, l
   0C61 4F            [ 4] 1804 	ld	c, a
   0C62 78            [ 4] 1805 	ld	a, b
   0C63 9C            [ 4] 1806 	sbc	a, h
   0C64 47            [ 4] 1807 	ld	b, a
   0C65 59            [ 4] 1808 	ld	e, c
                           1809 ;src/game.c:516: b_score = b_tm > 0 ? b_tm * g_current_level *
   0C66 78            [ 4] 1810 	ld	a,b
   0C67 57            [ 4] 1811 	ld	d,a
   0C68 B1            [ 4] 1812 	or	a,c
   0C69 28 1E         [12] 1813 	jr	Z,00153$
   0C6B 21 C1 9D      [10] 1814 	ld	hl,#_g_current_level + 0
   0C6E 4E            [ 7] 1815 	ld	c, (hl)
   0C6F 06 00         [ 7] 1816 	ld	b, #0x00
   0C71 C5            [11] 1817 	push	bc
   0C72 D5            [11] 1818 	push	de
   0C73 CD 31 8C      [17] 1819 	call	__mulint
   0C76 F1            [10] 1820 	pop	af
   0C77 F1            [10] 1821 	pop	af
   0C78 4D            [ 4] 1822 	ld	c, l
   0C79 44            [ 4] 1823 	ld	b, h
   0C7A 21 C2 9D      [10] 1824 	ld	hl,#_g_current_round + 0
   0C7D 5E            [ 7] 1825 	ld	e, (hl)
   0C7E 16 00         [ 7] 1826 	ld	d, #0x00
   0C80 D5            [11] 1827 	push	de
   0C81 C5            [11] 1828 	push	bc
   0C82 CD 31 8C      [17] 1829 	call	__mulint
   0C85 F1            [10] 1830 	pop	af
   0C86 F1            [10] 1831 	pop	af
   0C87 18 03         [12] 1832 	jr	00154$
   0C89                    1833 00153$:
                           1834 ;src/game.c:518: : 0;
   0C89 21 00 00      [10] 1835 	ld	hl, #0x0000
   0C8C                    1836 00154$:
   0C8C FD 21 3E 9E   [14] 1837 	ld	iy, #_b_score
   0C90 FD 75 00      [19] 1838 	ld	0 (iy), l
   0C93 FD 74 01      [19] 1839 	ld	1 (iy), h
   0C96 FD 36 02 00   [19] 1840 	ld	2 (iy), #0x00
   0C9A FD 36 03 00   [19] 1841 	ld	3 (iy), #0x00
                           1842 ;src/game.c:520: success = true;
   0C9E DD 36 F2 01   [19] 1843 	ld	-14 (ix), #0x01
                           1844 ;src/game.c:521: continue;
   0CA2 C3 8E 0A      [10] 1845 	jp	00142$
   0CA5                    1846 00144$:
                           1847 ;src/game.c:525: if (quit)
   0CA5 DD CB F1 46   [20] 1848 	bit	0, -15 (ix)
   0CA9 28 04         [12] 1849 	jr	Z,00146$
                           1850 ;src/game.c:526: return false;
   0CAB 2E 00         [ 7] 1851 	ld	l, #0x00
   0CAD 18 35         [12] 1852 	jr	00149$
   0CAF                    1853 00146$:
                           1854 ;src/game.c:528: if (success) {
   0CAF DD CB F2 46   [20] 1855 	bit	0, -14 (ix)
   0CB3 28 2C         [12] 1856 	jr	Z,00148$
                           1857 ;src/game.c:531: u_clear_input();
   0CB5 CD 44 2D      [17] 1858 	call	_u_clear_input
                           1859 ;src/game.c:532: g_draw_stage_clear();
   0CB8 CD FE 17      [17] 1860 	call	_g_draw_stage_clear
                           1861 ;src/game.c:533: cpct_setBorder(HW_LIME);
   0CBB 21 10 1A      [10] 1862 	ld	hl, #0x1a10
   0CBE E5            [11] 1863 	push	hl
   0CBF CD 17 8B      [17] 1864 	call	_cpct_setPALColour
                           1865 ;src/game.c:534: PlaySFX(3, CHANNEL_A, MAX_VOL);
   0CC2 21 00 00      [10] 1866 	ld	hl, #0x0000
   0CC5 E5            [11] 1867 	push	hl
   0CC6 3E 03         [ 7] 1868 	ld	a, #0x03
   0CC8 F5            [11] 1869 	push	af
   0CC9 33            [ 6] 1870 	inc	sp
   0CCA CD C4 66      [17] 1871 	call	_PlaySFX
   0CCD F1            [10] 1872 	pop	af
   0CCE 33            [ 6] 1873 	inc	sp
                           1874 ;src/game.c:535: u_clear_input();
   0CCF CD 44 2D      [17] 1875 	call	_u_clear_input
                           1876 ;src/game.c:536: g_stage_clear();
   0CD2 CD 95 0D      [17] 1877 	call	_g_stage_clear
                           1878 ;src/game.c:537: cpct_setBorder(HW_BLACK);
   0CD5 21 10 14      [10] 1879 	ld	hl, #0x1410
   0CD8 E5            [11] 1880 	push	hl
   0CD9 CD 17 8B      [17] 1881 	call	_cpct_setPALColour
                           1882 ;src/game.c:538: return success;
   0CDC DD 6E F2      [19] 1883 	ld	l, -14 (ix)
   0CDF 18 03         [12] 1884 	jr	00149$
   0CE1                    1885 00148$:
                           1886 ;src/game.c:541: return success;
   0CE1 DD 6E F2      [19] 1887 	ld	l, -14 (ix)
   0CE4                    1888 00149$:
   0CE4 DD F9         [10] 1889 	ld	sp, ix
   0CE6 DD E1         [14] 1890 	pop	ix
   0CE8 C9            [10] 1891 	ret
                           1892 ;src/game.c:544: static bool g_check_death(void) {
                           1893 ;	---------------------------------
                           1894 ; Function g_check_death
                           1895 ; ---------------------------------
   0CE9                    1896 _g_check_death:
                           1897 ;src/game.c:546: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   0CE9 0E 00         [ 7] 1898 	ld	c, #0x00
   0CEB                    1899 00107$:
   0CEB 3E 03         [ 7] 1900 	ld	a, #0x03
   0CED 91            [ 4] 1901 	sub	a, c
   0CEE E2 F3 0C      [10] 1902 	jp	PO, 00127$
   0CF1 EE 80         [ 7] 1903 	xor	a, #0x80
   0CF3                    1904 00127$:
   0CF3 FA 39 0D      [10] 1905 	jp	M, 00105$
                           1906 ;src/game.c:548: if (g_bolts[i].active) {
   0CF6 79            [ 4] 1907 	ld	a, c
   0CF7 CB 07         [ 8] 1908 	rlc	a
   0CF9 9F            [ 4] 1909 	sbc	a, a
   0CFA 47            [ 4] 1910 	ld	b, a
   0CFB 69            [ 4] 1911 	ld	l, c
   0CFC 60            [ 4] 1912 	ld	h, b
   0CFD 29            [11] 1913 	add	hl, hl
   0CFE 09            [11] 1914 	add	hl, bc
   0CFF 29            [11] 1915 	add	hl, hl
   0D00 09            [11] 1916 	add	hl, bc
   0D01 29            [11] 1917 	add	hl, hl
   0D02 EB            [ 4] 1918 	ex	de,hl
   0D03 7B            [ 4] 1919 	ld	a, e
   0D04 C6 DF         [ 7] 1920 	add	a, #<(_g_bolts)
   0D06 5F            [ 4] 1921 	ld	e, a
   0D07 7A            [ 4] 1922 	ld	a, d
   0D08 CE 9B         [ 7] 1923 	adc	a, #>(_g_bolts)
   0D0A 57            [ 4] 1924 	ld	d, a
   0D0B D5            [11] 1925 	push	de
   0D0C FD E1         [14] 1926 	pop	iy
   0D0E FD 46 05      [19] 1927 	ld	b, 5 (iy)
   0D11 CB 40         [ 8] 1928 	bit	0, b
   0D13 28 21         [12] 1929 	jr	Z,00108$
                           1930 ;src/game.c:551: g_bolts[i].x, g_bolts[i].y))
   0D15 6B            [ 4] 1931 	ld	l, e
   0D16 62            [ 4] 1932 	ld	h, d
   0D17 23            [ 6] 1933 	inc	hl
   0D18 23            [ 6] 1934 	inc	hl
   0D19 46            [ 7] 1935 	ld	b, (hl)
   0D1A EB            [ 4] 1936 	ex	de,hl
   0D1B 23            [ 6] 1937 	inc	hl
   0D1C 56            [ 7] 1938 	ld	d, (hl)
                           1939 ;src/game.c:550: if (u_check_collide(g_player.x, g_player.y,
   0D1D 3A C5 9D      [13] 1940 	ld	a, (#_g_player + 1)
   0D20 21 C4 9D      [10] 1941 	ld	hl, #_g_player + 0
   0D23 5E            [ 7] 1942 	ld	e, (hl)
   0D24 C5            [11] 1943 	push	bc
   0D25 4A            [ 4] 1944 	ld	c, d
   0D26 C5            [11] 1945 	push	bc
   0D27 57            [ 4] 1946 	ld	d,a
   0D28 D5            [11] 1947 	push	de
   0D29 CD AA 2D      [17] 1948 	call	_u_check_collide
   0D2C F1            [10] 1949 	pop	af
   0D2D F1            [10] 1950 	pop	af
   0D2E C1            [10] 1951 	pop	bc
   0D2F CB 45         [ 8] 1952 	bit	0, l
   0D31 28 03         [12] 1953 	jr	Z,00108$
                           1954 ;src/game.c:552: return true;
   0D33 2E 01         [ 7] 1955 	ld	l, #0x01
   0D35 C9            [10] 1956 	ret
   0D36                    1957 00108$:
                           1958 ;src/game.c:546: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   0D36 0C            [ 4] 1959 	inc	c
   0D37 18 B2         [12] 1960 	jr	00107$
   0D39                    1961 00105$:
                           1962 ;src/game.c:556: return false;
   0D39 2E 00         [ 7] 1963 	ld	l, #0x00
   0D3B C9            [10] 1964 	ret
                           1965 ;src/game.c:560: static bool g_check_collision(const dir_t enemy) {
                           1966 ;	---------------------------------
                           1967 ; Function g_check_collision
                           1968 ; ---------------------------------
   0D3C                    1969 _g_check_collision:
   0D3C DD E5         [15] 1970 	push	ix
   0D3E DD 21 00 00   [14] 1971 	ld	ix,#0
   0D42 DD 39         [15] 1972 	add	ix,sp
                           1973 ;src/game.c:566: if (g_enemies[enemy].loc == (g_player.x))
   0D44 DD 6E 04      [19] 1974 	ld	l, 4 (ix)
   0D47 DD 7E 04      [19] 1975 	ld	a, 4 (ix)
   0D4A 17            [ 4] 1976 	rla
   0D4B 9F            [ 4] 1977 	sbc	a, a
   0D4C 67            [ 4] 1978 	ld	h, a
   0D4D 29            [11] 1979 	add	hl, hl
   0D4E 29            [11] 1980 	add	hl, hl
   0D4F 29            [11] 1981 	add	hl, hl
   0D50 4D            [ 4] 1982 	ld	c, l
   0D51 44            [ 4] 1983 	ld	b, h
                           1984 ;src/game.c:563: switch (enemy) {
   0D52 DD 7E 04      [19] 1985 	ld	a, 4 (ix)
   0D55 B7            [ 4] 1986 	or	a, a
   0D56 28 16         [12] 1987 	jr	Z,00102$
   0D58 DD 7E 04      [19] 1988 	ld	a, 4 (ix)
   0D5B 3D            [ 4] 1989 	dec	a
   0D5C 28 1F         [12] 1990 	jr	Z,00106$
   0D5E DD 7E 04      [19] 1991 	ld	a, 4 (ix)
   0D61 D6 02         [ 7] 1992 	sub	a, #0x02
   0D63 28 09         [12] 1993 	jr	Z,00102$
   0D65 DD 7E 04      [19] 1994 	ld	a, 4 (ix)
   0D68 D6 03         [ 7] 1995 	sub	a, #0x03
   0D6A 28 11         [12] 1996 	jr	Z,00106$
   0D6C 18 1E         [12] 1997 	jr	00109$
                           1998 ;src/game.c:565: case DIR_SOUTH:
   0D6E                    1999 00102$:
                           2000 ;src/game.c:566: if (g_enemies[enemy].loc == (g_player.x))
   0D6E 21 C0 9B      [10] 2001 	ld	hl,#_g_enemies+0+1
   0D71 09            [11] 2002 	add	hl,bc
   0D72 4E            [ 7] 2003 	ld	c, (hl)
   0D73 3A C4 9D      [13] 2004 	ld	a, (#_g_player + 0)
   0D76 91            [ 4] 2005 	sub	a, c
   0D77 20 17         [12] 2006 	jr	NZ,00110$
                           2007 ;src/game.c:567: return true;
   0D79 2E 01         [ 7] 2008 	ld	l, #0x01
   0D7B 18 15         [12] 2009 	jr	00111$
                           2010 ;src/game.c:570: case DIR_WEST:
   0D7D                    2011 00106$:
                           2012 ;src/game.c:571: if (g_enemies[enemy].loc == (g_player.y))
   0D7D 21 C0 9B      [10] 2013 	ld	hl,#_g_enemies+0+1
   0D80 09            [11] 2014 	add	hl,bc
   0D81 4E            [ 7] 2015 	ld	c, (hl)
   0D82 3A C5 9D      [13] 2016 	ld	a, (#(_g_player + 0x0001) + 0)
   0D85 91            [ 4] 2017 	sub	a, c
   0D86 20 08         [12] 2018 	jr	NZ,00110$
                           2019 ;src/game.c:572: return true;
   0D88 2E 01         [ 7] 2020 	ld	l, #0x01
   0D8A 18 06         [12] 2021 	jr	00111$
                           2022 ;src/game.c:574: default:
   0D8C                    2023 00109$:
                           2024 ;src/game.c:575: return false;
   0D8C 2E 00         [ 7] 2025 	ld	l, #0x00
   0D8E 18 02         [12] 2026 	jr	00111$
                           2027 ;src/game.c:576: }
   0D90                    2028 00110$:
                           2029 ;src/game.c:578: return false;
   0D90 2E 00         [ 7] 2030 	ld	l, #0x00
   0D92                    2031 00111$:
   0D92 DD E1         [14] 2032 	pop	ix
   0D94 C9            [10] 2033 	ret
                           2034 ;src/game.c:582: static void g_stage_clear(void) {
                           2035 ;	---------------------------------
                           2036 ; Function g_stage_clear
                           2037 ; ---------------------------------
   0D95                    2038 _g_stage_clear:
                           2039 ;src/game.c:585: bool kp = false;
   0D95 0E 00         [ 7] 2040 	ld	c, #0x00
                           2041 ;src/game.c:588: g_clock_on = false;
   0D97 21 58 9E      [10] 2042 	ld	hl,#_g_clock_on + 0
   0D9A 36 00         [10] 2043 	ld	(hl), #0x00
                           2044 ;src/game.c:589: u_reset_clock();
   0D9C C5            [11] 2045 	push	bc
   0D9D CD 9E 2D      [17] 2046 	call	_u_reset_clock
   0DA0 C1            [10] 2047 	pop	bc
                           2048 ;src/game.c:590: g_clock_on = true;
   0DA1 21 58 9E      [10] 2049 	ld	hl,#_g_clock_on + 0
   0DA4 36 01         [10] 2050 	ld	(hl), #0x01
                           2051 ;src/game.c:593: u_clear_input();
   0DA6 C5            [11] 2052 	push	bc
   0DA7 CD 44 2D      [17] 2053 	call	_u_clear_input
   0DAA CD 44 2D      [17] 2054 	call	_u_clear_input
   0DAD C1            [10] 2055 	pop	bc
                           2056 ;src/game.c:596: while ((!kp) && (g_clock.s < duration)) {
   0DAE                    2057 00102$:
   0DAE CB 41         [ 8] 2058 	bit	0, c
   0DB0 20 17         [12] 2059 	jr	NZ,00104$
   0DB2 2A 69 A0      [16] 2060 	ld	hl, (#(_g_clock + 0x0002) + 0)
   0DB5 7D            [ 4] 2061 	ld	a, l
   0DB6 D6 05         [ 7] 2062 	sub	a, #0x05
   0DB8 7C            [ 4] 2063 	ld	a, h
   0DB9 DE 00         [ 7] 2064 	sbc	a, #0x00
   0DBB 30 0C         [12] 2065 	jr	NC,00104$
                           2066 ;src/game.c:599: cpct_scanKeyboard();
   0DBD CD 00 90      [17] 2067 	call	_cpct_scanKeyboard
                           2068 ;src/game.c:600: kp = cpct_isAnyKeyPressed();
   0DC0 CD 34 8E      [17] 2069 	call	_cpct_isAnyKeyPressed
   0DC3 AF            [ 4] 2070 	xor	a, a
   0DC4 BD            [ 4] 2071 	cp	a, l
   0DC5 17            [ 4] 2072 	rla
   0DC6 4F            [ 4] 2073 	ld	c, a
   0DC7 18 E5         [12] 2074 	jr	00102$
   0DC9                    2075 00104$:
                           2076 ;src/game.c:604: g_clock_on = false;
   0DC9 21 58 9E      [10] 2077 	ld	hl,#_g_clock_on + 0
   0DCC 36 00         [10] 2078 	ld	(hl), #0x00
                           2079 ;src/game.c:605: u_reset_clock();
   0DCE C3 9E 2D      [10] 2080 	jp  _u_reset_clock
                           2081 ;src/game.c:609: static void g_pause(void) {
                           2082 ;	---------------------------------
                           2083 ; Function g_pause
                           2084 ; ---------------------------------
   0DD1                    2085 _g_pause:
                           2086 ;src/game.c:613: u_clear_input();
   0DD1 CD 44 2D      [17] 2087 	call	_u_clear_input
                           2088 ;src/game.c:614: g_draw_pause();
   0DD4 CD BA 17      [17] 2089 	call	_g_draw_pause
                           2090 ;src/game.c:615: u_wait_for_key(Key_Space);
   0DD7 21 05 80      [10] 2091 	ld	hl, #0x8005
   0DDA E5            [11] 2092 	push	hl
   0DDB CD EE 28      [17] 2093 	call	_u_wait_for_key
   0DDE F1            [10] 2094 	pop	af
   0DDF C9            [10] 2095 	ret
                           2096 ;src/game.c:619: static bool g_move_player(const dir_t new_dir, bool *is_rot) {
                           2097 ;	---------------------------------
                           2098 ; Function g_move_player
                           2099 ; ---------------------------------
   0DE0                    2100 _g_move_player:
   0DE0 DD E5         [15] 2101 	push	ix
   0DE2 DD 21 00 00   [14] 2102 	ld	ix,#0
   0DE6 DD 39         [15] 2103 	add	ix,sp
   0DE8 F5            [11] 2104 	push	af
                           2105 ;src/game.c:624: u_get_delta(new_dir, &dx, &dy);
   0DE9 21 00 00      [10] 2106 	ld	hl, #0x0000
   0DEC 39            [11] 2107 	add	hl, sp
   0DED 4D            [ 4] 2108 	ld	c, l
   0DEE 44            [ 4] 2109 	ld	b, h
   0DEF 21 01 00      [10] 2110 	ld	hl, #0x0001
   0DF2 39            [11] 2111 	add	hl, sp
   0DF3 C5            [11] 2112 	push	bc
   0DF4 E5            [11] 2113 	push	hl
   0DF5 DD 7E 04      [19] 2114 	ld	a, 4 (ix)
   0DF8 F5            [11] 2115 	push	af
   0DF9 33            [ 6] 2116 	inc	sp
   0DFA CD 6A 2C      [17] 2117 	call	_u_get_delta
   0DFD F1            [10] 2118 	pop	af
   0DFE F1            [10] 2119 	pop	af
   0DFF 33            [ 6] 2120 	inc	sp
                           2121 ;src/game.c:625: if (u_bounds_delta_check(g_player.x, g_player.y, dx, dy)) {
   0E00 21 C5 9D      [10] 2122 	ld	hl, #(_g_player + 0x0001) + 0
   0E03 5E            [ 7] 2123 	ld	e, (hl)
   0E04 16 00         [ 7] 2124 	ld	d, #0x00
   0E06 21 C4 9D      [10] 2125 	ld	hl, #_g_player + 0
   0E09 4E            [ 7] 2126 	ld	c, (hl)
   0E0A 06 00         [ 7] 2127 	ld	b, #0x00
   0E0C DD 66 FE      [19] 2128 	ld	h, -2 (ix)
   0E0F DD 6E FF      [19] 2129 	ld	l, -1 (ix)
   0E12 E5            [11] 2130 	push	hl
   0E13 D5            [11] 2131 	push	de
   0E14 C5            [11] 2132 	push	bc
   0E15 CD 9E 2C      [17] 2133 	call	_u_bounds_delta_check
   0E18 F1            [10] 2134 	pop	af
   0E19 F1            [10] 2135 	pop	af
   0E1A F1            [10] 2136 	pop	af
   0E1B CB 45         [ 8] 2137 	bit	0, l
   0E1D 28 76         [12] 2138 	jr	Z,00104$
                           2139 ;src/game.c:628: r_px = g_player.x - 1;
   0E1F 3A C4 9D      [13] 2140 	ld	a, (#_g_player + 0)
   0E22 21 42 9E      [10] 2141 	ld	hl, #_r_px
   0E25 C6 FF         [ 7] 2142 	add	a, #0xff
   0E27 77            [ 7] 2143 	ld	(hl), a
                           2144 ;src/game.c:629: r_py = g_player.y - 1;
   0E28 3A C5 9D      [13] 2145 	ld	a, (#(_g_player + 0x0001) + 0)
   0E2B 21 43 9E      [10] 2146 	ld	hl, #_r_py
   0E2E C6 FF         [ 7] 2147 	add	a, #0xff
   0E30 77            [ 7] 2148 	ld	(hl), a
                           2149 ;src/game.c:630: if (r_px < 0)
   0E31 FD 21 42 9E   [14] 2150 	ld	iy, #_r_px
   0E35 FD CB 00 7E   [20] 2151 	bit	7,0 (iy)
   0E39 28 04         [12] 2152 	jr	Z,00102$
                           2153 ;src/game.c:631: r_px = 0;
   0E3B FD 36 00 00   [19] 2154 	ld	0 (iy), #0x00
   0E3F                    2155 00102$:
                           2156 ;src/game.c:634: *is_rot = g_player.dir == new_dir;
   0E3F DD 4E 05      [19] 2157 	ld	c,5 (ix)
   0E42 DD 46 06      [19] 2158 	ld	b,6 (ix)
   0E45 21 CA 9D      [10] 2159 	ld	hl, #(_g_player + 0x0006) + 0
   0E48 DD 7E 04      [19] 2160 	ld	a,4 (ix)
   0E4B 96            [ 7] 2161 	sub	a,(hl)
   0E4C 20 04         [12] 2162 	jr	NZ,00116$
   0E4E 3E 01         [ 7] 2163 	ld	a,#0x01
   0E50 18 01         [12] 2164 	jr	00117$
   0E52                    2165 00116$:
   0E52 AF            [ 4] 2166 	xor	a,a
   0E53                    2167 00117$:
   0E53 02            [ 7] 2168 	ld	(bc), a
                           2169 ;src/game.c:635: g_player.dir = new_dir;
   0E54 21 CA 9D      [10] 2170 	ld	hl, #(_g_player + 0x0006)
   0E57 DD 7E 04      [19] 2171 	ld	a, 4 (ix)
   0E5A 77            [ 7] 2172 	ld	(hl), a
                           2173 ;src/game.c:636: g_player.px = g_player.x;
   0E5B 01 C6 9D      [10] 2174 	ld	bc, #_g_player + 2
   0E5E 3A C4 9D      [13] 2175 	ld	a, (#_g_player + 0)
   0E61 02            [ 7] 2176 	ld	(bc), a
                           2177 ;src/game.c:637: g_player.py = g_player.y;
   0E62 01 C7 9D      [10] 2178 	ld	bc, #_g_player + 3
   0E65 3A C5 9D      [13] 2179 	ld	a, (#(_g_player + 0x0001) + 0)
   0E68 02            [ 7] 2180 	ld	(bc), a
                           2181 ;src/game.c:638: g_player.x += dx;
   0E69 3A C4 9D      [13] 2182 	ld	a,(#_g_player + 0)
   0E6C DD 86 FF      [19] 2183 	add	a, -1 (ix)
   0E6F 4F            [ 4] 2184 	ld	c, a
   0E70 21 C4 9D      [10] 2185 	ld	hl, #_g_player
   0E73 71            [ 7] 2186 	ld	(hl), c
                           2187 ;src/game.c:639: g_player.y += dy;
   0E74 3A C5 9D      [13] 2188 	ld	a,(#(_g_player + 0x0001) + 0)
   0E77 DD 86 FE      [19] 2189 	add	a, -2 (ix)
   0E7A 5F            [ 4] 2190 	ld	e, a
   0E7B 21 C5 9D      [10] 2191 	ld	hl, #(_g_player + 0x0001)
   0E7E 73            [ 7] 2192 	ld	(hl), e
                           2193 ;src/game.c:640: g_player.sx = GRID_LOC_X + (g_player.x * GRID_P_W) +
   0E7F 79            [ 4] 2194 	ld	a, c
   0E80 87            [ 4] 2195 	add	a, a
   0E81 81            [ 4] 2196 	add	a, c
   0E82 3C            [ 4] 2197 	inc	a
   0E83 32 C8 9D      [13] 2198 	ld	(#(_g_player + 0x0004)),a
                           2199 ;src/game.c:642: g_player.sy = GRID_LOC_Y + (g_player.y * GRID_P_H) +
   0E86 01 C9 9D      [10] 2200 	ld	bc, #_g_player + 5
   0E89 7B            [ 4] 2201 	ld	a, e
   0E8A 87            [ 4] 2202 	add	a, a
   0E8B 87            [ 4] 2203 	add	a, a
   0E8C 83            [ 4] 2204 	add	a, e
   0E8D 87            [ 4] 2205 	add	a, a
   0E8E C6 0E         [ 7] 2206 	add	a, #0x0e
   0E90 02            [ 7] 2207 	ld	(bc), a
                           2208 ;src/game.c:645: return true;
   0E91 2E 01         [ 7] 2209 	ld	l, #0x01
   0E93 18 02         [12] 2210 	jr	00106$
   0E95                    2211 00104$:
                           2212 ;src/game.c:647: return false;
   0E95 2E 00         [ 7] 2213 	ld	l, #0x00
   0E97                    2214 00106$:
   0E97 DD F9         [10] 2215 	ld	sp, ix
   0E99 DD E1         [14] 2216 	pop	ix
   0E9B C9            [10] 2217 	ret
                           2218 ;src/game.c:651: static void g_reset_enemies(void) {
                           2219 ;	---------------------------------
                           2220 ; Function g_reset_enemies
                           2221 ; ---------------------------------
   0E9C                    2222 _g_reset_enemies:
   0E9C DD E5         [15] 2223 	push	ix
   0E9E DD 21 00 00   [14] 2224 	ld	ix,#0
   0EA2 DD 39         [15] 2225 	add	ix,sp
   0EA4 21 DE FF      [10] 2226 	ld	hl, #-34
   0EA7 39            [11] 2227 	add	hl, sp
   0EA8 F9            [ 6] 2228 	ld	sp, hl
                           2229 ;src/game.c:654: const i8 e_dt[4][2] = {{1, 0}, {0, 1}, {-1, 0}, {0, -1}};
   0EA9 21 01 00      [10] 2230 	ld	hl, #0x0001
   0EAC 39            [11] 2231 	add	hl, sp
   0EAD 36 01         [10] 2232 	ld	(hl), #0x01
   0EAF 21 02 00      [10] 2233 	ld	hl, #0x0002
   0EB2 39            [11] 2234 	add	hl, sp
   0EB3 36 00         [10] 2235 	ld	(hl), #0x00
   0EB5 21 01 00      [10] 2236 	ld	hl, #0x0001
   0EB8 39            [11] 2237 	add	hl, sp
   0EB9 4D            [ 4] 2238 	ld	c, l
   0EBA 44            [ 4] 2239 	ld	b, h
   0EBB 59            [ 4] 2240 	ld	e, c
   0EBC 50            [ 4] 2241 	ld	d, b
   0EBD 13            [ 6] 2242 	inc	de
   0EBE 13            [ 6] 2243 	inc	de
   0EBF AF            [ 4] 2244 	xor	a, a
   0EC0 12            [ 7] 2245 	ld	(de), a
   0EC1 69            [ 4] 2246 	ld	l, c
   0EC2 60            [ 4] 2247 	ld	h, b
   0EC3 23            [ 6] 2248 	inc	hl
   0EC4 23            [ 6] 2249 	inc	hl
   0EC5 23            [ 6] 2250 	inc	hl
   0EC6 36 01         [10] 2251 	ld	(hl), #0x01
   0EC8 21 04 00      [10] 2252 	ld	hl, #0x0004
   0ECB 09            [11] 2253 	add	hl, bc
   0ECC 36 FF         [10] 2254 	ld	(hl), #0xff
   0ECE 21 05 00      [10] 2255 	ld	hl, #0x0005
   0ED1 09            [11] 2256 	add	hl, bc
   0ED2 36 00         [10] 2257 	ld	(hl), #0x00
   0ED4 21 06 00      [10] 2258 	ld	hl, #0x0006
   0ED7 09            [11] 2259 	add	hl, bc
   0ED8 36 00         [10] 2260 	ld	(hl), #0x00
   0EDA 21 07 00      [10] 2261 	ld	hl, #0x0007
   0EDD 09            [11] 2262 	add	hl, bc
   0EDE 36 FF         [10] 2263 	ld	(hl), #0xff
                           2264 ;src/game.c:655: const i8 b_dt[4][2] = {{0, 1}, {-1, -0}, {0, -1}, {1, 0}};
   0EE0 21 09 00      [10] 2265 	ld	hl, #0x0009
   0EE3 39            [11] 2266 	add	hl, sp
   0EE4 36 00         [10] 2267 	ld	(hl), #0x00
   0EE6 21 0A 00      [10] 2268 	ld	hl, #0x000a
   0EE9 39            [11] 2269 	add	hl, sp
   0EEA 36 01         [10] 2270 	ld	(hl), #0x01
   0EEC 21 09 00      [10] 2271 	ld	hl, #0x0009
   0EEF 39            [11] 2272 	add	hl, sp
   0EF0 5D            [ 4] 2273 	ld	e,l
   0EF1 54            [ 4] 2274 	ld	d,h
   0EF2 23            [ 6] 2275 	inc	hl
   0EF3 23            [ 6] 2276 	inc	hl
   0EF4 36 FF         [10] 2277 	ld	(hl), #0xff
   0EF6 6B            [ 4] 2278 	ld	l, e
   0EF7 62            [ 4] 2279 	ld	h, d
   0EF8 23            [ 6] 2280 	inc	hl
   0EF9 23            [ 6] 2281 	inc	hl
   0EFA 23            [ 6] 2282 	inc	hl
   0EFB 36 00         [10] 2283 	ld	(hl), #0x00
   0EFD 21 04 00      [10] 2284 	ld	hl, #0x0004
   0F00 19            [11] 2285 	add	hl, de
   0F01 36 00         [10] 2286 	ld	(hl), #0x00
   0F03 21 05 00      [10] 2287 	ld	hl, #0x0005
   0F06 19            [11] 2288 	add	hl, de
   0F07 36 FF         [10] 2289 	ld	(hl), #0xff
   0F09 21 06 00      [10] 2290 	ld	hl, #0x0006
   0F0C 19            [11] 2291 	add	hl, de
   0F0D 36 01         [10] 2292 	ld	(hl), #0x01
   0F0F 21 07 00      [10] 2293 	ld	hl, #0x0007
   0F12 19            [11] 2294 	add	hl, de
   0F13 36 00         [10] 2295 	ld	(hl), #0x00
                           2296 ;src/game.c:656: const u8 bounds[4][2] = {{0, GRID_U_W - 1}, {0, GRID_U_H - 1},
   0F15 21 11 00      [10] 2297 	ld	hl, #0x0011
   0F18 39            [11] 2298 	add	hl, sp
   0F19 36 00         [10] 2299 	ld	(hl), #0x00
   0F1B 21 12 00      [10] 2300 	ld	hl, #0x0012
   0F1E 39            [11] 2301 	add	hl, sp
   0F1F 36 18         [10] 2302 	ld	(hl), #0x18
   0F21 21 11 00      [10] 2303 	ld	hl, #0x0011
   0F24 39            [11] 2304 	add	hl, sp
   0F25 DD 75 F9      [19] 2305 	ld	-7 (ix), l
   0F28 DD 74 FA      [19] 2306 	ld	-6 (ix), h
   0F2B 23            [ 6] 2307 	inc	hl
   0F2C 23            [ 6] 2308 	inc	hl
   0F2D 36 00         [10] 2309 	ld	(hl), #0x00
   0F2F DD 6E F9      [19] 2310 	ld	l,-7 (ix)
   0F32 DD 66 FA      [19] 2311 	ld	h,-6 (ix)
   0F35 23            [ 6] 2312 	inc	hl
   0F36 23            [ 6] 2313 	inc	hl
   0F37 23            [ 6] 2314 	inc	hl
   0F38 36 10         [10] 2315 	ld	(hl), #0x10
   0F3A DD 7E F9      [19] 2316 	ld	a, -7 (ix)
   0F3D C6 04         [ 7] 2317 	add	a, #0x04
   0F3F 6F            [ 4] 2318 	ld	l, a
   0F40 DD 7E FA      [19] 2319 	ld	a, -6 (ix)
   0F43 CE 00         [ 7] 2320 	adc	a, #0x00
   0F45 67            [ 4] 2321 	ld	h, a
   0F46 36 00         [10] 2322 	ld	(hl), #0x00
   0F48 DD 7E F9      [19] 2323 	ld	a, -7 (ix)
   0F4B C6 05         [ 7] 2324 	add	a, #0x05
   0F4D 6F            [ 4] 2325 	ld	l, a
   0F4E DD 7E FA      [19] 2326 	ld	a, -6 (ix)
   0F51 CE 00         [ 7] 2327 	adc	a, #0x00
   0F53 67            [ 4] 2328 	ld	h, a
   0F54 36 18         [10] 2329 	ld	(hl), #0x18
   0F56 DD 7E F9      [19] 2330 	ld	a, -7 (ix)
   0F59 C6 06         [ 7] 2331 	add	a, #0x06
   0F5B 6F            [ 4] 2332 	ld	l, a
   0F5C DD 7E FA      [19] 2333 	ld	a, -6 (ix)
   0F5F CE 00         [ 7] 2334 	adc	a, #0x00
   0F61 67            [ 4] 2335 	ld	h, a
   0F62 36 00         [10] 2336 	ld	(hl), #0x00
   0F64 DD 7E F9      [19] 2337 	ld	a, -7 (ix)
   0F67 C6 07         [ 7] 2338 	add	a, #0x07
   0F69 6F            [ 4] 2339 	ld	l, a
   0F6A DD 7E FA      [19] 2340 	ld	a, -6 (ix)
   0F6D CE 00         [ 7] 2341 	adc	a, #0x00
   0F6F 67            [ 4] 2342 	ld	h, a
   0F70 36 10         [10] 2343 	ld	(hl), #0x10
                           2344 ;src/game.c:660: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   0F72 DD 36 DE 00   [19] 2345 	ld	-34 (ix), #0x00
   0F76                    2346 00104$:
   0F76 3E 03         [ 7] 2347 	ld	a, #0x03
   0F78 DD 96 DE      [19] 2348 	sub	a, -34 (ix)
   0F7B E2 80 0F      [10] 2349 	jp	PO, 00135$
   0F7E EE 80         [ 7] 2350 	xor	a, #0x80
   0F80                    2351 00135$:
   0F80 FA 79 10      [10] 2352 	jp	M, 00101$
                           2353 ;src/game.c:661: g_enemies[i].side = i;
   0F83 DD 7E DE      [19] 2354 	ld	a, -34 (ix)
   0F86 DD 77 F7      [19] 2355 	ld	-9 (ix), a
   0F89 DD 7E DE      [19] 2356 	ld	a, -34 (ix)
   0F8C 17            [ 4] 2357 	rla
   0F8D 9F            [ 4] 2358 	sbc	a, a
   0F8E DD 77 F8      [19] 2359 	ld	-8 (ix), a
   0F91 DD 6E F7      [19] 2360 	ld	l,-9 (ix)
   0F94 DD 66 F8      [19] 2361 	ld	h,-8 (ix)
   0F97 29            [11] 2362 	add	hl, hl
   0F98 29            [11] 2363 	add	hl, hl
   0F99 29            [11] 2364 	add	hl, hl
   0F9A 3E BF         [ 7] 2365 	ld	a, #<(_g_enemies)
   0F9C 85            [ 4] 2366 	add	a, l
   0F9D DD 77 FE      [19] 2367 	ld	-2 (ix), a
   0FA0 3E 9B         [ 7] 2368 	ld	a, #>(_g_enemies)
   0FA2 8C            [ 4] 2369 	adc	a, h
   0FA3 DD 77 FF      [19] 2370 	ld	-1 (ix), a
   0FA6 DD 6E FE      [19] 2371 	ld	l,-2 (ix)
   0FA9 DD 66 FF      [19] 2372 	ld	h,-1 (ix)
   0FAC DD 7E DE      [19] 2373 	ld	a, -34 (ix)
   0FAF 77            [ 7] 2374 	ld	(hl), a
                           2375 ;src/game.c:662: g_enemies[i].dx = e_dt[i][0];
   0FB0 E5            [11] 2376 	push	hl
   0FB1 DD 6E FE      [19] 2377 	ld	l, -2 (ix)
   0FB4 DD 66 FF      [19] 2378 	ld	h, -1 (ix)
   0FB7 23            [ 6] 2379 	inc	hl
   0FB8 23            [ 6] 2380 	inc	hl
   0FB9 23            [ 6] 2381 	inc	hl
   0FBA E5            [11] 2382 	push	hl
   0FBB FD E1         [14] 2383 	pop	iy
   0FBD E1            [10] 2384 	pop	hl
   0FBE DD CB F7 26   [23] 2385 	sla	-9 (ix)
   0FC2 DD CB F8 16   [23] 2386 	rl	-8 (ix)
   0FC6 DD 6E F7      [19] 2387 	ld	l,-9 (ix)
   0FC9 DD 66 F8      [19] 2388 	ld	h,-8 (ix)
   0FCC 09            [11] 2389 	add	hl, bc
   0FCD 7E            [ 7] 2390 	ld	a, (hl)
   0FCE FD 77 00      [19] 2391 	ld	0 (iy), a
                           2392 ;src/game.c:663: g_enemies[i].dy = e_dt[i][1];
   0FD1 FD 21 04 00   [14] 2393 	ld	iy, #0x0004
   0FD5 C5            [11] 2394 	push	bc
   0FD6 DD 4E FE      [19] 2395 	ld	c,-2 (ix)
   0FD9 DD 46 FF      [19] 2396 	ld	b,-1 (ix)
   0FDC FD 09         [15] 2397 	add	iy, bc
   0FDE C1            [10] 2398 	pop	bc
   0FDF 23            [ 6] 2399 	inc	hl
   0FE0 6E            [ 7] 2400 	ld	l, (hl)
   0FE1 FD 75 00      [19] 2401 	ld	0 (iy), l
                           2402 ;src/game.c:664: g_enemies[i].fired = false;
   0FE4 DD 7E FE      [19] 2403 	ld	a, -2 (ix)
   0FE7 C6 07         [ 7] 2404 	add	a, #0x07
   0FE9 6F            [ 4] 2405 	ld	l, a
   0FEA DD 7E FF      [19] 2406 	ld	a, -1 (ix)
   0FED CE 00         [ 7] 2407 	adc	a, #0x00
   0FEF 67            [ 4] 2408 	ld	h, a
   0FF0 36 00         [10] 2409 	ld	(hl), #0x00
                           2410 ;src/game.c:665: g_enemies[i].min = bounds[i][0];
   0FF2 FD 21 06 00   [14] 2411 	ld	iy, #0x0006
   0FF6 C5            [11] 2412 	push	bc
   0FF7 DD 4E FE      [19] 2413 	ld	c,-2 (ix)
   0FFA DD 46 FF      [19] 2414 	ld	b,-1 (ix)
   0FFD FD 09         [15] 2415 	add	iy, bc
   0FFF C1            [10] 2416 	pop	bc
   1000 DD 7E F9      [19] 2417 	ld	a, -7 (ix)
   1003 DD 86 F7      [19] 2418 	add	a, -9 (ix)
   1006 6F            [ 4] 2419 	ld	l, a
   1007 DD 7E FA      [19] 2420 	ld	a, -6 (ix)
   100A DD 8E F8      [19] 2421 	adc	a, -8 (ix)
   100D 67            [ 4] 2422 	ld	h, a
   100E 7E            [ 7] 2423 	ld	a, (hl)
   100F FD 77 00      [19] 2424 	ld	0 (iy), a
                           2425 ;src/game.c:666: g_enemies[i].max = bounds[i][1];
   1012 DD 7E FE      [19] 2426 	ld	a, -2 (ix)
   1015 C6 05         [ 7] 2427 	add	a, #0x05
   1017 DD 77 F7      [19] 2428 	ld	-9 (ix), a
   101A DD 7E FF      [19] 2429 	ld	a, -1 (ix)
   101D CE 00         [ 7] 2430 	adc	a, #0x00
   101F DD 77 F8      [19] 2431 	ld	-8 (ix), a
   1022 23            [ 6] 2432 	inc	hl
   1023 7E            [ 7] 2433 	ld	a, (hl)
   1024 DD 6E F7      [19] 2434 	ld	l,-9 (ix)
   1027 DD 66 F8      [19] 2435 	ld	h,-8 (ix)
   102A 77            [ 7] 2436 	ld	(hl), a
                           2437 ;src/game.c:667: g_enemies[i].loc = i <= DIR_EAST ? g_enemies[i].min + 1 :
   102B DD 7E FE      [19] 2438 	ld	a, -2 (ix)
   102E C6 01         [ 7] 2439 	add	a, #0x01
   1030 DD 77 FC      [19] 2440 	ld	-4 (ix), a
   1033 DD 7E FF      [19] 2441 	ld	a, -1 (ix)
   1036 CE 00         [ 7] 2442 	adc	a, #0x00
   1038 DD 77 FD      [19] 2443 	ld	-3 (ix), a
   103B 3E 01         [ 7] 2444 	ld	a, #0x01
   103D DD 96 DE      [19] 2445 	sub	a, -34 (ix)
   1040 E2 45 10      [10] 2446 	jp	PO, 00138$
   1043 EE 80         [ 7] 2447 	xor	a, #0x80
   1045                    2448 00138$:
   1045 FA 51 10      [10] 2449 	jp	M, 00111$
   1048 FD 7E 00      [19] 2450 	ld	a, 0 (iy)
   104B 3C            [ 4] 2451 	inc	a
   104C DD 77 FB      [19] 2452 	ld	-5 (ix), a
   104F 18 0C         [12] 2453 	jr	00112$
   1051                    2454 00111$:
                           2455 ;src/game.c:668: g_enemies[i].max - 1;
   1051 DD 6E F7      [19] 2456 	ld	l,-9 (ix)
   1054 DD 66 F8      [19] 2457 	ld	h,-8 (ix)
   1057 7E            [ 7] 2458 	ld	a, (hl)
   1058 C6 FF         [ 7] 2459 	add	a, #0xff
   105A DD 77 FB      [19] 2460 	ld	-5 (ix), a
   105D                    2461 00112$:
   105D DD 6E FC      [19] 2462 	ld	l,-4 (ix)
   1060 DD 66 FD      [19] 2463 	ld	h,-3 (ix)
   1063 DD 7E FB      [19] 2464 	ld	a, -5 (ix)
   1066 77            [ 7] 2465 	ld	(hl), a
                           2466 ;src/game.c:669: g_enemies[i].prev = g_enemies[i].loc;
   1067 DD 6E FE      [19] 2467 	ld	l,-2 (ix)
   106A DD 66 FF      [19] 2468 	ld	h,-1 (ix)
   106D 23            [ 6] 2469 	inc	hl
   106E 23            [ 6] 2470 	inc	hl
   106F DD 7E FB      [19] 2471 	ld	a, -5 (ix)
   1072 77            [ 7] 2472 	ld	(hl), a
                           2473 ;src/game.c:660: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   1073 DD 34 DE      [23] 2474 	inc	-34 (ix)
   1076 C3 76 0F      [10] 2475 	jp	00104$
   1079                    2476 00101$:
                           2477 ;src/game.c:673: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   1079 DD 36 DE 00   [19] 2478 	ld	-34 (ix), #0x00
   107D                    2479 00107$:
   107D 3E 03         [ 7] 2480 	ld	a, #0x03
   107F DD 96 DE      [19] 2481 	sub	a, -34 (ix)
   1082 E2 87 10      [10] 2482 	jp	PO, 00139$
   1085 EE 80         [ 7] 2483 	xor	a, #0x80
   1087                    2484 00139$:
   1087 FA 15 11      [10] 2485 	jp	M, 00102$
                           2486 ;src/game.c:674: g_bolts[i].side = i;
   108A DD 4E DE      [19] 2487 	ld	c, -34 (ix)
   108D 79            [ 4] 2488 	ld	a, c
   108E CB 07         [ 8] 2489 	rlc	a
   1090 9F            [ 4] 2490 	sbc	a, a
   1091 47            [ 4] 2491 	ld	b, a
   1092 69            [ 4] 2492 	ld	l, c
   1093 60            [ 4] 2493 	ld	h, b
   1094 29            [11] 2494 	add	hl, hl
   1095 09            [11] 2495 	add	hl, bc
   1096 29            [11] 2496 	add	hl, hl
   1097 09            [11] 2497 	add	hl, bc
   1098 29            [11] 2498 	add	hl, hl
   1099 3E DF         [ 7] 2499 	ld	a, #<(_g_bolts)
   109B 85            [ 4] 2500 	add	a, l
   109C 4F            [ 4] 2501 	ld	c, a
   109D 3E 9B         [ 7] 2502 	ld	a, #>(_g_bolts)
   109F 8C            [ 4] 2503 	adc	a, h
   10A0 47            [ 4] 2504 	ld	b, a
   10A1 DD 7E DE      [19] 2505 	ld	a, -34 (ix)
   10A4 02            [ 7] 2506 	ld	(bc), a
                           2507 ;src/game.c:675: g_bolts[i].x = 0;
   10A5 69            [ 4] 2508 	ld	l, c
   10A6 60            [ 4] 2509 	ld	h, b
   10A7 23            [ 6] 2510 	inc	hl
   10A8 36 00         [10] 2511 	ld	(hl), #0x00
                           2512 ;src/game.c:676: g_bolts[i].y = 0;
   10AA C5            [11] 2513 	push	bc
   10AB FD E1         [14] 2514 	pop	iy
   10AD FD 23         [10] 2515 	inc	iy
   10AF FD 23         [10] 2516 	inc	iy
   10B1 FD 36 00 00   [19] 2517 	ld	0 (iy), #0x00
                           2518 ;src/game.c:677: g_bolts[i].px = g_bolts[i].x;
   10B5 79            [ 4] 2519 	ld	a, c
   10B6 C6 03         [ 7] 2520 	add	a, #0x03
   10B8 DD 77 FC      [19] 2521 	ld	-4 (ix), a
   10BB 78            [ 4] 2522 	ld	a, b
   10BC CE 00         [ 7] 2523 	adc	a, #0x00
   10BE DD 77 FD      [19] 2524 	ld	-3 (ix), a
   10C1 7E            [ 7] 2525 	ld	a, (hl)
   10C2 DD 6E FC      [19] 2526 	ld	l,-4 (ix)
   10C5 DD 66 FD      [19] 2527 	ld	h,-3 (ix)
   10C8 77            [ 7] 2528 	ld	(hl), a
                           2529 ;src/game.c:678: g_bolts[i].py = g_bolts[i].y;
   10C9 21 04 00      [10] 2530 	ld	hl, #0x0004
   10CC 09            [11] 2531 	add	hl,bc
   10CD DD 75 FC      [19] 2532 	ld	-4 (ix), l
   10D0 DD 74 FD      [19] 2533 	ld	-3 (ix), h
   10D3 FD 7E 00      [19] 2534 	ld	a, 0 (iy)
   10D6 DD 6E FC      [19] 2535 	ld	l,-4 (ix)
   10D9 DD 66 FD      [19] 2536 	ld	h,-3 (ix)
   10DC 77            [ 7] 2537 	ld	(hl), a
                           2538 ;src/game.c:679: g_bolts[i].active = false;
   10DD 21 05 00      [10] 2539 	ld	hl, #0x0005
   10E0 09            [11] 2540 	add	hl, bc
   10E1 36 00         [10] 2541 	ld	(hl), #0x00
                           2542 ;src/game.c:680: g_bolts[i].dc = false;
   10E3 21 0B 00      [10] 2543 	ld	hl, #0x000b
   10E6 09            [11] 2544 	add	hl, bc
   10E7 36 00         [10] 2545 	ld	(hl), #0x00
                           2546 ;src/game.c:681: g_bolts[i].dp = false;
   10E9 21 08 00      [10] 2547 	ld	hl, #0x0008
   10EC 09            [11] 2548 	add	hl, bc
   10ED 36 00         [10] 2549 	ld	(hl), #0x00
                           2550 ;src/game.c:682: g_bolts[i].dx = b_dt[i][0];
   10EF FD 21 06 00   [14] 2551 	ld	iy, #0x0006
   10F3 FD 09         [15] 2552 	add	iy, bc
   10F5 DD 6E DE      [19] 2553 	ld	l, -34 (ix)
   10F8 DD 7E DE      [19] 2554 	ld	a, -34 (ix)
   10FB 17            [ 4] 2555 	rla
   10FC 9F            [ 4] 2556 	sbc	a, a
   10FD 67            [ 4] 2557 	ld	h, a
   10FE 29            [11] 2558 	add	hl, hl
   10FF 19            [11] 2559 	add	hl, de
   1100 7E            [ 7] 2560 	ld	a, (hl)
   1101 FD 77 00      [19] 2561 	ld	0 (iy), a
                           2562 ;src/game.c:683: g_bolts[i].dy = b_dt[i][1];
   1104 79            [ 4] 2563 	ld	a, c
   1105 C6 07         [ 7] 2564 	add	a, #0x07
   1107 4F            [ 4] 2565 	ld	c, a
   1108 78            [ 4] 2566 	ld	a, b
   1109 CE 00         [ 7] 2567 	adc	a, #0x00
   110B 47            [ 4] 2568 	ld	b, a
   110C 23            [ 6] 2569 	inc	hl
   110D 7E            [ 7] 2570 	ld	a, (hl)
   110E 02            [ 7] 2571 	ld	(bc), a
                           2572 ;src/game.c:673: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   110F DD 34 DE      [23] 2573 	inc	-34 (ix)
   1112 C3 7D 10      [10] 2574 	jp	00107$
   1115                    2575 00102$:
                           2576 ;src/game.c:686: g_bolt_count = 0;
   1115 21 62 A0      [10] 2577 	ld	hl,#_g_bolt_count + 0
   1118 36 00         [10] 2578 	ld	(hl), #0x00
   111A DD F9         [10] 2579 	ld	sp, ix
   111C DD E1         [14] 2580 	pop	ix
   111E C9            [10] 2581 	ret
                           2582 ;src/game.c:690: static bool g_move_enemies(void) {
                           2583 ;	---------------------------------
                           2584 ; Function g_move_enemies
                           2585 ; ---------------------------------
   111F                    2586 _g_move_enemies:
   111F DD E5         [15] 2587 	push	ix
   1121 DD 21 00 00   [14] 2588 	ld	ix,#0
   1125 DD 39         [15] 2589 	add	ix,sp
   1127 21 E7 FF      [10] 2590 	ld	hl, #-25
   112A 39            [11] 2591 	add	hl, sp
   112B F9            [ 6] 2592 	ld	sp, hl
                           2593 ;src/game.c:693: bool result = false;
   112C DD 36 E8 00   [19] 2594 	ld	-24 (ix), #0x00
                           2595 ;src/game.c:696: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   1130 DD 36 E7 00   [19] 2596 	ld	-25 (ix), #0x00
   1134                    2597 00119$:
   1134 3E 03         [ 7] 2598 	ld	a, #0x03
   1136 DD 96 E7      [19] 2599 	sub	a, -25 (ix)
   1139 E2 3E 11      [10] 2600 	jp	PO, 00156$
   113C EE 80         [ 7] 2601 	xor	a, #0x80
   113E                    2602 00156$:
   113E FA 8E 13      [10] 2603 	jp	M, 00117$
                           2604 ;src/game.c:699: if (!g_enemies[i].fired) {
   1141 DD 7E E7      [19] 2605 	ld	a, -25 (ix)
   1144 DD 77 EB      [19] 2606 	ld	-21 (ix), a
   1147 DD 7E E7      [19] 2607 	ld	a, -25 (ix)
   114A 17            [ 4] 2608 	rla
   114B 9F            [ 4] 2609 	sbc	a, a
   114C DD 77 EC      [19] 2610 	ld	-20 (ix), a
   114F 3E 04         [ 7] 2611 	ld	a, #0x03+1
   1151 18 08         [12] 2612 	jr	00158$
   1153                    2613 00157$:
   1153 DD CB EB 26   [23] 2614 	sla	-21 (ix)
   1157 DD CB EC 16   [23] 2615 	rl	-20 (ix)
   115B                    2616 00158$:
   115B 3D            [ 4] 2617 	dec	a
   115C 20 F5         [12] 2618 	jr	NZ,00157$
   115E 3E BF         [ 7] 2619 	ld	a, #<(_g_enemies)
   1160 DD 86 EB      [19] 2620 	add	a, -21 (ix)
   1163 DD 77 EB      [19] 2621 	ld	-21 (ix), a
   1166 3E 9B         [ 7] 2622 	ld	a, #>(_g_enemies)
   1168 DD 8E EC      [19] 2623 	adc	a, -20 (ix)
   116B DD 77 EC      [19] 2624 	ld	-20 (ix), a
   116E DD 7E EB      [19] 2625 	ld	a, -21 (ix)
   1171 DD 77 F6      [19] 2626 	ld	-10 (ix), a
   1174 DD 7E EC      [19] 2627 	ld	a, -20 (ix)
   1177 DD 77 F7      [19] 2628 	ld	-9 (ix), a
   117A DD 6E F6      [19] 2629 	ld	l,-10 (ix)
   117D DD 66 F7      [19] 2630 	ld	h,-9 (ix)
   1180 11 07 00      [10] 2631 	ld	de, #0x0007
   1183 19            [11] 2632 	add	hl, de
   1184 7E            [ 7] 2633 	ld	a, (hl)
   1185 DD 77 F6      [19] 2634 	ld	-10 (ix), a
                           2635 ;src/game.c:710: g_enemies[i].prev = g_enemies[i].loc;
   1188 DD 7E EB      [19] 2636 	ld	a, -21 (ix)
   118B C6 01         [ 7] 2637 	add	a, #0x01
   118D DD 77 F4      [19] 2638 	ld	-12 (ix), a
   1190 DD 7E EC      [19] 2639 	ld	a, -20 (ix)
   1193 CE 00         [ 7] 2640 	adc	a, #0x00
   1195 DD 77 F5      [19] 2641 	ld	-11 (ix), a
                           2642 ;src/game.c:702: loc = g_enemies[i].loc + g_enemies[i].dx;
   1198 DD 6E F4      [19] 2643 	ld	l,-12 (ix)
   119B DD 66 F5      [19] 2644 	ld	h,-11 (ix)
   119E 7E            [ 7] 2645 	ld	a, (hl)
   119F DD 77 F3      [19] 2646 	ld	-13 (ix), a
                           2647 ;src/game.c:710: g_enemies[i].prev = g_enemies[i].loc;
   11A2 DD 7E EB      [19] 2648 	ld	a, -21 (ix)
   11A5 C6 02         [ 7] 2649 	add	a, #0x02
   11A7 DD 77 F1      [19] 2650 	ld	-15 (ix), a
   11AA DD 7E EC      [19] 2651 	ld	a, -20 (ix)
   11AD CE 00         [ 7] 2652 	adc	a, #0x00
   11AF DD 77 F2      [19] 2653 	ld	-14 (ix), a
                           2654 ;src/game.c:699: if (!g_enemies[i].fired) {
   11B2 DD CB F6 46   [20] 2655 	bit	0, -10 (ix)
   11B6 C2 7E 13      [10] 2656 	jp	NZ, 00115$
                           2657 ;src/game.c:701: if (i % 2 == 0) {
   11B9 3E 02         [ 7] 2658 	ld	a, #0x02
   11BB F5            [11] 2659 	push	af
   11BC 33            [ 6] 2660 	inc	sp
   11BD DD 7E E7      [19] 2661 	ld	a, -25 (ix)
   11C0 F5            [11] 2662 	push	af
   11C1 33            [ 6] 2663 	inc	sp
                           2664 ;src/game.c:703: if (loc < g_enemies[i].min) {
   11C2 CD 05 8B      [17] 2665 	call	__moduschar
   11C5 F1            [10] 2666 	pop	af
   11C6 DD 75 F6      [19] 2667 	ld	-10 (ix), l
   11C9 DD 7E EB      [19] 2668 	ld	a, -21 (ix)
   11CC DD 77 FE      [19] 2669 	ld	-2 (ix), a
   11CF DD 7E EC      [19] 2670 	ld	a, -20 (ix)
   11D2 DD 77 FF      [19] 2671 	ld	-1 (ix), a
                           2672 ;src/game.c:706: } else if (loc > g_enemies[i].max) {
   11D5 DD 7E EB      [19] 2673 	ld	a, -21 (ix)
   11D8 C6 05         [ 7] 2674 	add	a, #0x05
   11DA DD 77 FC      [19] 2675 	ld	-4 (ix), a
   11DD DD 7E EC      [19] 2676 	ld	a, -20 (ix)
   11E0 CE 00         [ 7] 2677 	adc	a, #0x00
   11E2 DD 77 FD      [19] 2678 	ld	-3 (ix), a
                           2679 ;src/game.c:703: if (loc < g_enemies[i].min) {
   11E5 DD 6E FE      [19] 2680 	ld	l,-2 (ix)
   11E8 DD 66 FF      [19] 2681 	ld	h,-1 (ix)
   11EB 11 06 00      [10] 2682 	ld	de, #0x0006
   11EE 19            [11] 2683 	add	hl, de
   11EF 7E            [ 7] 2684 	ld	a, (hl)
   11F0 DD 77 FE      [19] 2685 	ld	-2 (ix), a
                           2686 ;src/game.c:702: loc = g_enemies[i].loc + g_enemies[i].dx;
   11F3 DD 7E F3      [19] 2687 	ld	a, -13 (ix)
   11F6 DD 77 FA      [19] 2688 	ld	-6 (ix), a
   11F9 DD 36 FB 00   [19] 2689 	ld	-5 (ix), #0x00
                           2690 ;src/game.c:703: if (loc < g_enemies[i].min) {
   11FD DD 7E FE      [19] 2691 	ld	a, -2 (ix)
   1200 DD 77 FE      [19] 2692 	ld	-2 (ix), a
   1203 DD 36 FF 00   [19] 2693 	ld	-1 (ix), #0x00
                           2694 ;src/game.c:701: if (i % 2 == 0) {
   1207 DD 7E F6      [19] 2695 	ld	a, -10 (ix)
   120A B7            [ 4] 2696 	or	a, a
   120B C2 C3 12      [10] 2697 	jp	NZ, 00112$
                           2698 ;src/game.c:702: loc = g_enemies[i].loc + g_enemies[i].dx;
   120E DD 7E EB      [19] 2699 	ld	a, -21 (ix)
   1211 C6 03         [ 7] 2700 	add	a, #0x03
   1213 DD 77 F6      [19] 2701 	ld	-10 (ix), a
   1216 DD 7E EC      [19] 2702 	ld	a, -20 (ix)
   1219 CE 00         [ 7] 2703 	adc	a, #0x00
   121B DD 77 F7      [19] 2704 	ld	-9 (ix), a
   121E DD 6E F6      [19] 2705 	ld	l,-10 (ix)
   1221 DD 66 F7      [19] 2706 	ld	h,-9 (ix)
   1224 4E            [ 7] 2707 	ld	c, (hl)
   1225 79            [ 4] 2708 	ld	a,c
   1226 5F            [ 4] 2709 	ld	e,a
   1227 17            [ 4] 2710 	rla
   1228 9F            [ 4] 2711 	sbc	a, a
   1229 57            [ 4] 2712 	ld	d, a
   122A DD 7E FA      [19] 2713 	ld	a, -6 (ix)
   122D 83            [ 4] 2714 	add	a, e
   122E DD 77 F8      [19] 2715 	ld	-8 (ix), a
   1231 DD 7E FB      [19] 2716 	ld	a, -5 (ix)
   1234 8A            [ 4] 2717 	adc	a, d
   1235 DD 77 F9      [19] 2718 	ld	-7 (ix), a
                           2719 ;src/game.c:705: g_enemies[i].dx = -g_enemies[i].dx;
   1238 AF            [ 4] 2720 	xor	a, a
   1239 91            [ 4] 2721 	sub	a, c
   123A DD 77 F0      [19] 2722 	ld	-16 (ix), a
                           2723 ;src/game.c:703: if (loc < g_enemies[i].min) {
   123D DD 7E F8      [19] 2724 	ld	a, -8 (ix)
   1240 DD 96 FE      [19] 2725 	sub	a, -2 (ix)
   1243 DD 7E F9      [19] 2726 	ld	a, -7 (ix)
   1246 DD 9E FF      [19] 2727 	sbc	a, -1 (ix)
   1249 E2 4E 12      [10] 2728 	jp	PO, 00159$
   124C EE 80         [ 7] 2729 	xor	a, #0x80
   124E                    2730 00159$:
   124E F2 69 12      [10] 2731 	jp	P, 00104$
                           2732 ;src/game.c:704: loc = g_enemies[i].min;
   1251 DD 7E FE      [19] 2733 	ld	a, -2 (ix)
   1254 DD 77 F8      [19] 2734 	ld	-8 (ix), a
   1257 DD 7E FF      [19] 2735 	ld	a, -1 (ix)
   125A DD 77 F9      [19] 2736 	ld	-7 (ix), a
                           2737 ;src/game.c:705: g_enemies[i].dx = -g_enemies[i].dx;
   125D DD 6E F6      [19] 2738 	ld	l,-10 (ix)
   1260 DD 66 F7      [19] 2739 	ld	h,-9 (ix)
   1263 DD 7E F0      [19] 2740 	ld	a, -16 (ix)
   1266 77            [ 7] 2741 	ld	(hl), a
   1267 18 3B         [12] 2742 	jr	00105$
   1269                    2743 00104$:
                           2744 ;src/game.c:706: } else if (loc > g_enemies[i].max) {
   1269 DD 6E FC      [19] 2745 	ld	l,-4 (ix)
   126C DD 66 FD      [19] 2746 	ld	h,-3 (ix)
   126F 7E            [ 7] 2747 	ld	a, (hl)
   1270 DD 77 EF      [19] 2748 	ld	-17 (ix), a
   1273 DD 77 ED      [19] 2749 	ld	-19 (ix), a
   1276 DD 36 EE 00   [19] 2750 	ld	-18 (ix), #0x00
   127A DD 7E ED      [19] 2751 	ld	a, -19 (ix)
   127D DD 96 F8      [19] 2752 	sub	a, -8 (ix)
   1280 DD 7E EE      [19] 2753 	ld	a, -18 (ix)
   1283 DD 9E F9      [19] 2754 	sbc	a, -7 (ix)
   1286 E2 8B 12      [10] 2755 	jp	PO, 00160$
   1289 EE 80         [ 7] 2756 	xor	a, #0x80
   128B                    2757 00160$:
   128B F2 A4 12      [10] 2758 	jp	P, 00105$
                           2759 ;src/game.c:707: loc = g_enemies[i].max;
   128E DD 7E ED      [19] 2760 	ld	a, -19 (ix)
   1291 DD 77 F8      [19] 2761 	ld	-8 (ix), a
   1294 DD 7E EE      [19] 2762 	ld	a, -18 (ix)
   1297 DD 77 F9      [19] 2763 	ld	-7 (ix), a
                           2764 ;src/game.c:708: g_enemies[i].dx = -g_enemies[i].dx;
   129A DD 6E F6      [19] 2765 	ld	l,-10 (ix)
   129D DD 66 F7      [19] 2766 	ld	h,-9 (ix)
   12A0 DD 7E F0      [19] 2767 	ld	a, -16 (ix)
   12A3 77            [ 7] 2768 	ld	(hl), a
   12A4                    2769 00105$:
                           2770 ;src/game.c:710: g_enemies[i].prev = g_enemies[i].loc;
   12A4 DD 6E F4      [19] 2771 	ld	l,-12 (ix)
   12A7 DD 66 F5      [19] 2772 	ld	h,-11 (ix)
   12AA 4E            [ 7] 2773 	ld	c, (hl)
   12AB DD 6E F1      [19] 2774 	ld	l,-15 (ix)
   12AE DD 66 F2      [19] 2775 	ld	h,-14 (ix)
   12B1 71            [ 7] 2776 	ld	(hl), c
                           2777 ;src/game.c:711: g_enemies[i].loc = loc;
   12B2 DD 4E F8      [19] 2778 	ld	c, -8 (ix)
   12B5 DD 6E F4      [19] 2779 	ld	l,-12 (ix)
   12B8 DD 66 F5      [19] 2780 	ld	h,-11 (ix)
   12BB 71            [ 7] 2781 	ld	(hl), c
                           2782 ;src/game.c:712: result = true;
   12BC DD 36 E8 01   [19] 2783 	ld	-24 (ix), #0x01
   12C0 C3 88 13      [10] 2784 	jp	00120$
   12C3                    2785 00112$:
                           2786 ;src/game.c:714: loc = g_enemies[i].loc + g_enemies[i].dy;
   12C3 DD 7E EB      [19] 2787 	ld	a, -21 (ix)
   12C6 C6 04         [ 7] 2788 	add	a, #0x04
   12C8 DD 77 ED      [19] 2789 	ld	-19 (ix), a
   12CB DD 7E EC      [19] 2790 	ld	a, -20 (ix)
   12CE CE 00         [ 7] 2791 	adc	a, #0x00
   12D0 DD 77 EE      [19] 2792 	ld	-18 (ix), a
   12D3 DD 6E ED      [19] 2793 	ld	l,-19 (ix)
   12D6 DD 66 EE      [19] 2794 	ld	h,-18 (ix)
   12D9 7E            [ 7] 2795 	ld	a, (hl)
   12DA DD 77 EF      [19] 2796 	ld	-17 (ix), a
   12DD DD 77 F8      [19] 2797 	ld	-8 (ix), a
   12E0 DD 7E EF      [19] 2798 	ld	a, -17 (ix)
   12E3 17            [ 4] 2799 	rla
   12E4 9F            [ 4] 2800 	sbc	a, a
   12E5 DD 77 F9      [19] 2801 	ld	-7 (ix), a
   12E8 DD 7E FA      [19] 2802 	ld	a, -6 (ix)
   12EB DD 86 F8      [19] 2803 	add	a, -8 (ix)
   12EE DD 77 F8      [19] 2804 	ld	-8 (ix), a
   12F1 DD 7E FB      [19] 2805 	ld	a, -5 (ix)
   12F4 DD 8E F9      [19] 2806 	adc	a, -7 (ix)
   12F7 DD 77 F9      [19] 2807 	ld	-7 (ix), a
   12FA DD 7E F8      [19] 2808 	ld	a, -8 (ix)
   12FD DD 77 E9      [19] 2809 	ld	-23 (ix), a
   1300 DD 7E F9      [19] 2810 	ld	a, -7 (ix)
   1303 DD 77 EA      [19] 2811 	ld	-22 (ix), a
                           2812 ;src/game.c:717: g_enemies[i].dy = -g_enemies[i].dy;
   1306 AF            [ 4] 2813 	xor	a, a
   1307 DD 96 EF      [19] 2814 	sub	a, -17 (ix)
   130A 4F            [ 4] 2815 	ld	c, a
                           2816 ;src/game.c:715: if (loc < g_enemies[i].min) {
   130B DD 7E E9      [19] 2817 	ld	a, -23 (ix)
   130E DD 96 FE      [19] 2818 	sub	a, -2 (ix)
   1311 DD 7E EA      [19] 2819 	ld	a, -22 (ix)
   1314 DD 9E FF      [19] 2820 	sbc	a, -1 (ix)
   1317 E2 1C 13      [10] 2821 	jp	PO, 00161$
   131A EE 80         [ 7] 2822 	xor	a, #0x80
   131C                    2823 00161$:
   131C F2 34 13      [10] 2824 	jp	P, 00109$
                           2825 ;src/game.c:716: loc = g_enemies[i].min;
   131F DD 46 FE      [19] 2826 	ld	b, -2 (ix)
   1322 DD 5E FF      [19] 2827 	ld	e, -1 (ix)
   1325 DD 70 E9      [19] 2828 	ld	-23 (ix), b
   1328 DD 73 EA      [19] 2829 	ld	-22 (ix), e
                           2830 ;src/game.c:717: g_enemies[i].dy = -g_enemies[i].dy;
   132B DD 6E ED      [19] 2831 	ld	l,-19 (ix)
   132E DD 66 EE      [19] 2832 	ld	h,-18 (ix)
   1331 71            [ 7] 2833 	ld	(hl), c
   1332 18 26         [12] 2834 	jr	00110$
   1334                    2835 00109$:
                           2836 ;src/game.c:718: } else if (loc > g_enemies[i].max) {
   1334 DD 6E FC      [19] 2837 	ld	l,-4 (ix)
   1337 DD 66 FD      [19] 2838 	ld	h,-3 (ix)
   133A 5E            [ 7] 2839 	ld	e, (hl)
   133B 06 00         [ 7] 2840 	ld	b, #0x00
   133D 7B            [ 4] 2841 	ld	a, e
   133E DD 96 E9      [19] 2842 	sub	a, -23 (ix)
   1341 78            [ 4] 2843 	ld	a, b
   1342 DD 9E EA      [19] 2844 	sbc	a, -22 (ix)
   1345 E2 4A 13      [10] 2845 	jp	PO, 00162$
   1348 EE 80         [ 7] 2846 	xor	a, #0x80
   134A                    2847 00162$:
   134A F2 5A 13      [10] 2848 	jp	P, 00110$
                           2849 ;src/game.c:719: loc = g_enemies[i].max;
   134D DD 73 E9      [19] 2850 	ld	-23 (ix), e
   1350 DD 70 EA      [19] 2851 	ld	-22 (ix), b
                           2852 ;src/game.c:720: g_enemies[i].dy = -g_enemies[i].dy;
   1353 DD 6E ED      [19] 2853 	ld	l,-19 (ix)
   1356 DD 66 EE      [19] 2854 	ld	h,-18 (ix)
   1359 71            [ 7] 2855 	ld	(hl), c
   135A                    2856 00110$:
                           2857 ;src/game.c:722: g_enemies[i].prev = g_enemies[i].loc;
   135A DD 6E F4      [19] 2858 	ld	l,-12 (ix)
   135D DD 66 F5      [19] 2859 	ld	h,-11 (ix)
   1360 4E            [ 7] 2860 	ld	c, (hl)
   1361 DD 6E F1      [19] 2861 	ld	l,-15 (ix)
   1364 DD 66 F2      [19] 2862 	ld	h,-14 (ix)
   1367 71            [ 7] 2863 	ld	(hl), c
                           2864 ;src/game.c:723: g_enemies[i].loc = loc;
   1368 DD 7E E9      [19] 2865 	ld	a, -23 (ix)
   136B DD 77 ED      [19] 2866 	ld	-19 (ix), a
   136E DD 6E F4      [19] 2867 	ld	l,-12 (ix)
   1371 DD 66 F5      [19] 2868 	ld	h,-11 (ix)
   1374 DD 7E ED      [19] 2869 	ld	a, -19 (ix)
   1377 77            [ 7] 2870 	ld	(hl), a
                           2871 ;src/game.c:724: result = true;
   1378 DD 36 E8 01   [19] 2872 	ld	-24 (ix), #0x01
   137C 18 0A         [12] 2873 	jr	00120$
   137E                    2874 00115$:
                           2875 ;src/game.c:729: g_enemies[i].prev = g_enemies[i].loc;
   137E DD 6E F1      [19] 2876 	ld	l,-15 (ix)
   1381 DD 66 F2      [19] 2877 	ld	h,-14 (ix)
   1384 DD 7E F3      [19] 2878 	ld	a, -13 (ix)
   1387 77            [ 7] 2879 	ld	(hl), a
   1388                    2880 00120$:
                           2881 ;src/game.c:696: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   1388 DD 34 E7      [23] 2882 	inc	-25 (ix)
   138B C3 34 11      [10] 2883 	jp	00119$
   138E                    2884 00117$:
                           2885 ;src/game.c:733: return result;
   138E DD 6E E8      [19] 2886 	ld	l, -24 (ix)
   1391 DD F9         [10] 2887 	ld	sp, ix
   1393 DD E1         [14] 2888 	pop	ix
   1395 C9            [10] 2889 	ret
                           2890 ;src/game.c:737: static bool g_move_bolts(void) {
                           2891 ;	---------------------------------
                           2892 ; Function g_move_bolts
                           2893 ; ---------------------------------
   1396                    2894 _g_move_bolts:
   1396 DD E5         [15] 2895 	push	ix
   1398 DD 21 00 00   [14] 2896 	ld	ix,#0
   139C DD 39         [15] 2897 	add	ix,sp
   139E 21 EF FF      [10] 2898 	ld	hl, #-17
   13A1 39            [11] 2899 	add	hl, sp
   13A2 F9            [ 6] 2900 	ld	sp, hl
                           2901 ;src/game.c:739: bool mv = false;
   13A3 DD 36 F0 00   [19] 2902 	ld	-16 (ix), #0x00
                           2903 ;src/game.c:744: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   13A7 DD 36 EF 00   [19] 2904 	ld	-17 (ix), #0x00
   13AB                    2905 00108$:
   13AB 3E 03         [ 7] 2906 	ld	a, #0x03
   13AD DD 96 EF      [19] 2907 	sub	a, -17 (ix)
   13B0 E2 B5 13      [10] 2908 	jp	PO, 00135$
   13B3 EE 80         [ 7] 2909 	xor	a, #0x80
   13B5                    2910 00135$:
   13B5 FA B3 15      [10] 2911 	jp	M, 00106$
                           2912 ;src/game.c:746: if (g_bolts[i].active) {
   13B8 DD 4E EF      [19] 2913 	ld	c, -17 (ix)
   13BB 79            [ 4] 2914 	ld	a, c
   13BC CB 07         [ 8] 2915 	rlc	a
   13BE 9F            [ 4] 2916 	sbc	a, a
   13BF 47            [ 4] 2917 	ld	b, a
   13C0 69            [ 4] 2918 	ld	l, c
   13C1 60            [ 4] 2919 	ld	h, b
   13C2 29            [11] 2920 	add	hl, hl
   13C3 09            [11] 2921 	add	hl, bc
   13C4 29            [11] 2922 	add	hl, hl
   13C5 09            [11] 2923 	add	hl, bc
   13C6 29            [11] 2924 	add	hl, hl
   13C7 DD 75 F4      [19] 2925 	ld	-12 (ix), l
   13CA DD 74 F5      [19] 2926 	ld	-11 (ix), h
   13CD 3E DF         [ 7] 2927 	ld	a, #<(_g_bolts)
   13CF DD 86 F4      [19] 2928 	add	a, -12 (ix)
   13D2 DD 77 F4      [19] 2929 	ld	-12 (ix), a
   13D5 3E 9B         [ 7] 2930 	ld	a, #>(_g_bolts)
   13D7 DD 8E F5      [19] 2931 	adc	a, -11 (ix)
   13DA DD 77 F5      [19] 2932 	ld	-11 (ix), a
   13DD DD 7E F4      [19] 2933 	ld	a, -12 (ix)
   13E0 C6 05         [ 7] 2934 	add	a, #0x05
   13E2 DD 77 FA      [19] 2935 	ld	-6 (ix), a
   13E5 DD 7E F5      [19] 2936 	ld	a, -11 (ix)
   13E8 CE 00         [ 7] 2937 	adc	a, #0x00
   13EA DD 77 FB      [19] 2938 	ld	-5 (ix), a
   13ED DD 6E FA      [19] 2939 	ld	l,-6 (ix)
   13F0 DD 66 FB      [19] 2940 	ld	h,-5 (ix)
   13F3 CB 46         [12] 2941 	bit	0, (hl)
   13F5 CA AD 15      [10] 2942 	jp	Z, 00109$
                           2943 ;src/game.c:748: flag = i % 2 == 0 ? FLAG_V_BOLT : FLAG_H_BOLT;
   13F8 3E 02         [ 7] 2944 	ld	a, #0x02
   13FA F5            [11] 2945 	push	af
   13FB 33            [ 6] 2946 	inc	sp
   13FC DD 7E EF      [19] 2947 	ld	a, -17 (ix)
   13FF F5            [11] 2948 	push	af
   1400 33            [ 6] 2949 	inc	sp
   1401 CD 05 8B      [17] 2950 	call	__moduschar
   1404 F1            [10] 2951 	pop	af
   1405 7D            [ 4] 2952 	ld	a, l
   1406 B7            [ 4] 2953 	or	a, a
   1407 20 04         [12] 2954 	jr	NZ,00112$
   1409 0E 04         [ 7] 2955 	ld	c, #0x04
   140B 18 02         [12] 2956 	jr	00113$
   140D                    2957 00112$:
   140D 0E 08         [ 7] 2958 	ld	c, #0x08
   140F                    2959 00113$:
   140F DD 71 F3      [19] 2960 	ld	-13 (ix), c
                           2961 ;src/game.c:751: idx = u_get_xy(g_bolts[i].x, g_bolts[i].y);
   1412 DD 7E F4      [19] 2962 	ld	a, -12 (ix)
   1415 C6 02         [ 7] 2963 	add	a, #0x02
   1417 DD 77 F6      [19] 2964 	ld	-10 (ix), a
   141A DD 7E F5      [19] 2965 	ld	a, -11 (ix)
   141D CE 00         [ 7] 2966 	adc	a, #0x00
   141F DD 77 F7      [19] 2967 	ld	-9 (ix), a
   1422 DD 6E F6      [19] 2968 	ld	l,-10 (ix)
   1425 DD 66 F7      [19] 2969 	ld	h,-9 (ix)
   1428 5E            [ 7] 2970 	ld	e, (hl)
   1429 16 00         [ 7] 2971 	ld	d, #0x00
   142B DD 4E F4      [19] 2972 	ld	c,-12 (ix)
   142E DD 46 F5      [19] 2973 	ld	b,-11 (ix)
   1431 03            [ 6] 2974 	inc	bc
   1432 0A            [ 7] 2975 	ld	a, (bc)
   1433 6F            [ 4] 2976 	ld	l, a
   1434 26 00         [ 7] 2977 	ld	h, #0x00
   1436 C5            [11] 2978 	push	bc
   1437 D5            [11] 2979 	push	de
   1438 E5            [11] 2980 	push	hl
   1439 CD 78 29      [17] 2981 	call	_u_get_xy
   143C F1            [10] 2982 	pop	af
   143D F1            [10] 2983 	pop	af
   143E EB            [ 4] 2984 	ex	de,hl
   143F C1            [10] 2985 	pop	bc
                           2986 ;src/game.c:752: g_level[idx] &= ~flag;
   1440 FD 21 17 9C   [14] 2987 	ld	iy, #_g_level
   1444 FD 19         [15] 2988 	add	iy, de
   1446 FD 5E 00      [19] 2989 	ld	e, 0 (iy)
   1449 DD 7E F3      [19] 2990 	ld	a, -13 (ix)
   144C 2F            [ 4] 2991 	cpl
   144D 57            [ 4] 2992 	ld	d, a
   144E 7B            [ 4] 2993 	ld	a, e
   144F A2            [ 4] 2994 	and	a, d
   1450 FD 77 00      [19] 2995 	ld	0 (iy), a
                           2996 ;src/game.c:753: g_bolts[i].px = g_bolts[i].x;
   1453 DD 5E F4      [19] 2997 	ld	e,-12 (ix)
   1456 DD 56 F5      [19] 2998 	ld	d,-11 (ix)
   1459 13            [ 6] 2999 	inc	de
   145A 13            [ 6] 3000 	inc	de
   145B 13            [ 6] 3001 	inc	de
   145C 0A            [ 7] 3002 	ld	a, (bc)
   145D 12            [ 7] 3003 	ld	(de), a
                           3004 ;src/game.c:754: g_bolts[i].py = g_bolts[i].y;
   145E DD 7E F4      [19] 3005 	ld	a, -12 (ix)
   1461 C6 04         [ 7] 3006 	add	a, #0x04
   1463 5F            [ 4] 3007 	ld	e, a
   1464 DD 7E F5      [19] 3008 	ld	a, -11 (ix)
   1467 CE 00         [ 7] 3009 	adc	a, #0x00
   1469 57            [ 4] 3010 	ld	d, a
   146A DD 6E F6      [19] 3011 	ld	l,-10 (ix)
   146D DD 66 F7      [19] 3012 	ld	h,-9 (ix)
   1470 7E            [ 7] 3013 	ld	a, (hl)
   1471 12            [ 7] 3014 	ld	(de), a
                           3015 ;src/game.c:756: g_bolts[i].dp = true;
   1472 DD 7E F4      [19] 3016 	ld	a, -12 (ix)
   1475 C6 08         [ 7] 3017 	add	a, #0x08
   1477 6F            [ 4] 3018 	ld	l, a
   1478 DD 7E F5      [19] 3019 	ld	a, -11 (ix)
   147B CE 00         [ 7] 3020 	adc	a, #0x00
   147D 67            [ 4] 3021 	ld	h, a
   147E 36 01         [10] 3022 	ld	(hl), #0x01
                           3023 ;src/game.c:757: g_bolts[i].dp_x = g_bolts[i].x;
   1480 DD 7E F4      [19] 3024 	ld	a, -12 (ix)
   1483 C6 09         [ 7] 3025 	add	a, #0x09
   1485 5F            [ 4] 3026 	ld	e, a
   1486 DD 7E F5      [19] 3027 	ld	a, -11 (ix)
   1489 CE 00         [ 7] 3028 	adc	a, #0x00
   148B 57            [ 4] 3029 	ld	d, a
   148C 0A            [ 7] 3030 	ld	a, (bc)
   148D 12            [ 7] 3031 	ld	(de), a
                           3032 ;src/game.c:758: g_bolts[i].dp_y = g_bolts[i].y;
   148E DD 7E F4      [19] 3033 	ld	a, -12 (ix)
   1491 C6 0A         [ 7] 3034 	add	a, #0x0a
   1493 5F            [ 4] 3035 	ld	e, a
   1494 DD 7E F5      [19] 3036 	ld	a, -11 (ix)
   1497 CE 00         [ 7] 3037 	adc	a, #0x00
   1499 57            [ 4] 3038 	ld	d, a
   149A DD 6E F6      [19] 3039 	ld	l,-10 (ix)
   149D DD 66 F7      [19] 3040 	ld	h,-9 (ix)
   14A0 7E            [ 7] 3041 	ld	a, (hl)
   14A1 12            [ 7] 3042 	ld	(de), a
                           3043 ;src/game.c:759: g_bolts[i].dc = false;
   14A2 DD 7E F4      [19] 3044 	ld	a, -12 (ix)
   14A5 C6 0B         [ 7] 3045 	add	a, #0x0b
   14A7 DD 77 F8      [19] 3046 	ld	-8 (ix), a
   14AA DD 7E F5      [19] 3047 	ld	a, -11 (ix)
   14AD CE 00         [ 7] 3048 	adc	a, #0x00
   14AF DD 77 F9      [19] 3049 	ld	-7 (ix), a
   14B2 DD 6E F8      [19] 3050 	ld	l,-8 (ix)
   14B5 DD 66 F9      [19] 3051 	ld	h,-7 (ix)
   14B8 36 00         [10] 3052 	ld	(hl), #0x00
                           3053 ;src/game.c:762: tx = g_bolts[i].x + g_bolts[i].dx;
   14BA 0A            [ 7] 3054 	ld	a, (bc)
   14BB 5F            [ 4] 3055 	ld	e, a
   14BC 16 00         [ 7] 3056 	ld	d, #0x00
   14BE DD 7E F4      [19] 3057 	ld	a, -12 (ix)
   14C1 C6 06         [ 7] 3058 	add	a, #0x06
   14C3 DD 77 FE      [19] 3059 	ld	-2 (ix), a
   14C6 DD 7E F5      [19] 3060 	ld	a, -11 (ix)
   14C9 CE 00         [ 7] 3061 	adc	a, #0x00
   14CB DD 77 FF      [19] 3062 	ld	-1 (ix), a
   14CE DD 6E FE      [19] 3063 	ld	l,-2 (ix)
   14D1 DD 66 FF      [19] 3064 	ld	h,-1 (ix)
   14D4 6E            [ 7] 3065 	ld	l, (hl)
   14D5 7D            [ 4] 3066 	ld	a, l
   14D6 17            [ 4] 3067 	rla
   14D7 9F            [ 4] 3068 	sbc	a, a
   14D8 67            [ 4] 3069 	ld	h, a
   14D9 19            [11] 3070 	add	hl, de
   14DA DD 75 F1      [19] 3071 	ld	-15 (ix), l
   14DD DD 74 F2      [19] 3072 	ld	-14 (ix), h
                           3073 ;src/game.c:763: ty = g_bolts[i].y + g_bolts[i].dy;
   14E0 DD 6E F6      [19] 3074 	ld	l,-10 (ix)
   14E3 DD 66 F7      [19] 3075 	ld	h,-9 (ix)
   14E6 5E            [ 7] 3076 	ld	e, (hl)
   14E7 16 00         [ 7] 3077 	ld	d, #0x00
   14E9 DD 7E F4      [19] 3078 	ld	a, -12 (ix)
   14EC C6 07         [ 7] 3079 	add	a, #0x07
   14EE DD 77 FC      [19] 3080 	ld	-4 (ix), a
   14F1 DD 7E F5      [19] 3081 	ld	a, -11 (ix)
   14F4 CE 00         [ 7] 3082 	adc	a, #0x00
   14F6 DD 77 FD      [19] 3083 	ld	-3 (ix), a
   14F9 DD 6E FC      [19] 3084 	ld	l,-4 (ix)
   14FC DD 66 FD      [19] 3085 	ld	h,-3 (ix)
   14FF 6E            [ 7] 3086 	ld	l, (hl)
   1500 7D            [ 4] 3087 	ld	a, l
   1501 17            [ 4] 3088 	rla
   1502 9F            [ 4] 3089 	sbc	a, a
   1503 67            [ 4] 3090 	ld	h, a
   1504 19            [11] 3091 	add	hl, de
                           3092 ;src/game.c:764: if (!u_bounds_check(tx, ty)) {
   1505 C5            [11] 3093 	push	bc
   1506 E5            [11] 3094 	push	hl
   1507 DD 6E F1      [19] 3095 	ld	l,-15 (ix)
   150A DD 66 F2      [19] 3096 	ld	h,-14 (ix)
   150D E5            [11] 3097 	push	hl
   150E CD FB 2C      [17] 3098 	call	_u_bounds_check
   1511 F1            [10] 3099 	pop	af
   1512 F1            [10] 3100 	pop	af
   1513 5D            [ 4] 3101 	ld	e, l
   1514 C1            [10] 3102 	pop	bc
   1515 CB 43         [ 8] 3103 	bit	0, e
   1517 20 24         [12] 3104 	jr	NZ,00102$
                           3105 ;src/game.c:767: g_bolts[i].active = false;
   1519 DD 6E FA      [19] 3106 	ld	l,-6 (ix)
   151C DD 66 FB      [19] 3107 	ld	h,-5 (ix)
   151F 36 00         [10] 3108 	ld	(hl), #0x00
                           3109 ;src/game.c:768: --g_bolt_count;
   1521 21 62 A0      [10] 3110 	ld	hl, #_g_bolt_count+0
   1524 35            [11] 3111 	dec	(hl)
                           3112 ;src/game.c:769: g_enemies[i].fired = false;
   1525 DD 6E EF      [19] 3113 	ld	l, -17 (ix)
   1528 DD 7E EF      [19] 3114 	ld	a, -17 (ix)
   152B 17            [ 4] 3115 	rla
   152C 9F            [ 4] 3116 	sbc	a, a
   152D 67            [ 4] 3117 	ld	h, a
   152E 29            [11] 3118 	add	hl, hl
   152F 29            [11] 3119 	add	hl, hl
   1530 29            [11] 3120 	add	hl, hl
   1531 11 BF 9B      [10] 3121 	ld	de, #_g_enemies
   1534 19            [11] 3122 	add	hl, de
   1535 01 07 00      [10] 3123 	ld	bc, #0x0007
   1538 09            [11] 3124 	add	hl, bc
   1539 36 00         [10] 3125 	ld	(hl), #0x00
   153B 18 6C         [12] 3126 	jr	00103$
   153D                    3127 00102$:
                           3128 ;src/game.c:776: g_bolts[i].x = g_bolts[i].x + g_bolts[i].dx;
   153D 0A            [ 7] 3129 	ld	a, (bc)
   153E 5F            [ 4] 3130 	ld	e, a
   153F DD 6E FE      [19] 3131 	ld	l,-2 (ix)
   1542 DD 66 FF      [19] 3132 	ld	h,-1 (ix)
   1545 56            [ 7] 3133 	ld	d, (hl)
   1546 7B            [ 4] 3134 	ld	a, e
   1547 82            [ 4] 3135 	add	a, d
   1548 02            [ 7] 3136 	ld	(bc), a
                           3137 ;src/game.c:777: g_bolts[i].y = g_bolts[i].y + g_bolts[i].dy;
   1549 DD 6E F6      [19] 3138 	ld	l,-10 (ix)
   154C DD 66 F7      [19] 3139 	ld	h,-9 (ix)
   154F 5E            [ 7] 3140 	ld	e, (hl)
   1550 DD 6E FC      [19] 3141 	ld	l,-4 (ix)
   1553 DD 66 FD      [19] 3142 	ld	h,-3 (ix)
   1556 56            [ 7] 3143 	ld	d, (hl)
   1557 7B            [ 4] 3144 	ld	a, e
   1558 82            [ 4] 3145 	add	a, d
   1559 DD 6E F6      [19] 3146 	ld	l,-10 (ix)
   155C DD 66 F7      [19] 3147 	ld	h,-9 (ix)
   155F 77            [ 7] 3148 	ld	(hl), a
                           3149 ;src/game.c:778: idx = u_get_xy(g_bolts[i].x, g_bolts[i].y);
   1560 DD 6E F6      [19] 3150 	ld	l,-10 (ix)
   1563 DD 66 F7      [19] 3151 	ld	h,-9 (ix)
   1566 5E            [ 7] 3152 	ld	e, (hl)
   1567 16 00         [ 7] 3153 	ld	d, #0x00
   1569 0A            [ 7] 3154 	ld	a, (bc)
   156A 6F            [ 4] 3155 	ld	l, a
   156B 26 00         [ 7] 3156 	ld	h, #0x00
   156D C5            [11] 3157 	push	bc
   156E D5            [11] 3158 	push	de
   156F E5            [11] 3159 	push	hl
   1570 CD 78 29      [17] 3160 	call	_u_get_xy
   1573 F1            [10] 3161 	pop	af
   1574 F1            [10] 3162 	pop	af
   1575 C1            [10] 3163 	pop	bc
                           3164 ;src/game.c:779: g_level[idx] |= flag;
   1576 11 17 9C      [10] 3165 	ld	de, #_g_level
   1579 19            [11] 3166 	add	hl, de
   157A 7E            [ 7] 3167 	ld	a, (hl)
   157B DD B6 F3      [19] 3168 	or	a, -13 (ix)
   157E 77            [ 7] 3169 	ld	(hl), a
                           3170 ;src/game.c:780: g_bolts[i].dc = true;
   157F DD 6E F8      [19] 3171 	ld	l,-8 (ix)
   1582 DD 66 F9      [19] 3172 	ld	h,-7 (ix)
   1585 36 01         [10] 3173 	ld	(hl), #0x01
                           3174 ;src/game.c:781: g_bolts[i].dc_x = g_bolts[i].x;
   1587 DD 7E F4      [19] 3175 	ld	a, -12 (ix)
   158A C6 0C         [ 7] 3176 	add	a, #0x0c
   158C 5F            [ 4] 3177 	ld	e, a
   158D DD 7E F5      [19] 3178 	ld	a, -11 (ix)
   1590 CE 00         [ 7] 3179 	adc	a, #0x00
   1592 57            [ 4] 3180 	ld	d, a
   1593 0A            [ 7] 3181 	ld	a, (bc)
   1594 12            [ 7] 3182 	ld	(de), a
                           3183 ;src/game.c:782: g_bolts[i].dc_y = g_bolts[i].y;
   1595 DD 7E F4      [19] 3184 	ld	a, -12 (ix)
   1598 C6 0D         [ 7] 3185 	add	a, #0x0d
   159A 4F            [ 4] 3186 	ld	c, a
   159B DD 7E F5      [19] 3187 	ld	a, -11 (ix)
   159E CE 00         [ 7] 3188 	adc	a, #0x00
   15A0 47            [ 4] 3189 	ld	b, a
   15A1 DD 6E F6      [19] 3190 	ld	l,-10 (ix)
   15A4 DD 66 F7      [19] 3191 	ld	h,-9 (ix)
   15A7 7E            [ 7] 3192 	ld	a, (hl)
   15A8 02            [ 7] 3193 	ld	(bc), a
   15A9                    3194 00103$:
                           3195 ;src/game.c:784: mv = true;
   15A9 DD 36 F0 01   [19] 3196 	ld	-16 (ix), #0x01
   15AD                    3197 00109$:
                           3198 ;src/game.c:744: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   15AD DD 34 EF      [23] 3199 	inc	-17 (ix)
   15B0 C3 AB 13      [10] 3200 	jp	00108$
   15B3                    3201 00106$:
                           3202 ;src/game.c:788: return mv;
   15B3 DD 6E F0      [19] 3203 	ld	l, -16 (ix)
   15B6 DD F9         [10] 3204 	ld	sp, ix
   15B8 DD E1         [14] 3205 	pop	ix
   15BA C9            [10] 3206 	ret
                           3207 ;src/game.c:792: static void g_fire_bolt(const dir_t dir) {
                           3208 ;	---------------------------------
                           3209 ; Function g_fire_bolt
                           3210 ; ---------------------------------
   15BB                    3211 _g_fire_bolt:
   15BB DD E5         [15] 3212 	push	ix
   15BD DD 21 00 00   [14] 3213 	ld	ix,#0
   15C1 DD 39         [15] 3214 	add	ix,sp
   15C3 21 FA FF      [10] 3215 	ld	hl, #-6
   15C6 39            [11] 3216 	add	hl, sp
   15C7 F9            [ 6] 3217 	ld	sp, hl
                           3218 ;src/game.c:797: if (g_bolts[dir].active || g_bolt_count == 4)
   15C8 01 DF 9B      [10] 3219 	ld	bc, #_g_bolts+0
   15CB DD 5E 04      [19] 3220 	ld	e, 4 (ix)
   15CE 7B            [ 4] 3221 	ld	a, e
   15CF CB 07         [ 8] 3222 	rlc	a
   15D1 9F            [ 4] 3223 	sbc	a, a
   15D2 57            [ 4] 3224 	ld	d, a
   15D3 6B            [ 4] 3225 	ld	l, e
   15D4 62            [ 4] 3226 	ld	h, d
   15D5 29            [11] 3227 	add	hl, hl
   15D6 19            [11] 3228 	add	hl, de
   15D7 29            [11] 3229 	add	hl, hl
   15D8 19            [11] 3230 	add	hl, de
   15D9 29            [11] 3231 	add	hl, hl
   15DA 09            [11] 3232 	add	hl,bc
   15DB 4D            [ 4] 3233 	ld	c, l
   15DC 44            [ 4] 3234 	ld	b, h
   15DD 21 05 00      [10] 3235 	ld	hl, #0x0005
   15E0 09            [11] 3236 	add	hl,bc
   15E1 DD 75 FC      [19] 3237 	ld	-4 (ix), l
   15E4 DD 74 FD      [19] 3238 	ld	-3 (ix), h
   15E7 CB 46         [12] 3239 	bit	0, (hl)
   15E9 C2 1E 17      [10] 3240 	jp	NZ,00110$
   15EC 3A 62 A0      [13] 3241 	ld	a,(#_g_bolt_count + 0)
   15EF D6 04         [ 7] 3242 	sub	a, #0x04
                           3243 ;src/game.c:798: return;
   15F1 CA 1E 17      [10] 3244 	jp	Z,00110$
                           3245 ;src/game.c:802: g_bolts[dir].x = g_enemies[dir].loc;
   15F4 21 01 00      [10] 3246 	ld	hl, #0x0001
   15F7 09            [11] 3247 	add	hl,bc
   15F8 E3            [19] 3248 	ex	(sp), hl
   15F9 DD 6E 04      [19] 3249 	ld	l, 4 (ix)
   15FC DD 7E 04      [19] 3250 	ld	a, 4 (ix)
   15FF 17            [ 4] 3251 	rla
   1600 9F            [ 4] 3252 	sbc	a, a
   1601 67            [ 4] 3253 	ld	h, a
                           3254 ;src/game.c:803: g_bolts[dir].y = 0;
   1602 79            [ 4] 3255 	ld	a, c
   1603 C6 02         [ 7] 3256 	add	a, #0x02
   1605 DD 77 FE      [19] 3257 	ld	-2 (ix), a
   1608 78            [ 4] 3258 	ld	a, b
   1609 CE 00         [ 7] 3259 	adc	a, #0x00
   160B DD 77 FF      [19] 3260 	ld	-1 (ix), a
                           3261 ;src/game.c:802: g_bolts[dir].x = g_enemies[dir].loc;
   160E 29            [11] 3262 	add	hl, hl
   160F 29            [11] 3263 	add	hl, hl
   1610 29            [11] 3264 	add	hl, hl
   1611 EB            [ 4] 3265 	ex	de,hl
                           3266 ;src/game.c:800: switch (dir) {
   1612 DD 7E 04      [19] 3267 	ld	a, 4 (ix)
   1615 B7            [ 4] 3268 	or	a, a
   1616 28 18         [12] 3269 	jr	Z,00104$
   1618 DD 7E 04      [19] 3270 	ld	a, 4 (ix)
   161B 3D            [ 4] 3271 	dec	a
   161C 28 6F         [12] 3272 	jr	Z,00106$
   161E DD 7E 04      [19] 3273 	ld	a, 4 (ix)
   1621 D6 02         [ 7] 3274 	sub	a, #0x02
   1623 28 3A         [12] 3275 	jr	Z,00105$
   1625 DD 7E 04      [19] 3276 	ld	a, 4 (ix)
   1628 D6 03         [ 7] 3277 	sub	a, #0x03
   162A CA B7 16      [10] 3278 	jp	Z,00107$
   162D C3 1E 17      [10] 3279 	jp	00110$
                           3280 ;src/game.c:801: case DIR_NORTH:
   1630                    3281 00104$:
                           3282 ;src/game.c:802: g_bolts[dir].x = g_enemies[dir].loc;
   1630 21 C0 9B      [10] 3283 	ld	hl,#_g_enemies+0+1
   1633 19            [11] 3284 	add	hl,de
   1634 5E            [ 7] 3285 	ld	e, (hl)
   1635 E1            [10] 3286 	pop	hl
   1636 E5            [11] 3287 	push	hl
   1637 73            [ 7] 3288 	ld	(hl), e
                           3289 ;src/game.c:803: g_bolts[dir].y = 0;
   1638 DD 6E FE      [19] 3290 	ld	l,-2 (ix)
   163B DD 66 FF      [19] 3291 	ld	h,-1 (ix)
   163E 36 00         [10] 3292 	ld	(hl), #0x00
                           3293 ;src/game.c:804: idx = u_get_xy(g_bolts[dir].x, g_bolts[dir].y);
   1640 DD 6E FE      [19] 3294 	ld	l,-2 (ix)
   1643 DD 66 FF      [19] 3295 	ld	h,-1 (ix)
   1646 6E            [ 7] 3296 	ld	l, (hl)
   1647 26 00         [ 7] 3297 	ld	h, #0x00
   1649 16 00         [ 7] 3298 	ld	d, #0x00
   164B C5            [11] 3299 	push	bc
   164C E5            [11] 3300 	push	hl
   164D D5            [11] 3301 	push	de
   164E CD 78 29      [17] 3302 	call	_u_get_xy
   1651 F1            [10] 3303 	pop	af
   1652 F1            [10] 3304 	pop	af
   1653 EB            [ 4] 3305 	ex	de,hl
   1654 C1            [10] 3306 	pop	bc
                           3307 ;src/game.c:805: g_level[idx] |= FLAG_V_BOLT;
   1655 21 17 9C      [10] 3308 	ld	hl, #_g_level+0
   1658 19            [11] 3309 	add	hl, de
   1659 CB D6         [15] 3310 	set	2, (hl)
   165B 7E            [ 7] 3311 	ld	a, (hl)
                           3312 ;src/game.c:806: break;
   165C C3 DF 16      [10] 3313 	jp	00109$
                           3314 ;src/game.c:807: case DIR_SOUTH:
   165F                    3315 00105$:
                           3316 ;src/game.c:808: g_bolts[dir].x = g_enemies[dir].loc;
   165F 21 C0 9B      [10] 3317 	ld	hl,#_g_enemies+0+1
   1662 19            [11] 3318 	add	hl,de
   1663 5E            [ 7] 3319 	ld	e, (hl)
   1664 E1            [10] 3320 	pop	hl
   1665 E5            [11] 3321 	push	hl
   1666 73            [ 7] 3322 	ld	(hl), e
                           3323 ;src/game.c:809: g_bolts[dir].y = GRID_U_H - 1;
   1667 DD 6E FE      [19] 3324 	ld	l,-2 (ix)
   166A DD 66 FF      [19] 3325 	ld	h,-1 (ix)
   166D 36 10         [10] 3326 	ld	(hl), #0x10
                           3327 ;src/game.c:810: idx = u_get_xy(g_bolts[dir].x, g_bolts[dir].y);
   166F DD 6E FE      [19] 3328 	ld	l,-2 (ix)
   1672 DD 66 FF      [19] 3329 	ld	h,-1 (ix)
   1675 6E            [ 7] 3330 	ld	l, (hl)
   1676 26 00         [ 7] 3331 	ld	h, #0x00
   1678 16 00         [ 7] 3332 	ld	d, #0x00
   167A C5            [11] 3333 	push	bc
   167B E5            [11] 3334 	push	hl
   167C D5            [11] 3335 	push	de
   167D CD 78 29      [17] 3336 	call	_u_get_xy
   1680 F1            [10] 3337 	pop	af
   1681 F1            [10] 3338 	pop	af
   1682 EB            [ 4] 3339 	ex	de,hl
   1683 C1            [10] 3340 	pop	bc
                           3341 ;src/game.c:811: g_level[idx] |= FLAG_V_BOLT;
   1684 21 17 9C      [10] 3342 	ld	hl, #_g_level+0
   1687 19            [11] 3343 	add	hl, de
   1688 CB D6         [15] 3344 	set	2, (hl)
   168A 7E            [ 7] 3345 	ld	a, (hl)
                           3346 ;src/game.c:812: break;
   168B 18 52         [12] 3347 	jr	00109$
                           3348 ;src/game.c:813: case DIR_EAST:
   168D                    3349 00106$:
                           3350 ;src/game.c:814: g_bolts[dir].x = GRID_U_W - 1;
   168D E1            [10] 3351 	pop	hl
   168E E5            [11] 3352 	push	hl
   168F 36 18         [10] 3353 	ld	(hl), #0x18
                           3354 ;src/game.c:815: g_bolts[dir].y = g_enemies[dir].loc;
   1691 21 C0 9B      [10] 3355 	ld	hl,#_g_enemies+0+1
   1694 19            [11] 3356 	add	hl,de
   1695 5E            [ 7] 3357 	ld	e, (hl)
   1696 DD 6E FE      [19] 3358 	ld	l,-2 (ix)
   1699 DD 66 FF      [19] 3359 	ld	h,-1 (ix)
   169C 73            [ 7] 3360 	ld	(hl), e
                           3361 ;src/game.c:816: idx = u_get_xy(g_bolts[dir].x, g_bolts[dir].y);
   169D 16 00         [ 7] 3362 	ld	d, #0x00
   169F E1            [10] 3363 	pop	hl
   16A0 E5            [11] 3364 	push	hl
   16A1 6E            [ 7] 3365 	ld	l, (hl)
   16A2 26 00         [ 7] 3366 	ld	h, #0x00
   16A4 C5            [11] 3367 	push	bc
   16A5 D5            [11] 3368 	push	de
   16A6 E5            [11] 3369 	push	hl
   16A7 CD 78 29      [17] 3370 	call	_u_get_xy
   16AA F1            [10] 3371 	pop	af
   16AB F1            [10] 3372 	pop	af
   16AC EB            [ 4] 3373 	ex	de,hl
   16AD C1            [10] 3374 	pop	bc
                           3375 ;src/game.c:817: g_level[idx] |= FLAG_H_BOLT;
   16AE 21 17 9C      [10] 3376 	ld	hl, #_g_level+0
   16B1 19            [11] 3377 	add	hl, de
   16B2 CB DE         [15] 3378 	set	3, (hl)
   16B4 7E            [ 7] 3379 	ld	a, (hl)
                           3380 ;src/game.c:818: break;
   16B5 18 28         [12] 3381 	jr	00109$
                           3382 ;src/game.c:819: case DIR_WEST:
   16B7                    3383 00107$:
                           3384 ;src/game.c:820: g_bolts[dir].x = 0;
   16B7 E1            [10] 3385 	pop	hl
   16B8 E5            [11] 3386 	push	hl
   16B9 36 00         [10] 3387 	ld	(hl), #0x00
                           3388 ;src/game.c:821: g_bolts[dir].y = g_enemies[dir].loc;
   16BB 21 C0 9B      [10] 3389 	ld	hl,#_g_enemies+0+1
   16BE 19            [11] 3390 	add	hl,de
   16BF 5E            [ 7] 3391 	ld	e, (hl)
   16C0 DD 6E FE      [19] 3392 	ld	l,-2 (ix)
   16C3 DD 66 FF      [19] 3393 	ld	h,-1 (ix)
   16C6 73            [ 7] 3394 	ld	(hl), e
                           3395 ;src/game.c:822: idx = u_get_xy(g_bolts[dir].x, g_bolts[dir].y);
   16C7 16 00         [ 7] 3396 	ld	d, #0x00
   16C9 E1            [10] 3397 	pop	hl
   16CA E5            [11] 3398 	push	hl
   16CB 6E            [ 7] 3399 	ld	l, (hl)
   16CC 26 00         [ 7] 3400 	ld	h, #0x00
   16CE C5            [11] 3401 	push	bc
   16CF D5            [11] 3402 	push	de
   16D0 E5            [11] 3403 	push	hl
   16D1 CD 78 29      [17] 3404 	call	_u_get_xy
   16D4 F1            [10] 3405 	pop	af
   16D5 F1            [10] 3406 	pop	af
   16D6 EB            [ 4] 3407 	ex	de,hl
   16D7 C1            [10] 3408 	pop	bc
                           3409 ;src/game.c:823: g_level[idx] |= FLAG_H_BOLT;
   16D8 21 17 9C      [10] 3410 	ld	hl, #_g_level+0
   16DB 19            [11] 3411 	add	hl, de
   16DC CB DE         [15] 3412 	set	3, (hl)
                           3413 ;src/game.c:824: break;
                           3414 ;src/game.c:825: default:
                           3415 ;src/game.c:826: return;
                           3416 ;src/game.c:828: }
   16DE 7E            [ 7] 3417 	ld	a, (hl)
   16DF                    3418 00109$:
                           3419 ;src/game.c:831: g_bolts[dir].dp = false;
   16DF 21 08 00      [10] 3420 	ld	hl, #0x0008
   16E2 09            [11] 3421 	add	hl, bc
   16E3 36 00         [10] 3422 	ld	(hl), #0x00
                           3423 ;src/game.c:832: g_bolts[dir].dc = true;
   16E5 21 0B 00      [10] 3424 	ld	hl, #0x000b
   16E8 09            [11] 3425 	add	hl, bc
   16E9 36 01         [10] 3426 	ld	(hl), #0x01
                           3427 ;src/game.c:833: g_bolts[dir].dc_x = g_bolts[dir].x;
   16EB 21 0C 00      [10] 3428 	ld	hl, #0x000c
   16EE 09            [11] 3429 	add	hl,bc
   16EF EB            [ 4] 3430 	ex	de,hl
   16F0 E1            [10] 3431 	pop	hl
   16F1 E5            [11] 3432 	push	hl
   16F2 7E            [ 7] 3433 	ld	a, (hl)
   16F3 12            [ 7] 3434 	ld	(de), a
                           3435 ;src/game.c:834: g_bolts[dir].dc_y = g_bolts[dir].y;
   16F4 21 0D 00      [10] 3436 	ld	hl, #0x000d
   16F7 09            [11] 3437 	add	hl,bc
   16F8 EB            [ 4] 3438 	ex	de,hl
   16F9 DD 6E FE      [19] 3439 	ld	l,-2 (ix)
   16FC DD 66 FF      [19] 3440 	ld	h,-1 (ix)
   16FF 7E            [ 7] 3441 	ld	a, (hl)
   1700 12            [ 7] 3442 	ld	(de), a
                           3443 ;src/game.c:835: g_bolts[dir].px = g_bolts[dir].x;
   1701 59            [ 4] 3444 	ld	e, c
   1702 50            [ 4] 3445 	ld	d, b
   1703 13            [ 6] 3446 	inc	de
   1704 13            [ 6] 3447 	inc	de
   1705 13            [ 6] 3448 	inc	de
   1706 E1            [10] 3449 	pop	hl
   1707 E5            [11] 3450 	push	hl
   1708 7E            [ 7] 3451 	ld	a, (hl)
   1709 12            [ 7] 3452 	ld	(de), a
                           3453 ;src/game.c:836: g_bolts[dir].py = g_bolts[dir].x;
   170A 03            [ 6] 3454 	inc	bc
   170B 03            [ 6] 3455 	inc	bc
   170C 03            [ 6] 3456 	inc	bc
   170D 03            [ 6] 3457 	inc	bc
   170E E1            [10] 3458 	pop	hl
   170F E5            [11] 3459 	push	hl
   1710 7E            [ 7] 3460 	ld	a, (hl)
   1711 02            [ 7] 3461 	ld	(bc), a
                           3462 ;src/game.c:837: g_bolts[dir].active = true;
   1712 DD 6E FC      [19] 3463 	ld	l,-4 (ix)
   1715 DD 66 FD      [19] 3464 	ld	h,-3 (ix)
   1718 36 01         [10] 3465 	ld	(hl), #0x01
                           3466 ;src/game.c:838: ++g_bolt_count;
   171A 21 62 A0      [10] 3467 	ld	hl, #_g_bolt_count+0
   171D 34            [11] 3468 	inc	(hl)
   171E                    3469 00110$:
   171E DD F9         [10] 3470 	ld	sp, ix
   1720 DD E1         [14] 3471 	pop	ix
   1722 C9            [10] 3472 	ret
                           3473 ;src/game.c:842: static bool g_eat_pod() {
                           3474 ;	---------------------------------
                           3475 ; Function g_eat_pod
                           3476 ; ---------------------------------
   1723                    3477 _g_eat_pod:
                           3478 ;src/game.c:847: idx = u_get_xy(g_player.x, g_player.y);
   1723 21 C5 9D      [10] 3479 	ld	hl, #_g_player + 1
   1726 5E            [ 7] 3480 	ld	e, (hl)
   1727 16 00         [ 7] 3481 	ld	d, #0x00
   1729 21 C4 9D      [10] 3482 	ld	hl, #_g_player + 0
   172C 4E            [ 7] 3483 	ld	c, (hl)
   172D 06 00         [ 7] 3484 	ld	b, #0x00
   172F D5            [11] 3485 	push	de
   1730 C5            [11] 3486 	push	bc
   1731 CD 78 29      [17] 3487 	call	_u_get_xy
   1734 F1            [10] 3488 	pop	af
   1735 F1            [10] 3489 	pop	af
                           3490 ;src/game.c:849: if (g_level[idx] & FLAG_POD) {
   1736 01 17 9C      [10] 3491 	ld	bc,#_g_level+0
   1739 09            [11] 3492 	add	hl,bc
   173A 4E            [ 7] 3493 	ld	c, (hl)
   173B CB 49         [ 8] 3494 	bit	1, c
   173D 28 1A         [12] 3495 	jr	Z,00104$
                           3496 ;src/game.c:850: g_level[idx] &= ~FLAG_POD;
   173F CB 89         [ 8] 3497 	res	1, c
   1741 71            [ 7] 3498 	ld	(hl), c
                           3499 ;src/game.c:851: if (g_music_sfx)
   1742 21 BE 9B      [10] 3500 	ld	hl,#_g_music_sfx+0
   1745 CB 46         [12] 3501 	bit	0, (hl)
   1747 28 0D         [12] 3502 	jr	Z,00102$
                           3503 ;src/game.c:852: PlaySFX(1, CHANNEL_A, MAX_VOL);
   1749 21 00 00      [10] 3504 	ld	hl, #0x0000
   174C E5            [11] 3505 	push	hl
   174D 3E 01         [ 7] 3506 	ld	a, #0x01
   174F F5            [11] 3507 	push	af
   1750 33            [ 6] 3508 	inc	sp
   1751 CD C4 66      [17] 3509 	call	_PlaySFX
   1754 F1            [10] 3510 	pop	af
   1755 33            [ 6] 3511 	inc	sp
   1756                    3512 00102$:
                           3513 ;src/game.c:853: return true;
   1756 2E 01         [ 7] 3514 	ld	l, #0x01
   1758 C9            [10] 3515 	ret
   1759                    3516 00104$:
                           3517 ;src/game.c:855: return false;
   1759 2E 00         [ 7] 3518 	ld	l, #0x00
   175B C9            [10] 3519 	ret
                           3520 ;src/game.c:859: void g_interrupt(void) {
                           3521 ;	---------------------------------
                           3522 ; Function g_interrupt
                           3523 ; ---------------------------------
   175C                    3524 _g_interrupt:
                           3525 ;src/game.c:861: if (g_int_idx == 0)
   175C 3A 60 A0      [13] 3526 	ld	a,(#_g_int_idx + 0)
   175F B7            [ 4] 3527 	or	a, a
   1760 20 18         [12] 3528 	jr	NZ,00102$
                           3529 ;src/game.c:862: g_frame_c = ++g_frame_c % FC_MAX;
   1762 21 61 A0      [10] 3530 	ld	hl, #_g_frame_c+0
   1765 34            [11] 3531 	inc	(hl)
   1766 3E 32         [ 7] 3532 	ld	a, #0x32
   1768 F5            [11] 3533 	push	af
   1769 33            [ 6] 3534 	inc	sp
   176A 3A 61 A0      [13] 3535 	ld	a, (_g_frame_c)
   176D F5            [11] 3536 	push	af
   176E 33            [ 6] 3537 	inc	sp
   176F CD 10 8C      [17] 3538 	call	__moduchar
   1772 F1            [10] 3539 	pop	af
   1773 FD 21 61 A0   [14] 3540 	ld	iy, #_g_frame_c
   1777 FD 75 00      [19] 3541 	ld	0 (iy), l
   177A                    3542 00102$:
                           3543 ;src/game.c:864: if (g_int_idx == 1)
   177A 3A 60 A0      [13] 3544 	ld	a,(#_g_int_idx + 0)
   177D 3D            [ 4] 3545 	dec	a
   177E 20 03         [12] 3546 	jr	NZ,00104$
                           3547 ;src/game.c:865: cpct_scanKeyboard_if();
   1780 CD 41 8E      [17] 3548 	call	_cpct_scanKeyboard_if
   1783                    3549 00104$:
                           3550 ;src/game.c:868: if (g_music_sfx)
   1783 21 BE 9B      [10] 3551 	ld	hl,#_g_music_sfx+0
   1786 CB 46         [12] 3552 	bit	0, (hl)
   1788 28 0A         [12] 3553 	jr	Z,00108$
                           3554 ;src/game.c:869: if (g_int_idx == 3)
   178A 3A 60 A0      [13] 3555 	ld	a,(#_g_int_idx + 0)
   178D D6 03         [ 7] 3556 	sub	a, #0x03
   178F 20 03         [12] 3557 	jr	NZ,00108$
                           3558 ;src/game.c:870: PlaySound();
   1791 CD E8 66      [17] 3559 	call	_PlaySound
   1794                    3560 00108$:
                           3561 ;src/game.c:872: g_int_idx = ++g_int_idx % 6;
   1794 21 60 A0      [10] 3562 	ld	hl, #_g_int_idx+0
   1797 34            [11] 3563 	inc	(hl)
   1798 3E 06         [ 7] 3564 	ld	a, #0x06
   179A F5            [11] 3565 	push	af
   179B 33            [ 6] 3566 	inc	sp
   179C 3A 60 A0      [13] 3567 	ld	a, (_g_int_idx)
   179F F5            [11] 3568 	push	af
   17A0 33            [ 6] 3569 	inc	sp
   17A1 CD 10 8C      [17] 3570 	call	__moduchar
   17A4 F1            [10] 3571 	pop	af
   17A5 FD 21 60 A0   [14] 3572 	ld	iy, #_g_int_idx
   17A9 FD 75 00      [19] 3573 	ld	0 (iy), l
                           3574 ;src/game.c:875: u_clock_interrupt();
   17AC C3 54 2D      [10] 3575 	jp  _u_clock_interrupt
                           3576 ;src/game.c:879: void g_reset_timers(void) {
                           3577 ;	---------------------------------
                           3578 ; Function g_reset_timers
                           3579 ; ---------------------------------
   17AF                    3580 _g_reset_timers:
                           3581 ;src/game.c:881: g_int_idx = 0;
   17AF 21 60 A0      [10] 3582 	ld	hl,#_g_int_idx + 0
   17B2 36 00         [10] 3583 	ld	(hl), #0x00
                           3584 ;src/game.c:882: g_frame_c = 0;
   17B4 21 61 A0      [10] 3585 	ld	hl,#_g_frame_c + 0
   17B7 36 00         [10] 3586 	ld	(hl), #0x00
   17B9 C9            [10] 3587 	ret
                           3588 ;src/game.c:886: static void g_draw_pause(void) {
                           3589 ;	---------------------------------
                           3590 ; Function g_draw_pause
                           3591 ; ---------------------------------
   17BA                    3592 _g_draw_pause:
                           3593 ;src/game.c:888: const u8 pw = pa_sz.w * GRID_P_W, ph = pa_sz.h * GRID_P_H;
   17BA 3A 48 03      [13] 3594 	ld	a, (#_pa_sz + 1)
   17BD 4F            [ 4] 3595 	ld	c, a
   17BE 87            [ 4] 3596 	add	a, a
   17BF 87            [ 4] 3597 	add	a, a
   17C0 81            [ 4] 3598 	add	a, c
   17C1 87            [ 4] 3599 	add	a, a
                           3600 ;src/game.c:894: y = 200 - (ph + (2 * GRID_P_H));
   17C2 C6 14         [ 7] 3601 	add	a, #0x14
   17C4 4F            [ 4] 3602 	ld	c, a
   17C5 3E C8         [ 7] 3603 	ld	a, #0xc8
   17C7 91            [ 4] 3604 	sub	a, c
   17C8 4F            [ 4] 3605 	ld	c, a
                           3606 ;src/game.c:896: y = y / 2;
   17C9 CB 39         [ 8] 3607 	srl	c
                           3608 ;src/game.c:898: v_draw_box(&pa_sz);
   17CB C5            [11] 3609 	push	bc
   17CC 21 47 03      [10] 3610 	ld	hl, #_pa_sz
   17CF E5            [11] 3611 	push	hl
   17D0 CD 73 39      [17] 3612 	call	_v_draw_box
   17D3 F1            [10] 3613 	pop	af
   17D4 C1            [10] 3614 	pop	bc
                           3615 ;src/game.c:901: ty = y + LINE_P_H * 3;
   17D5 79            [ 4] 3616 	ld	a, c
   17D6 C6 12         [ 7] 3617 	add	a, #0x12
   17D8 47            [ 4] 3618 	ld	b, a
                           3619 ;src/game.c:902: v_print_c(g_strings[94], ty, FONT_RED);
   17D9 ED 5B E3 67   [20] 3620 	ld	de, (#_g_strings + 188)
   17DD C5            [11] 3621 	push	bc
   17DE AF            [ 4] 3622 	xor	a, a
   17DF F5            [11] 3623 	push	af
   17E0 33            [ 6] 3624 	inc	sp
   17E1 C5            [11] 3625 	push	bc
   17E2 33            [ 6] 3626 	inc	sp
   17E3 D5            [11] 3627 	push	de
   17E4 CD 03 31      [17] 3628 	call	_v_print_c
   17E7 F1            [10] 3629 	pop	af
   17E8 F1            [10] 3630 	pop	af
   17E9 C1            [10] 3631 	pop	bc
                           3632 ;src/game.c:903: ty = ty + LINE_P_H * 3;
   17EA 78            [ 4] 3633 	ld	a, b
   17EB C6 12         [ 7] 3634 	add	a, #0x12
   17ED 57            [ 4] 3635 	ld	d, a
                           3636 ;src/game.c:904: v_print_c(g_strings[95], ty, FONT_RED);
   17EE ED 4B E5 67   [20] 3637 	ld	bc, (#_g_strings + 190)
   17F2 AF            [ 4] 3638 	xor	a, a
   17F3 F5            [11] 3639 	push	af
   17F4 33            [ 6] 3640 	inc	sp
   17F5 D5            [11] 3641 	push	de
   17F6 33            [ 6] 3642 	inc	sp
   17F7 C5            [11] 3643 	push	bc
   17F8 CD 03 31      [17] 3644 	call	_v_print_c
   17FB F1            [10] 3645 	pop	af
   17FC F1            [10] 3646 	pop	af
   17FD C9            [10] 3647 	ret
                           3648 ;src/game.c:908: static void g_draw_stage_clear(void) {
                           3649 ;	---------------------------------
                           3650 ; Function g_draw_stage_clear
                           3651 ; ---------------------------------
   17FE                    3652 _g_draw_stage_clear:
   17FE DD E5         [15] 3653 	push	ix
   1800 DD 21 00 00   [14] 3654 	ld	ix,#0
   1804 DD 39         [15] 3655 	add	ix,sp
   1806 21 F8 FF      [10] 3656 	ld	hl, #-8
   1809 39            [11] 3657 	add	hl, sp
   180A F9            [ 6] 3658 	ld	sp, hl
                           3659 ;src/game.c:910: const u8 pw = sc_sz.w * GRID_P_W, ph = sc_sz.h * GRID_P_H;
   180B 3A 46 03      [13] 3660 	ld	a, (#_sc_sz + 1)
   180E 4F            [ 4] 3661 	ld	c, a
   180F 87            [ 4] 3662 	add	a, a
   1810 87            [ 4] 3663 	add	a, a
   1811 81            [ 4] 3664 	add	a, c
   1812 87            [ 4] 3665 	add	a, a
                           3666 ;src/game.c:916: y = 200 - (ph + (2 * GRID_P_H));
   1813 C6 14         [ 7] 3667 	add	a, #0x14
   1815 4F            [ 4] 3668 	ld	c, a
   1816 3E C8         [ 7] 3669 	ld	a, #0xc8
   1818 91            [ 4] 3670 	sub	a, c
   1819 4F            [ 4] 3671 	ld	c, a
                           3672 ;src/game.c:918: y = y / 2;
   181A CB 39         [ 8] 3673 	srl	c
                           3674 ;src/game.c:920: v_draw_box(&sc_sz);
   181C C5            [11] 3675 	push	bc
   181D 21 45 03      [10] 3676 	ld	hl, #_sc_sz
   1820 E5            [11] 3677 	push	hl
   1821 CD 73 39      [17] 3678 	call	_v_draw_box
   1824 F1            [10] 3679 	pop	af
   1825 C1            [10] 3680 	pop	bc
                           3681 ;src/game.c:923: ty = y + LINE_P_H * 3;
   1826 79            [ 4] 3682 	ld	a, c
   1827 C6 12         [ 7] 3683 	add	a, #0x12
   1829 47            [ 4] 3684 	ld	b, a
                           3685 ;src/game.c:924: v_print_c(g_strings[90], ty, FONT_RED);
   182A ED 5B DB 67   [20] 3686 	ld	de, (#_g_strings + 180)
   182E C5            [11] 3687 	push	bc
   182F AF            [ 4] 3688 	xor	a, a
   1830 F5            [11] 3689 	push	af
   1831 33            [ 6] 3690 	inc	sp
   1832 C5            [11] 3691 	push	bc
   1833 33            [ 6] 3692 	inc	sp
   1834 D5            [11] 3693 	push	de
   1835 CD 03 31      [17] 3694 	call	_v_print_c
   1838 F1            [10] 3695 	pop	af
   1839 F1            [10] 3696 	pop	af
   183A C1            [10] 3697 	pop	bc
                           3698 ;src/game.c:925: ty += (LINE_P_H * 4);
   183B 78            [ 4] 3699 	ld	a, b
   183C C6 18         [ 7] 3700 	add	a, #0x18
   183E 47            [ 4] 3701 	ld	b, a
                           3702 ;src/game.c:928: v_print_c(g_strings[91], ty, FONT_RED);
   183F ED 5B DD 67   [20] 3703 	ld	de, (#_g_strings + 182)
   1843 C5            [11] 3704 	push	bc
   1844 AF            [ 4] 3705 	xor	a, a
   1845 F5            [11] 3706 	push	af
   1846 33            [ 6] 3707 	inc	sp
   1847 C5            [11] 3708 	push	bc
   1848 33            [ 6] 3709 	inc	sp
   1849 D5            [11] 3710 	push	de
   184A CD 03 31      [17] 3711 	call	_v_print_c
   184D F1            [10] 3712 	pop	af
   184E F1            [10] 3713 	pop	af
   184F C1            [10] 3714 	pop	bc
                           3715 ;src/game.c:929: ty += LINE_P_H + 2;
   1850 78            [ 4] 3716 	ld	a, b
   1851 C6 08         [ 7] 3717 	add	a, #0x08
   1853 47            [ 4] 3718 	ld	b, a
                           3719 ;src/game.c:930: v_print(g_strings[80], l, ty, FONT_BLUE);
   1854 ED 5B C7 67   [20] 3720 	ld	de, (#(_g_strings + 0x00a0) + 0)
   1858 C5            [11] 3721 	push	bc
   1859 3E 01         [ 7] 3722 	ld	a, #0x01
   185B F5            [11] 3723 	push	af
   185C 33            [ 6] 3724 	inc	sp
   185D C5            [11] 3725 	push	bc
   185E 33            [ 6] 3726 	inc	sp
   185F 3E 1E         [ 7] 3727 	ld	a, #0x1e
   1861 F5            [11] 3728 	push	af
   1862 33            [ 6] 3729 	inc	sp
   1863 D5            [11] 3730 	push	de
   1864 CD 8F 31      [17] 3731 	call	_v_print
   1867 F1            [10] 3732 	pop	af
   1868 F1            [10] 3733 	pop	af
   1869 33            [ 6] 3734 	inc	sp
   186A 2A 3C 9E      [16] 3735 	ld	hl, (_g_current_score + 2)
   186D E5            [11] 3736 	push	hl
   186E 2A 3A 9E      [16] 3737 	ld	hl, (_g_current_score)
   1871 E5            [11] 3738 	push	hl
   1872 CD 1C 29      [17] 3739 	call	_u_get_width
   1875 F1            [10] 3740 	pop	af
   1876 F1            [10] 3741 	pop	af
   1877 C1            [10] 3742 	pop	bc
                           3743 ;src/game.c:932: v_print_n(g_current_score, l + (20 - (width * 2)), ty, FONT_BLUE);
   1878 CB 25         [ 8] 3744 	sla	l
   187A 3E 14         [ 7] 3745 	ld	a, #0x14
   187C 95            [ 4] 3746 	sub	a, l
   187D 4F            [ 4] 3747 	ld	c,a
   187E C6 1E         [ 7] 3748 	add	a, #0x1e
   1880 57            [ 4] 3749 	ld	d, a
   1881 FD 21 3A 9E   [14] 3750 	ld	iy, #_g_current_score
   1885 FD 7E 00      [19] 3751 	ld	a, 0 (iy)
   1888 DD 77 F8      [19] 3752 	ld	-8 (ix), a
   188B FD 7E 01      [19] 3753 	ld	a, 1 (iy)
   188E DD 77 F9      [19] 3754 	ld	-7 (ix), a
   1891 FD 7E 02      [19] 3755 	ld	a, 2 (iy)
   1894 DD 77 FA      [19] 3756 	ld	-6 (ix), a
   1897 FD 7E 03      [19] 3757 	ld	a, 3 (iy)
   189A DD 77 FB      [19] 3758 	ld	-5 (ix), a
   189D DD 36 FC 00   [19] 3759 	ld	-4 (ix), #0x00
   18A1 DD 36 FD 00   [19] 3760 	ld	-3 (ix), #0x00
   18A5 DD 36 FE 00   [19] 3761 	ld	-2 (ix), #0x00
   18A9 DD 36 FF 00   [19] 3762 	ld	-1 (ix), #0x00
   18AD C5            [11] 3763 	push	bc
   18AE 3E 01         [ 7] 3764 	ld	a, #0x01
   18B0 F5            [11] 3765 	push	af
   18B1 33            [ 6] 3766 	inc	sp
   18B2 4A            [ 4] 3767 	ld	c, d
   18B3 C5            [11] 3768 	push	bc
   18B4 DD 66 FF      [19] 3769 	ld	h, -1 (ix)
   18B7 DD 6E FE      [19] 3770 	ld	l, -2 (ix)
   18BA E5            [11] 3771 	push	hl
   18BB DD 66 FD      [19] 3772 	ld	h, -3 (ix)
   18BE DD 6E FC      [19] 3773 	ld	l, -4 (ix)
   18C1 E5            [11] 3774 	push	hl
   18C2 DD 66 FB      [19] 3775 	ld	h, -5 (ix)
   18C5 DD 6E FA      [19] 3776 	ld	l, -6 (ix)
   18C8 E5            [11] 3777 	push	hl
   18C9 DD 66 F9      [19] 3778 	ld	h, -7 (ix)
   18CC DD 6E F8      [19] 3779 	ld	l, -8 (ix)
   18CF E5            [11] 3780 	push	hl
   18D0 CD 35 31      [17] 3781 	call	_v_print_n
   18D3 21 0B 00      [10] 3782 	ld	hl, #11
   18D6 39            [11] 3783 	add	hl, sp
   18D7 F9            [ 6] 3784 	ld	sp, hl
   18D8 C1            [10] 3785 	pop	bc
                           3786 ;src/game.c:935: ty += (LINE_P_H * 2);
   18D9 78            [ 4] 3787 	ld	a, b
   18DA C6 0C         [ 7] 3788 	add	a, #0x0c
   18DC 47            [ 4] 3789 	ld	b, a
                           3790 ;src/game.c:936: v_print_c(g_strings[92], ty, FONT_RED);
   18DD ED 5B DF 67   [20] 3791 	ld	de, (#_g_strings + 184)
   18E1 C5            [11] 3792 	push	bc
   18E2 AF            [ 4] 3793 	xor	a, a
   18E3 F5            [11] 3794 	push	af
   18E4 33            [ 6] 3795 	inc	sp
   18E5 C5            [11] 3796 	push	bc
   18E6 33            [ 6] 3797 	inc	sp
   18E7 D5            [11] 3798 	push	de
   18E8 CD 03 31      [17] 3799 	call	_v_print_c
   18EB F1            [10] 3800 	pop	af
   18EC F1            [10] 3801 	pop	af
   18ED C1            [10] 3802 	pop	bc
                           3803 ;src/game.c:937: ty += LINE_P_H + 2;
   18EE 78            [ 4] 3804 	ld	a, b
   18EF C6 08         [ 7] 3805 	add	a, #0x08
   18F1 47            [ 4] 3806 	ld	b, a
                           3807 ;src/game.c:938: v_print(g_strings[80], l, ty, FONT_BLUE);
   18F2 ED 5B C7 67   [20] 3808 	ld	de, (#(_g_strings + 0x00a0) + 0)
   18F6 C5            [11] 3809 	push	bc
   18F7 3E 01         [ 7] 3810 	ld	a, #0x01
   18F9 F5            [11] 3811 	push	af
   18FA 33            [ 6] 3812 	inc	sp
   18FB C5            [11] 3813 	push	bc
   18FC 33            [ 6] 3814 	inc	sp
   18FD 3E 1E         [ 7] 3815 	ld	a, #0x1e
   18FF F5            [11] 3816 	push	af
   1900 33            [ 6] 3817 	inc	sp
   1901 D5            [11] 3818 	push	de
   1902 CD 8F 31      [17] 3819 	call	_v_print
   1905 F1            [10] 3820 	pop	af
   1906 F1            [10] 3821 	pop	af
   1907 33            [ 6] 3822 	inc	sp
   1908 2A 40 9E      [16] 3823 	ld	hl, (_b_score + 2)
   190B E5            [11] 3824 	push	hl
   190C 2A 3E 9E      [16] 3825 	ld	hl, (_b_score)
   190F E5            [11] 3826 	push	hl
   1910 CD 1C 29      [17] 3827 	call	_u_get_width
   1913 F1            [10] 3828 	pop	af
   1914 F1            [10] 3829 	pop	af
   1915 C1            [10] 3830 	pop	bc
                           3831 ;src/game.c:940: v_print_n(b_score, l + (20 - (width * 2)), ty, FONT_BLUE);
   1916 CB 25         [ 8] 3832 	sla	l
   1918 3E 14         [ 7] 3833 	ld	a, #0x14
   191A 95            [ 4] 3834 	sub	a, l
   191B 4F            [ 4] 3835 	ld	c,a
   191C C6 1E         [ 7] 3836 	add	a, #0x1e
   191E 57            [ 4] 3837 	ld	d, a
   191F FD 21 3E 9E   [14] 3838 	ld	iy, #_b_score
   1923 FD 7E 00      [19] 3839 	ld	a, 0 (iy)
   1926 DD 77 F8      [19] 3840 	ld	-8 (ix), a
   1929 FD 7E 01      [19] 3841 	ld	a, 1 (iy)
   192C DD 77 F9      [19] 3842 	ld	-7 (ix), a
   192F FD 7E 02      [19] 3843 	ld	a, 2 (iy)
   1932 DD 77 FA      [19] 3844 	ld	-6 (ix), a
   1935 FD 7E 03      [19] 3845 	ld	a, 3 (iy)
   1938 DD 77 FB      [19] 3846 	ld	-5 (ix), a
   193B DD 36 FC 00   [19] 3847 	ld	-4 (ix), #0x00
   193F DD 36 FD 00   [19] 3848 	ld	-3 (ix), #0x00
   1943 DD 36 FE 00   [19] 3849 	ld	-2 (ix), #0x00
   1947 DD 36 FF 00   [19] 3850 	ld	-1 (ix), #0x00
   194B C5            [11] 3851 	push	bc
   194C 3E 01         [ 7] 3852 	ld	a, #0x01
   194E F5            [11] 3853 	push	af
   194F 33            [ 6] 3854 	inc	sp
   1950 4A            [ 4] 3855 	ld	c, d
   1951 C5            [11] 3856 	push	bc
   1952 DD 66 FF      [19] 3857 	ld	h, -1 (ix)
   1955 DD 6E FE      [19] 3858 	ld	l, -2 (ix)
   1958 E5            [11] 3859 	push	hl
   1959 DD 66 FD      [19] 3860 	ld	h, -3 (ix)
   195C DD 6E FC      [19] 3861 	ld	l, -4 (ix)
   195F E5            [11] 3862 	push	hl
   1960 DD 66 FB      [19] 3863 	ld	h, -5 (ix)
   1963 DD 6E FA      [19] 3864 	ld	l, -6 (ix)
   1966 E5            [11] 3865 	push	hl
   1967 DD 66 F9      [19] 3866 	ld	h, -7 (ix)
   196A DD 6E F8      [19] 3867 	ld	l, -8 (ix)
   196D E5            [11] 3868 	push	hl
   196E CD 35 31      [17] 3869 	call	_v_print_n
   1971 21 0B 00      [10] 3870 	ld	hl, #11
   1974 39            [11] 3871 	add	hl, sp
   1975 F9            [ 6] 3872 	ld	sp, hl
   1976 C1            [10] 3873 	pop	bc
                           3874 ;src/game.c:943: g_current_score += b_score;
   1977 21 3E 9E      [10] 3875 	ld	hl, #_b_score
   197A D5            [11] 3876 	push	de
   197B FD 21 3A 9E   [14] 3877 	ld	iy, #_g_current_score
   197F FD E5         [15] 3878 	push	iy
   1981 D1            [10] 3879 	pop	de
   1982 1A            [ 7] 3880 	ld	a, (de)
   1983 86            [ 7] 3881 	add	a, (hl)
   1984 12            [ 7] 3882 	ld	(de), a
   1985 13            [ 6] 3883 	inc	de
   1986 1A            [ 7] 3884 	ld	a, (de)
   1987 23            [ 6] 3885 	inc	hl
   1988 8E            [ 7] 3886 	adc	a, (hl)
   1989 12            [ 7] 3887 	ld	(de), a
   198A 13            [ 6] 3888 	inc	de
   198B 1A            [ 7] 3889 	ld	a, (de)
   198C 23            [ 6] 3890 	inc	hl
   198D 8E            [ 7] 3891 	adc	a, (hl)
   198E 12            [ 7] 3892 	ld	(de), a
   198F 13            [ 6] 3893 	inc	de
   1990 1A            [ 7] 3894 	ld	a, (de)
   1991 23            [ 6] 3895 	inc	hl
   1992 8E            [ 7] 3896 	adc	a, (hl)
   1993 12            [ 7] 3897 	ld	(de), a
   1994 D1            [10] 3898 	pop	de
                           3899 ;src/game.c:944: ty += (LINE_P_H * 2);
   1995 78            [ 4] 3900 	ld	a, b
   1996 C6 0C         [ 7] 3901 	add	a, #0x0c
   1998 47            [ 4] 3902 	ld	b, a
                           3903 ;src/game.c:945: v_print_c(g_strings[93], ty, FONT_RED);
   1999 ED 5B E1 67   [20] 3904 	ld	de, (#_g_strings + 186)
   199D C5            [11] 3905 	push	bc
   199E AF            [ 4] 3906 	xor	a, a
   199F F5            [11] 3907 	push	af
   19A0 33            [ 6] 3908 	inc	sp
   19A1 C5            [11] 3909 	push	bc
   19A2 33            [ 6] 3910 	inc	sp
   19A3 D5            [11] 3911 	push	de
   19A4 CD 03 31      [17] 3912 	call	_v_print_c
   19A7 F1            [10] 3913 	pop	af
   19A8 F1            [10] 3914 	pop	af
   19A9 C1            [10] 3915 	pop	bc
                           3916 ;src/game.c:946: ty += LINE_P_H + 2;
   19AA 78            [ 4] 3917 	ld	a, b
   19AB C6 08         [ 7] 3918 	add	a, #0x08
   19AD 47            [ 4] 3919 	ld	b, a
                           3920 ;src/game.c:947: v_print(g_strings[80], l, ty, FONT_BLUE);
   19AE ED 5B C7 67   [20] 3921 	ld	de, (#(_g_strings + 0x00a0) + 0)
   19B2 C5            [11] 3922 	push	bc
   19B3 3E 01         [ 7] 3923 	ld	a, #0x01
   19B5 F5            [11] 3924 	push	af
   19B6 33            [ 6] 3925 	inc	sp
   19B7 C5            [11] 3926 	push	bc
   19B8 33            [ 6] 3927 	inc	sp
   19B9 3E 1E         [ 7] 3928 	ld	a, #0x1e
   19BB F5            [11] 3929 	push	af
   19BC 33            [ 6] 3930 	inc	sp
   19BD D5            [11] 3931 	push	de
   19BE CD 8F 31      [17] 3932 	call	_v_print
   19C1 F1            [10] 3933 	pop	af
   19C2 F1            [10] 3934 	pop	af
   19C3 33            [ 6] 3935 	inc	sp
   19C4 2A 3C 9E      [16] 3936 	ld	hl, (_g_current_score + 2)
   19C7 E5            [11] 3937 	push	hl
   19C8 2A 3A 9E      [16] 3938 	ld	hl, (_g_current_score)
   19CB E5            [11] 3939 	push	hl
   19CC CD 1C 29      [17] 3940 	call	_u_get_width
   19CF F1            [10] 3941 	pop	af
   19D0 F1            [10] 3942 	pop	af
   19D1 C1            [10] 3943 	pop	bc
                           3944 ;src/game.c:949: v_print_n(g_current_score, l + (20 - (width * 2)), ty, FONT_BLUE);
   19D2 CB 25         [ 8] 3945 	sla	l
   19D4 3E 14         [ 7] 3946 	ld	a, #0x14
   19D6 95            [ 4] 3947 	sub	a, l
   19D7 C6 1E         [ 7] 3948 	add	a, #0x1e
   19D9 57            [ 4] 3949 	ld	d, a
   19DA FD 21 3A 9E   [14] 3950 	ld	iy, #_g_current_score
   19DE FD 7E 00      [19] 3951 	ld	a, 0 (iy)
   19E1 DD 77 F8      [19] 3952 	ld	-8 (ix), a
   19E4 FD 7E 01      [19] 3953 	ld	a, 1 (iy)
   19E7 DD 77 F9      [19] 3954 	ld	-7 (ix), a
   19EA FD 7E 02      [19] 3955 	ld	a, 2 (iy)
   19ED DD 77 FA      [19] 3956 	ld	-6 (ix), a
   19F0 FD 7E 03      [19] 3957 	ld	a, 3 (iy)
   19F3 DD 77 FB      [19] 3958 	ld	-5 (ix), a
   19F6 DD 36 FC 00   [19] 3959 	ld	-4 (ix), #0x00
   19FA DD 36 FD 00   [19] 3960 	ld	-3 (ix), #0x00
   19FE DD 36 FE 00   [19] 3961 	ld	-2 (ix), #0x00
   1A02 DD 36 FF 00   [19] 3962 	ld	-1 (ix), #0x00
   1A06 3E 01         [ 7] 3963 	ld	a, #0x01
   1A08 F5            [11] 3964 	push	af
   1A09 33            [ 6] 3965 	inc	sp
   1A0A 4A            [ 4] 3966 	ld	c, d
   1A0B C5            [11] 3967 	push	bc
   1A0C DD 66 FF      [19] 3968 	ld	h, -1 (ix)
   1A0F DD 6E FE      [19] 3969 	ld	l, -2 (ix)
   1A12 E5            [11] 3970 	push	hl
   1A13 DD 66 FD      [19] 3971 	ld	h, -3 (ix)
   1A16 DD 6E FC      [19] 3972 	ld	l, -4 (ix)
   1A19 E5            [11] 3973 	push	hl
   1A1A DD 66 FB      [19] 3974 	ld	h, -5 (ix)
   1A1D DD 6E FA      [19] 3975 	ld	l, -6 (ix)
   1A20 E5            [11] 3976 	push	hl
   1A21 DD 66 F9      [19] 3977 	ld	h, -7 (ix)
   1A24 DD 6E F8      [19] 3978 	ld	l, -8 (ix)
   1A27 E5            [11] 3979 	push	hl
   1A28 CD 35 31      [17] 3980 	call	_v_print_n
   1A2B 21 0B 00      [10] 3981 	ld	hl, #11
   1A2E 39            [11] 3982 	add	hl, sp
   1A2F F9            [ 6] 3983 	ld	sp, hl
   1A30 DD F9         [10] 3984 	ld	sp, ix
   1A32 DD E1         [14] 3985 	pop	ix
   1A34 C9            [10] 3986 	ret
                           3987 ;src/game.c:952: static void g_explode_player(void) {
                           3988 ;	---------------------------------
                           3989 ; Function g_explode_player
                           3990 ; ---------------------------------
   1A35                    3991 _g_explode_player:
                           3992 ;src/game.c:954: cpct_setBorder(HW_BRIGHT_RED);
   1A35 21 10 0C      [10] 3993 	ld	hl, #0x0c10
   1A38 E5            [11] 3994 	push	hl
   1A39 CD 17 8B      [17] 3995 	call	_cpct_setPALColour
                           3996 ;src/game.c:955: PlaySFX(5, CHANNEL_A, MAX_VOL);
   1A3C 21 00 00      [10] 3997 	ld	hl, #0x0000
   1A3F E5            [11] 3998 	push	hl
   1A40 3E 05         [ 7] 3999 	ld	a, #0x05
   1A42 F5            [11] 4000 	push	af
   1A43 33            [ 6] 4001 	inc	sp
   1A44 CD C4 66      [17] 4002 	call	_PlaySFX
   1A47 F1            [10] 4003 	pop	af
   1A48 33            [ 6] 4004 	inc	sp
                           4005 ;src/game.c:956: g_player.explode = true;
   1A49 21 CC 9D      [10] 4006 	ld	hl, #(_g_player + 0x0008)
   1A4C 36 01         [10] 4007 	ld	(hl), #0x01
                           4008 ;src/game.c:957: g_player.explode_f = 0;
   1A4E 21 CD 9D      [10] 4009 	ld	hl, #(_g_player + 0x0009)
   1A51 36 00         [10] 4010 	ld	(hl), #0x00
                           4011 ;src/game.c:958: v_draw_player_bb(r_px, r_py);
   1A53 3A 43 9E      [13] 4012 	ld	a, (_r_py)
   1A56 F5            [11] 4013 	push	af
   1A57 33            [ 6] 4014 	inc	sp
   1A58 3A 42 9E      [13] 4015 	ld	a, (_r_px)
   1A5B F5            [11] 4016 	push	af
   1A5C 33            [ 6] 4017 	inc	sp
   1A5D CD 6D 3C      [17] 4018 	call	_v_draw_player_bb
   1A60 F1            [10] 4019 	pop	af
                           4020 ;src/game.c:959: v_draw_player();
   1A61 CD 0C 34      [17] 4021 	call	_v_draw_player
                           4022 ;src/game.c:960: while (g_player.explode_f < 5) {
   1A64                    4023 00103$:
   1A64 3A CD 9D      [13] 4024 	ld	a, (#(_g_player + 0x0009) + 0)
   1A67 D6 05         [ 7] 4025 	sub	a, #0x05
   1A69 30 2B         [12] 4026 	jr	NC,00105$
                           4027 ;src/game.c:962: if (g_frame_c % FC_EXPLODE == 0) {
   1A6B 3E 0F         [ 7] 4028 	ld	a, #0x0f
   1A6D F5            [11] 4029 	push	af
   1A6E 33            [ 6] 4030 	inc	sp
   1A6F 3A 61 A0      [13] 4031 	ld	a, (_g_frame_c)
   1A72 F5            [11] 4032 	push	af
   1A73 33            [ 6] 4033 	inc	sp
   1A74 CD 10 8C      [17] 4034 	call	__moduchar
   1A77 F1            [10] 4035 	pop	af
   1A78 7D            [ 4] 4036 	ld	a, l
   1A79 B7            [ 4] 4037 	or	a, a
   1A7A 20 E8         [12] 4038 	jr	NZ,00103$
                           4039 ;src/game.c:963: v_draw_player_bb(r_px, r_py);
   1A7C 3A 43 9E      [13] 4040 	ld	a, (_r_py)
   1A7F F5            [11] 4041 	push	af
   1A80 33            [ 6] 4042 	inc	sp
   1A81 3A 42 9E      [13] 4043 	ld	a, (_r_px)
   1A84 F5            [11] 4044 	push	af
   1A85 33            [ 6] 4045 	inc	sp
   1A86 CD 6D 3C      [17] 4046 	call	_v_draw_player_bb
   1A89 F1            [10] 4047 	pop	af
                           4048 ;src/game.c:964: v_draw_player();	
   1A8A CD 0C 34      [17] 4049 	call	_v_draw_player
                           4050 ;src/game.c:965: ++g_player.explode_f;		
   1A8D 3A CD 9D      [13] 4051 	ld	a, (#(_g_player + 0x0009) + 0)
   1A90 3C            [ 4] 4052 	inc	a
   1A91 32 CD 9D      [13] 4053 	ld	(#(_g_player + 0x0009)),a
   1A94 18 CE         [12] 4054 	jr	00103$
   1A96                    4055 00105$:
                           4056 ;src/game.c:968: cpct_setBorder(HW_BLACK);
   1A96 21 10 14      [10] 4057 	ld	hl, #0x1410
   1A99 E5            [11] 4058 	push	hl
   1A9A CD 17 8B      [17] 4059 	call	_cpct_setPALColour
   1A9D C9            [10] 4060 	ret
                           4061 	.area _CODE
                           4062 	.area _INITIALIZER
   A0F4                    4063 __xinit__g_int_idx:
   A0F4 00                 4064 	.db #0x00	; 0
   A0F5                    4065 __xinit__g_frame_c:
   A0F5 00                 4066 	.db #0x00	; 0
   A0F6                    4067 __xinit__g_bolt_count:
   A0F6 00                 4068 	.db #0x00	; 0
                           4069 	.area _CABS (ABS)
