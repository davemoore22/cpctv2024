                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module video
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _u_bounds_check
                             12 	.globl _u_get_xy
                             13 	.globl _u_wait
                             14 	.globl _PlaySound
                             15 	.globl _strlen
                             16 	.globl _sprintf
                             17 	.globl _cpct_zx7b_decrunch_s
                             18 	.globl _cpct_getScreenPtr
                             19 	.globl _cpct_setPALColour
                             20 	.globl _cpct_setPalette
                             21 	.globl _cpct_waitVSYNCStart
                             22 	.globl _cpct_waitVSYNC
                             23 	.globl _cpct_setVideoMode
                             24 	.globl _cpct_drawSpriteMasked
                             25 	.globl _cpct_drawSprite
                             26 	.globl _cpct_drawSolidBox
                             27 	.globl _cpct_drawToSpriteBufferMasked
                             28 	.globl _cpct_drawToSpriteBuffer
                             29 	.globl _cpct_scanKeyboard_if
                             30 	.globl _cpct_memset_f64
                             31 	.globl _cpct_memset
                             32 	.globl _cpct_removeInterruptHandler
                             33 	.globl _cpct_disableFirmware
                             34 	.globl _v_cycle_c
                             35 	.globl _v_frame_c
                             36 	.globl _v_pal_idx
                             37 	.globl _v_int_idx
                             38 	.globl _v_player_buf
                             39 	.globl _v_cells
                             40 	.globl _v_draw_logo
                             41 	.globl _v_init
                             42 	.globl _v_blk_scr
                             43 	.globl _v_wipe_scr
                             44 	.globl _v_clr_scr
                             45 	.globl _v_print_c
                             46 	.globl _v_print_n
                             47 	.globl _v_print
                             48 	.globl _v_reset_pal
                             49 	.globl _v_reset_pal_v
                             50 	.globl _v_wait_VSYNC
                             51 	.globl _v_get_pos
                             52 	.globl _v_flash_brd
                             53 	.globl _v_reset_timers
                             54 	.globl _v_interrupt
                             55 	.globl _v_draw_launch
                             56 	.globl _v_draw_player
                             57 	.globl _v_draw_enemies
                             58 	.globl _v_draw_bolts
                             59 	.globl _v_draw_box
                             60 	.globl _v_init_sprites
                             61 	.globl _v_get_sprite_p
                             62 	.globl _v_draw_player_bb
                             63 	.globl _v_draw_grid
                             64 ;--------------------------------------------------------
                             65 ; special function registers
                             66 ;--------------------------------------------------------
                             67 ;--------------------------------------------------------
                             68 ; ram data
                             69 ;--------------------------------------------------------
                             70 	.area _DATA
   9E5E                      71 _v_player_buf::
   9E5E                      72 	.ds 270
   9F6C                      73 _v_cell_buf_0:
   9F6C                      74 	.ds 30
   9F8A                      75 _v_cell_buf_1:
   9F8A                      76 	.ds 30
   9FA8                      77 _v_cell_buf_2:
   9FA8                      78 	.ds 30
   9FC6                      79 _v_cell_buf_3:
   9FC6                      80 	.ds 30
   9FE4                      81 _v_cell_buf_4:
   9FE4                      82 	.ds 30
   A002                      83 _v_cell_buf_5:
   A002                      84 	.ds 30
   A020                      85 _v_cell_buf_6:
   A020                      86 	.ds 30
   A03E                      87 _v_cell_buf_7:
   A03E                      88 	.ds 30
                             89 ;--------------------------------------------------------
                             90 ; ram data
                             91 ;--------------------------------------------------------
                             92 	.area _INITIALIZED
   A06F                      93 _v_int_idx::
   A06F                      94 	.ds 1
   A070                      95 _v_pal_idx::
   A070                      96 	.ds 1
   A071                      97 _v_frame_c::
   A071                      98 	.ds 1
   A072                      99 _v_cycle_c::
   A072                     100 	.ds 2
                            101 ;--------------------------------------------------------
                            102 ; absolute external ram data
                            103 ;--------------------------------------------------------
                            104 	.area _DABS (ABS)
                            105 ;--------------------------------------------------------
                            106 ; global & static initialisations
                            107 ;--------------------------------------------------------
                            108 	.area _HOME
                            109 	.area _GSINIT
                            110 	.area _GSFINAL
                            111 	.area _GSINIT
                            112 ;--------------------------------------------------------
                            113 ; Home
                            114 ;--------------------------------------------------------
                            115 	.area _HOME
                            116 	.area _HOME
                            117 ;--------------------------------------------------------
                            118 ; code
                            119 ;--------------------------------------------------------
                            120 	.area _CODE
                            121 ;src/lib/video.c:57: void v_draw_logo() {
                            122 ;	---------------------------------
                            123 ; Function v_draw_logo
                            124 ; ---------------------------------
   3033                     125 _v_draw_logo::
                            126 ;src/lib/video.c:60: cpct_zx7b_decrunch_s(VIDEO_MEM_END, img_titles_end);
   3033 21 F2 52      [10]  127 	ld	hl, #(_img_titles + 0x013d)
   3036 E5            [11]  128 	push	hl
   3037 21 FF FF      [10]  129 	ld	hl, #0xffff
   303A E5            [11]  130 	push	hl
   303B CD C3 8E      [17]  131 	call	_cpct_zx7b_decrunch_s
   303E C9            [10]  132 	ret
   303F                     133 _v_cells:
   303F 6C 9F               134 	.dw _v_cell_buf_0
   3041 8A 9F               135 	.dw _v_cell_buf_1
   3043 A8 9F               136 	.dw _v_cell_buf_2
   3045 C6 9F               137 	.dw _v_cell_buf_3
   3047 E4 9F               138 	.dw _v_cell_buf_4
   3049 02 A0               139 	.dw _v_cell_buf_5
   304B 20 A0               140 	.dw _v_cell_buf_6
   304D 3E A0               141 	.dw _v_cell_buf_7
   304F                     142 _v_spr_map:
   304F 01                  143 	.db #0x01	; 1
   3050 03                  144 	.db #0x03	; 3
   3051 05                  145 	.db #0x05	; 5
   3052 09                  146 	.db #0x09	; 9
   3053 0D                  147 	.db #0x0d	; 13
   3054 07                  148 	.db #0x07	; 7
   3055 0B                  149 	.db #0x0b	; 11
   3056 0F                  150 	.db #0x0f	; 15
   3057                     151 _launch_st:
   3057 0C                  152 	.db #0x0c	; 12
   3058 07                  153 	.db #0x07	; 7
                            154 ;src/lib/video.c:64: void v_init(void) {
                            155 ;	---------------------------------
                            156 ; Function v_init
                            157 ; ---------------------------------
   3059                     158 _v_init::
                            159 ;src/lib/video.c:67: cpct_disableFirmware();
   3059 CD 5D 8A      [17]  160 	call	_cpct_disableFirmware
                            161 ;src/lib/video.c:68: cpct_setVideoMode(0);
   305C 2E 00         [ 7]  162 	ld	l, #0x00
   305E CD AD 8E      [17]  163 	call	_cpct_setVideoMode
                            164 ;src/lib/video.c:69: cpct_waitVSYNCStart();
   3061 CD F7 8F      [17]  165 	call	_cpct_waitVSYNCStart
                            166 ;src/lib/video.c:70: cpct_clearScreen_f64(0);
   3064 21 00 40      [10]  167 	ld	hl, #0x4000
   3067 E5            [11]  168 	push	hl
   3068 26 00         [ 7]  169 	ld	h, #0x00
   306A E5            [11]  170 	push	hl
   306B 26 C0         [ 7]  171 	ld	h, #0xc0
   306D E5            [11]  172 	push	hl
   306E CD BF 8C      [17]  173 	call	_cpct_memset_f64
   3071 C9            [10]  174 	ret
                            175 ;src/lib/video.c:74: void v_blk_scr(void) {
                            176 ;	---------------------------------
                            177 ; Function v_blk_scr
                            178 ; ---------------------------------
   3072                     179 _v_blk_scr::
                            180 ;src/lib/video.c:80: cpct_removeInterruptHandler();
   3072 CD 5D 8A      [17]  181 	call	_cpct_removeInterruptHandler
                            182 ;src/lib/video.c:81: cpct_waitVSYNC();
   3075 CD BB 8E      [17]  183 	call	_cpct_waitVSYNC
                            184 ;src/lib/video.c:82: cpct_setPalette(blank_pal, sizeof(blank_pal));
   3078 21 10 00      [10]  185 	ld	hl, #0x0010
   307B E5            [11]  186 	push	hl
   307C 21 8B 30      [10]  187 	ld	hl, #_v_blk_scr_blank_pal_1_285
   307F E5            [11]  188 	push	hl
   3080 CD 6D 8A      [17]  189 	call	_cpct_setPalette
                            190 ;src/lib/video.c:83: cpct_setBorder(HW_BLACK);
   3083 21 10 14      [10]  191 	ld	hl, #0x1410
   3086 E5            [11]  192 	push	hl
   3087 CD 1B 8B      [17]  193 	call	_cpct_setPALColour
   308A C9            [10]  194 	ret
   308B                     195 _v_blk_scr_blank_pal_1_285:
   308B 14                  196 	.db #0x14	; 20
   308C 14                  197 	.db #0x14	; 20
   308D 14                  198 	.db #0x14	; 20
   308E 14                  199 	.db #0x14	; 20
   308F 14                  200 	.db #0x14	; 20
   3090 14                  201 	.db #0x14	; 20
   3091 14                  202 	.db #0x14	; 20
   3092 14                  203 	.db #0x14	; 20
   3093 14                  204 	.db #0x14	; 20
   3094 14                  205 	.db #0x14	; 20
   3095 14                  206 	.db #0x14	; 20
   3096 14                  207 	.db #0x14	; 20
   3097 14                  208 	.db #0x14	; 20
   3098 14                  209 	.db #0x14	; 20
   3099 14                  210 	.db #0x14	; 20
   309A 14                  211 	.db #0x14	; 20
                            212 ;src/lib/video.c:87: void v_wipe_scr(bool dir) {
                            213 ;	---------------------------------
                            214 ; Function v_wipe_scr
                            215 ; ---------------------------------
   309B                     216 _v_wipe_scr::
                            217 ;src/lib/video.c:91: if (dir) {
   309B 21 02 00      [10]  218 	ld	hl, #2+0
   309E 39            [11]  219 	add	hl, sp
   309F CB 46         [12]  220 	bit	0, (hl)
   30A1 28 29         [12]  221 	jr	Z,00126$
                            222 ;src/lib/video.c:94: for (u8 x = 0; x < 80; x++) {
   30A3 06 00         [ 7]  223 	ld	b, #0x00
   30A5                     224 00111$:
   30A5 78            [ 4]  225 	ld	a, b
   30A6 D6 50         [ 7]  226 	sub	a, #0x50
   30A8 D0            [11]  227 	ret	NC
                            228 ;src/lib/video.c:95: if (x % 2 == 0) {
   30A9 CB 40         [ 8]  229 	bit	0, b
   30AB 20 1C         [12]  230 	jr	NZ,00112$
                            231 ;src/lib/video.c:96: cpct_waitVSYNC();
   30AD C5            [11]  232 	push	bc
   30AE CD BB 8E      [17]  233 	call	_cpct_waitVSYNC
   30B1 C1            [10]  234 	pop	bc
                            235 ;src/lib/video.c:97: v_pos = v_get_pos(x, 0);
   30B2 C5            [11]  236 	push	bc
   30B3 AF            [ 4]  237 	xor	a, a
   30B4 F5            [11]  238 	push	af
   30B5 33            [ 6]  239 	inc	sp
   30B6 C5            [11]  240 	push	bc
   30B7 33            [ 6]  241 	inc	sp
   30B8 CD 8F 32      [17]  242 	call	_v_get_pos
   30BB F1            [10]  243 	pop	af
   30BC 11 02 C8      [10]  244 	ld	de, #0xc802
   30BF D5            [11]  245 	push	de
   30C0 11 00 00      [10]  246 	ld	de, #0x0000
   30C3 D5            [11]  247 	push	de
   30C4 E5            [11]  248 	push	hl
   30C5 CD 39 8F      [17]  249 	call	_cpct_drawSolidBox
   30C8 C1            [10]  250 	pop	bc
   30C9                     251 00112$:
                            252 ;src/lib/video.c:94: for (u8 x = 0; x < 80; x++) {
   30C9 04            [ 4]  253 	inc	b
   30CA 18 D9         [12]  254 	jr	00111$
                            255 ;src/lib/video.c:104: for (u8 x = 78; x > 0; x--) {
   30CC                     256 00126$:
   30CC 0E 4E         [ 7]  257 	ld	c, #0x4e
   30CE                     258 00114$:
   30CE 79            [ 4]  259 	ld	a, c
   30CF B7            [ 4]  260 	or	a, a
   30D0 C8            [11]  261 	ret	Z
                            262 ;src/lib/video.c:105: if (x % 2 == 0) {
   30D1 CB 41         [ 8]  263 	bit	0, c
   30D3 20 1A         [12]  264 	jr	NZ,00115$
                            265 ;src/lib/video.c:106: cpct_waitVSYNC();
   30D5 C5            [11]  266 	push	bc
   30D6 CD BB 8E      [17]  267 	call	_cpct_waitVSYNC
   30D9 C1            [10]  268 	pop	bc
                            269 ;src/lib/video.c:107: v_pos = v_get_pos(x, 0);
   30DA C5            [11]  270 	push	bc
   30DB AF            [ 4]  271 	xor	a, a
   30DC 47            [ 4]  272 	ld	b, a
   30DD C5            [11]  273 	push	bc
   30DE CD 8F 32      [17]  274 	call	_v_get_pos
   30E1 F1            [10]  275 	pop	af
   30E2 11 02 C8      [10]  276 	ld	de, #0xc802
   30E5 D5            [11]  277 	push	de
   30E6 11 00 00      [10]  278 	ld	de, #0x0000
   30E9 D5            [11]  279 	push	de
   30EA E5            [11]  280 	push	hl
   30EB CD 39 8F      [17]  281 	call	_cpct_drawSolidBox
   30EE C1            [10]  282 	pop	bc
   30EF                     283 00115$:
                            284 ;src/lib/video.c:104: for (u8 x = 78; x > 0; x--) {
   30EF 0D            [ 4]  285 	dec	c
   30F0 18 DC         [12]  286 	jr	00114$
                            287 ;src/lib/video.c:115: void v_clr_scr(void) {
                            288 ;	---------------------------------
                            289 ; Function v_clr_scr
                            290 ; ---------------------------------
   30F2                     291 _v_clr_scr::
                            292 ;src/lib/video.c:117: cpct_waitVSYNCStart();
   30F2 CD F7 8F      [17]  293 	call	_cpct_waitVSYNCStart
                            294 ;src/lib/video.c:118: cpct_clearScreen_f64(0);
   30F5 21 00 40      [10]  295 	ld	hl, #0x4000
   30F8 E5            [11]  296 	push	hl
   30F9 26 00         [ 7]  297 	ld	h, #0x00
   30FB E5            [11]  298 	push	hl
   30FC 26 C0         [ 7]  299 	ld	h, #0xc0
   30FE E5            [11]  300 	push	hl
   30FF CD BF 8C      [17]  301 	call	_cpct_memset_f64
   3102 C9            [10]  302 	ret
                            303 ;src/lib/video.c:122: void v_print_c(const char *str, const u8 y, const pen_t pen) {
                            304 ;	---------------------------------
                            305 ; Function v_print_c
                            306 ; ---------------------------------
   3103                     307 _v_print_c::
                            308 ;src/lib/video.c:124: u8 x = (40) - (strlen(str) * 2) / 2;
   3103 C1            [10]  309 	pop	bc
   3104 E1            [10]  310 	pop	hl
   3105 E5            [11]  311 	push	hl
   3106 C5            [11]  312 	push	bc
   3107 E5            [11]  313 	push	hl
   3108 CD 14 8F      [17]  314 	call	_strlen
   310B F1            [10]  315 	pop	af
   310C 29            [11]  316 	add	hl, hl
   310D 4D            [ 4]  317 	ld	c, l
   310E CB 3C         [ 8]  318 	srl	h
   3110 CB 19         [ 8]  319 	rr	c
   3112 3E 28         [ 7]  320 	ld	a, #0x28
   3114 91            [ 4]  321 	sub	a, c
   3115 47            [ 4]  322 	ld	b, a
                            323 ;src/lib/video.c:126: v_print(str, x, y, pen);
   3116 21 05 00      [10]  324 	ld	hl, #5+0
   3119 39            [11]  325 	add	hl, sp
   311A 7E            [ 7]  326 	ld	a, (hl)
   311B F5            [11]  327 	push	af
   311C 33            [ 6]  328 	inc	sp
   311D 21 05 00      [10]  329 	ld	hl, #5+0
   3120 39            [11]  330 	add	hl, sp
   3121 7E            [ 7]  331 	ld	a, (hl)
   3122 F5            [11]  332 	push	af
   3123 33            [ 6]  333 	inc	sp
   3124 C5            [11]  334 	push	bc
   3125 33            [ 6]  335 	inc	sp
   3126 21 05 00      [10]  336 	ld	hl, #5
   3129 39            [11]  337 	add	hl, sp
   312A 4E            [ 7]  338 	ld	c, (hl)
   312B 23            [ 6]  339 	inc	hl
   312C 46            [ 7]  340 	ld	b, (hl)
   312D C5            [11]  341 	push	bc
   312E CD 8F 31      [17]  342 	call	_v_print
   3131 F1            [10]  343 	pop	af
   3132 F1            [10]  344 	pop	af
   3133 33            [ 6]  345 	inc	sp
   3134 C9            [10]  346 	ret
                            347 ;src/lib/video.c:130: void v_print_n(const i64 num, const u8 x, const u8 y, const pen_t pen) {
                            348 ;	---------------------------------
                            349 ; Function v_print_n
                            350 ; ---------------------------------
   3135                     351 _v_print_n::
   3135 DD E5         [15]  352 	push	ix
   3137 DD 21 00 00   [14]  353 	ld	ix,#0
   313B DD 39         [15]  354 	add	ix,sp
   313D 21 D8 FF      [10]  355 	ld	hl, #-40
   3140 39            [11]  356 	add	hl, sp
   3141 F9            [ 6]  357 	ld	sp, hl
                            358 ;src/lib/video.c:135: sprintf(str, "%lld", num);
   3142 21 00 00      [10]  359 	ld	hl, #0x0000
   3145 39            [11]  360 	add	hl, sp
   3146 4D            [ 4]  361 	ld	c, l
   3147 44            [ 4]  362 	ld	b, h
   3148 59            [ 4]  363 	ld	e, c
   3149 50            [ 4]  364 	ld	d, b
   314A C5            [11]  365 	push	bc
   314B DD 66 0B      [19]  366 	ld	h, 11 (ix)
   314E DD 6E 0A      [19]  367 	ld	l, 10 (ix)
   3151 E5            [11]  368 	push	hl
   3152 DD 66 09      [19]  369 	ld	h, 9 (ix)
   3155 DD 6E 08      [19]  370 	ld	l, 8 (ix)
   3158 E5            [11]  371 	push	hl
   3159 DD 66 07      [19]  372 	ld	h, 7 (ix)
   315C DD 6E 06      [19]  373 	ld	l, 6 (ix)
   315F E5            [11]  374 	push	hl
   3160 DD 66 05      [19]  375 	ld	h, 5 (ix)
   3163 DD 6E 04      [19]  376 	ld	l, 4 (ix)
   3166 E5            [11]  377 	push	hl
   3167 21 8A 31      [10]  378 	ld	hl, #___str_0
   316A E5            [11]  379 	push	hl
   316B D5            [11]  380 	push	de
   316C CD D4 8D      [17]  381 	call	_sprintf
   316F 21 0C 00      [10]  382 	ld	hl, #12
   3172 39            [11]  383 	add	hl, sp
   3173 F9            [ 6]  384 	ld	sp, hl
   3174 C1            [10]  385 	pop	bc
                            386 ;src/lib/video.c:136: v_print(str, x, y, pen);
   3175 DD 66 0E      [19]  387 	ld	h, 14 (ix)
   3178 DD 6E 0D      [19]  388 	ld	l, 13 (ix)
   317B E5            [11]  389 	push	hl
   317C DD 7E 0C      [19]  390 	ld	a, 12 (ix)
   317F F5            [11]  391 	push	af
   3180 33            [ 6]  392 	inc	sp
   3181 C5            [11]  393 	push	bc
   3182 CD 8F 31      [17]  394 	call	_v_print
   3185 DD F9         [10]  395 	ld	sp,ix
   3187 DD E1         [14]  396 	pop	ix
   3189 C9            [10]  397 	ret
   318A                     398 ___str_0:
   318A 25 6C 6C 64         399 	.ascii "%lld"
   318E 00                  400 	.db 0x00
                            401 ;src/lib/video.c:140: void v_print(const char *str, const u8 x, const u8 y, const pen_t pen) {
                            402 ;	---------------------------------
                            403 ; Function v_print
                            404 ; ---------------------------------
   318F                     405 _v_print::
   318F DD E5         [15]  406 	push	ix
   3191 DD 21 00 00   [14]  407 	ld	ix,#0
   3195 DD 39         [15]  408 	add	ix,sp
   3197 F5            [11]  409 	push	af
   3198 F5            [11]  410 	push	af
                            411 ;src/lib/video.c:143: u8 cx = x, cy = y;
   3199 DD 7E 06      [19]  412 	ld	a, 6 (ix)
   319C DD 77 FF      [19]  413 	ld	-1 (ix), a
   319F DD 7E 07      [19]  414 	ld	a, 7 (ix)
   31A2 DD 77 FC      [19]  415 	ld	-4 (ix), a
                            416 ;src/lib/video.c:148: while (str[i] != '\0') {
   31A5 DD 7E 08      [19]  417 	ld	a, 8 (ix)
   31A8 3D            [ 4]  418 	dec	a
   31A9 20 04         [12]  419 	jr	NZ,00127$
   31AB 3E 01         [ 7]  420 	ld	a,#0x01
   31AD 18 01         [12]  421 	jr	00128$
   31AF                     422 00127$:
   31AF AF            [ 4]  423 	xor	a,a
   31B0                     424 00128$:
   31B0 DD 77 FD      [19]  425 	ld	-3 (ix), a
   31B3 DD 7E 08      [19]  426 	ld	a, 8 (ix)
   31B6 D6 02         [ 7]  427 	sub	a, #0x02
   31B8 20 04         [12]  428 	jr	NZ,00129$
   31BA 3E 01         [ 7]  429 	ld	a,#0x01
   31BC 18 01         [12]  430 	jr	00130$
   31BE                     431 00129$:
   31BE AF            [ 4]  432 	xor	a,a
   31BF                     433 00130$:
   31BF DD 77 FE      [19]  434 	ld	-2 (ix), a
   31C2 11 00 00      [10]  435 	ld	de, #0x0000
   31C5                     436 00105$:
   31C5 DD 6E 04      [19]  437 	ld	l,4 (ix)
   31C8 DD 66 05      [19]  438 	ld	h,5 (ix)
   31CB 19            [11]  439 	add	hl, de
   31CC 4E            [ 7]  440 	ld	c, (hl)
   31CD 79            [ 4]  441 	ld	a, c
   31CE B7            [ 4]  442 	or	a, a
   31CF 28 57         [12]  443 	jr	Z,00108$
                            444 ;src/lib/video.c:151: switch (pen) {
   31D1 DD 7E FD      [19]  445 	ld	a, -3 (ix)
   31D4 B7            [ 4]  446 	or	a, a
   31D5 20 08         [12]  447 	jr	NZ,00101$
   31D7 DD 7E FE      [19]  448 	ld	a, -2 (ix)
   31DA B7            [ 4]  449 	or	a, a
   31DB 20 07         [12]  450 	jr	NZ,00102$
   31DD 18 0A         [12]  451 	jr	00103$
                            452 ;src/lib/video.c:152: case FONT_BLUE:
   31DF                     453 00101$:
                            454 ;src/lib/video.c:153: offset = 96;
   31DF 21 60 00      [10]  455 	ld	hl, #0x0060
                            456 ;src/lib/video.c:154: break;
   31E2 18 08         [12]  457 	jr	00104$
                            458 ;src/lib/video.c:155: case FONT_WHITE:
   31E4                     459 00102$:
                            460 ;src/lib/video.c:156: offset = 96 + 96;
   31E4 21 C0 00      [10]  461 	ld	hl, #0x00c0
                            462 ;src/lib/video.c:157: break;
   31E7 18 03         [12]  463 	jr	00104$
                            464 ;src/lib/video.c:158: default:
   31E9                     465 00103$:
                            466 ;src/lib/video.c:159: offset = 0;
   31E9 21 00 00      [10]  467 	ld	hl, #0x0000
                            468 ;src/lib/video.c:161: };
   31EC                     469 00104$:
                            470 ;src/lib/video.c:162: idx = (int)str[i] - 32;
   31EC 06 00         [ 7]  471 	ld	b, #0x00
   31EE 79            [ 4]  472 	ld	a, c
   31EF C6 E0         [ 7]  473 	add	a, #0xe0
   31F1 4F            [ 4]  474 	ld	c, a
   31F2 78            [ 4]  475 	ld	a, b
   31F3 CE FF         [ 7]  476 	adc	a, #0xff
   31F5 47            [ 4]  477 	ld	b, a
                            478 ;src/lib/video.c:163: idx += offset;
   31F6 09            [11]  479 	add	hl,bc
                            480 ;src/lib/video.c:165: v_pos = v_get_pos(cx, cy);
   31F7 E5            [11]  481 	push	hl
   31F8 D5            [11]  482 	push	de
   31F9 DD 66 FC      [19]  483 	ld	h, -4 (ix)
   31FC DD 6E FF      [19]  484 	ld	l, -1 (ix)
   31FF E5            [11]  485 	push	hl
   3200 CD 8F 32      [17]  486 	call	_v_get_pos
   3203 F1            [10]  487 	pop	af
   3204 D1            [10]  488 	pop	de
   3205 C1            [10]  489 	pop	bc
                            490 ;src/lib/video.c:166: cpct_drawSprite(font_ts[idx], v_pos, 2, 6);
   3206 E5            [11]  491 	push	hl
   3207 FD E1         [14]  492 	pop	iy
   3209 69            [ 4]  493 	ld	l, c
   320A 60            [ 4]  494 	ld	h, b
   320B 29            [11]  495 	add	hl, hl
   320C 01 11 4D      [10]  496 	ld	bc, #_font_ts
   320F 09            [11]  497 	add	hl, bc
   3210 4E            [ 7]  498 	ld	c, (hl)
   3211 23            [ 6]  499 	inc	hl
   3212 46            [ 7]  500 	ld	b, (hl)
   3213 D5            [11]  501 	push	de
   3214 21 02 06      [10]  502 	ld	hl, #0x0602
   3217 E5            [11]  503 	push	hl
   3218 FD E5         [15]  504 	push	iy
   321A C5            [11]  505 	push	bc
   321B CD 6F 8B      [17]  506 	call	_cpct_drawSprite
   321E D1            [10]  507 	pop	de
                            508 ;src/lib/video.c:169: cx = cx + LINE_P_W;
   321F DD 34 FF      [23]  509 	inc	-1 (ix)
   3222 DD 34 FF      [23]  510 	inc	-1 (ix)
                            511 ;src/lib/video.c:170: i++;
   3225 13            [ 6]  512 	inc	de
   3226 18 9D         [12]  513 	jr	00105$
   3228                     514 00108$:
   3228 DD F9         [10]  515 	ld	sp, ix
   322A DD E1         [14]  516 	pop	ix
   322C C9            [10]  517 	ret
                            518 ;src/lib/video.c:175: void v_reset_pal(void) {
                            519 ;	---------------------------------
                            520 ; Function v_reset_pal
                            521 ; ---------------------------------
   322D                     522 _v_reset_pal::
                            523 ;src/lib/video.c:183: cpct_waitVSYNC();
   322D CD BB 8E      [17]  524 	call	_cpct_waitVSYNC
                            525 ;src/lib/video.c:184: cpct_setPalette(normal_pal, sizeof(normal_pal));
   3230 21 10 00      [10]  526 	ld	hl, #0x0010
   3233 E5            [11]  527 	push	hl
   3234 21 43 32      [10]  528 	ld	hl, #_v_reset_pal_normal_pal_1_307
   3237 E5            [11]  529 	push	hl
   3238 CD 6D 8A      [17]  530 	call	_cpct_setPalette
                            531 ;src/lib/video.c:185: cpct_setBorder(HW_BLACK);
   323B 21 10 14      [10]  532 	ld	hl, #0x1410
   323E E5            [11]  533 	push	hl
   323F CD 1B 8B      [17]  534 	call	_cpct_setPALColour
   3242 C9            [10]  535 	ret
   3243                     536 _v_reset_pal_normal_pal_1_307:
   3243 14                  537 	.db #0x14	; 20
   3244 15                  538 	.db #0x15	; 21
   3245 1C                  539 	.db #0x1c	; 28
   3246 18                  540 	.db #0x18	; 24
   3247 0C                  541 	.db #0x0c	; 12
   3248 16                  542 	.db #0x16	; 22
   3249 17                  543 	.db #0x17	; 23
   324A 00                  544 	.db #0x00	; 0
   324B 1F                  545 	.db #0x1f	; 31
   324C 0E                  546 	.db #0x0e	; 14
   324D 0F                  547 	.db #0x0f	; 15
   324E 12                  548 	.db #0x12	; 18
   324F 13                  549 	.db #0x13	; 19
   3250 0A                  550 	.db #0x0a	; 10
   3251 03                  551 	.db #0x03	; 3
   3252 0B                  552 	.db #0x0b	; 11
                            553 ;src/lib/video.c:189: void v_reset_pal_v(void) {
                            554 ;	---------------------------------
                            555 ; Function v_reset_pal_v
                            556 ; ---------------------------------
   3253                     557 _v_reset_pal_v::
                            558 ;src/lib/video.c:196: cpct_waitVSYNC();
   3253 CD BB 8E      [17]  559 	call	_cpct_waitVSYNC
                            560 ;src/lib/video.c:197: cpct_setPalette(victory_pal, sizeof(victory_pal));
   3256 21 10 00      [10]  561 	ld	hl, #0x0010
   3259 E5            [11]  562 	push	hl
   325A 21 69 32      [10]  563 	ld	hl, #_v_reset_pal_v_victory_pal_1_309
   325D E5            [11]  564 	push	hl
   325E CD 6D 8A      [17]  565 	call	_cpct_setPalette
                            566 ;src/lib/video.c:198: cpct_setBorder(HW_BLACK);
   3261 21 10 14      [10]  567 	ld	hl, #0x1410
   3264 E5            [11]  568 	push	hl
   3265 CD 1B 8B      [17]  569 	call	_cpct_setPALColour
   3268 C9            [10]  570 	ret
   3269                     571 _v_reset_pal_v_victory_pal_1_309:
   3269 14                  572 	.db #0x14	; 20
   326A 1C                  573 	.db #0x1c	; 28
   326B 00                  574 	.db #0x00	; 0
   326C 04                  575 	.db #0x04	; 4
   326D 17                  576 	.db #0x17	; 23
   326E 0B                  577 	.db #0x0b	; 11
   326F 06                  578 	.db #0x06	; 6
   3270 0C                  579 	.db #0x0c	; 12
   3271 1E                  580 	.db #0x1e	; 30
   3272 07                  581 	.db #0x07	; 7
   3273 18                  582 	.db #0x18	; 24
   3274 0E                  583 	.db #0x0e	; 14
   3275 1F                  584 	.db #0x1f	; 31
   3276 1B                  585 	.db #0x1b	; 27
   3277 03                  586 	.db #0x03	; 3
   3278 05                  587 	.db #0x05	; 5
                            588 ;src/lib/video.c:203: void v_wait_VSYNC(u8 n) {
                            589 ;	---------------------------------
                            590 ; Function v_wait_VSYNC
                            591 ; ---------------------------------
   3279                     592 _v_wait_VSYNC::
                            593 ;src/lib/video.c:205: do {
   3279 21 02 00      [10]  594 	ld	hl, #2+0
   327C 39            [11]  595 	add	hl, sp
   327D 4E            [ 7]  596 	ld	c, (hl)
   327E                     597 00103$:
                            598 ;src/lib/video.c:206: cpct_waitVSYNC();
   327E C5            [11]  599 	push	bc
   327F CD BB 8E      [17]  600 	call	_cpct_waitVSYNC
   3282 C1            [10]  601 	pop	bc
                            602 ;src/lib/video.c:207: if (--n) {
   3283 0D            [ 4]  603 	dec	c
   3284 79            [ 4]  604 	ld	a, c
   3285 B7            [ 4]  605 	or	a, a
   3286 28 02         [12]  606 	jr	Z,00104$
                            607 ;src/lib/video.c:208: __asm__("halt");
   3288 76            [ 4]  608 	halt
                            609 ;src/lib/video.c:209: __asm__("halt");
   3289 76            [ 4]  610 	halt
   328A                     611 00104$:
                            612 ;src/lib/video.c:211: } while (n);
   328A 79            [ 4]  613 	ld	a, c
   328B B7            [ 4]  614 	or	a, a
   328C 20 F0         [12]  615 	jr	NZ,00103$
   328E C9            [10]  616 	ret
                            617 ;src/lib/video.c:215: inline u8* v_get_pos(const u8 x, const u8 y) {
                            618 ;	---------------------------------
                            619 ; Function v_get_pos
                            620 ; ---------------------------------
   328F                     621 _v_get_pos::
                            622 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   328F 21 03 00      [10]  623 	ld	hl, #3+0
   3292 39            [11]  624 	add	hl, sp
   3293 7E            [ 7]  625 	ld	a, (hl)
   3294 F5            [11]  626 	push	af
   3295 33            [ 6]  627 	inc	sp
   3296 21 03 00      [10]  628 	ld	hl, #3+0
   3299 39            [11]  629 	add	hl, sp
   329A 7E            [ 7]  630 	ld	a, (hl)
   329B F5            [11]  631 	push	af
   329C 33            [ 6]  632 	inc	sp
   329D 21 00 C0      [10]  633 	ld	hl, #0xc000
   32A0 E5            [11]  634 	push	hl
   32A1 CD E1 8F      [17]  635 	call	_cpct_getScreenPtr
   32A4 C9            [10]  636 	ret
                            637 ;src/lib/video.c:221: void v_flash_brd(u8 col, u16 n) {
                            638 ;	---------------------------------
                            639 ; Function v_flash_brd
                            640 ; ---------------------------------
   32A5                     641 _v_flash_brd::
                            642 ;src/lib/video.c:223: cpct_setPALColour(16, col);
   32A5 21 02 00      [10]  643 	ld	hl, #2+0
   32A8 39            [11]  644 	add	hl, sp
   32A9 56            [ 7]  645 	ld	d, (hl)
   32AA 1E 10         [ 7]  646 	ld	e,#0x10
   32AC D5            [11]  647 	push	de
   32AD CD 1B 8B      [17]  648 	call	_cpct_setPALColour
                            649 ;src/lib/video.c:224: u_wait(n * 15);
   32B0 21 03 00      [10]  650 	ld	hl, #3
   32B3 39            [11]  651 	add	hl, sp
   32B4 4E            [ 7]  652 	ld	c, (hl)
   32B5 23            [ 6]  653 	inc	hl
   32B6 46            [ 7]  654 	ld	b, (hl)
   32B7 69            [ 4]  655 	ld	l, c
   32B8 60            [ 4]  656 	ld	h, b
   32B9 29            [11]  657 	add	hl, hl
   32BA 09            [11]  658 	add	hl, bc
   32BB 29            [11]  659 	add	hl, hl
   32BC 09            [11]  660 	add	hl, bc
   32BD 29            [11]  661 	add	hl, hl
   32BE 09            [11]  662 	add	hl, bc
   32BF E5            [11]  663 	push	hl
   32C0 CD 0B 29      [17]  664 	call	_u_wait
                            665 ;src/lib/video.c:225: cpct_setPALColour(16, HW_BLACK);
   32C3 21 10 14      [10]  666 	ld	hl, #0x1410
   32C6 E3            [19]  667 	ex	(sp),hl
   32C7 CD 1B 8B      [17]  668 	call	_cpct_setPALColour
   32CA C9            [10]  669 	ret
                            670 ;src/lib/video.c:229: void v_reset_timers(void) {
                            671 ;	---------------------------------
                            672 ; Function v_reset_timers
                            673 ; ---------------------------------
   32CB                     674 _v_reset_timers::
                            675 ;src/lib/video.c:231: v_int_idx = 0;
   32CB 21 6F A0      [10]  676 	ld	hl,#_v_int_idx + 0
   32CE 36 00         [10]  677 	ld	(hl), #0x00
                            678 ;src/lib/video.c:232: v_pal_idx = 0;
   32D0 21 70 A0      [10]  679 	ld	hl,#_v_pal_idx + 0
   32D3 36 00         [10]  680 	ld	(hl), #0x00
                            681 ;src/lib/video.c:233: v_frame_c = 0;
   32D5 21 71 A0      [10]  682 	ld	hl,#_v_frame_c + 0
   32D8 36 00         [10]  683 	ld	(hl), #0x00
   32DA C9            [10]  684 	ret
                            685 ;src/lib/video.c:237: void v_interrupt(void) {
                            686 ;	---------------------------------
                            687 ; Function v_interrupt
                            688 ; ---------------------------------
   32DB                     689 _v_interrupt::
                            690 ;src/lib/video.c:271: if (v_int_idx == 0)
   32DB 3A 6F A0      [13]  691 	ld	a,(#_v_int_idx + 0)
   32DE B7            [ 4]  692 	or	a, a
   32DF 20 1A         [12]  693 	jr	NZ,00104$
                            694 ;src/lib/video.c:272: cpct_setPalette(anim_pal[v_pal_idx], 9);
   32E1 01 96 33      [10]  695 	ld	bc, #_v_interrupt_anim_pal_1_321+0
   32E4 ED 5B 70 A0   [20]  696 	ld	de, (_v_pal_idx)
   32E8 16 00         [ 7]  697 	ld	d, #0x00
   32EA 6B            [ 4]  698 	ld	l, e
   32EB 62            [ 4]  699 	ld	h, d
   32EC 29            [11]  700 	add	hl, hl
   32ED 29            [11]  701 	add	hl, hl
   32EE 29            [11]  702 	add	hl, hl
   32EF 19            [11]  703 	add	hl, de
   32F0 09            [11]  704 	add	hl, bc
   32F1 01 09 00      [10]  705 	ld	bc, #0x0009
   32F4 C5            [11]  706 	push	bc
   32F5 E5            [11]  707 	push	hl
   32F6 CD 6D 8A      [17]  708 	call	_cpct_setPalette
   32F9 18 11         [12]  709 	jr	00105$
   32FB                     710 00104$:
                            711 ;src/lib/video.c:273: else if (v_int_idx == 1)
   32FB 3A 6F A0      [13]  712 	ld	a,(#_v_int_idx + 0)
   32FE 3D            [ 4]  713 	dec	a
   32FF 20 0B         [12]  714 	jr	NZ,00105$
                            715 ;src/lib/video.c:274: cpct_setPalette(fixed_pal, 16);
   3301 21 10 00      [10]  716 	ld	hl, #0x0010
   3304 E5            [11]  717 	push	hl
   3305 21 D5 33      [10]  718 	ld	hl, #_v_interrupt_fixed_pal_1_321
   3308 E5            [11]  719 	push	hl
   3309 CD 6D 8A      [17]  720 	call	_cpct_setPalette
   330C                     721 00105$:
                            722 ;src/lib/video.c:276: if (v_frame_c == 0)
   330C 3A 71 A0      [13]  723 	ld	a,(#_v_frame_c + 0)
   330F B7            [ 4]  724 	or	a, a
   3310 20 18         [12]  725 	jr	NZ,00107$
                            726 ;src/lib/video.c:277: v_pal_idx = ++v_pal_idx % 7;
   3312 21 70 A0      [10]  727 	ld	hl, #_v_pal_idx+0
   3315 34            [11]  728 	inc	(hl)
   3316 3E 07         [ 7]  729 	ld	a, #0x07
   3318 F5            [11]  730 	push	af
   3319 33            [ 6]  731 	inc	sp
   331A 3A 70 A0      [13]  732 	ld	a, (_v_pal_idx)
   331D F5            [11]  733 	push	af
   331E 33            [ 6]  734 	inc	sp
   331F CD 14 8C      [17]  735 	call	__moduchar
   3322 F1            [10]  736 	pop	af
   3323 FD 21 70 A0   [14]  737 	ld	iy, #_v_pal_idx
   3327 FD 75 00      [19]  738 	ld	0 (iy), l
   332A                     739 00107$:
                            740 ;src/lib/video.c:280: if (v_int_idx == 2)
   332A 3A 6F A0      [13]  741 	ld	a,(#_v_int_idx + 0)
   332D D6 02         [ 7]  742 	sub	a, #0x02
   332F 20 03         [12]  743 	jr	NZ,00109$
                            744 ;src/lib/video.c:281: cpct_scanKeyboard_if();
   3331 CD 45 8E      [17]  745 	call	_cpct_scanKeyboard_if
   3334                     746 00109$:
                            747 ;src/lib/video.c:284: if (t_in_titles && g_music_sfx)
   3334 21 5A 9E      [10]  748 	ld	hl,#_t_in_titles+0
   3337 CB 46         [12]  749 	bit	0, (hl)
   3339 28 11         [12]  750 	jr	Z,00113$
   333B 21 C2 9B      [10]  751 	ld	hl,#_g_music_sfx+0
   333E CB 46         [12]  752 	bit	0, (hl)
   3340 28 0A         [12]  753 	jr	Z,00113$
                            754 ;src/lib/video.c:285: if (v_int_idx == 3)
   3342 3A 6F A0      [13]  755 	ld	a,(#_v_int_idx + 0)
   3345 D6 03         [ 7]  756 	sub	a, #0x03
   3347 20 03         [12]  757 	jr	NZ,00113$
                            758 ;src/lib/video.c:286: PlaySound();
   3349 CD E8 66      [17]  759 	call	_PlaySound
   334C                     760 00113$:
                            761 ;src/lib/video.c:289: v_int_idx = ++v_int_idx % 6;
   334C 21 6F A0      [10]  762 	ld	hl, #_v_int_idx+0
   334F 34            [11]  763 	inc	(hl)
   3350 3E 06         [ 7]  764 	ld	a, #0x06
   3352 F5            [11]  765 	push	af
   3353 33            [ 6]  766 	inc	sp
   3354 3A 6F A0      [13]  767 	ld	a, (_v_int_idx)
   3357 F5            [11]  768 	push	af
   3358 33            [ 6]  769 	inc	sp
   3359 CD 14 8C      [17]  770 	call	__moduchar
   335C F1            [10]  771 	pop	af
   335D FD 21 6F A0   [14]  772 	ld	iy, #_v_int_idx
   3361 FD 75 00      [19]  773 	ld	0 (iy), l
                            774 ;src/lib/video.c:290: v_frame_c = ++v_frame_c % 50;
   3364 21 71 A0      [10]  775 	ld	hl, #_v_frame_c+0
   3367 34            [11]  776 	inc	(hl)
   3368 3E 32         [ 7]  777 	ld	a, #0x32
   336A F5            [11]  778 	push	af
   336B 33            [ 6]  779 	inc	sp
   336C 3A 71 A0      [13]  780 	ld	a, (_v_frame_c)
   336F F5            [11]  781 	push	af
   3370 33            [ 6]  782 	inc	sp
   3371 CD 14 8C      [17]  783 	call	__moduchar
                            784 ;src/lib/video.c:291: v_cycle_c = ++v_cycle_c % 12000;
   3374 7D            [ 4]  785 	ld	a,l
   3375 32 71 A0      [13]  786 	ld	(#_v_frame_c + 0),a
   3378 F1            [10]  787 	pop	af
   3379 FD 21 72 A0   [14]  788 	ld	iy,#_v_cycle_c
   337D FD 34 00      [23]  789 	inc	0 (iy)
   3380 20 03         [12]  790 	jr	NZ,00151$
   3382 FD 34 01      [23]  791 	inc	1 (iy)
   3385                     792 00151$:
   3385 21 E0 2E      [10]  793 	ld	hl, #0x2ee0
   3388 E5            [11]  794 	push	hl
   3389 2A 72 A0      [16]  795 	ld	hl, (_v_cycle_c)
   338C E5            [11]  796 	push	hl
   338D CD 20 8C      [17]  797 	call	__moduint
   3390 F1            [10]  798 	pop	af
   3391 F1            [10]  799 	pop	af
   3392 22 72 A0      [16]  800 	ld	(_v_cycle_c), hl
   3395 C9            [10]  801 	ret
   3396                     802 _v_interrupt_anim_pal_1_321:
   3396 14                  803 	.db #0x14	; 20
   3397 0C                  804 	.db #0x0c	; 12
   3398 15                  805 	.db #0x15	; 21
   3399 17                  806 	.db #0x17	; 23
   339A 13                  807 	.db #0x13	; 19
   339B 0B                  808 	.db #0x0b	; 11
   339C 13                  809 	.db #0x13	; 19
   339D 17                  810 	.db #0x17	; 23
   339E 15                  811 	.db #0x15	; 21
   339F 14                  812 	.db #0x14	; 20
   33A0 0C                  813 	.db #0x0c	; 12
   33A1 15                  814 	.db #0x15	; 21
   33A2 15                  815 	.db #0x15	; 21
   33A3 17                  816 	.db #0x17	; 23
   33A4 13                  817 	.db #0x13	; 19
   33A5 0B                  818 	.db #0x0b	; 11
   33A6 13                  819 	.db #0x13	; 19
   33A7 17                  820 	.db #0x17	; 23
   33A8 14                  821 	.db #0x14	; 20
   33A9 0C                  822 	.db #0x0c	; 12
   33AA 17                  823 	.db #0x17	; 23
   33AB 15                  824 	.db #0x15	; 21
   33AC 15                  825 	.db #0x15	; 21
   33AD 17                  826 	.db #0x17	; 23
   33AE 13                  827 	.db #0x13	; 19
   33AF 0B                  828 	.db #0x0b	; 11
   33B0 13                  829 	.db #0x13	; 19
   33B1 14                  830 	.db #0x14	; 20
   33B2 0C                  831 	.db #0x0c	; 12
   33B3 13                  832 	.db #0x13	; 19
   33B4 17                  833 	.db #0x17	; 23
   33B5 15                  834 	.db #0x15	; 21
   33B6 15                  835 	.db #0x15	; 21
   33B7 17                  836 	.db #0x17	; 23
   33B8 13                  837 	.db #0x13	; 19
   33B9 0B                  838 	.db #0x0b	; 11
   33BA 14                  839 	.db #0x14	; 20
   33BB 0C                  840 	.db #0x0c	; 12
   33BC 0B                  841 	.db #0x0b	; 11
   33BD 13                  842 	.db #0x13	; 19
   33BE 17                  843 	.db #0x17	; 23
   33BF 15                  844 	.db #0x15	; 21
   33C0 15                  845 	.db #0x15	; 21
   33C1 17                  846 	.db #0x17	; 23
   33C2 13                  847 	.db #0x13	; 19
   33C3 14                  848 	.db #0x14	; 20
   33C4 0C                  849 	.db #0x0c	; 12
   33C5 13                  850 	.db #0x13	; 19
   33C6 0B                  851 	.db #0x0b	; 11
   33C7 13                  852 	.db #0x13	; 19
   33C8 17                  853 	.db #0x17	; 23
   33C9 15                  854 	.db #0x15	; 21
   33CA 15                  855 	.db #0x15	; 21
   33CB 17                  856 	.db #0x17	; 23
   33CC 14                  857 	.db #0x14	; 20
   33CD 0C                  858 	.db #0x0c	; 12
   33CE 17                  859 	.db #0x17	; 23
   33CF 13                  860 	.db #0x13	; 19
   33D0 0B                  861 	.db #0x0b	; 11
   33D1 13                  862 	.db #0x13	; 19
   33D2 17                  863 	.db #0x17	; 23
   33D3 15                  864 	.db #0x15	; 21
   33D4 15                  865 	.db #0x15	; 21
   33D5                     866 _v_interrupt_fixed_pal_1_321:
   33D5 14                  867 	.db #0x14	; 20
   33D6 15                  868 	.db #0x15	; 21
   33D7 1C                  869 	.db #0x1c	; 28
   33D8 18                  870 	.db #0x18	; 24
   33D9 0C                  871 	.db #0x0c	; 12
   33DA 16                  872 	.db #0x16	; 22
   33DB 17                  873 	.db #0x17	; 23
   33DC 00                  874 	.db #0x00	; 0
   33DD 1F                  875 	.db #0x1f	; 31
   33DE 0E                  876 	.db #0x0e	; 14
   33DF 0F                  877 	.db #0x0f	; 15
   33E0 12                  878 	.db #0x12	; 18
   33E1 13                  879 	.db #0x13	; 19
   33E2 0A                  880 	.db #0x0a	; 10
   33E3 03                  881 	.db #0x03	; 3
   33E4 0B                  882 	.db #0x0b	; 11
                            883 ;src/lib/video.c:295: void v_draw_launch(void) {
                            884 ;	---------------------------------
                            885 ; Function v_draw_launch
                            886 ; ---------------------------------
   33E5                     887 _v_draw_launch::
                            888 ;src/lib/video.c:300: GRID_LOC_Y + (launch_st.y * GRID_P_H) + 4);
   33E5 3A 58 30      [13]  889 	ld	a, (#_launch_st + 1)
   33E8 4F            [ 4]  890 	ld	c, a
   33E9 87            [ 4]  891 	add	a, a
   33EA 87            [ 4]  892 	add	a, a
   33EB 81            [ 4]  893 	add	a, c
   33EC 87            [ 4]  894 	add	a, a
   33ED C6 16         [ 7]  895 	add	a, #0x16
   33EF 57            [ 4]  896 	ld	d, a
                            897 ;src/lib/video.c:299: v_pos = v_get_pos(GRID_LOC_X + (launch_st.x * GRID_P_W) - 2,
   33F0 3A 57 30      [13]  898 	ld	a, (#_launch_st + 0)
   33F3 4F            [ 4]  899 	ld	c, a
   33F4 87            [ 4]  900 	add	a, a
   33F5 81            [ 4]  901 	add	a, c
                            902 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   33F6 5F            [ 4]  903 	ld	e,a
   33F7 D5            [11]  904 	push	de
   33F8 21 00 C0      [10]  905 	ld	hl, #0xc000
   33FB E5            [11]  906 	push	hl
   33FC CD E1 8F      [17]  907 	call	_cpct_getScreenPtr
                            908 ;src/lib/video.c:300: GRID_LOC_Y + (launch_st.y * GRID_P_H) + 4);
                            909 ;src/lib/video.c:302: cpct_drawSpriteMasked(img_launch, v_pos, 7, 20);
   33FF 01 44 64      [10]  910 	ld	bc, #_img_launch+0
   3402 11 07 14      [10]  911 	ld	de, #0x1407
   3405 D5            [11]  912 	push	de
   3406 E5            [11]  913 	push	hl
   3407 C5            [11]  914 	push	bc
   3408 CD 90 8C      [17]  915 	call	_cpct_drawSpriteMasked
   340B C9            [10]  916 	ret
                            917 ;src/lib/video.c:307: void v_draw_player(void) {
                            918 ;	---------------------------------
                            919 ; Function v_draw_player
                            920 ; ---------------------------------
   340C                     921 _v_draw_player::
   340C DD E5         [15]  922 	push	ix
   340E DD 21 00 00   [14]  923 	ld	ix,#0
   3412 DD 39         [15]  924 	add	ix,sp
   3414 21 ED FF      [10]  925 	ld	hl, #-19
   3417 39            [11]  926 	add	hl, sp
   3418 F9            [ 6]  927 	ld	sp, hl
                            928 ;src/lib/video.c:316: if (!g_player.explode) {
   3419 3A D0 9D      [13]  929 	ld	a,(#_g_player + 8)
   341C DD 77 FD      [19]  930 	ld	-3 (ix), a
                            931 ;src/lib/video.c:317: v_pos = v_get_pos(g_player.sx, g_player.sy);
   341F 3A CD 9D      [13]  932 	ld	a,(#_g_player + 5)
   3422 DD 77 F9      [19]  933 	ld	-7 (ix), a
   3425 3A CC 9D      [13]  934 	ld	a,(#_g_player + 4)
   3428 DD 77 FC      [19]  935 	ld	-4 (ix), a
                            936 ;src/lib/video.c:316: if (!g_player.explode) {
   342B DD CB FD 46   [20]  937 	bit	0, -3 (ix)
   342F 20 43         [12]  938 	jr	NZ,00102$
                            939 ;src/lib/video.c:317: v_pos = v_get_pos(g_player.sx, g_player.sy);
   3431 DD 56 F9      [19]  940 	ld	d, -7 (ix)
                            941 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3434 DD 5E FC      [19]  942 	ld	e, -4 (ix)
   3437 D5            [11]  943 	push	de
   3438 21 00 C0      [10]  944 	ld	hl, #0xc000
   343B E5            [11]  945 	push	hl
   343C CD E1 8F      [17]  946 	call	_cpct_getScreenPtr
   343F 4D            [ 4]  947 	ld	c, l
   3440 44            [ 4]  948 	ld	b, h
                            949 ;src/lib/video.c:317: v_pos = v_get_pos(g_player.sx, g_player.sy);
                            950 ;src/lib/video.c:318: idx = g_player.boost ? spr_idx[g_player.dir] : b_spr_idx[g_player.dir];
   3441 21 CF 9D      [10]  951 	ld	hl, #_g_player + 7
   3444 5E            [ 7]  952 	ld	e, (hl)
   3445 3A CE 9D      [13]  953 	ld	a, (#_g_player + 6)
   3448 6F            [ 4]  954 	ld	l, a
   3449 17            [ 4]  955 	rla
   344A 9F            [ 4]  956 	sbc	a, a
   344B 67            [ 4]  957 	ld	h, a
   344C CB 43         [ 8]  958 	bit	0, e
   344E 28 07         [12]  959 	jr	Z,00111$
   3450 11 33 36      [10]  960 	ld	de, #_v_draw_player_spr_idx_1_328+0
   3453 19            [11]  961 	add	hl, de
   3454 6E            [ 7]  962 	ld	l, (hl)
   3455 18 07         [12]  963 	jr	00112$
   3457                     964 00111$:
   3457 11 37 36      [10]  965 	ld	de, #_v_draw_player_b_spr_idx_1_328+0
   345A 19            [11]  966 	add	hl,de
   345B EB            [ 4]  967 	ex	de,hl
   345C 1A            [ 7]  968 	ld	a, (de)
   345D 6F            [ 4]  969 	ld	l, a
   345E                     970 00112$:
                            971 ;src/lib/video.c:319: cpct_drawSpriteMasked(player_ts[idx], v_pos, SZ_PLAYER_PX, 
   345E 11 5C 71      [10]  972 	ld	de, #_player_ts+0
   3461 26 00         [ 7]  973 	ld	h, #0x00
   3463 29            [11]  974 	add	hl, hl
   3464 19            [11]  975 	add	hl, de
   3465 5E            [ 7]  976 	ld	e, (hl)
   3466 23            [ 6]  977 	inc	hl
   3467 56            [ 7]  978 	ld	d, (hl)
   3468 21 05 14      [10]  979 	ld	hl, #0x1405
   346B E5            [11]  980 	push	hl
   346C C5            [11]  981 	push	bc
   346D D5            [11]  982 	push	de
   346E CD 90 8C      [17]  983 	call	_cpct_drawSpriteMasked
   3471 C3 2E 36      [10]  984 	jp	00109$
   3474                     985 00102$:
                            986 ;src/lib/video.c:322: ex = g_player.sx;
                            987 ;src/lib/video.c:323: ey = g_player.sy;
                            988 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3474 DD 66 F9      [19]  989 	ld	h, -7 (ix)
   3477 DD 6E FC      [19]  990 	ld	l, -4 (ix)
   347A E5            [11]  991 	push	hl
   347B 21 00 C0      [10]  992 	ld	hl, #0xc000
   347E E5            [11]  993 	push	hl
   347F CD E1 8F      [17]  994 	call	_cpct_getScreenPtr
   3482 DD 74 F4      [19]  995 	ld	-12 (ix), h
   3485 DD 75 F3      [19]  996 	ld	-13 (ix), l
   3488 DD 75 FA      [19]  997 	ld	-6 (ix), l
   348B DD 7E F4      [19]  998 	ld	a, -12 (ix)
   348E DD 77 FB      [19]  999 	ld	-5 (ix), a
                           1000 ;src/lib/video.c:325: cpct_drawSpriteMasked(explode_ts[g_player.explode_f], e_pos,
   3491 3A D1 9D      [13] 1001 	ld	a,(#(_g_player + 0x0009) + 0)
   3494 DD 77 FD      [19] 1002 	ld	-3 (ix), a
   3497 DD 77 FE      [19] 1003 	ld	-2 (ix), a
   349A DD 36 FF 00   [19] 1004 	ld	-1 (ix), #0x00
   349E DD CB FE 26   [23] 1005 	sla	-2 (ix)
   34A2 DD CB FF 16   [23] 1006 	rl	-1 (ix)
   34A6 3E A4         [ 7] 1007 	ld	a, #<(_explode_ts)
   34A8 DD 86 FE      [19] 1008 	add	a, -2 (ix)
   34AB DD 77 FE      [19] 1009 	ld	-2 (ix), a
   34AE 3E 7A         [ 7] 1010 	ld	a, #>(_explode_ts)
   34B0 DD 8E FF      [19] 1011 	adc	a, -1 (ix)
   34B3 DD 77 FF      [19] 1012 	ld	-1 (ix), a
   34B6 DD 6E FE      [19] 1013 	ld	l,-2 (ix)
   34B9 DD 66 FF      [19] 1014 	ld	h,-1 (ix)
   34BC 7E            [ 7] 1015 	ld	a, (hl)
   34BD DD 77 FE      [19] 1016 	ld	-2 (ix), a
   34C0 23            [ 6] 1017 	inc	hl
   34C1 7E            [ 7] 1018 	ld	a, (hl)
   34C2 DD 77 FF      [19] 1019 	ld	-1 (ix), a
   34C5 21 03 0A      [10] 1020 	ld	hl, #0x0a03
   34C8 E5            [11] 1021 	push	hl
   34C9 DD 6E FA      [19] 1022 	ld	l,-6 (ix)
   34CC DD 66 FB      [19] 1023 	ld	h,-5 (ix)
   34CF E5            [11] 1024 	push	hl
   34D0 DD 6E FE      [19] 1025 	ld	l,-2 (ix)
   34D3 DD 66 FF      [19] 1026 	ld	h,-1 (ix)
   34D6 E5            [11] 1027 	push	hl
   34D7 CD 90 8C      [17] 1028 	call	_cpct_drawSpriteMasked
                           1029 ;src/lib/video.c:327: ex += SZ_GRID_PX;
   34DA DD 7E FC      [19] 1030 	ld	a, -4 (ix)
   34DD C6 03         [ 7] 1031 	add	a, #0x03
   34DF DD 77 F0      [19] 1032 	ld	-16 (ix), a
                           1033 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   34E2 DD 66 F9      [19] 1034 	ld	h, -7 (ix)
   34E5 DD 6E F0      [19] 1035 	ld	l, -16 (ix)
   34E8 E5            [11] 1036 	push	hl
   34E9 21 00 C0      [10] 1037 	ld	hl, #0xc000
   34EC E5            [11] 1038 	push	hl
   34ED CD E1 8F      [17] 1039 	call	_cpct_getScreenPtr
   34F0 DD 74 F2      [19] 1040 	ld	-14 (ix), h
   34F3 DD 75 F1      [19] 1041 	ld	-15 (ix), l
   34F6 DD 75 FE      [19] 1042 	ld	-2 (ix), l
   34F9 DD 7E F2      [19] 1043 	ld	a, -14 (ix)
   34FC DD 77 FF      [19] 1044 	ld	-1 (ix), a
                           1045 ;src/lib/video.c:329: cpct_drawSpriteMasked(explode_ts[g_player.explode_f], e_pos,
   34FF 3A D1 9D      [13] 1046 	ld	a,(#(_g_player + 0x0009) + 0)
   3502 DD 77 FA      [19] 1047 	ld	-6 (ix), a
   3505 DD 77 FA      [19] 1048 	ld	-6 (ix), a
   3508 DD 36 FB 00   [19] 1049 	ld	-5 (ix), #0x00
   350C DD CB FA 26   [23] 1050 	sla	-6 (ix)
   3510 DD CB FB 16   [23] 1051 	rl	-5 (ix)
   3514 3E A4         [ 7] 1052 	ld	a, #<(_explode_ts)
   3516 DD 86 FA      [19] 1053 	add	a, -6 (ix)
   3519 DD 77 FA      [19] 1054 	ld	-6 (ix), a
   351C 3E 7A         [ 7] 1055 	ld	a, #>(_explode_ts)
   351E DD 8E FB      [19] 1056 	adc	a, -5 (ix)
   3521 DD 77 FB      [19] 1057 	ld	-5 (ix), a
   3524 DD 6E FA      [19] 1058 	ld	l,-6 (ix)
   3527 DD 66 FB      [19] 1059 	ld	h,-5 (ix)
   352A 7E            [ 7] 1060 	ld	a, (hl)
   352B DD 77 FA      [19] 1061 	ld	-6 (ix), a
   352E 23            [ 6] 1062 	inc	hl
   352F 7E            [ 7] 1063 	ld	a, (hl)
   3530 DD 77 FB      [19] 1064 	ld	-5 (ix), a
   3533 21 03 0A      [10] 1065 	ld	hl, #0x0a03
   3536 E5            [11] 1066 	push	hl
   3537 DD 6E FE      [19] 1067 	ld	l,-2 (ix)
   353A DD 66 FF      [19] 1068 	ld	h,-1 (ix)
   353D E5            [11] 1069 	push	hl
   353E DD 6E FA      [19] 1070 	ld	l,-6 (ix)
   3541 DD 66 FB      [19] 1071 	ld	h,-5 (ix)
   3544 E5            [11] 1072 	push	hl
   3545 CD 90 8C      [17] 1073 	call	_cpct_drawSpriteMasked
                           1074 ;src/lib/video.c:331: ey += SZ_GRID_PY;
   3548 DD 7E F9      [19] 1075 	ld	a, -7 (ix)
   354B C6 0A         [ 7] 1076 	add	a, #0x0a
                           1077 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   354D DD 77 EF      [19] 1078 	ld	-17 (ix), a
   3550 F5            [11] 1079 	push	af
   3551 33            [ 6] 1080 	inc	sp
   3552 DD 7E F0      [19] 1081 	ld	a, -16 (ix)
   3555 F5            [11] 1082 	push	af
   3556 33            [ 6] 1083 	inc	sp
   3557 21 00 C0      [10] 1084 	ld	hl, #0xc000
   355A E5            [11] 1085 	push	hl
   355B CD E1 8F      [17] 1086 	call	_cpct_getScreenPtr
   355E DD 74 F6      [19] 1087 	ld	-10 (ix), h
                           1088 ;src/lib/video.c:332: e_pos = v_get_pos(ex, ey);
   3561 DD 75 F5      [19] 1089 	ld	-11 (ix), l
   3564 DD 75 ED      [19] 1090 	ld	-19 (ix), l
   3567 DD 7E F6      [19] 1091 	ld	a, -10 (ix)
   356A DD 77 EE      [19] 1092 	ld	-18 (ix), a
                           1093 ;src/lib/video.c:333: cpct_drawSpriteMasked(explode_ts[g_player.explode_f], e_pos,
   356D DD 7E ED      [19] 1094 	ld	a, -19 (ix)
   3570 DD 77 FE      [19] 1095 	ld	-2 (ix), a
   3573 DD 7E EE      [19] 1096 	ld	a, -18 (ix)
   3576 DD 77 FF      [19] 1097 	ld	-1 (ix), a
   3579 3A D1 9D      [13] 1098 	ld	a,(#(_g_player + 0x0009) + 0)
   357C DD 77 FA      [19] 1099 	ld	-6 (ix), a
   357F DD 77 FA      [19] 1100 	ld	-6 (ix), a
   3582 DD 36 FB 00   [19] 1101 	ld	-5 (ix), #0x00
   3586 DD CB FA 26   [23] 1102 	sla	-6 (ix)
   358A DD CB FB 16   [23] 1103 	rl	-5 (ix)
   358E 3E A4         [ 7] 1104 	ld	a, #<(_explode_ts)
   3590 DD 86 FA      [19] 1105 	add	a, -6 (ix)
   3593 DD 77 FA      [19] 1106 	ld	-6 (ix), a
   3596 3E 7A         [ 7] 1107 	ld	a, #>(_explode_ts)
   3598 DD 8E FB      [19] 1108 	adc	a, -5 (ix)
   359B DD 77 FB      [19] 1109 	ld	-5 (ix), a
   359E DD 6E FA      [19] 1110 	ld	l,-6 (ix)
   35A1 DD 66 FB      [19] 1111 	ld	h,-5 (ix)
   35A4 7E            [ 7] 1112 	ld	a, (hl)
   35A5 DD 77 FA      [19] 1113 	ld	-6 (ix), a
   35A8 23            [ 6] 1114 	inc	hl
   35A9 7E            [ 7] 1115 	ld	a, (hl)
   35AA DD 77 FB      [19] 1116 	ld	-5 (ix), a
   35AD 21 03 0A      [10] 1117 	ld	hl, #0x0a03
   35B0 E5            [11] 1118 	push	hl
   35B1 DD 6E FE      [19] 1119 	ld	l,-2 (ix)
   35B4 DD 66 FF      [19] 1120 	ld	h,-1 (ix)
   35B7 E5            [11] 1121 	push	hl
   35B8 DD 6E FA      [19] 1122 	ld	l,-6 (ix)
   35BB DD 66 FB      [19] 1123 	ld	h,-5 (ix)
   35BE E5            [11] 1124 	push	hl
   35BF CD 90 8C      [17] 1125 	call	_cpct_drawSpriteMasked
                           1126 ;src/lib/video.c:335: ex -= SZ_GRID_PX;
   35C2 DD 7E F0      [19] 1127 	ld	a, -16 (ix)
   35C5 C6 FD         [ 7] 1128 	add	a, #0xfd
   35C7 47            [ 4] 1129 	ld	b, a
                           1130 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   35C8 DD 7E EF      [19] 1131 	ld	a, -17 (ix)
   35CB F5            [11] 1132 	push	af
   35CC 33            [ 6] 1133 	inc	sp
   35CD C5            [11] 1134 	push	bc
   35CE 33            [ 6] 1135 	inc	sp
   35CF 21 00 C0      [10] 1136 	ld	hl, #0xc000
   35D2 E5            [11] 1137 	push	hl
   35D3 CD E1 8F      [17] 1138 	call	_cpct_getScreenPtr
   35D6 DD 74 F8      [19] 1139 	ld	-8 (ix), h
   35D9 DD 75 F7      [19] 1140 	ld	-9 (ix), l
   35DC DD 75 FE      [19] 1141 	ld	-2 (ix), l
   35DF DD 7E F8      [19] 1142 	ld	a, -8 (ix)
   35E2 DD 77 FF      [19] 1143 	ld	-1 (ix), a
                           1144 ;src/lib/video.c:337: cpct_drawSpriteMasked(explode_ts[g_player.explode_f], e_pos,
   35E5 3A D1 9D      [13] 1145 	ld	a,(#(_g_player + 0x0009) + 0)
   35E8 DD 77 FA      [19] 1146 	ld	-6 (ix), a
   35EB DD 77 FA      [19] 1147 	ld	-6 (ix), a
   35EE DD 36 FB 00   [19] 1148 	ld	-5 (ix), #0x00
   35F2 DD CB FA 26   [23] 1149 	sla	-6 (ix)
   35F6 DD CB FB 16   [23] 1150 	rl	-5 (ix)
   35FA 3E A4         [ 7] 1151 	ld	a, #<(_explode_ts)
   35FC DD 86 FA      [19] 1152 	add	a, -6 (ix)
   35FF DD 77 FA      [19] 1153 	ld	-6 (ix), a
   3602 3E 7A         [ 7] 1154 	ld	a, #>(_explode_ts)
   3604 DD 8E FB      [19] 1155 	adc	a, -5 (ix)
   3607 DD 77 FB      [19] 1156 	ld	-5 (ix), a
   360A DD 6E FA      [19] 1157 	ld	l,-6 (ix)
   360D DD 66 FB      [19] 1158 	ld	h,-5 (ix)
   3610 7E            [ 7] 1159 	ld	a, (hl)
   3611 DD 77 FA      [19] 1160 	ld	-6 (ix), a
   3614 23            [ 6] 1161 	inc	hl
   3615 7E            [ 7] 1162 	ld	a, (hl)
   3616 DD 77 FB      [19] 1163 	ld	-5 (ix), a
   3619 21 03 0A      [10] 1164 	ld	hl, #0x0a03
   361C E5            [11] 1165 	push	hl
   361D DD 6E FE      [19] 1166 	ld	l,-2 (ix)
   3620 DD 66 FF      [19] 1167 	ld	h,-1 (ix)
   3623 E5            [11] 1168 	push	hl
   3624 DD 6E FA      [19] 1169 	ld	l,-6 (ix)
   3627 DD 66 FB      [19] 1170 	ld	h,-5 (ix)
   362A E5            [11] 1171 	push	hl
   362B CD 90 8C      [17] 1172 	call	_cpct_drawSpriteMasked
   362E                    1173 00109$:
   362E DD F9         [10] 1174 	ld	sp, ix
   3630 DD E1         [14] 1175 	pop	ix
   3632 C9            [10] 1176 	ret
   3633                    1177 _v_draw_player_spr_idx_1_328:
   3633 07                 1178 	.db #0x07	; 7
   3634 06                 1179 	.db #0x06	; 6
   3635 08                 1180 	.db #0x08	; 8
   3636 05                 1181 	.db #0x05	; 5
   3637                    1182 _v_draw_player_b_spr_idx_1_328:
   3637 03                 1183 	.db #0x03	; 3
   3638 02                 1184 	.db #0x02	; 2
   3639 04                 1185 	.db #0x04	; 4
   363A 01                 1186 	.db #0x01	; 1
                           1187 ;src/lib/video.c:342: void v_draw_enemies(void) {
                           1188 ;	---------------------------------
                           1189 ; Function v_draw_enemies
                           1190 ; ---------------------------------
   363B                    1191 _v_draw_enemies::
   363B DD E5         [15] 1192 	push	ix
   363D DD 21 00 00   [14] 1193 	ld	ix,#0
   3641 DD 39         [15] 1194 	add	ix,sp
   3643 21 F4 FF      [10] 1195 	ld	hl, #-12
   3646 39            [11] 1196 	add	hl, sp
   3647 F9            [ 6] 1197 	ld	sp, hl
                           1198 ;src/lib/video.c:352: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   3648 DD 36 F4 00   [19] 1199 	ld	-12 (ix), #0x00
   364C                    1200 00125$:
   364C 3E 03         [ 7] 1201 	ld	a, #0x03
   364E DD 96 F4      [19] 1202 	sub	a, -12 (ix)
   3651 E2 56 36      [10] 1203 	jp	PO, 00180$
   3654 EE 80         [ 7] 1204 	xor	a, #0x80
   3656                    1205 00180$:
   3656 FA C2 38      [10] 1206 	jp	M, 00127$
                           1207 ;src/lib/video.c:355: spr_st = g_enemies[i].fired ? spr_idx_f[i] : spr_idx[i];
   3659 DD 4E F4      [19] 1208 	ld	c, -12 (ix)
   365C DD 7E F4      [19] 1209 	ld	a, -12 (ix)
   365F 17            [ 4] 1210 	rla
   3660 9F            [ 4] 1211 	sbc	a, a
   3661 47            [ 4] 1212 	ld	b, a
   3662 69            [ 4] 1213 	ld	l, c
   3663 60            [ 4] 1214 	ld	h, b
   3664 29            [11] 1215 	add	hl, hl
   3665 29            [11] 1216 	add	hl, hl
   3666 29            [11] 1217 	add	hl, hl
   3667 3E C3         [ 7] 1218 	ld	a, #<(_g_enemies)
   3669 85            [ 4] 1219 	add	a, l
   366A DD 77 FE      [19] 1220 	ld	-2 (ix), a
   366D 3E 9B         [ 7] 1221 	ld	a, #>(_g_enemies)
   366F 8C            [ 4] 1222 	adc	a, h
   3670 DD 77 FF      [19] 1223 	ld	-1 (ix), a
   3673 DD 6E FE      [19] 1224 	ld	l,-2 (ix)
   3676 DD 66 FF      [19] 1225 	ld	h,-1 (ix)
   3679 11 07 00      [10] 1226 	ld	de, #0x0007
   367C 19            [11] 1227 	add	hl, de
   367D CB 46         [12] 1228 	bit	0, (hl)
   367F 28 07         [12] 1229 	jr	Z,00129$
   3681 21 CB 38      [10] 1230 	ld	hl, #_v_draw_enemies_spr_idx_f_1_347
   3684 09            [11] 1231 	add	hl, bc
   3685 4E            [ 7] 1232 	ld	c, (hl)
   3686 18 05         [12] 1233 	jr	00130$
   3688                    1234 00129$:
   3688 21 C7 38      [10] 1235 	ld	hl, #_v_draw_enemies_spr_idx_1_347
   368B 09            [11] 1236 	add	hl, bc
   368C 4E            [ 7] 1237 	ld	c, (hl)
   368D                    1238 00130$:
   368D DD 71 F5      [19] 1239 	ld	-11 (ix), c
                           1240 ;src/lib/video.c:358: loc = g_enemies[i].loc;
   3690 DD 6E FE      [19] 1241 	ld	l,-2 (ix)
   3693 DD 66 FF      [19] 1242 	ld	h,-1 (ix)
   3696 23            [ 6] 1243 	inc	hl
   3697 4E            [ 7] 1244 	ld	c, (hl)
                           1245 ;src/lib/video.c:361: if (i % 2 == 0) {
   3698 C5            [11] 1246 	push	bc
   3699 3E 02         [ 7] 1247 	ld	a, #0x02
   369B F5            [11] 1248 	push	af
   369C 33            [ 6] 1249 	inc	sp
   369D DD 7E F4      [19] 1250 	ld	a, -12 (ix)
   36A0 F5            [11] 1251 	push	af
   36A1 33            [ 6] 1252 	inc	sp
                           1253 ;src/lib/video.c:362: px = GRID_LOC_X + ((loc - 1) * GRID_P_W);
   36A2 CD 09 8B      [17] 1254 	call	__moduschar
   36A5 F1            [10] 1255 	pop	af
   36A6 DD 75 FE      [19] 1256 	ld	-2 (ix), l
   36A9 C1            [10] 1257 	pop	bc
   36AA 06 00         [ 7] 1258 	ld	b, #0x00
   36AC 79            [ 4] 1259 	ld	a, c
   36AD C6 FF         [ 7] 1260 	add	a, #0xff
   36AF DD 77 FC      [19] 1261 	ld	-4 (ix), a
   36B2 78            [ 4] 1262 	ld	a, b
   36B3 CE FF         [ 7] 1263 	adc	a, #0xff
   36B5 DD 77 FD      [19] 1264 	ld	-3 (ix), a
                           1265 ;src/lib/video.c:361: if (i % 2 == 0) {
   36B8 DD 7E FE      [19] 1266 	ld	a, -2 (ix)
   36BB B7            [ 4] 1267 	or	a, a
   36BC 20 51         [12] 1268 	jr	NZ,00110$
                           1269 ;src/lib/video.c:362: px = GRID_LOC_X + ((loc - 1) * GRID_P_W);
   36BE DD 4E FC      [19] 1270 	ld	c,-4 (ix)
   36C1 DD 46 FD      [19] 1271 	ld	b,-3 (ix)
   36C4 69            [ 4] 1272 	ld	l, c
   36C5 60            [ 4] 1273 	ld	h, b
   36C6 29            [11] 1274 	add	hl, hl
   36C7 09            [11] 1275 	add	hl, bc
   36C8 DD 75 FA      [19] 1276 	ld	-6 (ix), l
   36CB DD 74 FB      [19] 1277 	ld	-5 (ix), h
   36CE DD 7E FA      [19] 1278 	ld	a, -6 (ix)
   36D1 C6 02         [ 7] 1279 	add	a, #0x02
   36D3 DD 77 F8      [19] 1280 	ld	-8 (ix), a
   36D6 DD 7E FB      [19] 1281 	ld	a, -5 (ix)
   36D9 CE 00         [ 7] 1282 	adc	a, #0x00
   36DB DD 77 F9      [19] 1283 	ld	-7 (ix), a
                           1284 ;src/lib/video.c:363: py = i == DIR_NORTH ? GRID_LOC_Y - 8 : 
   36DE DD 7E F4      [19] 1285 	ld	a, -12 (ix)
   36E1 B7            [ 4] 1286 	or	a, a
   36E2 20 04         [12] 1287 	jr	NZ,00131$
   36E4 0E 0A         [ 7] 1288 	ld	c, #0x0a
   36E6 18 02         [12] 1289 	jr	00132$
   36E8                    1290 00131$:
                           1291 ;src/lib/video.c:364: GRID_LOC_Y + (GRID_U_H * GRID_P_H);
   36E8 0E BC         [ 7] 1292 	ld	c, #0xbc
   36EA                    1293 00132$:
   36EA DD 71 F6      [19] 1294 	ld	-10 (ix), c
   36ED DD 36 F7 00   [19] 1295 	ld	-9 (ix), #0x00
                           1296 ;src/lib/video.c:365: if (px < 0)
   36F1 DD CB F9 7E   [20] 1297 	bit	7, -7 (ix)
   36F5 28 08         [12] 1298 	jr	Z,00102$
                           1299 ;src/lib/video.c:366: px = 0;
   36F7 DD 36 F8 00   [19] 1300 	ld	-8 (ix), #0x00
   36FB DD 36 F9 00   [19] 1301 	ld	-7 (ix), #0x00
   36FF                    1302 00102$:
                           1303 ;src/lib/video.c:367: if (py < 0)
   36FF DD CB F7 7E   [20] 1304 	bit	7, -9 (ix)
   3703 28 4D         [12] 1305 	jr	Z,00111$
                           1306 ;src/lib/video.c:368: py = 0;
   3705 DD 36 F6 00   [19] 1307 	ld	-10 (ix), #0x00
   3709 DD 36 F7 00   [19] 1308 	ld	-9 (ix), #0x00
   370D 18 43         [12] 1309 	jr	00111$
   370F                    1310 00110$:
                           1311 ;src/lib/video.c:370: px = i == DIR_WEST ? GRID_LOC_X - 2 :
   370F DD 7E F4      [19] 1312 	ld	a, -12 (ix)
   3712 D6 03         [ 7] 1313 	sub	a,#0x03
   3714 28 02         [12] 1314 	jr	Z,00134$
                           1315 ;src/lib/video.c:371: GRID_LOC_X + (GRID_U_W * GRID_P_W);
   3716 3E 4D         [ 7] 1316 	ld	a, #0x4d
   3718                    1317 00134$:
   3718 DD 77 F8      [19] 1318 	ld	-8 (ix), a
   371B 17            [ 4] 1319 	rla
   371C 9F            [ 4] 1320 	sbc	a, a
   371D DD 77 F9      [19] 1321 	ld	-7 (ix), a
                           1322 ;src/lib/video.c:372: py = GRID_LOC_Y + ((loc - 1) * GRID_P_H);
   3720 DD 4E FC      [19] 1323 	ld	c,-4 (ix)
   3723 DD 46 FD      [19] 1324 	ld	b,-3 (ix)
   3726 69            [ 4] 1325 	ld	l, c
   3727 60            [ 4] 1326 	ld	h, b
   3728 29            [11] 1327 	add	hl, hl
   3729 29            [11] 1328 	add	hl, hl
   372A 09            [11] 1329 	add	hl, bc
   372B 29            [11] 1330 	add	hl, hl
   372C 01 12 00      [10] 1331 	ld	bc,#0x0012
   372F 09            [11] 1332 	add	hl,bc
   3730 DD 75 F6      [19] 1333 	ld	-10 (ix), l
   3733 DD 74 F7      [19] 1334 	ld	-9 (ix), h
                           1335 ;src/lib/video.c:373: if (px < 0)
   3736 DD CB F9 7E   [20] 1336 	bit	7, -7 (ix)
   373A 28 08         [12] 1337 	jr	Z,00106$
                           1338 ;src/lib/video.c:374: px = 0;
   373C DD 36 F8 00   [19] 1339 	ld	-8 (ix), #0x00
   3740 DD 36 F9 00   [19] 1340 	ld	-7 (ix), #0x00
   3744                    1341 00106$:
                           1342 ;src/lib/video.c:375: if (py < 0)
   3744 DD CB F7 7E   [20] 1343 	bit	7, -9 (ix)
   3748 28 08         [12] 1344 	jr	Z,00111$
                           1345 ;src/lib/video.c:376: py = 0;
   374A DD 36 F6 00   [19] 1346 	ld	-10 (ix), #0x00
   374E DD 36 F7 00   [19] 1347 	ld	-9 (ix), #0x00
   3752                    1348 00111$:
                           1349 ;src/lib/video.c:383: v_pos = v_get_pos(px - 1, py);
   3752 DD 4E F6      [19] 1350 	ld	c, -10 (ix)
                           1351 ;src/lib/video.c:385: v_pos = v_get_pos(px, py);
   3755 DD 46 F8      [19] 1352 	ld	b, -8 (ix)
                           1353 ;src/lib/video.c:386: cpct_drawSprite(enemies_h_ts[spr_st], v_pos, 3, 8);
   3758 DD 6E F5      [19] 1354 	ld	l, -11 (ix)
   375B 26 00         [ 7] 1355 	ld	h, #0x00
   375D 29            [11] 1356 	add	hl, hl
   375E 5D            [ 4] 1357 	ld	e, l
   375F 54            [ 4] 1358 	ld	d, h
                           1359 ;src/lib/video.c:380: if (i % 2 == 0) {
   3760 DD 7E FE      [19] 1360 	ld	a, -2 (ix)
   3763 B7            [ 4] 1361 	or	a, a
   3764 C2 3D 38      [10] 1362 	jp	NZ, 00113$
                           1363 ;src/lib/video.c:383: v_pos = v_get_pos(px - 1, py);
   3767 61            [ 4] 1364 	ld	h, c
   3768 DD 7E F8      [19] 1365 	ld	a, -8 (ix)
   376B DD 77 FA      [19] 1366 	ld	-6 (ix), a
   376E C6 FF         [ 7] 1367 	add	a, #0xff
                           1368 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3770 C5            [11] 1369 	push	bc
   3771 D5            [11] 1370 	push	de
   3772 E5            [11] 1371 	push	hl
   3773 33            [ 6] 1372 	inc	sp
   3774 F5            [11] 1373 	push	af
   3775 33            [ 6] 1374 	inc	sp
   3776 21 00 C0      [10] 1375 	ld	hl, #0xc000
   3779 E5            [11] 1376 	push	hl
   377A CD E1 8F      [17] 1377 	call	_cpct_getScreenPtr
   377D D1            [10] 1378 	pop	de
   377E C1            [10] 1379 	pop	bc
                           1380 ;src/lib/video.c:384: cpct_drawSolidBox(v_pos, 0, 1, 8);
   377F E5            [11] 1381 	push	hl
   3780 FD E1         [14] 1382 	pop	iy
   3782 C5            [11] 1383 	push	bc
   3783 D5            [11] 1384 	push	de
   3784 21 01 08      [10] 1385 	ld	hl, #0x0801
   3787 E5            [11] 1386 	push	hl
   3788 21 00 00      [10] 1387 	ld	hl, #0x0000
   378B E5            [11] 1388 	push	hl
   378C FD E5         [15] 1389 	push	iy
   378E CD 39 8F      [17] 1390 	call	_cpct_drawSolidBox
   3791 D1            [10] 1391 	pop	de
   3792 C1            [10] 1392 	pop	bc
                           1393 ;src/lib/video.c:385: v_pos = v_get_pos(px, py);
                           1394 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3793 C5            [11] 1395 	push	bc
   3794 D5            [11] 1396 	push	de
   3795 79            [ 4] 1397 	ld	a, c
   3796 F5            [11] 1398 	push	af
   3797 33            [ 6] 1399 	inc	sp
   3798 C5            [11] 1400 	push	bc
   3799 33            [ 6] 1401 	inc	sp
   379A 21 00 C0      [10] 1402 	ld	hl, #0xc000
   379D E5            [11] 1403 	push	hl
   379E CD E1 8F      [17] 1404 	call	_cpct_getScreenPtr
   37A1 D1            [10] 1405 	pop	de
   37A2 C1            [10] 1406 	pop	bc
                           1407 ;src/lib/video.c:386: cpct_drawSprite(enemies_h_ts[spr_st], v_pos, 3, 8);
   37A3 E5            [11] 1408 	push	hl
   37A4 FD E1         [14] 1409 	pop	iy
   37A6 21 F2 7B      [10] 1410 	ld	hl, #_enemies_h_ts
   37A9 19            [11] 1411 	add	hl, de
   37AA 5E            [ 7] 1412 	ld	e, (hl)
   37AB 23            [ 6] 1413 	inc	hl
   37AC 56            [ 7] 1414 	ld	d, (hl)
   37AD C5            [11] 1415 	push	bc
   37AE 21 03 08      [10] 1416 	ld	hl, #0x0803
   37B1 E5            [11] 1417 	push	hl
   37B2 FD E5         [15] 1418 	push	iy
   37B4 D5            [11] 1419 	push	de
   37B5 CD 6F 8B      [17] 1420 	call	_cpct_drawSprite
   37B8 C1            [10] 1421 	pop	bc
                           1422 ;src/lib/video.c:387: v_pos = v_get_pos(px + 3, py);
   37B9 DD 46 FA      [19] 1423 	ld	b, -6 (ix)
   37BC 04            [ 4] 1424 	inc	b
   37BD 04            [ 4] 1425 	inc	b
   37BE 04            [ 4] 1426 	inc	b
                           1427 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   37BF C5            [11] 1428 	push	bc
   37C0 79            [ 4] 1429 	ld	a, c
   37C1 F5            [11] 1430 	push	af
   37C2 33            [ 6] 1431 	inc	sp
   37C3 C5            [11] 1432 	push	bc
   37C4 33            [ 6] 1433 	inc	sp
   37C5 21 00 C0      [10] 1434 	ld	hl, #0xc000
   37C8 E5            [11] 1435 	push	hl
   37C9 CD E1 8F      [17] 1436 	call	_cpct_getScreenPtr
   37CC C1            [10] 1437 	pop	bc
                           1438 ;src/lib/video.c:388: cpct_drawSprite(enemies_h_ts[spr_st + 1], v_pos, 3, 8);
   37CD E5            [11] 1439 	push	hl
   37CE FD E1         [14] 1440 	pop	iy
   37D0 DD 6E F5      [19] 1441 	ld	l, -11 (ix)
   37D3 2C            [ 4] 1442 	inc	l
   37D4 26 00         [ 7] 1443 	ld	h, #0x00
   37D6 29            [11] 1444 	add	hl, hl
   37D7 11 F2 7B      [10] 1445 	ld	de, #_enemies_h_ts
   37DA 19            [11] 1446 	add	hl, de
   37DB 5E            [ 7] 1447 	ld	e, (hl)
   37DC 23            [ 6] 1448 	inc	hl
   37DD 56            [ 7] 1449 	ld	d, (hl)
   37DE C5            [11] 1450 	push	bc
   37DF 21 03 08      [10] 1451 	ld	hl, #0x0803
   37E2 E5            [11] 1452 	push	hl
   37E3 FD E5         [15] 1453 	push	iy
   37E5 D5            [11] 1454 	push	de
   37E6 CD 6F 8B      [17] 1455 	call	_cpct_drawSprite
   37E9 C1            [10] 1456 	pop	bc
                           1457 ;src/lib/video.c:389: v_pos = v_get_pos(px + 6, py);
   37EA DD 7E FA      [19] 1458 	ld	a, -6 (ix)
   37ED C6 06         [ 7] 1459 	add	a, #0x06
   37EF 47            [ 4] 1460 	ld	b, a
                           1461 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   37F0 C5            [11] 1462 	push	bc
   37F1 79            [ 4] 1463 	ld	a, c
   37F2 F5            [11] 1464 	push	af
   37F3 33            [ 6] 1465 	inc	sp
   37F4 C5            [11] 1466 	push	bc
   37F5 33            [ 6] 1467 	inc	sp
   37F6 21 00 C0      [10] 1468 	ld	hl, #0xc000
   37F9 E5            [11] 1469 	push	hl
   37FA CD E1 8F      [17] 1470 	call	_cpct_getScreenPtr
   37FD C1            [10] 1471 	pop	bc
                           1472 ;src/lib/video.c:390: cpct_drawSprite(enemies_h_ts[spr_st + 2], v_pos, 3, 8);
   37FE E5            [11] 1473 	push	hl
   37FF FD E1         [14] 1474 	pop	iy
   3801 DD 6E F5      [19] 1475 	ld	l, -11 (ix)
   3804 2C            [ 4] 1476 	inc	l
   3805 2C            [ 4] 1477 	inc	l
   3806 26 00         [ 7] 1478 	ld	h, #0x00
   3808 29            [11] 1479 	add	hl, hl
   3809 11 F2 7B      [10] 1480 	ld	de, #_enemies_h_ts
   380C 19            [11] 1481 	add	hl, de
   380D 5E            [ 7] 1482 	ld	e, (hl)
   380E 23            [ 6] 1483 	inc	hl
   380F 56            [ 7] 1484 	ld	d, (hl)
   3810 C5            [11] 1485 	push	bc
   3811 21 03 08      [10] 1486 	ld	hl, #0x0803
   3814 E5            [11] 1487 	push	hl
   3815 FD E5         [15] 1488 	push	iy
   3817 D5            [11] 1489 	push	de
   3818 CD 6F 8B      [17] 1490 	call	_cpct_drawSprite
   381B C1            [10] 1491 	pop	bc
                           1492 ;src/lib/video.c:391: v_pos = v_get_pos(px + 9, py);
   381C DD 7E FA      [19] 1493 	ld	a, -6 (ix)
   381F C6 09         [ 7] 1494 	add	a, #0x09
   3821 47            [ 4] 1495 	ld	b, a
                           1496 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3822 79            [ 4] 1497 	ld	a, c
   3823 F5            [11] 1498 	push	af
   3824 33            [ 6] 1499 	inc	sp
   3825 C5            [11] 1500 	push	bc
   3826 33            [ 6] 1501 	inc	sp
   3827 21 00 C0      [10] 1502 	ld	hl, #0xc000
   382A E5            [11] 1503 	push	hl
   382B CD E1 8F      [17] 1504 	call	_cpct_getScreenPtr
                           1505 ;src/lib/video.c:391: v_pos = v_get_pos(px + 9, py);
                           1506 ;src/lib/video.c:392: cpct_drawSolidBox(v_pos, 0, 1, 8);
   382E 01 01 08      [10] 1507 	ld	bc, #0x0801
   3831 C5            [11] 1508 	push	bc
   3832 01 00 00      [10] 1509 	ld	bc, #0x0000
   3835 C5            [11] 1510 	push	bc
   3836 E5            [11] 1511 	push	hl
   3837 CD 39 8F      [17] 1512 	call	_cpct_drawSolidBox
   383A C3 BC 38      [10] 1513 	jp	00126$
   383D                    1514 00113$:
                           1515 ;src/lib/video.c:396: v_pos = v_get_pos(px, py);
   383D 60            [ 4] 1516 	ld	h, b
                           1517 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   383E C5            [11] 1518 	push	bc
   383F D5            [11] 1519 	push	de
   3840 79            [ 4] 1520 	ld	a, c
   3841 F5            [11] 1521 	push	af
   3842 33            [ 6] 1522 	inc	sp
   3843 E5            [11] 1523 	push	hl
   3844 33            [ 6] 1524 	inc	sp
   3845 21 00 C0      [10] 1525 	ld	hl, #0xc000
   3848 E5            [11] 1526 	push	hl
   3849 CD E1 8F      [17] 1527 	call	_cpct_getScreenPtr
   384C D1            [10] 1528 	pop	de
   384D C1            [10] 1529 	pop	bc
                           1530 ;src/lib/video.c:397: cpct_drawSprite(enemies_v_ts[spr_st], v_pos, 2, 12);
   384E E5            [11] 1531 	push	hl
   384F FD E1         [14] 1532 	pop	iy
   3851 21 DA 7B      [10] 1533 	ld	hl, #_enemies_v_ts
   3854 19            [11] 1534 	add	hl, de
   3855 5E            [ 7] 1535 	ld	e, (hl)
   3856 23            [ 6] 1536 	inc	hl
   3857 56            [ 7] 1537 	ld	d, (hl)
   3858 C5            [11] 1538 	push	bc
   3859 21 02 0C      [10] 1539 	ld	hl, #0x0c02
   385C E5            [11] 1540 	push	hl
   385D FD E5         [15] 1541 	push	iy
   385F D5            [11] 1542 	push	de
   3860 CD 6F 8B      [17] 1543 	call	_cpct_drawSprite
   3863 C1            [10] 1544 	pop	bc
                           1545 ;src/lib/video.c:398: v_pos = v_get_pos(px, py + 12);
   3864 DD 4E F6      [19] 1546 	ld	c, -10 (ix)
   3867 79            [ 4] 1547 	ld	a, c
   3868 C6 0C         [ 7] 1548 	add	a, #0x0c
   386A 57            [ 4] 1549 	ld	d, a
                           1550 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   386B C5            [11] 1551 	push	bc
   386C 58            [ 4] 1552 	ld	e, b
   386D D5            [11] 1553 	push	de
   386E 21 00 C0      [10] 1554 	ld	hl, #0xc000
   3871 E5            [11] 1555 	push	hl
   3872 CD E1 8F      [17] 1556 	call	_cpct_getScreenPtr
   3875 C1            [10] 1557 	pop	bc
                           1558 ;src/lib/video.c:399: cpct_drawSprite(enemies_v_ts[spr_st + 4], v_pos, 2, 12);
   3876 E5            [11] 1559 	push	hl
   3877 FD E1         [14] 1560 	pop	iy
   3879 DD 7E F5      [19] 1561 	ld	a, -11 (ix)
   387C C6 04         [ 7] 1562 	add	a, #0x04
   387E 6F            [ 4] 1563 	ld	l, a
   387F 26 00         [ 7] 1564 	ld	h, #0x00
   3881 29            [11] 1565 	add	hl, hl
   3882 11 DA 7B      [10] 1566 	ld	de, #_enemies_v_ts
   3885 19            [11] 1567 	add	hl, de
   3886 5E            [ 7] 1568 	ld	e, (hl)
   3887 23            [ 6] 1569 	inc	hl
   3888 56            [ 7] 1570 	ld	d, (hl)
   3889 C5            [11] 1571 	push	bc
   388A 21 02 0C      [10] 1572 	ld	hl, #0x0c02
   388D E5            [11] 1573 	push	hl
   388E FD E5         [15] 1574 	push	iy
   3890 D5            [11] 1575 	push	de
   3891 CD 6F 8B      [17] 1576 	call	_cpct_drawSprite
   3894 C1            [10] 1577 	pop	bc
                           1578 ;src/lib/video.c:400: v_pos = v_get_pos(px, py + 24);
   3895 79            [ 4] 1579 	ld	a, c
   3896 C6 18         [ 7] 1580 	add	a, #0x18
   3898 57            [ 4] 1581 	ld	d, a
                           1582 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3899 58            [ 4] 1583 	ld	e, b
   389A D5            [11] 1584 	push	de
   389B 21 00 C0      [10] 1585 	ld	hl, #0xc000
   389E E5            [11] 1586 	push	hl
   389F CD E1 8F      [17] 1587 	call	_cpct_getScreenPtr
   38A2 EB            [ 4] 1588 	ex	de,hl
                           1589 ;src/lib/video.c:401: cpct_drawSprite(enemies_v_ts[spr_st + 8], v_pos, 2, 12);
   38A3 DD 7E F5      [19] 1590 	ld	a, -11 (ix)
   38A6 C6 08         [ 7] 1591 	add	a, #0x08
   38A8 6F            [ 4] 1592 	ld	l, a
   38A9 26 00         [ 7] 1593 	ld	h, #0x00
   38AB 29            [11] 1594 	add	hl, hl
   38AC 01 DA 7B      [10] 1595 	ld	bc, #_enemies_v_ts
   38AF 09            [11] 1596 	add	hl, bc
   38B0 4E            [ 7] 1597 	ld	c, (hl)
   38B1 23            [ 6] 1598 	inc	hl
   38B2 46            [ 7] 1599 	ld	b, (hl)
   38B3 21 02 0C      [10] 1600 	ld	hl, #0x0c02
   38B6 E5            [11] 1601 	push	hl
   38B7 D5            [11] 1602 	push	de
   38B8 C5            [11] 1603 	push	bc
   38B9 CD 6F 8B      [17] 1604 	call	_cpct_drawSprite
   38BC                    1605 00126$:
                           1606 ;src/lib/video.c:352: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   38BC DD 34 F4      [23] 1607 	inc	-12 (ix)
   38BF C3 4C 36      [10] 1608 	jp	00125$
   38C2                    1609 00127$:
   38C2 DD F9         [10] 1610 	ld	sp, ix
   38C4 DD E1         [14] 1611 	pop	ix
   38C6 C9            [10] 1612 	ret
   38C7                    1613 _v_draw_enemies_spr_idx_1_347:
   38C7 00                 1614 	.db #0x00	; 0
   38C8 02                 1615 	.db #0x02	; 2
   38C9 06                 1616 	.db #0x06	; 6
   38CA 00                 1617 	.db #0x00	; 0
   38CB                    1618 _v_draw_enemies_spr_idx_f_1_347:
   38CB 03                 1619 	.db #0x03	; 3
   38CC 03                 1620 	.db #0x03	; 3
   38CD 09                 1621 	.db #0x09	; 9
   38CE 01                 1622 	.db #0x01	; 1
                           1623 ;src/lib/video.c:407: void v_draw_bolts(const bool all) {
                           1624 ;	---------------------------------
                           1625 ; Function v_draw_bolts
                           1626 ; ---------------------------------
   38CF                    1627 _v_draw_bolts::
   38CF DD E5         [15] 1628 	push	ix
   38D1 DD 21 00 00   [14] 1629 	ld	ix,#0
   38D5 DD 39         [15] 1630 	add	ix,sp
   38D7 F5            [11] 1631 	push	af
   38D8 3B            [ 6] 1632 	dec	sp
                           1633 ;src/lib/video.c:409: if (g_bolt_count == 0)
   38D9 3A 66 A0      [13] 1634 	ld	a,(#_g_bolt_count + 0)
   38DC B7            [ 4] 1635 	or	a, a
                           1636 ;src/lib/video.c:410: return;
                           1637 ;src/lib/video.c:412: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   38DD CA 6E 39      [10] 1638 	jp	Z,00114$
   38E0 DD 36 FD 00   [19] 1639 	ld	-3 (ix), #0x00
   38E4                    1640 00112$:
   38E4 3E 03         [ 7] 1641 	ld	a, #0x03
   38E6 DD 96 FD      [19] 1642 	sub	a, -3 (ix)
   38E9 E2 EE 38      [10] 1643 	jp	PO, 00141$
   38EC EE 80         [ 7] 1644 	xor	a, #0x80
   38EE                    1645 00141$:
   38EE FA 6E 39      [10] 1646 	jp	M, 00114$
                           1647 ;src/lib/video.c:413: if (all || g_bolts[i].active) {
   38F1 DD 4E FD      [19] 1648 	ld	c, -3 (ix)
   38F4 79            [ 4] 1649 	ld	a, c
   38F5 CB 07         [ 8] 1650 	rlc	a
   38F7 9F            [ 4] 1651 	sbc	a, a
   38F8 47            [ 4] 1652 	ld	b, a
   38F9 69            [ 4] 1653 	ld	l, c
   38FA 60            [ 4] 1654 	ld	h, b
   38FB 29            [11] 1655 	add	hl, hl
   38FC 09            [11] 1656 	add	hl, bc
   38FD 29            [11] 1657 	add	hl, hl
   38FE 09            [11] 1658 	add	hl, bc
   38FF 29            [11] 1659 	add	hl, hl
   3900 4D            [ 4] 1660 	ld	c, l
   3901 44            [ 4] 1661 	ld	b, h
   3902 DD CB 04 46   [20] 1662 	bit	0, 4 (ix)
   3906 20 0C         [12] 1663 	jr	NZ,00107$
   3908 21 E3 9B      [10] 1664 	ld	hl, #_g_bolts
   390B 09            [11] 1665 	add	hl, bc
   390C 11 05 00      [10] 1666 	ld	de, #0x0005
   390F 19            [11] 1667 	add	hl, de
   3910 CB 46         [12] 1668 	bit	0, (hl)
   3912 28 54         [12] 1669 	jr	Z,00113$
   3914                    1670 00107$:
                           1671 ;src/lib/video.c:414: if (g_bolts[i].dc) {
   3914 21 E3 9B      [10] 1672 	ld	hl, #_g_bolts
   3917 09            [11] 1673 	add	hl,bc
   3918 4D            [ 4] 1674 	ld	c, l
   3919 44            [ 4] 1675 	ld	b, h
   391A 21 0B 00      [10] 1676 	ld	hl, #0x000b
   391D 09            [11] 1677 	add	hl,bc
   391E EB            [ 4] 1678 	ex	de,hl
   391F 1A            [ 7] 1679 	ld	a, (de)
   3920 CB 47         [ 8] 1680 	bit	0, a
   3922 28 23         [12] 1681 	jr	Z,00104$
                           1682 ;src/lib/video.c:416: g_bolts[i].dc_y);
   3924 C5            [11] 1683 	push	bc
   3925 FD E1         [14] 1684 	pop	iy
   3927 FD 7E 0D      [19] 1685 	ld	a, 13 (iy)
   392A DD 77 FE      [19] 1686 	ld	-2 (ix), a
                           1687 ;src/lib/video.c:415: v_draw_grid_cell(g_bolts[i].dc_x,
   392D C5            [11] 1688 	push	bc
   392E FD E1         [14] 1689 	pop	iy
   3930 FD 7E 0C      [19] 1690 	ld	a, 12 (iy)
   3933 DD 77 FF      [19] 1691 	ld	-1 (ix), a
   3936 C5            [11] 1692 	push	bc
   3937 D5            [11] 1693 	push	de
   3938 DD 66 FE      [19] 1694 	ld	h, -2 (ix)
   393B DD 6E FF      [19] 1695 	ld	l, -1 (ix)
   393E E5            [11] 1696 	push	hl
   393F CD B8 3E      [17] 1697 	call	_v_draw_grid_cell
   3942 F1            [10] 1698 	pop	af
   3943 D1            [10] 1699 	pop	de
   3944 C1            [10] 1700 	pop	bc
                           1701 ;src/lib/video.c:417: g_bolts[i].dc = false;
   3945 AF            [ 4] 1702 	xor	a, a
   3946 12            [ 7] 1703 	ld	(de), a
   3947                    1704 00104$:
                           1705 ;src/lib/video.c:419: if (g_bolts[i].dp) {
   3947 21 08 00      [10] 1706 	ld	hl, #0x0008
   394A 09            [11] 1707 	add	hl,bc
   394B EB            [ 4] 1708 	ex	de,hl
   394C 1A            [ 7] 1709 	ld	a, (de)
   394D CB 47         [ 8] 1710 	bit	0, a
   394F 28 17         [12] 1711 	jr	Z,00113$
                           1712 ;src/lib/video.c:421: g_bolts[i].dp_y);
   3951 C5            [11] 1713 	push	bc
   3952 FD E1         [14] 1714 	pop	iy
   3954 FD 7E 0A      [19] 1715 	ld	a, 10 (iy)
                           1716 ;src/lib/video.c:420: v_draw_grid_cell(g_bolts[i].dp_x,
   3957 69            [ 4] 1717 	ld	l, c
   3958 60            [ 4] 1718 	ld	h, b
   3959 01 09 00      [10] 1719 	ld	bc, #0x0009
   395C 09            [11] 1720 	add	hl, bc
   395D 4E            [ 7] 1721 	ld	c, (hl)
   395E D5            [11] 1722 	push	de
   395F 47            [ 4] 1723 	ld	b, a
   3960 C5            [11] 1724 	push	bc
   3961 CD B8 3E      [17] 1725 	call	_v_draw_grid_cell
   3964 F1            [10] 1726 	pop	af
   3965 D1            [10] 1727 	pop	de
                           1728 ;src/lib/video.c:422: g_bolts[i].dp = false;
   3966 AF            [ 4] 1729 	xor	a, a
   3967 12            [ 7] 1730 	ld	(de), a
   3968                    1731 00113$:
                           1732 ;src/lib/video.c:412: for (dir_t i = DIR_NORTH; i <= DIR_WEST; i++) {
   3968 DD 34 FD      [23] 1733 	inc	-3 (ix)
   396B C3 E4 38      [10] 1734 	jp	00112$
   396E                    1735 00114$:
   396E DD F9         [10] 1736 	ld	sp, ix
   3970 DD E1         [14] 1737 	pop	ix
   3972 C9            [10] 1738 	ret
                           1739 ;src/lib/video.c:429: void v_draw_box(const dim_t *sz) {
                           1740 ;	---------------------------------
                           1741 ; Function v_draw_box
                           1742 ; ---------------------------------
   3973                    1743 _v_draw_box::
   3973 DD E5         [15] 1744 	push	ix
   3975 DD 21 00 00   [14] 1745 	ld	ix,#0
   3979 DD 39         [15] 1746 	add	ix,sp
   397B 21 F4 FF      [10] 1747 	ld	hl, #-12
   397E 39            [11] 1748 	add	hl, sp
   397F F9            [ 6] 1749 	ld	sp, hl
                           1750 ;src/lib/video.c:434: pw = sz->w * GRID_P_W;
   3980 DD 7E 04      [19] 1751 	ld	a, 4 (ix)
   3983 DD 77 FC      [19] 1752 	ld	-4 (ix), a
   3986 DD 7E 05      [19] 1753 	ld	a, 5 (ix)
   3989 DD 77 FD      [19] 1754 	ld	-3 (ix), a
   398C DD 6E FC      [19] 1755 	ld	l,-4 (ix)
   398F DD 66 FD      [19] 1756 	ld	h,-3 (ix)
   3992 4E            [ 7] 1757 	ld	c, (hl)
   3993 79            [ 4] 1758 	ld	a, c
   3994 87            [ 4] 1759 	add	a, a
   3995 81            [ 4] 1760 	add	a, c
   3996 5F            [ 4] 1761 	ld	e, a
                           1762 ;src/lib/video.c:435: ph = sz->h * GRID_P_H;
   3997 DD 7E FC      [19] 1763 	ld	a, -4 (ix)
   399A C6 01         [ 7] 1764 	add	a, #0x01
   399C DD 77 F9      [19] 1765 	ld	-7 (ix), a
   399F DD 7E FD      [19] 1766 	ld	a, -3 (ix)
   39A2 CE 00         [ 7] 1767 	adc	a, #0x00
   39A4 DD 77 FA      [19] 1768 	ld	-6 (ix), a
   39A7 DD 6E F9      [19] 1769 	ld	l,-7 (ix)
   39AA DD 66 FA      [19] 1770 	ld	h,-6 (ix)
   39AD 4E            [ 7] 1771 	ld	c, (hl)
   39AE 79            [ 4] 1772 	ld	a, c
   39AF 87            [ 4] 1773 	add	a, a
   39B0 87            [ 4] 1774 	add	a, a
   39B1 81            [ 4] 1775 	add	a, c
   39B2 87            [ 4] 1776 	add	a, a
   39B3 DD 77 F8      [19] 1777 	ld	-8 (ix), a
                           1778 ;src/lib/video.c:438: x = 80 - (pw + (2 * GRID_P_W));
   39B6 7B            [ 4] 1779 	ld	a, e
   39B7 C6 06         [ 7] 1780 	add	a, #0x06
   39B9 4F            [ 4] 1781 	ld	c, a
   39BA 3E 50         [ 7] 1782 	ld	a, #0x50
   39BC 91            [ 4] 1783 	sub	a, c
   39BD 47            [ 4] 1784 	ld	b, a
                           1785 ;src/lib/video.c:439: y = 200 - (ph + (2 * GRID_P_H));
   39BE DD 7E F8      [19] 1786 	ld	a, -8 (ix)
   39C1 C6 14         [ 7] 1787 	add	a, #0x14
   39C3 4F            [ 4] 1788 	ld	c, a
   39C4 3E C8         [ 7] 1789 	ld	a, #0xc8
   39C6 91            [ 4] 1790 	sub	a, c
   39C7 4F            [ 4] 1791 	ld	c, a
                           1792 ;src/lib/video.c:440: x = x / 2;
   39C8 78            [ 4] 1793 	ld	a, b
   39C9 CB 3F         [ 8] 1794 	srl	a
   39CB DD 77 F7      [19] 1795 	ld	-9 (ix), a
                           1796 ;src/lib/video.c:441: y = y / 2;
   39CE 79            [ 4] 1797 	ld	a, c
   39CF CB 3F         [ 8] 1798 	srl	a
                           1799 ;src/lib/video.c:442: v_pos = v_get_pos(x + 1, y + 2);
   39D1 DD 77 F6      [19] 1800 	ld	-10 (ix), a
   39D4 57            [ 4] 1801 	ld	d, a
   39D5 14            [ 4] 1802 	inc	d
   39D6 14            [ 4] 1803 	inc	d
   39D7 DD 46 F7      [19] 1804 	ld	b, -9 (ix)
   39DA 04            [ 4] 1805 	inc	b
                           1806 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   39DB D5            [11] 1807 	push	de
   39DC 58            [ 4] 1808 	ld	e, b
   39DD D5            [11] 1809 	push	de
   39DE 21 00 C0      [10] 1810 	ld	hl, #0xc000
   39E1 E5            [11] 1811 	push	hl
   39E2 CD E1 8F      [17] 1812 	call	_cpct_getScreenPtr
   39E5 4D            [ 4] 1813 	ld	c, l
   39E6 44            [ 4] 1814 	ld	b, h
   39E7 D1            [10] 1815 	pop	de
                           1816 ;src/lib/video.c:445: cpct_drawSolidBox(v_pos, 0, pw + 4, ph + 4);
   39E8 DD 56 F8      [19] 1817 	ld	d, -8 (ix)
   39EB 14            [ 4] 1818 	inc	d
   39EC 14            [ 4] 1819 	inc	d
   39ED 14            [ 4] 1820 	inc	d
   39EE 14            [ 4] 1821 	inc	d
   39EF 7B            [ 4] 1822 	ld	a, e
   39F0 C6 04         [ 7] 1823 	add	a, #0x04
   39F2 5F            [ 4] 1824 	ld	e, a
   39F3 D5            [11] 1825 	push	de
   39F4 21 00 00      [10] 1826 	ld	hl, #0x0000
   39F7 E5            [11] 1827 	push	hl
   39F8 C5            [11] 1828 	push	bc
   39F9 CD 39 8F      [17] 1829 	call	_cpct_drawSolidBox
                           1830 ;src/lib/video.c:449: gy = y;
   39FC DD 46 F6      [19] 1831 	ld	b, -10 (ix)
                           1832 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   39FF C5            [11] 1833 	push	bc
   3A00 DD 66 F6      [19] 1834 	ld	h, -10 (ix)
   3A03 DD 6E F7      [19] 1835 	ld	l, -9 (ix)
   3A06 E5            [11] 1836 	push	hl
   3A07 21 00 C0      [10] 1837 	ld	hl, #0xc000
   3A0A E5            [11] 1838 	push	hl
   3A0B CD E1 8F      [17] 1839 	call	_cpct_getScreenPtr
   3A0E EB            [ 4] 1840 	ex	de,hl
   3A0F C1            [10] 1841 	pop	bc
                           1842 ;src/lib/video.c:452: gui_ts[GUI_NORTH_WEST], v_pos, GRID_P_W, GRID_P_H);
   3A10 2A 78 78      [16] 1843 	ld	hl, (#_gui_ts + 2)
   3A13 E5            [11] 1844 	push	hl
   3A14 FD E1         [14] 1845 	pop	iy
   3A16 C5            [11] 1846 	push	bc
   3A17 21 03 0A      [10] 1847 	ld	hl, #0x0a03
   3A1A E5            [11] 1848 	push	hl
   3A1B D5            [11] 1849 	push	de
   3A1C FD E5         [15] 1850 	push	iy
   3A1E CD 90 8C      [17] 1851 	call	_cpct_drawSpriteMasked
   3A21 C1            [10] 1852 	pop	bc
                           1853 ;src/lib/video.c:453: gx += GRID_P_W;
   3A22 DD 7E F7      [19] 1854 	ld	a, -9 (ix)
   3A25 C6 03         [ 7] 1855 	add	a, #0x03
   3A27 DD 77 FB      [19] 1856 	ld	-5 (ix), a
   3A2A 4F            [ 4] 1857 	ld	c, a
                           1858 ;src/lib/video.c:454: for (u8 i = 0; i < sz->w; i++) {
   3A2B DD 36 F4 00   [19] 1859 	ld	-12 (ix), #0x00
   3A2F                    1860 00115$:
   3A2F DD 6E FC      [19] 1861 	ld	l,-4 (ix)
   3A32 DD 66 FD      [19] 1862 	ld	h,-3 (ix)
   3A35 DD 7E F4      [19] 1863 	ld	a,-12 (ix)
   3A38 96            [ 7] 1864 	sub	a,(hl)
   3A39 30 24         [12] 1865 	jr	NC,00101$
                           1866 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3A3B C5            [11] 1867 	push	bc
   3A3C C5            [11] 1868 	push	bc
   3A3D 21 00 C0      [10] 1869 	ld	hl, #0xc000
   3A40 E5            [11] 1870 	push	hl
   3A41 CD E1 8F      [17] 1871 	call	_cpct_getScreenPtr
   3A44 C1            [10] 1872 	pop	bc
                           1873 ;src/lib/video.c:457: gui_ts[GUI_NORTH], v_pos, GRID_P_W, GRID_P_H);
   3A45 E5            [11] 1874 	push	hl
   3A46 FD E1         [14] 1875 	pop	iy
   3A48 2A 7A 78      [16] 1876 	ld	hl, (#_gui_ts + 4)
   3A4B C5            [11] 1877 	push	bc
   3A4C 11 03 0A      [10] 1878 	ld	de, #0x0a03
   3A4F D5            [11] 1879 	push	de
   3A50 FD E5         [15] 1880 	push	iy
   3A52 E5            [11] 1881 	push	hl
   3A53 CD 90 8C      [17] 1882 	call	_cpct_drawSpriteMasked
   3A56 C1            [10] 1883 	pop	bc
                           1884 ;src/lib/video.c:458: gx += GRID_P_W;
   3A57 0C            [ 4] 1885 	inc	c
   3A58 0C            [ 4] 1886 	inc	c
   3A59 0C            [ 4] 1887 	inc	c
                           1888 ;src/lib/video.c:454: for (u8 i = 0; i < sz->w; i++) {
   3A5A DD 34 F4      [23] 1889 	inc	-12 (ix)
   3A5D 18 D0         [12] 1890 	jr	00115$
   3A5F                    1891 00101$:
                           1892 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3A5F C5            [11] 1893 	push	bc
   3A60 C5            [11] 1894 	push	bc
   3A61 21 00 C0      [10] 1895 	ld	hl, #0xc000
   3A64 E5            [11] 1896 	push	hl
   3A65 CD E1 8F      [17] 1897 	call	_cpct_getScreenPtr
   3A68 C1            [10] 1898 	pop	bc
                           1899 ;src/lib/video.c:462: gui_ts[GUI_NORTH_EAST], v_pos, GRID_P_W, GRID_P_H);
   3A69 E5            [11] 1900 	push	hl
   3A6A FD E1         [14] 1901 	pop	iy
   3A6C 2A 7C 78      [16] 1902 	ld	hl, (#_gui_ts + 6)
   3A6F C5            [11] 1903 	push	bc
   3A70 11 03 0A      [10] 1904 	ld	de, #0x0a03
   3A73 D5            [11] 1905 	push	de
   3A74 FD E5         [15] 1906 	push	iy
   3A76 E5            [11] 1907 	push	hl
   3A77 CD 90 8C      [17] 1908 	call	_cpct_drawSpriteMasked
   3A7A C1            [10] 1909 	pop	bc
                           1910 ;src/lib/video.c:463: r = gx;
                           1911 ;src/lib/video.c:467: gy = y + ph;
   3A7B DD 7E F6      [19] 1912 	ld	a, -10 (ix)
   3A7E DD 86 F8      [19] 1913 	add	a, -8 (ix)
   3A81 5F            [ 4] 1914 	ld	e, a
                           1915 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3A82 C5            [11] 1916 	push	bc
   3A83 D5            [11] 1917 	push	de
   3A84 53            [ 4] 1918 	ld	d, e
   3A85 DD 5E F7      [19] 1919 	ld	e, -9 (ix)
   3A88 D5            [11] 1920 	push	de
   3A89 21 00 C0      [10] 1921 	ld	hl, #0xc000
   3A8C E5            [11] 1922 	push	hl
   3A8D CD E1 8F      [17] 1923 	call	_cpct_getScreenPtr
   3A90 D1            [10] 1924 	pop	de
   3A91 C1            [10] 1925 	pop	bc
                           1926 ;src/lib/video.c:468: v_pos = v_get_pos(gx, gy);
   3A92 45            [ 4] 1927 	ld	b, l
   3A93 54            [ 4] 1928 	ld	d, h
                           1929 ;src/lib/video.c:470: gui_ts[GUI_SOUTH_WEST], v_pos, GRID_P_W, GRID_P_H);
   3A94 2A 82 78      [16] 1930 	ld	hl, (#_gui_ts + 12)
   3A97 E5            [11] 1931 	push	hl
   3A98 FD E1         [14] 1932 	pop	iy
   3A9A C5            [11] 1933 	push	bc
   3A9B D5            [11] 1934 	push	de
   3A9C 21 03 0A      [10] 1935 	ld	hl, #0x0a03
   3A9F E5            [11] 1936 	push	hl
   3AA0 58            [ 4] 1937 	ld	e,b
   3AA1 D5            [11] 1938 	push	de
   3AA2 FD E5         [15] 1939 	push	iy
   3AA4 CD 90 8C      [17] 1940 	call	_cpct_drawSpriteMasked
   3AA7 D1            [10] 1941 	pop	de
   3AA8 C1            [10] 1942 	pop	bc
                           1943 ;src/lib/video.c:471: gx += GRID_P_W;
   3AA9 DD 56 FB      [19] 1944 	ld	d, -5 (ix)
                           1945 ;src/lib/video.c:472: for (u8 i = 0; i < sz->w; i++) {
   3AAC DD 36 F4 00   [19] 1946 	ld	-12 (ix), #0x00
   3AB0                    1947 00118$:
   3AB0 DD 6E FC      [19] 1948 	ld	l,-4 (ix)
   3AB3 DD 66 FD      [19] 1949 	ld	h,-3 (ix)
   3AB6 46            [ 7] 1950 	ld	b, (hl)
   3AB7 DD 7E F4      [19] 1951 	ld	a, -12 (ix)
   3ABA 90            [ 4] 1952 	sub	a, b
   3ABB 30 38         [12] 1953 	jr	NC,00102$
                           1954 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3ABD C5            [11] 1955 	push	bc
   3ABE D5            [11] 1956 	push	de
   3ABF 7B            [ 4] 1957 	ld	a, e
   3AC0 F5            [11] 1958 	push	af
   3AC1 33            [ 6] 1959 	inc	sp
   3AC2 D5            [11] 1960 	push	de
   3AC3 33            [ 6] 1961 	inc	sp
   3AC4 21 00 C0      [10] 1962 	ld	hl, #0xc000
   3AC7 E5            [11] 1963 	push	hl
   3AC8 CD E1 8F      [17] 1964 	call	_cpct_getScreenPtr
   3ACB D1            [10] 1965 	pop	de
   3ACC C1            [10] 1966 	pop	bc
                           1967 ;src/lib/video.c:475: gui_ts[GUI_SOUTH], v_pos, GRID_P_W, GRID_P_H);
   3ACD E5            [11] 1968 	push	hl
   3ACE FD E1         [14] 1969 	pop	iy
   3AD0 2A 84 78      [16] 1970 	ld	hl, (#_gui_ts + 14)
   3AD3 DD 75 FE      [19] 1971 	ld	-2 (ix), l
   3AD6 DD 74 FF      [19] 1972 	ld	-1 (ix), h
   3AD9 C5            [11] 1973 	push	bc
   3ADA D5            [11] 1974 	push	de
   3ADB 21 03 0A      [10] 1975 	ld	hl, #0x0a03
   3ADE E5            [11] 1976 	push	hl
   3ADF FD E5         [15] 1977 	push	iy
   3AE1 DD 6E FE      [19] 1978 	ld	l,-2 (ix)
   3AE4 DD 66 FF      [19] 1979 	ld	h,-1 (ix)
   3AE7 E5            [11] 1980 	push	hl
   3AE8 CD 90 8C      [17] 1981 	call	_cpct_drawSpriteMasked
   3AEB D1            [10] 1982 	pop	de
   3AEC C1            [10] 1983 	pop	bc
                           1984 ;src/lib/video.c:476: gx += GRID_P_W;
   3AED 14            [ 4] 1985 	inc	d
   3AEE 14            [ 4] 1986 	inc	d
   3AEF 14            [ 4] 1987 	inc	d
                           1988 ;src/lib/video.c:472: for (u8 i = 0; i < sz->w; i++) {
   3AF0 DD 34 F4      [23] 1989 	inc	-12 (ix)
   3AF3 18 BB         [12] 1990 	jr	00118$
   3AF5                    1991 00102$:
                           1992 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3AF5 C5            [11] 1993 	push	bc
   3AF6 7B            [ 4] 1994 	ld	a, e
   3AF7 F5            [11] 1995 	push	af
   3AF8 33            [ 6] 1996 	inc	sp
   3AF9 D5            [11] 1997 	push	de
   3AFA 33            [ 6] 1998 	inc	sp
   3AFB 21 00 C0      [10] 1999 	ld	hl, #0xc000
   3AFE E5            [11] 2000 	push	hl
   3AFF CD E1 8F      [17] 2001 	call	_cpct_getScreenPtr
   3B02 C1            [10] 2002 	pop	bc
                           2003 ;src/lib/video.c:480: gui_ts[GUI_SOUTH_EAST], v_pos, GRID_P_W, GRID_P_H);
   3B03 E5            [11] 2004 	push	hl
   3B04 FD E1         [14] 2005 	pop	iy
   3B06 2A 86 78      [16] 2006 	ld	hl, (#_gui_ts + 16)
   3B09 C5            [11] 2007 	push	bc
   3B0A 11 03 0A      [10] 2008 	ld	de, #0x0a03
   3B0D D5            [11] 2009 	push	de
   3B0E FD E5         [15] 2010 	push	iy
   3B10 E5            [11] 2011 	push	hl
   3B11 CD 90 8C      [17] 2012 	call	_cpct_drawSpriteMasked
   3B14 C1            [10] 2013 	pop	bc
                           2014 ;src/lib/video.c:483: gx = x;
   3B15 DD 7E F7      [19] 2015 	ld	a, -9 (ix)
   3B18 DD 77 F5      [19] 2016 	ld	-11 (ix), a
                           2017 ;src/lib/video.c:484: gy = y + GRID_P_H;
   3B1B DD 7E F6      [19] 2018 	ld	a, -10 (ix)
   3B1E C6 0A         [ 7] 2019 	add	a, #0x0a
   3B20 5F            [ 4] 2020 	ld	e, a
   3B21 DD 73 FE      [19] 2021 	ld	-2 (ix), e
                           2022 ;src/lib/video.c:485: for (u8 i = 1; i < sz->h; i++) {
   3B24 DD 36 F4 01   [19] 2023 	ld	-12 (ix), #0x01
   3B28                    2024 00121$:
   3B28 DD 6E F9      [19] 2025 	ld	l,-7 (ix)
   3B2B DD 66 FA      [19] 2026 	ld	h,-6 (ix)
   3B2E 46            [ 7] 2027 	ld	b, (hl)
   3B2F DD 7E F4      [19] 2028 	ld	a, -12 (ix)
   3B32 90            [ 4] 2029 	sub	a, b
   3B33 30 36         [12] 2030 	jr	NC,00103$
                           2031 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3B35 C5            [11] 2032 	push	bc
   3B36 D5            [11] 2033 	push	de
   3B37 DD 66 FE      [19] 2034 	ld	h, -2 (ix)
   3B3A DD 6E F5      [19] 2035 	ld	l, -11 (ix)
   3B3D E5            [11] 2036 	push	hl
   3B3E 21 00 C0      [10] 2037 	ld	hl, #0xc000
   3B41 E5            [11] 2038 	push	hl
   3B42 CD E1 8F      [17] 2039 	call	_cpct_getScreenPtr
   3B45 D1            [10] 2040 	pop	de
   3B46 C1            [10] 2041 	pop	bc
                           2042 ;src/lib/video.c:488: gui_ts[GUI_WEST], v_pos, GRID_P_W, GRID_P_H);
   3B47 E5            [11] 2043 	push	hl
   3B48 FD E1         [14] 2044 	pop	iy
   3B4A 2A 7E 78      [16] 2045 	ld	hl, (#_gui_ts + 8)
   3B4D 45            [ 4] 2046 	ld	b, l
   3B4E 54            [ 4] 2047 	ld	d, h
   3B4F C5            [11] 2048 	push	bc
   3B50 D5            [11] 2049 	push	de
   3B51 21 03 0A      [10] 2050 	ld	hl, #0x0a03
   3B54 E5            [11] 2051 	push	hl
   3B55 FD E5         [15] 2052 	push	iy
   3B57 58            [ 4] 2053 	ld	e,b
   3B58 D5            [11] 2054 	push	de
   3B59 CD 90 8C      [17] 2055 	call	_cpct_drawSpriteMasked
   3B5C D1            [10] 2056 	pop	de
   3B5D C1            [10] 2057 	pop	bc
                           2058 ;src/lib/video.c:489: gy += GRID_P_H;
   3B5E DD 7E FE      [19] 2059 	ld	a, -2 (ix)
   3B61 C6 0A         [ 7] 2060 	add	a, #0x0a
   3B63 DD 77 FE      [19] 2061 	ld	-2 (ix), a
                           2062 ;src/lib/video.c:485: for (u8 i = 1; i < sz->h; i++) {
   3B66 DD 34 F4      [23] 2063 	inc	-12 (ix)
   3B69 18 BD         [12] 2064 	jr	00121$
   3B6B                    2065 00103$:
                           2066 ;src/lib/video.c:493: gx = r;
   3B6B DD 71 FE      [19] 2067 	ld	-2 (ix), c
                           2068 ;src/lib/video.c:494: gy = y + GRID_P_H;
                           2069 ;src/lib/video.c:495: for (u8 i = 1; i < sz->h; i++) {
   3B6E DD 36 F4 01   [19] 2070 	ld	-12 (ix), #0x01
   3B72                    2071 00124$:
   3B72 DD 6E F9      [19] 2072 	ld	l,-7 (ix)
   3B75 DD 66 FA      [19] 2073 	ld	h,-6 (ix)
   3B78 DD 7E F4      [19] 2074 	ld	a,-12 (ix)
   3B7B 96            [ 7] 2075 	sub	a,(hl)
   3B7C 30 2B         [12] 2076 	jr	NC,00126$
                           2077 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3B7E D5            [11] 2078 	push	de
   3B7F 53            [ 4] 2079 	ld	d, e
   3B80 DD 5E FE      [19] 2080 	ld	e, -2 (ix)
   3B83 D5            [11] 2081 	push	de
   3B84 21 00 C0      [10] 2082 	ld	hl, #0xc000
   3B87 E5            [11] 2083 	push	hl
   3B88 CD E1 8F      [17] 2084 	call	_cpct_getScreenPtr
   3B8B 4D            [ 4] 2085 	ld	c, l
   3B8C 44            [ 4] 2086 	ld	b, h
   3B8D D1            [10] 2087 	pop	de
                           2088 ;src/lib/video.c:498: gui_ts[GUI_EAST], v_pos, GRID_P_W, GRID_P_H);
   3B8E 2A 80 78      [16] 2089 	ld	hl, (#_gui_ts + 10)
   3B91 E5            [11] 2090 	push	hl
   3B92 FD E1         [14] 2091 	pop	iy
   3B94 D5            [11] 2092 	push	de
   3B95 21 03 0A      [10] 2093 	ld	hl, #0x0a03
   3B98 E5            [11] 2094 	push	hl
   3B99 C5            [11] 2095 	push	bc
   3B9A FD E5         [15] 2096 	push	iy
   3B9C CD 90 8C      [17] 2097 	call	_cpct_drawSpriteMasked
   3B9F D1            [10] 2098 	pop	de
                           2099 ;src/lib/video.c:499: gy += GRID_P_H;
   3BA0 7B            [ 4] 2100 	ld	a, e
   3BA1 C6 0A         [ 7] 2101 	add	a, #0x0a
   3BA3 5F            [ 4] 2102 	ld	e, a
                           2103 ;src/lib/video.c:495: for (u8 i = 1; i < sz->h; i++) {
   3BA4 DD 34 F4      [23] 2104 	inc	-12 (ix)
   3BA7 18 C9         [12] 2105 	jr	00124$
   3BA9                    2106 00126$:
   3BA9 DD F9         [10] 2107 	ld	sp, ix
   3BAB DD E1         [14] 2108 	pop	ix
   3BAD C9            [10] 2109 	ret
                           2110 ;src/lib/video.c:504: void v_init_sprites(const u8 level) {
                           2111 ;	---------------------------------
                           2112 ; Function v_init_sprites
                           2113 ; ---------------------------------
   3BAE                    2114 _v_init_sprites::
   3BAE DD E5         [15] 2115 	push	ix
   3BB0 DD 21 00 00   [14] 2116 	ld	ix,#0
   3BB4 DD 39         [15] 2117 	add	ix,sp
                           2118 ;src/lib/video.c:506: for (u8 i = CELL_G; i <= CELL_G_P_V_H; i++) {
   3BB6 0E 00         [ 7] 2119 	ld	c, #0x00
   3BB8                    2120 00103$:
   3BB8 3E 07         [ 7] 2121 	ld	a, #0x07
   3BBA 91            [ 4] 2122 	sub	a, c
   3BBB 38 3E         [12] 2123 	jr	C,00105$
                           2124 ;src/lib/video.c:507: cpct_memset(v_cells[i], 0, sizeof(v_cells[i]));
   3BBD 69            [ 4] 2125 	ld	l, c
   3BBE 26 00         [ 7] 2126 	ld	h, #0x00
   3BC0 29            [11] 2127 	add	hl, hl
   3BC1 11 3F 30      [10] 2128 	ld	de, #_v_cells
   3BC4 19            [11] 2129 	add	hl, de
   3BC5 5D            [ 4] 2130 	ld	e,l
   3BC6 54            [ 4] 2131 	ld	d,h
   3BC7 7E            [ 7] 2132 	ld	a, (hl)
   3BC8 23            [ 6] 2133 	inc	hl
   3BC9 66            [ 7] 2134 	ld	h, (hl)
   3BCA 6F            [ 4] 2135 	ld	l, a
   3BCB E5            [11] 2136 	push	hl
   3BCC FD E1         [14] 2137 	pop	iy
   3BCE C5            [11] 2138 	push	bc
   3BCF D5            [11] 2139 	push	de
   3BD0 21 02 00      [10] 2140 	ld	hl, #0x0002
   3BD3 E5            [11] 2141 	push	hl
   3BD4 AF            [ 4] 2142 	xor	a, a
   3BD5 F5            [11] 2143 	push	af
   3BD6 33            [ 6] 2144 	inc	sp
   3BD7 FD E5         [15] 2145 	push	iy
   3BD9 CD 06 8F      [17] 2146 	call	_cpct_memset
   3BDC D1            [10] 2147 	pop	de
   3BDD C1            [10] 2148 	pop	bc
                           2149 ;src/lib/video.c:508: v_generate_sprite(v_cells[i], v_spr_map[i], level);
   3BDE 21 4F 30      [10] 2150 	ld	hl, #_v_spr_map
   3BE1 06 00         [ 7] 2151 	ld	b, #0x00
   3BE3 09            [11] 2152 	add	hl, bc
   3BE4 46            [ 7] 2153 	ld	b, (hl)
   3BE5 EB            [ 4] 2154 	ex	de,hl
   3BE6 5E            [ 7] 2155 	ld	e, (hl)
   3BE7 23            [ 6] 2156 	inc	hl
   3BE8 56            [ 7] 2157 	ld	d, (hl)
   3BE9 C5            [11] 2158 	push	bc
   3BEA DD 7E 04      [19] 2159 	ld	a, 4 (ix)
   3BED F5            [11] 2160 	push	af
   3BEE 33            [ 6] 2161 	inc	sp
   3BEF C5            [11] 2162 	push	bc
   3BF0 33            [ 6] 2163 	inc	sp
   3BF1 D5            [11] 2164 	push	de
   3BF2 CD 02 3E      [17] 2165 	call	_v_generate_sprite
   3BF5 F1            [10] 2166 	pop	af
   3BF6 F1            [10] 2167 	pop	af
   3BF7 C1            [10] 2168 	pop	bc
                           2169 ;src/lib/video.c:506: for (u8 i = CELL_G; i <= CELL_G_P_V_H; i++) {
   3BF8 0C            [ 4] 2170 	inc	c
   3BF9 18 BD         [12] 2171 	jr	00103$
   3BFB                    2172 00105$:
   3BFB DD E1         [14] 2173 	pop	ix
   3BFD C9            [10] 2174 	ret
                           2175 ;src/lib/video.c:513: inline u8* v_get_sprite_p(const u8 value) {
                           2176 ;	---------------------------------
                           2177 ; Function v_get_sprite_p
                           2178 ; ---------------------------------
   3BFE                    2179 _v_get_sprite_p::
   3BFE DD E5         [15] 2180 	push	ix
   3C00 DD 21 00 00   [14] 2181 	ld	ix,#0
   3C04 DD 39         [15] 2182 	add	ix,sp
                           2183 ;src/lib/video.c:515: switch (value) {
   3C06 DD 7E 04      [19] 2184 	ld	a, 4 (ix)
   3C09 3D            [ 4] 2185 	dec	a
   3C0A 28 33         [12] 2186 	jr	Z,00101$
   3C0C DD 7E 04      [19] 2187 	ld	a, 4 (ix)
   3C0F D6 03         [ 7] 2188 	sub	a, #0x03
   3C11 28 31         [12] 2189 	jr	Z,00102$
   3C13 DD 7E 04      [19] 2190 	ld	a, 4 (ix)
   3C16 D6 05         [ 7] 2191 	sub	a, #0x05
   3C18 28 2F         [12] 2192 	jr	Z,00103$
   3C1A DD 7E 04      [19] 2193 	ld	a, 4 (ix)
   3C1D D6 07         [ 7] 2194 	sub	a, #0x07
   3C1F 28 37         [12] 2195 	jr	Z,00106$
   3C21 DD 7E 04      [19] 2196 	ld	a, 4 (ix)
   3C24 D6 09         [ 7] 2197 	sub	a, #0x09
   3C26 28 26         [12] 2198 	jr	Z,00104$
   3C28 DD 7E 04      [19] 2199 	ld	a, 4 (ix)
   3C2B D6 0B         [ 7] 2200 	sub	a, #0x0b
   3C2D 28 2E         [12] 2201 	jr	Z,00107$
   3C2F DD 7E 04      [19] 2202 	ld	a, 4 (ix)
   3C32 D6 0D         [ 7] 2203 	sub	a, #0x0d
   3C34 28 1D         [12] 2204 	jr	Z,00105$
   3C36 DD 7E 04      [19] 2205 	ld	a, 4 (ix)
   3C39 D6 0F         [ 7] 2206 	sub	a, #0x0f
   3C3B 28 25         [12] 2207 	jr	Z,00108$
   3C3D 18 28         [12] 2208 	jr	00109$
                           2209 ;src/lib/video.c:516: case FLAG_GRID:
   3C3F                    2210 00101$:
                           2211 ;src/lib/video.c:517: return v_cells[CELL_G];
   3C3F 2A 3F 30      [16] 2212 	ld	hl, (#_v_cells + 0)
   3C42 18 26         [12] 2213 	jr	00111$
                           2214 ;src/lib/video.c:519: case FLAG_GRID | FLAG_POD:
   3C44                    2215 00102$:
                           2216 ;src/lib/video.c:520: return v_cells[CELL_G_P];
   3C44 2A 41 30      [16] 2217 	ld	hl, (#(_v_cells + 0x0002) + 0)
   3C47 18 21         [12] 2218 	jr	00111$
                           2219 ;src/lib/video.c:522: case FLAG_GRID | FLAG_V_BOLT:
   3C49                    2220 00103$:
                           2221 ;src/lib/video.c:523: return v_cells[CELL_G_V];
   3C49 2A 43 30      [16] 2222 	ld	hl, (#(_v_cells + 0x0004) + 0)
   3C4C 18 1C         [12] 2223 	jr	00111$
                           2224 ;src/lib/video.c:525: case FLAG_GRID | FLAG_H_BOLT:
   3C4E                    2225 00104$:
                           2226 ;src/lib/video.c:526: return v_cells[CELL_G_H];
   3C4E 2A 45 30      [16] 2227 	ld	hl, (#(_v_cells + 0x0006) + 0)
   3C51 18 17         [12] 2228 	jr	00111$
                           2229 ;src/lib/video.c:528: case FLAG_GRID | FLAG_V_BOLT | FLAG_H_BOLT:
   3C53                    2230 00105$:
                           2231 ;src/lib/video.c:529: return v_cells[CELL_G_V_H];
   3C53 2A 47 30      [16] 2232 	ld	hl, (#(_v_cells + 0x0008) + 0)
   3C56 18 12         [12] 2233 	jr	00111$
                           2234 ;src/lib/video.c:531: case FLAG_GRID | FLAG_POD | FLAG_V_BOLT:
   3C58                    2235 00106$:
                           2236 ;src/lib/video.c:532: return v_cells[CELL_G_P_V];
   3C58 2A 49 30      [16] 2237 	ld	hl, (#(_v_cells + 0x000a) + 0)
   3C5B 18 0D         [12] 2238 	jr	00111$
                           2239 ;src/lib/video.c:534: case FLAG_GRID | FLAG_POD | FLAG_H_BOLT:
   3C5D                    2240 00107$:
                           2241 ;src/lib/video.c:535: return v_cells[CELL_G_P_H];
   3C5D 2A 4B 30      [16] 2242 	ld	hl, (#(_v_cells + 0x000c) + 0)
   3C60 18 08         [12] 2243 	jr	00111$
                           2244 ;src/lib/video.c:537: case FLAG_GRID | FLAG_POD | FLAG_V_BOLT | FLAG_H_BOLT:
   3C62                    2245 00108$:
                           2246 ;src/lib/video.c:538: return v_cells[CELL_G_P_V_H];
   3C62 2A 4D 30      [16] 2247 	ld	hl, (#(_v_cells + 0x000e) + 0)
   3C65 18 03         [12] 2248 	jr	00111$
                           2249 ;src/lib/video.c:540: default:
   3C67                    2250 00109$:
                           2251 ;src/lib/video.c:541: return v_cells[CELL_G];
   3C67 2A 3F 30      [16] 2252 	ld	hl, (#_v_cells + 0)
                           2253 ;src/lib/video.c:542: }
   3C6A                    2254 00111$:
   3C6A DD E1         [14] 2255 	pop	ix
   3C6C C9            [10] 2256 	ret
                           2257 ;src/lib/video.c:546: void v_draw_player_bb(const i8 x, const i8 y) {
                           2258 ;	---------------------------------
                           2259 ; Function v_draw_player_bb
                           2260 ; ---------------------------------
   3C6D                    2261 _v_draw_player_bb::
   3C6D DD E5         [15] 2262 	push	ix
   3C6F DD 21 00 00   [14] 2263 	ld	ix,#0
   3C73 DD 39         [15] 2264 	add	ix,sp
   3C75 21 F7 FF      [10] 2265 	ld	hl, #-9
   3C78 39            [11] 2266 	add	hl, sp
   3C79 F9            [ 6] 2267 	ld	sp, hl
                           2268 ;src/lib/video.c:552: cpct_memset(v_player_buf, 0, sizeof(v_player_buf));
   3C7A 21 0E 01      [10] 2269 	ld	hl, #0x010e
   3C7D E5            [11] 2270 	push	hl
   3C7E AF            [ 4] 2271 	xor	a, a
   3C7F F5            [11] 2272 	push	af
   3C80 33            [ 6] 2273 	inc	sp
   3C81 21 5E 9E      [10] 2274 	ld	hl, #_v_player_buf
   3C84 E5            [11] 2275 	push	hl
   3C85 CD 06 8F      [17] 2276 	call	_cpct_memset
                           2277 ;src/lib/video.c:553: for (i8 j = x; j < x + PLAYER_BUF_W; j++) {
   3C88 DD 7E 04      [19] 2278 	ld	a, 4 (ix)
   3C8B DD 77 F7      [19] 2279 	ld	-9 (ix), a
   3C8E                    2280 00121$:
   3C8E DD 4E 04      [19] 2281 	ld	c, 4 (ix)
   3C91 DD 7E 04      [19] 2282 	ld	a, 4 (ix)
   3C94 17            [ 4] 2283 	rla
   3C95 9F            [ 4] 2284 	sbc	a, a
   3C96 47            [ 4] 2285 	ld	b, a
   3C97 03            [ 6] 2286 	inc	bc
   3C98 03            [ 6] 2287 	inc	bc
   3C99 03            [ 6] 2288 	inc	bc
   3C9A DD 7E F7      [19] 2289 	ld	a, -9 (ix)
   3C9D DD 77 FC      [19] 2290 	ld	-4 (ix), a
   3CA0 DD 7E F7      [19] 2291 	ld	a, -9 (ix)
   3CA3 17            [ 4] 2292 	rla
   3CA4 9F            [ 4] 2293 	sbc	a, a
   3CA5 DD 77 FD      [19] 2294 	ld	-3 (ix), a
   3CA8 DD 7E FC      [19] 2295 	ld	a, -4 (ix)
   3CAB 91            [ 4] 2296 	sub	a, c
   3CAC DD 7E FD      [19] 2297 	ld	a, -3 (ix)
   3CAF 98            [ 4] 2298 	sbc	a, b
   3CB0 E2 B5 3C      [10] 2299 	jp	PO, 00179$
   3CB3 EE 80         [ 7] 2300 	xor	a, #0x80
   3CB5                    2301 00179$:
   3CB5 F2 C7 3D      [10] 2302 	jp	P, 00105$
                           2303 ;src/lib/video.c:554: for (i8 k = y; k < y + PLAYER_BUF_H; k++) {
   3CB8 DD 7E 05      [19] 2304 	ld	a, 5 (ix)
   3CBB DD 77 FB      [19] 2305 	ld	-5 (ix), a
   3CBE DD 7E F7      [19] 2306 	ld	a, -9 (ix)
   3CC1 DD 96 04      [19] 2307 	sub	a, 4 (ix)
   3CC4 DD 77 FA      [19] 2308 	ld	-6 (ix), a
   3CC7 4F            [ 4] 2309 	ld	c, a
   3CC8 87            [ 4] 2310 	add	a, a
   3CC9 81            [ 4] 2311 	add	a, c
   3CCA DD 77 FA      [19] 2312 	ld	-6 (ix), a
   3CCD                    2313 00119$:
   3CCD DD 7E 05      [19] 2314 	ld	a, 5 (ix)
   3CD0 DD 77 FE      [19] 2315 	ld	-2 (ix), a
   3CD3 DD 7E 05      [19] 2316 	ld	a, 5 (ix)
   3CD6 17            [ 4] 2317 	rla
   3CD7 9F            [ 4] 2318 	sbc	a, a
   3CD8 DD 77 FF      [19] 2319 	ld	-1 (ix), a
   3CDB DD 7E FE      [19] 2320 	ld	a, -2 (ix)
   3CDE C6 03         [ 7] 2321 	add	a, #0x03
   3CE0 DD 77 FE      [19] 2322 	ld	-2 (ix), a
   3CE3 DD 7E FF      [19] 2323 	ld	a, -1 (ix)
   3CE6 CE 00         [ 7] 2324 	adc	a, #0x00
   3CE8 DD 77 FF      [19] 2325 	ld	-1 (ix), a
   3CEB DD 7E FB      [19] 2326 	ld	a, -5 (ix)
   3CEE DD 77 F8      [19] 2327 	ld	-8 (ix), a
   3CF1 DD 7E FB      [19] 2328 	ld	a, -5 (ix)
   3CF4 17            [ 4] 2329 	rla
   3CF5 9F            [ 4] 2330 	sbc	a, a
   3CF6 DD 77 F9      [19] 2331 	ld	-7 (ix), a
   3CF9 DD 7E F8      [19] 2332 	ld	a, -8 (ix)
   3CFC DD 96 FE      [19] 2333 	sub	a, -2 (ix)
   3CFF DD 7E F9      [19] 2334 	ld	a, -7 (ix)
   3D02 DD 9E FF      [19] 2335 	sbc	a, -1 (ix)
   3D05 E2 0A 3D      [10] 2336 	jp	PO, 00180$
   3D08 EE 80         [ 7] 2337 	xor	a, #0x80
   3D0A                    2338 00180$:
   3D0A F2 C1 3D      [10] 2339 	jp	P, 00122$
                           2340 ;src/lib/video.c:556: if (!u_bounds_check(j, k))
   3D0D DD 6E F8      [19] 2341 	ld	l,-8 (ix)
   3D10 DD 66 F9      [19] 2342 	ld	h,-7 (ix)
   3D13 E5            [11] 2343 	push	hl
   3D14 DD 6E FC      [19] 2344 	ld	l,-4 (ix)
   3D17 DD 66 FD      [19] 2345 	ld	h,-3 (ix)
   3D1A E5            [11] 2346 	push	hl
   3D1B CD FB 2C      [17] 2347 	call	_u_bounds_check
   3D1E F1            [10] 2348 	pop	af
   3D1F F1            [10] 2349 	pop	af
   3D20 4D            [ 4] 2350 	ld	c, l
   3D21 CB 41         [ 8] 2351 	bit	0, c
   3D23 CA BB 3D      [10] 2352 	jp	Z, 00103$
                           2353 ;src/lib/video.c:560: by = (k - y) * GRID_P_H;
   3D26 DD 7E FB      [19] 2354 	ld	a, -5 (ix)
   3D29 DD 96 05      [19] 2355 	sub	a, 5 (ix)
   3D2C 4F            [ 4] 2356 	ld	c, a
   3D2D 87            [ 4] 2357 	add	a, a
   3D2E 87            [ 4] 2358 	add	a, a
   3D2F 81            [ 4] 2359 	add	a, c
   3D30 87            [ 4] 2360 	add	a, a
                           2361 ;src/lib/video.c:562: b_pos = cpctm_spriteBufferPtr(v_player_buf,
   3D31 4F            [ 4] 2362 	ld	c,a
   3D32 06 00         [ 7] 2363 	ld	b,#0x00
   3D34 69            [ 4] 2364 	ld	l, c
   3D35 60            [ 4] 2365 	ld	h, b
   3D36 29            [11] 2366 	add	hl, hl
   3D37 29            [11] 2367 	add	hl, hl
   3D38 29            [11] 2368 	add	hl, hl
   3D39 09            [11] 2369 	add	hl, bc
   3D3A 11 5E 9E      [10] 2370 	ld	de, #_v_player_buf
   3D3D 19            [11] 2371 	add	hl, de
   3D3E DD 7E FA      [19] 2372 	ld	a, -6 (ix)
   3D41 85            [ 4] 2373 	add	a, l
   3D42 4F            [ 4] 2374 	ld	c, a
   3D43 3E 00         [ 7] 2375 	ld	a, #0x00
   3D45 8C            [ 4] 2376 	adc	a, h
   3D46 47            [ 4] 2377 	ld	b, a
                           2378 ;src/lib/video.c:564: cell = g_level[u_get_xy(j, k)];
   3D47 C5            [11] 2379 	push	bc
   3D48 DD 6E F8      [19] 2380 	ld	l,-8 (ix)
   3D4B DD 66 F9      [19] 2381 	ld	h,-7 (ix)
   3D4E E5            [11] 2382 	push	hl
   3D4F DD 6E FC      [19] 2383 	ld	l,-4 (ix)
   3D52 DD 66 FD      [19] 2384 	ld	h,-3 (ix)
   3D55 E5            [11] 2385 	push	hl
   3D56 CD 78 29      [17] 2386 	call	_u_get_xy
   3D59 F1            [10] 2387 	pop	af
   3D5A F1            [10] 2388 	pop	af
   3D5B C1            [10] 2389 	pop	bc
   3D5C 11 1B 9C      [10] 2390 	ld	de, #_g_level
   3D5F 19            [11] 2391 	add	hl, de
   3D60 7E            [ 7] 2392 	ld	a, (hl)
                           2393 ;src/lib/video.c:515: switch (value) {
   3D61 FE 01         [ 7] 2394 	cp	a, #0x01
   3D63 28 1E         [12] 2395 	jr	Z,00106$
   3D65 FE 03         [ 7] 2396 	cp	a, #0x03
   3D67 28 1F         [12] 2397 	jr	Z,00107$
   3D69 FE 05         [ 7] 2398 	cp	a, #0x05
   3D6B 28 20         [12] 2399 	jr	Z,00108$
   3D6D FE 07         [ 7] 2400 	cp	a, #0x07
   3D6F 28 2B         [12] 2401 	jr	Z,00111$
   3D71 FE 09         [ 7] 2402 	cp	a, #0x09
   3D73 28 1D         [12] 2403 	jr	Z,00109$
   3D75 FE 0B         [ 7] 2404 	cp	a, #0x0b
   3D77 28 28         [12] 2405 	jr	Z,00112$
   3D79 FE 0D         [ 7] 2406 	cp	a, #0x0d
   3D7B 28 1A         [12] 2407 	jr	Z,00110$
   3D7D D6 0F         [ 7] 2408 	sub	a, #0x0f
   3D7F 28 25         [12] 2409 	jr	Z,00113$
   3D81 18 28         [12] 2410 	jr	00114$
                           2411 ;src/lib/video.c:516: case FLAG_GRID:
   3D83                    2412 00106$:
                           2413 ;src/lib/video.c:517: return v_cells[CELL_G];
   3D83 2A 3F 30      [16] 2414 	ld	hl, (#_v_cells + 0)
   3D86 18 26         [12] 2415 	jr	00116$
                           2416 ;src/lib/video.c:519: case FLAG_GRID | FLAG_POD:
   3D88                    2417 00107$:
                           2418 ;src/lib/video.c:520: return v_cells[CELL_G_P];
   3D88 2A 41 30      [16] 2419 	ld	hl, (#_v_cells + 2)
   3D8B 18 21         [12] 2420 	jr	00116$
                           2421 ;src/lib/video.c:522: case FLAG_GRID | FLAG_V_BOLT:
   3D8D                    2422 00108$:
                           2423 ;src/lib/video.c:523: return v_cells[CELL_G_V];
   3D8D 2A 43 30      [16] 2424 	ld	hl, (#_v_cells + 4)
   3D90 18 1C         [12] 2425 	jr	00116$
                           2426 ;src/lib/video.c:525: case FLAG_GRID | FLAG_H_BOLT:
   3D92                    2427 00109$:
                           2428 ;src/lib/video.c:526: return v_cells[CELL_G_H];
   3D92 2A 45 30      [16] 2429 	ld	hl, (#_v_cells + 6)
   3D95 18 17         [12] 2430 	jr	00116$
                           2431 ;src/lib/video.c:528: case FLAG_GRID | FLAG_V_BOLT | FLAG_H_BOLT:
   3D97                    2432 00110$:
                           2433 ;src/lib/video.c:529: return v_cells[CELL_G_V_H];
   3D97 2A 47 30      [16] 2434 	ld	hl, (#_v_cells + 8)
   3D9A 18 12         [12] 2435 	jr	00116$
                           2436 ;src/lib/video.c:531: case FLAG_GRID | FLAG_POD | FLAG_V_BOLT:
   3D9C                    2437 00111$:
                           2438 ;src/lib/video.c:532: return v_cells[CELL_G_P_V];
   3D9C 2A 49 30      [16] 2439 	ld	hl, (#_v_cells + 10)
   3D9F 18 0D         [12] 2440 	jr	00116$
                           2441 ;src/lib/video.c:534: case FLAG_GRID | FLAG_POD | FLAG_H_BOLT:
   3DA1                    2442 00112$:
                           2443 ;src/lib/video.c:535: return v_cells[CELL_G_P_H];
   3DA1 2A 4B 30      [16] 2444 	ld	hl, (#_v_cells + 12)
   3DA4 18 08         [12] 2445 	jr	00116$
                           2446 ;src/lib/video.c:537: case FLAG_GRID | FLAG_POD | FLAG_V_BOLT | FLAG_H_BOLT:
   3DA6                    2447 00113$:
                           2448 ;src/lib/video.c:538: return v_cells[CELL_G_P_V_H];
   3DA6 2A 4D 30      [16] 2449 	ld	hl, (#_v_cells + 14)
   3DA9 18 03         [12] 2450 	jr	00116$
                           2451 ;src/lib/video.c:540: default:
   3DAB                    2452 00114$:
                           2453 ;src/lib/video.c:541: return v_cells[CELL_G];
   3DAB 2A 3F 30      [16] 2454 	ld	hl, (#_v_cells + 0)
                           2455 ;src/lib/video.c:565: spr = v_get_sprite_p(cell);
   3DAE                    2456 00116$:
                           2457 ;src/lib/video.c:567: GRID_P_W, GRID_P_H, spr);
                           2458 ;src/lib/video.c:566: cpct_drawToSpriteBuffer(PLAYER_BUF_PW, b_pos,
   3DAE E5            [11] 2459 	push	hl
   3DAF 21 03 0A      [10] 2460 	ld	hl, #0x0a03
   3DB2 E5            [11] 2461 	push	hl
   3DB3 C5            [11] 2462 	push	bc
   3DB4 21 09 00      [10] 2463 	ld	hl, #0x0009
   3DB7 E5            [11] 2464 	push	hl
   3DB8 CD 09 8E      [17] 2465 	call	_cpct_drawToSpriteBuffer
   3DBB                    2466 00103$:
                           2467 ;src/lib/video.c:554: for (i8 k = y; k < y + PLAYER_BUF_H; k++) {
   3DBB DD 34 FB      [23] 2468 	inc	-5 (ix)
   3DBE C3 CD 3C      [10] 2469 	jp	00119$
   3DC1                    2470 00122$:
                           2471 ;src/lib/video.c:553: for (i8 j = x; j < x + PLAYER_BUF_W; j++) {
   3DC1 DD 34 F7      [23] 2472 	inc	-9 (ix)
   3DC4 C3 8E 3C      [10] 2473 	jp	00121$
   3DC7                    2474 00105$:
                           2475 ;src/lib/video.c:572: px = x * GRID_P_W; 
   3DC7 DD 4E 04      [19] 2476 	ld	c, 4 (ix)
   3DCA 79            [ 4] 2477 	ld	a, c
   3DCB CB 07         [ 8] 2478 	rlc	a
   3DCD 9F            [ 4] 2479 	sbc	a, a
   3DCE 47            [ 4] 2480 	ld	b, a
   3DCF 69            [ 4] 2481 	ld	l, c
   3DD0 60            [ 4] 2482 	ld	h, b
   3DD1 29            [11] 2483 	add	hl, hl
   3DD2 09            [11] 2484 	add	hl, bc
   3DD3 4D            [ 4] 2485 	ld	c, l
                           2486 ;src/lib/video.c:573: py = y * GRID_P_H;
   3DD4 DD 5E 05      [19] 2487 	ld	e, 5 (ix)
   3DD7 7B            [ 4] 2488 	ld	a, e
   3DD8 CB 07         [ 8] 2489 	rlc	a
   3DDA 9F            [ 4] 2490 	sbc	a, a
   3DDB 57            [ 4] 2491 	ld	d, a
   3DDC 6B            [ 4] 2492 	ld	l, e
   3DDD 62            [ 4] 2493 	ld	h, d
   3DDE 29            [11] 2494 	add	hl, hl
   3DDF 29            [11] 2495 	add	hl, hl
   3DE0 19            [11] 2496 	add	hl, de
   3DE1 29            [11] 2497 	add	hl, hl
                           2498 ;src/lib/video.c:575: v_pos = v_get_pos(GRID_LOC_X + px, GRID_LOC_Y + py);
   3DE2 7D            [ 4] 2499 	ld	a, l
   3DE3 C6 12         [ 7] 2500 	add	a, #0x12
   3DE5 57            [ 4] 2501 	ld	d, a
   3DE6 0C            [ 4] 2502 	inc	c
   3DE7 0C            [ 4] 2503 	inc	c
                           2504 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3DE8 59            [ 4] 2505 	ld	e, c
   3DE9 D5            [11] 2506 	push	de
   3DEA 21 00 C0      [10] 2507 	ld	hl, #0xc000
   3DED E5            [11] 2508 	push	hl
   3DEE CD E1 8F      [17] 2509 	call	_cpct_getScreenPtr
                           2510 ;src/lib/video.c:575: v_pos = v_get_pos(GRID_LOC_X + px, GRID_LOC_Y + py);
                           2511 ;src/lib/video.c:576: cpct_drawSprite(v_player_buf, v_pos, PLAYER_BUF_PW, PLAYER_BUF_PH);
   3DF1 01 09 1E      [10] 2512 	ld	bc, #0x1e09
   3DF4 C5            [11] 2513 	push	bc
   3DF5 E5            [11] 2514 	push	hl
   3DF6 21 5E 9E      [10] 2515 	ld	hl, #_v_player_buf
   3DF9 E5            [11] 2516 	push	hl
   3DFA CD 6F 8B      [17] 2517 	call	_cpct_drawSprite
   3DFD DD F9         [10] 2518 	ld	sp, ix
   3DFF DD E1         [14] 2519 	pop	ix
   3E01 C9            [10] 2520 	ret
                           2521 ;src/lib/video.c:580: static void v_generate_sprite(u8* addr, const u8 mask, const u8 level) {
                           2522 ;	---------------------------------
                           2523 ; Function v_generate_sprite
                           2524 ; ---------------------------------
   3E02                    2525 _v_generate_sprite:
   3E02 DD E5         [15] 2526 	push	ix
   3E04 DD 21 00 00   [14] 2527 	ld	ix,#0
   3E08 DD 39         [15] 2528 	add	ix,sp
   3E0A F5            [11] 2529 	push	af
                           2530 ;src/lib/video.c:582: const u8 bg = g_game_grid_bg[level - 1];
   3E0B 11 5C 65      [10] 2531 	ld	de, #_g_game_grid_bg+0
   3E0E DD 4E 07      [19] 2532 	ld	c, 7 (ix)
   3E11 0D            [ 4] 2533 	dec	c
   3E12 69            [ 4] 2534 	ld	l,c
   3E13 26 00         [ 7] 2535 	ld	h,#0x00
   3E15 19            [11] 2536 	add	hl, de
   3E16 5E            [ 7] 2537 	ld	e, (hl)
                           2538 ;src/lib/video.c:583: const u8 fg = g_game_grid_fg[level - 1];
   3E17 21 64 65      [10] 2539 	ld	hl, #_g_game_grid_fg+0
   3E1A 06 00         [ 7] 2540 	ld	b, #0x00
   3E1C 09            [11] 2541 	add	hl, bc
   3E1D 7E            [ 7] 2542 	ld	a, (hl)
   3E1E DD 77 FE      [19] 2543 	ld	-2 (ix), a
                           2544 ;src/lib/video.c:584: const u8 bt = g_game_grid_bt[level - 1];
   3E21 21 6C 65      [10] 2545 	ld	hl, #_g_game_grid_bt+0
   3E24 06 00         [ 7] 2546 	ld	b,#0x00
   3E26 09            [11] 2547 	add	hl, bc
   3E27 7E            [ 7] 2548 	ld	a, (hl)
   3E28 DD 77 FF      [19] 2549 	ld	-1 (ix), a
                           2550 ;src/lib/video.c:587: spr = cpctm_spriteBufferPtr(addr, CELL_BUF_PW, 0, 0);
   3E2B DD 4E 04      [19] 2551 	ld	c,4 (ix)
   3E2E DD 46 05      [19] 2552 	ld	b,5 (ix)
                           2553 ;src/lib/video.c:591: CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_bg_ts[bg]);
                           2554 ;src/lib/video.c:589: if (mask & FLAG_GRID)
   3E31 DD CB 06 46   [20] 2555 	bit	0, 6 (ix)
   3E35 28 19         [12] 2556 	jr	Z,00102$
                           2557 ;src/lib/video.c:591: CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_bg_ts[bg]);
   3E37 6B            [ 4] 2558 	ld	l, e
   3E38 26 00         [ 7] 2559 	ld	h, #0x00
   3E3A 29            [11] 2560 	add	hl, hl
   3E3B 11 18 6D      [10] 2561 	ld	de, #_grid_bg_ts
   3E3E 19            [11] 2562 	add	hl, de
   3E3F 5E            [ 7] 2563 	ld	e, (hl)
   3E40 23            [ 6] 2564 	inc	hl
   3E41 56            [ 7] 2565 	ld	d, (hl)
   3E42 C5            [11] 2566 	push	bc
   3E43 D5            [11] 2567 	push	de
   3E44 21 03 0A      [10] 2568 	ld	hl, #0x0a03
   3E47 E5            [11] 2569 	push	hl
   3E48 C5            [11] 2570 	push	bc
   3E49 26 00         [ 7] 2571 	ld	h, #0x00
   3E4B E5            [11] 2572 	push	hl
   3E4C CD 09 8E      [17] 2573 	call	_cpct_drawToSpriteBuffer
   3E4F C1            [10] 2574 	pop	bc
   3E50                    2575 00102$:
                           2576 ;src/lib/video.c:592: if (mask & FLAG_POD)
   3E50 DD CB 06 4E   [20] 2577 	bit	1, 6 (ix)
   3E54 28 1B         [12] 2578 	jr	Z,00104$
                           2579 ;src/lib/video.c:594: CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_fg_ts[fg]);
   3E56 11 F8 6D      [10] 2580 	ld	de, #_grid_fg_ts+0
   3E59 DD 6E FE      [19] 2581 	ld	l, -2 (ix)
   3E5C 26 00         [ 7] 2582 	ld	h, #0x00
   3E5E 29            [11] 2583 	add	hl, hl
   3E5F 19            [11] 2584 	add	hl, de
   3E60 5E            [ 7] 2585 	ld	e, (hl)
   3E61 23            [ 6] 2586 	inc	hl
   3E62 56            [ 7] 2587 	ld	d, (hl)
   3E63 C5            [11] 2588 	push	bc
   3E64 D5            [11] 2589 	push	de
   3E65 21 03 0A      [10] 2590 	ld	hl, #0x0a03
   3E68 E5            [11] 2591 	push	hl
   3E69 C5            [11] 2592 	push	bc
   3E6A 26 00         [ 7] 2593 	ld	h, #0x00
   3E6C E5            [11] 2594 	push	hl
   3E6D CD 35 90      [17] 2595 	call	_cpct_drawToSpriteBufferMasked
   3E70 C1            [10] 2596 	pop	bc
   3E71                    2597 00104$:
                           2598 ;src/lib/video.c:595: if (mask & FLAG_V_BOLT)
   3E71 DD CB 06 56   [20] 2599 	bit	2, 6 (ix)
   3E75 28 1D         [12] 2600 	jr	Z,00106$
                           2601 ;src/lib/video.c:597: CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_fg_ts[bt + 2]);
   3E77 11 F8 6D      [10] 2602 	ld	de, #_grid_fg_ts+0
   3E7A DD 6E FF      [19] 2603 	ld	l, -1 (ix)
   3E7D 2C            [ 4] 2604 	inc	l
   3E7E 2C            [ 4] 2605 	inc	l
   3E7F 26 00         [ 7] 2606 	ld	h, #0x00
   3E81 29            [11] 2607 	add	hl, hl
   3E82 19            [11] 2608 	add	hl, de
   3E83 5E            [ 7] 2609 	ld	e, (hl)
   3E84 23            [ 6] 2610 	inc	hl
   3E85 56            [ 7] 2611 	ld	d, (hl)
   3E86 C5            [11] 2612 	push	bc
   3E87 D5            [11] 2613 	push	de
   3E88 21 03 0A      [10] 2614 	ld	hl, #0x0a03
   3E8B E5            [11] 2615 	push	hl
   3E8C C5            [11] 2616 	push	bc
   3E8D 26 00         [ 7] 2617 	ld	h, #0x00
   3E8F E5            [11] 2618 	push	hl
   3E90 CD 35 90      [17] 2619 	call	_cpct_drawToSpriteBufferMasked
   3E93 C1            [10] 2620 	pop	bc
   3E94                    2621 00106$:
                           2622 ;src/lib/video.c:598: if (mask & FLAG_H_BOLT)
   3E94 DD CB 06 5E   [20] 2623 	bit	3, 6 (ix)
   3E98 28 19         [12] 2624 	jr	Z,00109$
                           2625 ;src/lib/video.c:600: CELL_BUF_PW, spr, CELL_BUF_PW, CELL_BUF_PH, grid_fg_ts[bt]);
   3E9A 11 F8 6D      [10] 2626 	ld	de, #_grid_fg_ts+0
   3E9D DD 6E FF      [19] 2627 	ld	l, -1 (ix)
   3EA0 26 00         [ 7] 2628 	ld	h, #0x00
   3EA2 29            [11] 2629 	add	hl, hl
   3EA3 19            [11] 2630 	add	hl, de
   3EA4 5E            [ 7] 2631 	ld	e, (hl)
   3EA5 23            [ 6] 2632 	inc	hl
   3EA6 56            [ 7] 2633 	ld	d, (hl)
   3EA7 D5            [11] 2634 	push	de
   3EA8 21 03 0A      [10] 2635 	ld	hl, #0x0a03
   3EAB E5            [11] 2636 	push	hl
   3EAC C5            [11] 2637 	push	bc
   3EAD 26 00         [ 7] 2638 	ld	h, #0x00
   3EAF E5            [11] 2639 	push	hl
   3EB0 CD 35 90      [17] 2640 	call	_cpct_drawToSpriteBufferMasked
   3EB3                    2641 00109$:
   3EB3 DD F9         [10] 2642 	ld	sp, ix
   3EB5 DD E1         [14] 2643 	pop	ix
   3EB7 C9            [10] 2644 	ret
                           2645 ;src/lib/video.c:604: static void v_draw_grid_cell(const u8 x, const u8 y) {
                           2646 ;	---------------------------------
                           2647 ; Function v_draw_grid_cell
                           2648 ; ---------------------------------
   3EB8                    2649 _v_draw_grid_cell:
   3EB8 DD E5         [15] 2650 	push	ix
   3EBA DD 21 00 00   [14] 2651 	ld	ix,#0
   3EBE DD 39         [15] 2652 	add	ix,sp
                           2653 ;src/lib/video.c:610: idx = u_get_xy(x, y);
   3EC0 DD 5E 05      [19] 2654 	ld	e, 5 (ix)
   3EC3 16 00         [ 7] 2655 	ld	d, #0x00
   3EC5 DD 4E 04      [19] 2656 	ld	c, 4 (ix)
   3EC8 06 00         [ 7] 2657 	ld	b, #0x00
   3ECA D5            [11] 2658 	push	de
   3ECB C5            [11] 2659 	push	bc
   3ECC CD 78 29      [17] 2660 	call	_u_get_xy
   3ECF F1            [10] 2661 	pop	af
   3ED0 F1            [10] 2662 	pop	af
   3ED1 4D            [ 4] 2663 	ld	c, l
   3ED2 44            [ 4] 2664 	ld	b, h
                           2665 ;src/lib/video.c:612: cell = g_level[idx];
   3ED3 21 1B 9C      [10] 2666 	ld	hl, #_g_level+0
   3ED6 09            [11] 2667 	add	hl, bc
   3ED7 7E            [ 7] 2668 	ld	a, (hl)
                           2669 ;src/lib/video.c:515: switch (value) {
   3ED8 FE 01         [ 7] 2670 	cp	a, #0x01
   3EDA 28 1E         [12] 2671 	jr	Z,00101$
   3EDC FE 03         [ 7] 2672 	cp	a, #0x03
   3EDE 28 20         [12] 2673 	jr	Z,00102$
   3EE0 FE 05         [ 7] 2674 	cp	a, #0x05
   3EE2 28 22         [12] 2675 	jr	Z,00103$
   3EE4 FE 07         [ 7] 2676 	cp	a, #0x07
   3EE6 28 30         [12] 2677 	jr	Z,00106$
   3EE8 FE 09         [ 7] 2678 	cp	a, #0x09
   3EEA 28 20         [12] 2679 	jr	Z,00104$
   3EEC FE 0B         [ 7] 2680 	cp	a, #0x0b
   3EEE 28 2E         [12] 2681 	jr	Z,00107$
   3EF0 FE 0D         [ 7] 2682 	cp	a, #0x0d
   3EF2 28 1E         [12] 2683 	jr	Z,00105$
   3EF4 D6 0F         [ 7] 2684 	sub	a, #0x0f
   3EF6 28 2C         [12] 2685 	jr	Z,00108$
   3EF8 18 30         [12] 2686 	jr	00109$
                           2687 ;src/lib/video.c:516: case FLAG_GRID:
   3EFA                    2688 00101$:
                           2689 ;src/lib/video.c:517: return v_cells[CELL_G];
   3EFA ED 4B 3F 30   [20] 2690 	ld	bc, (#_v_cells + 0)
   3EFE 18 2E         [12] 2691 	jr	00111$
                           2692 ;src/lib/video.c:519: case FLAG_GRID | FLAG_POD:
   3F00                    2693 00102$:
                           2694 ;src/lib/video.c:520: return v_cells[CELL_G_P];
   3F00 ED 4B 41 30   [20] 2695 	ld	bc, (#(_v_cells + 0x0002) + 0)
   3F04 18 28         [12] 2696 	jr	00111$
                           2697 ;src/lib/video.c:522: case FLAG_GRID | FLAG_V_BOLT:
   3F06                    2698 00103$:
                           2699 ;src/lib/video.c:523: return v_cells[CELL_G_V];
   3F06 ED 4B 43 30   [20] 2700 	ld	bc, (#(_v_cells + 0x0004) + 0)
   3F0A 18 22         [12] 2701 	jr	00111$
                           2702 ;src/lib/video.c:525: case FLAG_GRID | FLAG_H_BOLT:
   3F0C                    2703 00104$:
                           2704 ;src/lib/video.c:526: return v_cells[CELL_G_H];
   3F0C ED 4B 45 30   [20] 2705 	ld	bc, (#(_v_cells + 0x0006) + 0)
   3F10 18 1C         [12] 2706 	jr	00111$
                           2707 ;src/lib/video.c:528: case FLAG_GRID | FLAG_V_BOLT | FLAG_H_BOLT:
   3F12                    2708 00105$:
                           2709 ;src/lib/video.c:529: return v_cells[CELL_G_V_H];
   3F12 ED 4B 47 30   [20] 2710 	ld	bc, (#(_v_cells + 0x0008) + 0)
   3F16 18 16         [12] 2711 	jr	00111$
                           2712 ;src/lib/video.c:531: case FLAG_GRID | FLAG_POD | FLAG_V_BOLT:
   3F18                    2713 00106$:
                           2714 ;src/lib/video.c:532: return v_cells[CELL_G_P_V];
   3F18 ED 4B 49 30   [20] 2715 	ld	bc, (#(_v_cells + 0x000a) + 0)
   3F1C 18 10         [12] 2716 	jr	00111$
                           2717 ;src/lib/video.c:534: case FLAG_GRID | FLAG_POD | FLAG_H_BOLT:
   3F1E                    2718 00107$:
                           2719 ;src/lib/video.c:535: return v_cells[CELL_G_P_H];
   3F1E ED 4B 4B 30   [20] 2720 	ld	bc, (#(_v_cells + 0x000c) + 0)
   3F22 18 0A         [12] 2721 	jr	00111$
                           2722 ;src/lib/video.c:537: case FLAG_GRID | FLAG_POD | FLAG_V_BOLT | FLAG_H_BOLT:
   3F24                    2723 00108$:
                           2724 ;src/lib/video.c:538: return v_cells[CELL_G_P_V_H];
   3F24 ED 4B 4D 30   [20] 2725 	ld	bc, (#(_v_cells + 0x000e) + 0)
   3F28 18 04         [12] 2726 	jr	00111$
                           2727 ;src/lib/video.c:540: default:
   3F2A                    2728 00109$:
                           2729 ;src/lib/video.c:541: return v_cells[CELL_G];
   3F2A ED 4B 3F 30   [20] 2730 	ld	bc, (#_v_cells + 0)
                           2731 ;src/lib/video.c:613: spr = v_get_sprite_p(cell);
   3F2E                    2732 00111$:
                           2733 ;src/lib/video.c:615: px = x * GRID_P_W;
   3F2E DD 5E 04      [19] 2734 	ld	e,4 (ix)
   3F31 16 00         [ 7] 2735 	ld	d,#0x00
   3F33 6B            [ 4] 2736 	ld	l, e
   3F34 62            [ 4] 2737 	ld	h, d
   3F35 29            [11] 2738 	add	hl, hl
   3F36 19            [11] 2739 	add	hl, de
                           2740 ;src/lib/video.c:616: py = y * GRID_P_H;
   3F37 E5            [11] 2741 	push	hl
   3F38 DD 5E 05      [19] 2742 	ld	e,5 (ix)
   3F3B 16 00         [ 7] 2743 	ld	d,#0x00
   3F3D 6B            [ 4] 2744 	ld	l, e
   3F3E 62            [ 4] 2745 	ld	h, d
   3F3F 29            [11] 2746 	add	hl, hl
   3F40 29            [11] 2747 	add	hl, hl
   3F41 19            [11] 2748 	add	hl, de
   3F42 29            [11] 2749 	add	hl, hl
   3F43 D1            [10] 2750 	pop	de
                           2751 ;src/lib/video.c:619: v_pos = v_get_pos(GRID_LOC_X + px, GRID_LOC_Y + py);
   3F44 7D            [ 4] 2752 	ld	a, l
   3F45 C6 12         [ 7] 2753 	add	a, #0x12
   3F47 67            [ 4] 2754 	ld	h, a
   3F48 53            [ 4] 2755 	ld	d, e
   3F49 14            [ 4] 2756 	inc	d
   3F4A 14            [ 4] 2757 	inc	d
                           2758 ;src/lib/video.c:217: return cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3F4B C5            [11] 2759 	push	bc
   3F4C 6A            [ 4] 2760 	ld	l, d
   3F4D E5            [11] 2761 	push	hl
   3F4E 21 00 C0      [10] 2762 	ld	hl, #0xc000
   3F51 E5            [11] 2763 	push	hl
   3F52 CD E1 8F      [17] 2764 	call	_cpct_getScreenPtr
   3F55 C1            [10] 2765 	pop	bc
                           2766 ;src/lib/video.c:619: v_pos = v_get_pos(GRID_LOC_X + px, GRID_LOC_Y + py);
                           2767 ;src/lib/video.c:620: cpct_drawSprite(spr, v_pos, GRID_P_W, GRID_P_H);
   3F56 11 03 0A      [10] 2768 	ld	de, #0x0a03
   3F59 D5            [11] 2769 	push	de
   3F5A E5            [11] 2770 	push	hl
   3F5B C5            [11] 2771 	push	bc
   3F5C CD 6F 8B      [17] 2772 	call	_cpct_drawSprite
   3F5F DD E1         [14] 2773 	pop	ix
   3F61 C9            [10] 2774 	ret
                           2775 ;src/lib/video.c:624: void v_draw_grid(void) {
                           2776 ;	---------------------------------
                           2777 ; Function v_draw_grid
                           2778 ; ---------------------------------
   3F62                    2779 _v_draw_grid::
                           2780 ;src/lib/video.c:627: for (int x = 0; x < GRID_U_W; x++) {
   3F62 01 00 00      [10] 2781 	ld	bc, #0x0000
   3F65                    2782 00107$:
   3F65 79            [ 4] 2783 	ld	a, c
   3F66 D6 19         [ 7] 2784 	sub	a, #0x19
   3F68 78            [ 4] 2785 	ld	a, b
   3F69 17            [ 4] 2786 	rla
   3F6A 3F            [ 4] 2787 	ccf
   3F6B 1F            [ 4] 2788 	rra
   3F6C DE 80         [ 7] 2789 	sbc	a, #0x80
   3F6E D0            [11] 2790 	ret	NC
                           2791 ;src/lib/video.c:628: for (int y = 0; y < GRID_U_H; y++) {
   3F6F 11 00 00      [10] 2792 	ld	de, #0x0000
   3F72                    2793 00104$:
   3F72 7B            [ 4] 2794 	ld	a, e
   3F73 D6 11         [ 7] 2795 	sub	a, #0x11
   3F75 7A            [ 4] 2796 	ld	a, d
   3F76 17            [ 4] 2797 	rla
   3F77 3F            [ 4] 2798 	ccf
   3F78 1F            [ 4] 2799 	rra
   3F79 DE 80         [ 7] 2800 	sbc	a, #0x80
   3F7B 30 11         [12] 2801 	jr	NC,00108$
                           2802 ;src/lib/video.c:629: v_draw_grid_cell(x, y);
   3F7D 63            [ 4] 2803 	ld	h, e
   3F7E 79            [ 4] 2804 	ld	a, c
   3F7F C5            [11] 2805 	push	bc
   3F80 D5            [11] 2806 	push	de
   3F81 E5            [11] 2807 	push	hl
   3F82 33            [ 6] 2808 	inc	sp
   3F83 F5            [11] 2809 	push	af
   3F84 33            [ 6] 2810 	inc	sp
   3F85 CD B8 3E      [17] 2811 	call	_v_draw_grid_cell
   3F88 F1            [10] 2812 	pop	af
   3F89 D1            [10] 2813 	pop	de
   3F8A C1            [10] 2814 	pop	bc
                           2815 ;src/lib/video.c:628: for (int y = 0; y < GRID_U_H; y++) {
   3F8B 13            [ 6] 2816 	inc	de
   3F8C 18 E4         [12] 2817 	jr	00104$
   3F8E                    2818 00108$:
                           2819 ;src/lib/video.c:627: for (int x = 0; x < GRID_U_W; x++) {
   3F8E 03            [ 6] 2820 	inc	bc
   3F8F 18 D4         [12] 2821 	jr	00107$
                           2822 	.area _CODE
                           2823 	.area _INITIALIZER
   A103                    2824 __xinit__v_int_idx:
   A103 00                 2825 	.db #0x00	; 0
   A104                    2826 __xinit__v_pal_idx:
   A104 00                 2827 	.db #0x00	; 0
   A105                    2828 __xinit__v_frame_c:
   A105 00                 2829 	.db #0x00	; 0
   A106                    2830 __xinit__v_cycle_c:
   A106 00 00              2831 	.dw #0x0000
                           2832 	.area _CABS (ABS)
