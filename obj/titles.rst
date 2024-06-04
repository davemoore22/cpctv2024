                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module titles
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _v_reset_timers
                             12 	.globl _v_interrupt
                             13 	.globl _v_draw_logo
                             14 	.globl _v_print
                             15 	.globl _v_print_c
                             16 	.globl _v_wipe_scr
                             17 	.globl _v_clr_scr
                             18 	.globl _v_reset_pal
                             19 	.globl _v_blk_scr
                             20 	.globl _StopMusic
                             21 	.globl _PlayMusic
                             22 	.globl _cpct_isKeyPressed
                             23 	.globl _cpct_removeInterruptHandler
                             24 	.globl _cpct_setInterruptHandler
                             25 	.globl _t_in_titles
                             26 	.globl _t_start
                             27 	.globl _t_stop
                             28 ;--------------------------------------------------------
                             29 ; special function registers
                             30 ;--------------------------------------------------------
                             31 ;--------------------------------------------------------
                             32 ; ram data
                             33 ;--------------------------------------------------------
                             34 	.area _DATA
   9E56                      35 _t_in_titles::
   9E56                      36 	.ds 1
                             37 ;--------------------------------------------------------
                             38 ; ram data
                             39 ;--------------------------------------------------------
                             40 	.area _INITIALIZED
   A063                      41 _int_idx:
   A063                      42 	.ds 1
   A064                      43 _pal_idx:
   A064                      44 	.ds 1
   A065                      45 _frame_c:
   A065                      46 	.ds 2
                             47 ;--------------------------------------------------------
                             48 ; absolute external ram data
                             49 ;--------------------------------------------------------
                             50 	.area _DABS (ABS)
                             51 ;--------------------------------------------------------
                             52 ; global & static initialisations
                             53 ;--------------------------------------------------------
                             54 	.area _HOME
                             55 	.area _GSINIT
                             56 	.area _GSFINAL
                             57 	.area _GSINIT
                             58 ;--------------------------------------------------------
                             59 ; Home
                             60 ;--------------------------------------------------------
                             61 	.area _HOME
                             62 	.area _HOME
                             63 ;--------------------------------------------------------
                             64 ; code
                             65 ;--------------------------------------------------------
                             66 	.area _CODE
                             67 ;src/titles.c:37: cpct_keyID t_start(bool skip) {
                             68 ;	---------------------------------
                             69 ; Function t_start
                             70 ; ---------------------------------
   2420                      71 _t_start::
   2420 F5            [11]   72 	push	af
                             73 ;src/titles.c:40: u16 count = 0;
   2421 21 00 00      [10]   74 	ld	hl, #0x0000
   2424 E3            [19]   75 	ex	(sp), hl
                             76 ;src/titles.c:43: v_blk_scr();
   2425 CD 72 30      [17]   77 	call	_v_blk_scr
                             78 ;src/titles.c:44: v_clr_scr();
   2428 CD F2 30      [17]   79 	call	_v_clr_scr
                             80 ;src/titles.c:46: t_in_titles = true;
   242B 21 56 9E      [10]   81 	ld	hl,#_t_in_titles + 0
   242E 36 01         [10]   82 	ld	(hl), #0x01
                             83 ;src/titles.c:49: PlayMusic(0);
   2430 AF            [ 4]   84 	xor	a, a
   2431 F5            [11]   85 	push	af
   2432 33            [ 6]   86 	inc	sp
   2433 CD E2 66      [17]   87 	call	_PlayMusic
   2436 33            [ 6]   88 	inc	sp
                             89 ;src/titles.c:52: if (!skip) {
   2437 21 04 00      [10]   90 	ld	hl, #4+0
   243A 39            [11]   91 	add	hl, sp
   243B CB 46         [12]   92 	bit	0, (hl)
   243D C2 FC 24      [10]   93 	jp	NZ, 00128$
                             94 ;src/titles.c:54: v_draw_logo();
   2440 CD 33 30      [17]   95 	call	_v_draw_logo
                             96 ;src/titles.c:55: t_draw_titles();
   2443 CD 25 25      [17]   97 	call	_t_draw_titles
                             98 ;src/titles.c:56: t_draw_menu();
   2446 CD B0 25      [17]   99 	call	_t_draw_menu
                            100 ;src/titles.c:57: v_reset_pal();
   2449 CD 2D 32      [17]  101 	call	_v_reset_pal
                            102 ;src/titles.c:60: v_reset_timers();
   244C CD CB 32      [17]  103 	call	_v_reset_timers
                            104 ;src/titles.c:61: cpct_setInterruptHandler(v_interrupt);
   244F 21 DB 32      [10]  105 	ld	hl, #_v_interrupt
   2452 CD 55 90      [17]  106 	call	_cpct_setInterruptHandler
                            107 ;src/titles.c:67: while (1) {
   2455                     108 00125$:
                            109 ;src/titles.c:68: ++count;
   2455 FD 21 00 00   [14]  110 	ld	iy, #0
   2459 FD 39         [15]  111 	add	iy, sp
   245B FD 34 00      [23]  112 	inc	0 (iy)
   245E 20 03         [12]  113 	jr	NZ,00176$
   2460 FD 34 01      [23]  114 	inc	1 (iy)
   2463                     115 00176$:
                            116 ;src/titles.c:71: if (count % 200 == 0) {
   2463 21 C8 00      [10]  117 	ld	hl, #0x00c8
   2466 4D            [ 4]  118 	ld	c, l
   2467 44            [ 4]  119 	ld	b, h
   2468 E1            [10]  120 	pop	hl
   2469 E5            [11]  121 	push	hl
   246A C5            [11]  122 	push	bc
   246B E5            [11]  123 	push	hl
   246C CD 1C 8C      [17]  124 	call	__moduint
   246F F1            [10]  125 	pop	af
   2470 F1            [10]  126 	pop	af
   2471 7C            [ 4]  127 	ld	a, h
   2472 B5            [ 4]  128 	or	a,l
   2473 20 6D         [12]  129 	jr	NZ,00121$
                            130 ;src/titles.c:72: if (cpct_isKeyPressed(Key_0)) {
   2475 21 04 01      [10]  131 	ld	hl, #0x0104
   2478 CD EA 8A      [17]  132 	call	_cpct_isKeyPressed
   247B 7D            [ 4]  133 	ld	a, l
   247C B7            [ 4]  134 	or	a, a
   247D 28 06         [12]  135 	jr	Z,00118$
                            136 ;src/titles.c:75: return Key_0;
   247F 21 04 01      [10]  137 	ld	hl, #0x0104
   2482 C3 FF 24      [10]  138 	jp	00130$
   2485                     139 00118$:
                            140 ;src/titles.c:77: } else if (cpct_isKeyPressed(Key_1)) {
   2485 21 08 01      [10]  141 	ld	hl, #0x0108
   2488 CD EA 8A      [17]  142 	call	_cpct_isKeyPressed
   248B 7D            [ 4]  143 	ld	a, l
   248C B7            [ 4]  144 	or	a, a
   248D 28 05         [12]  145 	jr	Z,00115$
                            146 ;src/titles.c:80: return Key_1;
   248F 21 08 01      [10]  147 	ld	hl, #0x0108
   2492 18 6B         [12]  148 	jr	00130$
   2494                     149 00115$:
                            150 ;src/titles.c:82: } else if (cpct_isKeyPressed(Key_2)) {
   2494 21 08 02      [10]  151 	ld	hl, #0x0208
   2497 CD EA 8A      [17]  152 	call	_cpct_isKeyPressed
   249A 7D            [ 4]  153 	ld	a, l
   249B B7            [ 4]  154 	or	a, a
   249C 28 17         [12]  155 	jr	Z,00112$
                            156 ;src/titles.c:85: g_music_sfx = !g_music_sfx;
   249E FD 21 BE 9B   [14]  157 	ld	iy, #_g_music_sfx
   24A2 FD 7E 00      [19]  158 	ld	a, 0 (iy)
   24A5 EE 01         [ 7]  159 	xor	a, #0x01
   24A7 FD 77 00      [19]  160 	ld	0 (iy), a
                            161 ;src/titles.c:86: if (!g_music_sfx)
   24AA FD CB 00 46   [20]  162 	bit	0, 0 (iy)
   24AE 20 32         [12]  163 	jr	NZ,00121$
                            164 ;src/titles.c:87: StopMusic();
   24B0 CD 24 67      [17]  165 	call	_StopMusic
   24B3 18 2D         [12]  166 	jr	00121$
   24B5                     167 00112$:
                            168 ;src/titles.c:89: } else if (cpct_isKeyPressed(Key_3)) {
   24B5 21 07 02      [10]  169 	ld	hl, #0x0207
   24B8 CD EA 8A      [17]  170 	call	_cpct_isKeyPressed
   24BB 7D            [ 4]  171 	ld	a, l
   24BC B7            [ 4]  172 	or	a, a
   24BD 28 05         [12]  173 	jr	Z,00109$
                            174 ;src/titles.c:92: return Key_3;
   24BF 21 07 02      [10]  175 	ld	hl, #0x0207
   24C2 18 3B         [12]  176 	jr	00130$
   24C4                     177 00109$:
                            178 ;src/titles.c:94: } else if (cpct_isKeyPressed(Key_4)) {
   24C4 21 07 01      [10]  179 	ld	hl, #0x0107
   24C7 CD EA 8A      [17]  180 	call	_cpct_isKeyPressed
   24CA 7D            [ 4]  181 	ld	a, l
   24CB B7            [ 4]  182 	or	a, a
   24CC 28 05         [12]  183 	jr	Z,00106$
                            184 ;src/titles.c:97: return Key_4;
   24CE 21 07 01      [10]  185 	ld	hl, #0x0107
   24D1 18 2C         [12]  186 	jr	00130$
   24D3                     187 00106$:
                            188 ;src/titles.c:99: } else if (cpct_isKeyPressed(Key_9)) {
   24D3 21 04 02      [10]  189 	ld	hl, #0x0204
   24D6 CD EA 8A      [17]  190 	call	_cpct_isKeyPressed
   24D9 7D            [ 4]  191 	ld	a, l
   24DA B7            [ 4]  192 	or	a, a
   24DB 28 05         [12]  193 	jr	Z,00121$
                            194 ;src/titles.c:102: return Key_9;
   24DD 21 04 02      [10]  195 	ld	hl, #0x0204
   24E0 18 1D         [12]  196 	jr	00130$
   24E2                     197 00121$:
                            198 ;src/titles.c:106: if (count > 30002)
   24E2 3E 32         [ 7]  199 	ld	a, #0x32
   24E4 FD 21 00 00   [14]  200 	ld	iy, #0
   24E8 FD 39         [15]  201 	add	iy, sp
   24EA FD BE 00      [19]  202 	cp	a, 0 (iy)
   24ED 3E 75         [ 7]  203 	ld	a, #0x75
   24EF FD 9E 01      [19]  204 	sbc	a, 1 (iy)
   24F2 D2 55 24      [10]  205 	jp	NC, 00125$
                            206 ;src/titles.c:107: count = 0;
   24F5 21 00 00      [10]  207 	ld	hl, #0x0000
   24F8 E3            [19]  208 	ex	(sp), hl
   24F9 C3 55 24      [10]  209 	jp	00125$
   24FC                     210 00128$:
                            211 ;src/titles.c:112: return Key_9;
   24FC 21 04 02      [10]  212 	ld	hl, #0x0204
   24FF                     213 00130$:
   24FF F1            [10]  214 	pop	af
   2500 C9            [10]  215 	ret
   2501                     216 _text_loc:
   2501 01                  217 	.db #0x01	; 1
   2502 08                  218 	.db #0x08	; 8
   2503                     219 _blurb_loc:
   2503 01                  220 	.db #0x01	; 1
   2504 19                  221 	.db #0x19	; 25
   2505                     222 _menu_loc:
   2505 0E                  223 	.db #0x0e	; 14
   2506 0C                  224 	.db #0x0c	; 12
   2507                     225 _menu_key_x:
   2507 15                  226 	.db #0x15	; 21
   2508                     227 _menu_name_x:
   2508 1A                  228 	.db #0x1a	; 26
                            229 ;src/titles.c:117: void t_stop(void) {
                            230 ;	---------------------------------
                            231 ; Function t_stop
                            232 ; ---------------------------------
   2509                     233 _t_stop::
                            234 ;src/titles.c:119: v_wipe_scr(true);
   2509 3E 01         [ 7]  235 	ld	a, #0x01
   250B F5            [11]  236 	push	af
   250C 33            [ 6]  237 	inc	sp
   250D CD 9B 30      [17]  238 	call	_v_wipe_scr
   2510 33            [ 6]  239 	inc	sp
                            240 ;src/titles.c:120: v_blk_scr();
   2511 CD 72 30      [17]  241 	call	_v_blk_scr
                            242 ;src/titles.c:121: v_clr_scr();
   2514 CD F2 30      [17]  243 	call	_v_clr_scr
                            244 ;src/titles.c:122: cpct_removeInterruptHandler();
   2517 CD 59 8A      [17]  245 	call	_cpct_removeInterruptHandler
                            246 ;src/titles.c:123: StopMusic();
   251A CD 24 67      [17]  247 	call	_StopMusic
                            248 ;src/titles.c:124: t_in_titles = false;
   251D 21 56 9E      [10]  249 	ld	hl,#_t_in_titles + 0
   2520 36 00         [10]  250 	ld	(hl), #0x00
                            251 ;src/titles.c:125: v_reset_timers();
   2522 C3 CB 32      [10]  252 	jp  _v_reset_timers
                            253 ;src/titles.c:129: static void t_draw_titles(void) {
                            254 ;	---------------------------------
                            255 ; Function t_draw_titles
                            256 ; ---------------------------------
   2525                     257 _t_draw_titles:
                            258 ;src/titles.c:131: u8 y = LINE_P_H * text_loc.y;
   2525 3A 02 25      [13]  259 	ld	a, (#(_text_loc + 0x0001) + 0)
   2528 4F            [ 4]  260 	ld	c, a
   2529 87            [ 4]  261 	add	a, a
   252A 81            [ 4]  262 	add	a, c
   252B 87            [ 4]  263 	add	a, a
   252C 47            [ 4]  264 	ld	b, a
                            265 ;src/titles.c:132: v_print_c(g_strings[0], y, FONT_RED);
   252D ED 5B 27 67   [20]  266 	ld	de, (#_g_strings + 0)
   2531 C5            [11]  267 	push	bc
   2532 AF            [ 4]  268 	xor	a, a
   2533 F5            [11]  269 	push	af
   2534 33            [ 6]  270 	inc	sp
   2535 C5            [11]  271 	push	bc
   2536 33            [ 6]  272 	inc	sp
   2537 D5            [11]  273 	push	de
   2538 CD 03 31      [17]  274 	call	_v_print_c
   253B F1            [10]  275 	pop	af
   253C F1            [10]  276 	pop	af
   253D C1            [10]  277 	pop	bc
                            278 ;src/titles.c:133: y = y + (LINE_P_H) + 2;
   253E 78            [ 4]  279 	ld	a, b
   253F C6 08         [ 7]  280 	add	a, #0x08
   2541 57            [ 4]  281 	ld	d, a
                            282 ;src/titles.c:134: v_print_c(g_strings[1], y, FONT_WHITE);
   2542 ED 4B 29 67   [20]  283 	ld	bc, (#_g_strings + 2)
   2546 3E 02         [ 7]  284 	ld	a, #0x02
   2548 F5            [11]  285 	push	af
   2549 33            [ 6]  286 	inc	sp
   254A D5            [11]  287 	push	de
   254B 33            [ 6]  288 	inc	sp
   254C C5            [11]  289 	push	bc
   254D CD 03 31      [17]  290 	call	_v_print_c
   2550 F1            [10]  291 	pop	af
   2551 F1            [10]  292 	pop	af
                            293 ;src/titles.c:135: y = LINE_P_H * blurb_loc.y;
   2552 3A 04 25      [13]  294 	ld	a, (#(_blurb_loc + 0x0001) + 0)
   2555 4F            [ 4]  295 	ld	c, a
   2556 87            [ 4]  296 	add	a, a
   2557 81            [ 4]  297 	add	a, c
   2558 87            [ 4]  298 	add	a, a
   2559 47            [ 4]  299 	ld	b, a
                            300 ;src/titles.c:136: v_print_c(g_strings[2], y, FONT_RED);
   255A ED 5B 2B 67   [20]  301 	ld	de, (#_g_strings + 4)
   255E C5            [11]  302 	push	bc
   255F AF            [ 4]  303 	xor	a, a
   2560 F5            [11]  304 	push	af
   2561 33            [ 6]  305 	inc	sp
   2562 C5            [11]  306 	push	bc
   2563 33            [ 6]  307 	inc	sp
   2564 D5            [11]  308 	push	de
   2565 CD 03 31      [17]  309 	call	_v_print_c
   2568 F1            [10]  310 	pop	af
   2569 F1            [10]  311 	pop	af
   256A C1            [10]  312 	pop	bc
                            313 ;src/titles.c:137: y = y + (LINE_P_H) + 2;
   256B 78            [ 4]  314 	ld	a, b
   256C C6 08         [ 7]  315 	add	a, #0x08
   256E 47            [ 4]  316 	ld	b, a
                            317 ;src/titles.c:138: v_print_c(g_strings[3], y, FONT_WHITE);
   256F ED 5B 2D 67   [20]  318 	ld	de, (#_g_strings + 6)
   2573 C5            [11]  319 	push	bc
   2574 3E 02         [ 7]  320 	ld	a, #0x02
   2576 F5            [11]  321 	push	af
   2577 33            [ 6]  322 	inc	sp
   2578 C5            [11]  323 	push	bc
   2579 33            [ 6]  324 	inc	sp
   257A D5            [11]  325 	push	de
   257B CD 03 31      [17]  326 	call	_v_print_c
   257E F1            [10]  327 	pop	af
   257F F1            [10]  328 	pop	af
   2580 C1            [10]  329 	pop	bc
                            330 ;src/titles.c:139: y = y + (LINE_P_H) + 2;
   2581 78            [ 4]  331 	ld	a, b
   2582 C6 08         [ 7]  332 	add	a, #0x08
   2584 57            [ 4]  333 	ld	d, a
                            334 ;src/titles.c:140: v_print_c(g_strings[4], y, FONT_WHITE);
   2585 ED 4B 2F 67   [20]  335 	ld	bc, (#_g_strings + 8)
   2589 3E 02         [ 7]  336 	ld	a, #0x02
   258B F5            [11]  337 	push	af
   258C 33            [ 6]  338 	inc	sp
   258D D5            [11]  339 	push	de
   258E 33            [ 6]  340 	inc	sp
   258F C5            [11]  341 	push	bc
   2590 CD 03 31      [17]  342 	call	_v_print_c
   2593 F1            [10]  343 	pop	af
   2594 F1            [10]  344 	pop	af
                            345 ;src/titles.c:142: v_print_c(g_strings[5], y, FONT_RED);
   2595 2A 31 67      [16]  346 	ld	hl, (#_g_strings + 10)
   2598 01 B4 00      [10]  347 	ld	bc, #0x00b4
   259B C5            [11]  348 	push	bc
   259C E5            [11]  349 	push	hl
   259D CD 03 31      [17]  350 	call	_v_print_c
   25A0 F1            [10]  351 	pop	af
   25A1 F1            [10]  352 	pop	af
                            353 ;src/titles.c:144: v_print_c(g_strings[6], y, FONT_WHITE);
   25A2 2A 33 67      [16]  354 	ld	hl, (#_g_strings + 12)
   25A5 01 BC 02      [10]  355 	ld	bc, #0x02bc
   25A8 C5            [11]  356 	push	bc
   25A9 E5            [11]  357 	push	hl
   25AA CD 03 31      [17]  358 	call	_v_print_c
   25AD F1            [10]  359 	pop	af
   25AE F1            [10]  360 	pop	af
   25AF C9            [10]  361 	ret
                            362 ;src/titles.c:148: static void t_draw_menu(void) {
                            363 ;	---------------------------------
                            364 ; Function t_draw_menu
                            365 ; ---------------------------------
   25B0                     366 _t_draw_menu:
   25B0 DD E5         [15]  367 	push	ix
   25B2 DD 21 00 00   [14]  368 	ld	ix,#0
   25B6 DD 39         [15]  369 	add	ix,sp
   25B8 F5            [11]  370 	push	af
   25B9 F5            [11]  371 	push	af
                            372 ;src/titles.c:150: int ly = menu_loc.y;
   25BA 3A 06 25      [13]  373 	ld	a, (#(_menu_loc + 0x0001) + 0)
   25BD DD 77 FE      [19]  374 	ld	-2 (ix), a
   25C0 DD 36 FF 00   [19]  375 	ld	-1 (ix), #0x00
                            376 ;src/titles.c:154: t_draw_opt(g_strings[10], g_strings[16], ly);
   25C4 DD 5E FE      [19]  377 	ld	e, -2 (ix)
   25C7 ED 4B 47 67   [20]  378 	ld	bc, (#_g_strings + 32)
   25CB 2A 3B 67      [16]  379 	ld	hl, (#_g_strings + 20)
   25CE 7B            [ 4]  380 	ld	a, e
   25CF F5            [11]  381 	push	af
   25D0 33            [ 6]  382 	inc	sp
   25D1 C5            [11]  383 	push	bc
   25D2 E5            [11]  384 	push	hl
   25D3 CD 6E 26      [17]  385 	call	_t_draw_opt
   25D6 F1            [10]  386 	pop	af
   25D7 F1            [10]  387 	pop	af
   25D8 33            [ 6]  388 	inc	sp
                            389 ;src/titles.c:155: t_draw_opt(g_strings[11], g_strings[17], ly += 2);
   25D9 DD 5E FE      [19]  390 	ld	e,-2 (ix)
   25DC DD 56 FF      [19]  391 	ld	d,-1 (ix)
   25DF 13            [ 6]  392 	inc	de
   25E0 13            [ 6]  393 	inc	de
   25E1 DD 73 FE      [19]  394 	ld	-2 (ix), e
   25E4 DD 72 FF      [19]  395 	ld	-1 (ix), d
   25E7 ED 4B 49 67   [20]  396 	ld	bc, (#_g_strings + 34)
   25EB 2A 3D 67      [16]  397 	ld	hl, (#_g_strings + 22)
   25EE 7B            [ 4]  398 	ld	a, e
   25EF F5            [11]  399 	push	af
   25F0 33            [ 6]  400 	inc	sp
   25F1 C5            [11]  401 	push	bc
   25F2 E5            [11]  402 	push	hl
   25F3 CD 6E 26      [17]  403 	call	_t_draw_opt
   25F6 F1            [10]  404 	pop	af
   25F7 F1            [10]  405 	pop	af
   25F8 33            [ 6]  406 	inc	sp
                            407 ;src/titles.c:156: t_draw_opt(g_strings[12], g_strings[18], ly += 2);
   25F9 DD 5E FE      [19]  408 	ld	e,-2 (ix)
   25FC DD 56 FF      [19]  409 	ld	d,-1 (ix)
   25FF 13            [ 6]  410 	inc	de
   2600 13            [ 6]  411 	inc	de
   2601 33            [ 6]  412 	inc	sp
   2602 33            [ 6]  413 	inc	sp
   2603 D5            [11]  414 	push	de
   2604 ED 4B 4B 67   [20]  415 	ld	bc, (#_g_strings + 36)
   2608 2A 3F 67      [16]  416 	ld	hl, (#_g_strings + 24)
   260B 7B            [ 4]  417 	ld	a, e
   260C F5            [11]  418 	push	af
   260D 33            [ 6]  419 	inc	sp
   260E C5            [11]  420 	push	bc
   260F E5            [11]  421 	push	hl
   2610 CD 6E 26      [17]  422 	call	_t_draw_opt
   2613 F1            [10]  423 	pop	af
   2614 F1            [10]  424 	pop	af
   2615 33            [ 6]  425 	inc	sp
                            426 ;src/titles.c:157: t_draw_opt(g_strings[13], g_strings[19], ly += 2);
   2616 D1            [10]  427 	pop	de
   2617 D5            [11]  428 	push	de
   2618 13            [ 6]  429 	inc	de
   2619 13            [ 6]  430 	inc	de
   261A DD 73 FE      [19]  431 	ld	-2 (ix), e
   261D DD 72 FF      [19]  432 	ld	-1 (ix), d
   2620 ED 4B 4D 67   [20]  433 	ld	bc, (#_g_strings + 38)
   2624 2A 41 67      [16]  434 	ld	hl, (#_g_strings + 26)
   2627 7B            [ 4]  435 	ld	a, e
   2628 F5            [11]  436 	push	af
   2629 33            [ 6]  437 	inc	sp
   262A C5            [11]  438 	push	bc
   262B E5            [11]  439 	push	hl
   262C CD 6E 26      [17]  440 	call	_t_draw_opt
   262F F1            [10]  441 	pop	af
   2630 F1            [10]  442 	pop	af
   2631 33            [ 6]  443 	inc	sp
                            444 ;src/titles.c:158: t_draw_opt(g_strings[14], g_strings[20], ly += 2);
   2632 DD 5E FE      [19]  445 	ld	e,-2 (ix)
   2635 DD 56 FF      [19]  446 	ld	d,-1 (ix)
   2638 13            [ 6]  447 	inc	de
   2639 13            [ 6]  448 	inc	de
   263A DD 73 FE      [19]  449 	ld	-2 (ix), e
   263D DD 72 FF      [19]  450 	ld	-1 (ix), d
   2640 ED 4B 4F 67   [20]  451 	ld	bc, (#_g_strings + 40)
   2644 2A 43 67      [16]  452 	ld	hl, (#_g_strings + 28)
   2647 7B            [ 4]  453 	ld	a, e
   2648 F5            [11]  454 	push	af
   2649 33            [ 6]  455 	inc	sp
   264A C5            [11]  456 	push	bc
   264B E5            [11]  457 	push	hl
   264C CD 6E 26      [17]  458 	call	_t_draw_opt
   264F F1            [10]  459 	pop	af
   2650 F1            [10]  460 	pop	af
   2651 33            [ 6]  461 	inc	sp
                            462 ;src/titles.c:159: t_draw_opt(g_strings[15], g_strings[21], ly += 2);
   2652 DD 5E FE      [19]  463 	ld	e,-2 (ix)
   2655 DD 56 FF      [19]  464 	ld	d,-1 (ix)
   2658 13            [ 6]  465 	inc	de
   2659 13            [ 6]  466 	inc	de
   265A ED 4B 51 67   [20]  467 	ld	bc, (#_g_strings + 42)
   265E 2A 45 67      [16]  468 	ld	hl, (#_g_strings + 30)
   2661 7B            [ 4]  469 	ld	a, e
   2662 F5            [11]  470 	push	af
   2663 33            [ 6]  471 	inc	sp
   2664 C5            [11]  472 	push	bc
   2665 E5            [11]  473 	push	hl
   2666 CD 6E 26      [17]  474 	call	_t_draw_opt
   2669 DD F9         [10]  475 	ld	sp,ix
   266B DD E1         [14]  476 	pop	ix
   266D C9            [10]  477 	ret
                            478 ;src/titles.c:163: static void t_draw_opt(const char *key, const char *str, const u8 y) {
                            479 ;	---------------------------------
                            480 ; Function t_draw_opt
                            481 ; ---------------------------------
   266E                     482 _t_draw_opt:
                            483 ;src/titles.c:166: v_print(key, menu_key_x, y * LINE_P_H, FONT_RED);
   266E 21 06 00      [10]  484 	ld	hl, #6+0
   2671 39            [11]  485 	add	hl, sp
   2672 7E            [ 7]  486 	ld	a, (hl)
   2673 4F            [ 4]  487 	ld	c, a
   2674 87            [ 4]  488 	add	a, a
   2675 81            [ 4]  489 	add	a, c
   2676 87            [ 4]  490 	add	a, a
   2677 57            [ 4]  491 	ld	d, a
   2678 21 07 25      [10]  492 	ld	hl,#_menu_key_x + 0
   267B 46            [ 7]  493 	ld	b, (hl)
   267C D5            [11]  494 	push	de
   267D AF            [ 4]  495 	xor	a, a
   267E F5            [11]  496 	push	af
   267F 33            [ 6]  497 	inc	sp
   2680 58            [ 4]  498 	ld	e, b
   2681 D5            [11]  499 	push	de
   2682 21 07 00      [10]  500 	ld	hl, #7
   2685 39            [11]  501 	add	hl, sp
   2686 4E            [ 7]  502 	ld	c, (hl)
   2687 23            [ 6]  503 	inc	hl
   2688 46            [ 7]  504 	ld	b, (hl)
   2689 C5            [11]  505 	push	bc
   268A CD 8F 31      [17]  506 	call	_v_print
   268D F1            [10]  507 	pop	af
   268E F1            [10]  508 	pop	af
   268F 33            [ 6]  509 	inc	sp
   2690 D1            [10]  510 	pop	de
                            511 ;src/titles.c:167: v_print(str, menu_name_x, y * LINE_P_H, FONT_BLUE);
   2691 21 08 25      [10]  512 	ld	hl,#_menu_name_x + 0
   2694 46            [ 7]  513 	ld	b, (hl)
   2695 3E 01         [ 7]  514 	ld	a, #0x01
   2697 F5            [11]  515 	push	af
   2698 33            [ 6]  516 	inc	sp
   2699 58            [ 4]  517 	ld	e, b
   269A D5            [11]  518 	push	de
   269B 21 07 00      [10]  519 	ld	hl, #7
   269E 39            [11]  520 	add	hl, sp
   269F 4E            [ 7]  521 	ld	c, (hl)
   26A0 23            [ 6]  522 	inc	hl
   26A1 46            [ 7]  523 	ld	b, (hl)
   26A2 C5            [11]  524 	push	bc
   26A3 CD 8F 31      [17]  525 	call	_v_print
   26A6 F1            [10]  526 	pop	af
   26A7 F1            [10]  527 	pop	af
   26A8 33            [ 6]  528 	inc	sp
   26A9 C9            [10]  529 	ret
                            530 	.area _CODE
                            531 	.area _INITIALIZER
   A0F7                     532 __xinit__int_idx:
   A0F7 00                  533 	.db #0x00	; 0
   A0F8                     534 __xinit__pal_idx:
   A0F8 00                  535 	.db #0x00	; 0
   A0F9                     536 __xinit__frame_c:
   A0F9 00 00               537 	.dw #0x0000
                            538 	.area _CABS (ABS)
