                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module redefine
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
                             20 	.globl _u_map_char_to_key
                             21 	.globl _u_map_key_to_char
                             22 	.globl _u_wait
                             23 	.globl _cpct_waitVSYNC
                             24 	.globl _cpct_getKeypressedAsASCII
                             25 	.globl _cpct_isKeyPressed
                             26 	.globl _cpct_scanKeyboard_f
                             27 	.globl _cpct_removeInterruptHandler
                             28 	.globl _cpct_setInterruptHandler
                             29 	.globl _controls
                             30 	.globl _r_start
                             31 	.globl _r_stop
                             32 ;--------------------------------------------------------
                             33 ; special function registers
                             34 ;--------------------------------------------------------
                             35 ;--------------------------------------------------------
                             36 ; ram data
                             37 ;--------------------------------------------------------
                             38 	.area _DATA
   9E48                      39 _controls::
   9E48                      40 	.ds 18
                             41 ;--------------------------------------------------------
                             42 ; ram data
                             43 ;--------------------------------------------------------
                             44 	.area _INITIALIZED
                             45 ;--------------------------------------------------------
                             46 ; absolute external ram data
                             47 ;--------------------------------------------------------
                             48 	.area _DABS (ABS)
                             49 ;--------------------------------------------------------
                             50 ; global & static initialisations
                             51 ;--------------------------------------------------------
                             52 	.area _HOME
                             53 	.area _GSINIT
                             54 	.area _GSFINAL
                             55 	.area _GSINIT
                             56 ;--------------------------------------------------------
                             57 ; Home
                             58 ;--------------------------------------------------------
                             59 	.area _HOME
                             60 	.area _HOME
                             61 ;--------------------------------------------------------
                             62 ; code
                             63 ;--------------------------------------------------------
                             64 	.area _CODE
                             65 ;src/redefine.c:30: void r_start(void) {
                             66 ;	---------------------------------
                             67 ; Function r_start
                             68 ; ---------------------------------
   205B                      69 _r_start::
   205B DD E5         [15]   70 	push	ix
   205D DD 21 00 00   [14]   71 	ld	ix,#0
   2061 DD 39         [15]   72 	add	ix,sp
   2063 F5            [11]   73 	push	af
                             74 ;src/redefine.c:38: v_blk_scr();
   2064 CD 72 30      [17]   75 	call	_v_blk_scr
                             76 ;src/redefine.c:39: v_clr_scr();
   2067 CD F2 30      [17]   77 	call	_v_clr_scr
                             78 ;src/redefine.c:42: for (u8 i = 0; i < 9; i++)
   206A 01 48 9E      [10]   79 	ld	bc, #_controls+0
   206D 1E 00         [ 7]   80 	ld	e, #0x00
   206F                      81 00132$:
   206F 7B            [ 4]   82 	ld	a, e
   2070 D6 09         [ 7]   83 	sub	a, #0x09
   2072 30 1D         [12]   84 	jr	NC,00101$
                             85 ;src/redefine.c:43: controls[i] = g_controls[i];
   2074 6B            [ 4]   86 	ld	l, e
   2075 26 00         [ 7]   87 	ld	h, #0x00
   2077 29            [11]   88 	add	hl, hl
   2078 E5            [11]   89 	push	hl
   2079 FD E1         [14]   90 	pop	iy
   207B FD 09         [15]   91 	add	iy, bc
   207D 3E 2C         [ 7]   92 	ld	a, #<(_g_controls)
   207F 85            [ 4]   93 	add	a, l
   2080 6F            [ 4]   94 	ld	l, a
   2081 3E 9E         [ 7]   95 	ld	a, #>(_g_controls)
   2083 8C            [ 4]   96 	adc	a, h
   2084 67            [ 4]   97 	ld	h, a
   2085 7E            [ 7]   98 	ld	a, (hl)
   2086 23            [ 6]   99 	inc	hl
   2087 56            [ 7]  100 	ld	d, (hl)
   2088 FD 77 00      [19]  101 	ld	0 (iy), a
   208B FD 72 01      [19]  102 	ld	1 (iy), d
                            103 ;src/redefine.c:42: for (u8 i = 0; i < 9; i++)
   208E 1C            [ 4]  104 	inc	e
   208F 18 DE         [12]  105 	jr	00132$
   2091                     106 00101$:
                            107 ;src/redefine.c:46: v_draw_logo();
   2091 C5            [11]  108 	push	bc
   2092 CD 33 30      [17]  109 	call	_v_draw_logo
   2095 AF            [ 4]  110 	xor	a, a
   2096 F5            [11]  111 	push	af
   2097 33            [ 6]  112 	inc	sp
   2098 CD E2 21      [17]  113 	call	_h_draw_redefine
   209B 33            [ 6]  114 	inc	sp
   209C CD 2D 32      [17]  115 	call	_v_reset_pal
   209F CD CB 32      [17]  116 	call	_v_reset_timers
   20A2 CD BB 8E      [17]  117 	call	_cpct_waitVSYNC
   20A5 21 DB 32      [10]  118 	ld	hl, #_v_interrupt
   20A8 CD 59 90      [17]  119 	call	_cpct_setInterruptHandler
   20AB C1            [10]  120 	pop	bc
                            121 ;src/redefine.c:55: while (current <= KEY_PAUSE) {
   20AC 1E 00         [ 7]  122 	ld	e, #0x00
   20AE                     123 00127$:
   20AE 3E 04         [ 7]  124 	ld	a, #0x04
   20B0 93            [ 4]  125 	sub	a, e
   20B1 DA 9A 21      [10]  126 	jp	C, 00129$
                            127 ;src/redefine.c:58: cpct_scanKeyboard_f();
   20B4 C5            [11]  128 	push	bc
   20B5 D5            [11]  129 	push	de
   20B6 CD 84 8A      [17]  130 	call	_cpct_scanKeyboard_f
   20B9 CD 0A 8D      [17]  131 	call	_cpct_getKeypressedAsASCII
   20BC D1            [10]  132 	pop	de
   20BD C1            [10]  133 	pop	bc
   20BE 55            [ 4]  134 	ld	d, l
                            135 ;src/redefine.c:62: if ((ascii != 0) && (ascii >= 65) && (ascii <= 122)) {
   20BF 7A            [ 4]  136 	ld	a, d
   20C0 B7            [ 4]  137 	or	a, a
   20C1 28 29         [12]  138 	jr	Z,00121$
   20C3 7A            [ 4]  139 	ld	a, d
   20C4 D6 41         [ 7]  140 	sub	a, #0x41
   20C6 38 24         [12]  141 	jr	C,00121$
   20C8 3E 7A         [ 7]  142 	ld	a, #0x7a
   20CA 92            [ 4]  143 	sub	a, d
   20CB 3E 00         [ 7]  144 	ld	a, #0x00
   20CD 17            [ 4]  145 	rla
   20CE 6F            [ 4]  146 	ld	l, a
   20CF CB 45         [ 8]  147 	bit	0, l
   20D1 20 19         [12]  148 	jr	NZ,00121$
                            149 ;src/redefine.c:64: if (ascii >= 'a' && ascii <= 'z')
   20D3 7A            [ 4]  150 	ld	a, d
   20D4 D6 61         [ 7]  151 	sub	a, #0x61
   20D6 38 08         [12]  152 	jr	C,00103$
   20D8 CB 45         [ 8]  153 	bit	0, l
   20DA 20 04         [12]  154 	jr	NZ,00103$
                            155 ;src/redefine.c:65: ascii = ascii - 32;
   20DC 7A            [ 4]  156 	ld	a, d
   20DD C6 E0         [ 7]  157 	add	a, #0xe0
   20DF 57            [ 4]  158 	ld	d, a
   20E0                     159 00103$:
                            160 ;src/redefine.c:67: key = u_map_char_to_key(ascii);
   20E0 C5            [11]  161 	push	bc
   20E1 D5            [11]  162 	push	de
   20E2 D5            [11]  163 	push	de
   20E3 33            [ 6]  164 	inc	sp
   20E4 CD 93 29      [17]  165 	call	_u_map_char_to_key
   20E7 33            [ 6]  166 	inc	sp
   20E8 D1            [10]  167 	pop	de
   20E9 C1            [10]  168 	pop	bc
   20EA 18 5E         [12]  169 	jr	00122$
   20EC                     170 00121$:
                            171 ;src/redefine.c:71: if (cpct_isKeyPressed(Key_Esc))
   20EC C5            [11]  172 	push	bc
   20ED D5            [11]  173 	push	de
   20EE 21 08 04      [10]  174 	ld	hl, #0x0408
   20F1 CD EE 8A      [17]  175 	call	_cpct_isKeyPressed
   20F4 D1            [10]  176 	pop	de
   20F5 C1            [10]  177 	pop	bc
   20F6 7D            [ 4]  178 	ld	a, l
   20F7 B7            [ 4]  179 	or	a, a
                            180 ;src/redefine.c:72: return;	
   20F8 C2 C6 21      [10]  181 	jp	NZ,00137$
                            182 ;src/redefine.c:73: else if (cpct_isKeyPressed(Key_CursorLeft))
   20FB C5            [11]  183 	push	bc
   20FC D5            [11]  184 	push	de
   20FD 21 01 01      [10]  185 	ld	hl, #0x0101
   2100 CD EE 8A      [17]  186 	call	_cpct_isKeyPressed
   2103 D1            [10]  187 	pop	de
   2104 C1            [10]  188 	pop	bc
   2105 7D            [ 4]  189 	ld	a, l
   2106 B7            [ 4]  190 	or	a, a
   2107 28 05         [12]  191 	jr	Z,00115$
                            192 ;src/redefine.c:74: key = Key_CursorLeft;
   2109 21 01 01      [10]  193 	ld	hl, #0x0101
   210C 18 3C         [12]  194 	jr	00122$
   210E                     195 00115$:
                            196 ;src/redefine.c:75: else if (cpct_isKeyPressed(Key_CursorRight))
   210E C5            [11]  197 	push	bc
   210F D5            [11]  198 	push	de
   2110 21 00 02      [10]  199 	ld	hl, #0x0200
   2113 CD EE 8A      [17]  200 	call	_cpct_isKeyPressed
   2116 D1            [10]  201 	pop	de
   2117 C1            [10]  202 	pop	bc
   2118 7D            [ 4]  203 	ld	a, l
   2119 B7            [ 4]  204 	or	a, a
   211A 28 05         [12]  205 	jr	Z,00112$
                            206 ;src/redefine.c:76: key = Key_CursorRight;
   211C 21 00 02      [10]  207 	ld	hl, #0x0200
   211F 18 29         [12]  208 	jr	00122$
   2121                     209 00112$:
                            210 ;src/redefine.c:77: else if (cpct_isKeyPressed(Key_CursorUp))
   2121 C5            [11]  211 	push	bc
   2122 D5            [11]  212 	push	de
   2123 21 00 01      [10]  213 	ld	hl, #0x0100
   2126 CD EE 8A      [17]  214 	call	_cpct_isKeyPressed
   2129 D1            [10]  215 	pop	de
   212A C1            [10]  216 	pop	bc
   212B 7D            [ 4]  217 	ld	a, l
   212C B7            [ 4]  218 	or	a, a
   212D 28 05         [12]  219 	jr	Z,00109$
                            220 ;src/redefine.c:78: key = Key_CursorUp;
   212F 21 00 01      [10]  221 	ld	hl, #0x0100
   2132 18 16         [12]  222 	jr	00122$
   2134                     223 00109$:
                            224 ;src/redefine.c:79: else if (cpct_isKeyPressed(Key_CursorDown))
   2134 C5            [11]  225 	push	bc
   2135 D5            [11]  226 	push	de
   2136 21 00 04      [10]  227 	ld	hl, #0x0400
   2139 CD EE 8A      [17]  228 	call	_cpct_isKeyPressed
   213C D1            [10]  229 	pop	de
   213D C1            [10]  230 	pop	bc
   213E 7D            [ 4]  231 	ld	a, l
   213F B7            [ 4]  232 	or	a, a
   2140 28 05         [12]  233 	jr	Z,00106$
                            234 ;src/redefine.c:80: key = Key_CursorDown;
   2142 21 00 04      [10]  235 	ld	hl, #0x0400
   2145 18 03         [12]  236 	jr	00122$
   2147                     237 00106$:
                            238 ;src/redefine.c:82: key = controls[0];
   2147 2A 48 9E      [16]  239 	ld	hl, (#_controls + 0)
   214A                     240 00122$:
                            241 ;src/redefine.c:85: if (!r_is_control_used(key)) {
   214A E5            [11]  242 	push	hl
   214B C5            [11]  243 	push	bc
   214C D5            [11]  244 	push	de
   214D E5            [11]  245 	push	hl
   214E CD EE 23      [17]  246 	call	_r_is_control_used
   2151 F1            [10]  247 	pop	af
   2152 7D            [ 4]  248 	ld	a, l
   2153 D1            [10]  249 	pop	de
   2154 C1            [10]  250 	pop	bc
   2155 E1            [10]  251 	pop	hl
   2156 CB 47         [ 8]  252 	bit	0, a
   2158 C2 AE 20      [10]  253 	jp	NZ, 00127$
                            254 ;src/redefine.c:86: controls[current] = key;
   215B DD 73 FE      [19]  255 	ld	-2 (ix), e
   215E DD 36 FF 00   [19]  256 	ld	-1 (ix), #0x00
   2162 DD CB FE 26   [23]  257 	sla	-2 (ix)
   2166 DD CB FF 16   [23]  258 	rl	-1 (ix)
   216A FD 21 48 9E   [14]  259 	ld	iy, #_controls
   216E C5            [11]  260 	push	bc
   216F DD 4E FE      [19]  261 	ld	c,-2 (ix)
   2172 DD 46 FF      [19]  262 	ld	b,-1 (ix)
   2175 FD 09         [15]  263 	add	iy, bc
   2177 C1            [10]  264 	pop	bc
   2178 FD 75 00      [19]  265 	ld	0 (iy), l
   217B FD 74 01      [19]  266 	ld	1 (iy), h
                            267 ;src/redefine.c:87: ++current;
   217E 1C            [ 4]  268 	inc	e
                            269 ;src/redefine.c:88: cpct_waitVSYNC();
   217F C5            [11]  270 	push	bc
   2180 D5            [11]  271 	push	de
   2181 CD BB 8E      [17]  272 	call	_cpct_waitVSYNC
   2184 D1            [10]  273 	pop	de
   2185 D5            [11]  274 	push	de
   2186 7B            [ 4]  275 	ld	a, e
   2187 F5            [11]  276 	push	af
   2188 33            [ 6]  277 	inc	sp
   2189 CD E2 21      [17]  278 	call	_h_draw_redefine
   218C 33            [ 6]  279 	inc	sp
   218D 21 E8 03      [10]  280 	ld	hl, #0x03e8
   2190 E5            [11]  281 	push	hl
   2191 CD 0B 29      [17]  282 	call	_u_wait
   2194 F1            [10]  283 	pop	af
   2195 D1            [10]  284 	pop	de
   2196 C1            [10]  285 	pop	bc
   2197 C3 AE 20      [10]  286 	jp	00127$
   219A                     287 00129$:
                            288 ;src/redefine.c:94: u_wait(1000);
   219A C5            [11]  289 	push	bc
   219B 21 E8 03      [10]  290 	ld	hl, #0x03e8
   219E E5            [11]  291 	push	hl
   219F CD 0B 29      [17]  292 	call	_u_wait
   21A2 F1            [10]  293 	pop	af
   21A3 C1            [10]  294 	pop	bc
                            295 ;src/redefine.c:96: for (u8 i = 0; i < 9; i++)
   21A4 0E 00         [ 7]  296 	ld	c, #0x00
   21A6                     297 00135$:
   21A6 79            [ 4]  298 	ld	a, c
   21A7 D6 09         [ 7]  299 	sub	a, #0x09
   21A9 30 1B         [12]  300 	jr	NC,00137$
                            301 ;src/redefine.c:97: g_controls[i] = controls[i];
   21AB 69            [ 4]  302 	ld	l, c
   21AC 26 00         [ 7]  303 	ld	h, #0x00
   21AE 29            [11]  304 	add	hl, hl
   21AF EB            [ 4]  305 	ex	de,hl
   21B0 FD 21 2C 9E   [14]  306 	ld	iy, #_g_controls
   21B4 FD 19         [15]  307 	add	iy, de
   21B6 21 48 9E      [10]  308 	ld	hl, #_controls
   21B9 19            [11]  309 	add	hl, de
   21BA 5E            [ 7]  310 	ld	e, (hl)
   21BB 23            [ 6]  311 	inc	hl
   21BC 46            [ 7]  312 	ld	b, (hl)
   21BD FD 73 00      [19]  313 	ld	0 (iy), e
   21C0 FD 70 01      [19]  314 	ld	1 (iy), b
                            315 ;src/redefine.c:96: for (u8 i = 0; i < 9; i++)
   21C3 0C            [ 4]  316 	inc	c
   21C4 18 E0         [12]  317 	jr	00135$
   21C6                     318 00137$:
   21C6 DD F9         [10]  319 	ld	sp, ix
   21C8 DD E1         [14]  320 	pop	ix
   21CA C9            [10]  321 	ret
   21CB                     322 _title_loc:
   21CB 01                  323 	.db #0x01	; 1
   21CC 08                  324 	.db #0x08	; 8
   21CD                     325 _redefine_loc:
   21CD 12                  326 	.db #0x12	; 18
   21CE 0F                  327 	.db #0x0f	; 15
   21CF                     328 _instruct_loc:
   21CF 01                  329 	.db #0x01	; 1
   21D0 1E                  330 	.db #0x1e	; 30
                            331 ;src/redefine.c:101: void r_stop(void) {
                            332 ;	---------------------------------
                            333 ; Function r_stop
                            334 ; ---------------------------------
   21D1                     335 _r_stop::
                            336 ;src/redefine.c:103: v_wipe_scr(true);
   21D1 3E 01         [ 7]  337 	ld	a, #0x01
   21D3 F5            [11]  338 	push	af
   21D4 33            [ 6]  339 	inc	sp
   21D5 CD 9B 30      [17]  340 	call	_v_wipe_scr
   21D8 33            [ 6]  341 	inc	sp
                            342 ;src/redefine.c:104: v_clr_scr();
   21D9 CD F2 30      [17]  343 	call	_v_clr_scr
                            344 ;src/redefine.c:105: cpct_removeInterruptHandler();
   21DC CD 5D 8A      [17]  345 	call	_cpct_removeInterruptHandler
                            346 ;src/redefine.c:106: v_reset_timers();
   21DF C3 CB 32      [10]  347 	jp  _v_reset_timers
                            348 ;src/redefine.c:110: static void h_draw_redefine(const control_t current) {
                            349 ;	---------------------------------
                            350 ; Function h_draw_redefine
                            351 ; ---------------------------------
   21E2                     352 _h_draw_redefine:
   21E2 DD E5         [15]  353 	push	ix
   21E4 DD 21 00 00   [14]  354 	ld	ix,#0
   21E8 DD 39         [15]  355 	add	ix,sp
   21EA 21 F3 FF      [10]  356 	ld	hl, #-13
   21ED 39            [11]  357 	add	hl, sp
   21EE F9            [ 6]  358 	ld	sp, hl
                            359 ;src/redefine.c:112: u8 y = redefine_loc.y * LINE_P_H;
   21EF 3A CE 21      [13]  360 	ld	a, (#_redefine_loc + 1)
   21F2 4F            [ 4]  361 	ld	c, a
   21F3 87            [ 4]  362 	add	a, a
   21F4 81            [ 4]  363 	add	a, c
   21F5 87            [ 4]  364 	add	a, a
   21F6 4F            [ 4]  365 	ld	c, a
                            366 ;src/redefine.c:114: char key[2] = "", ascii;
   21F7 21 02 00      [10]  367 	ld	hl, #0x0002
   21FA 39            [11]  368 	add	hl, sp
   21FB DD 75 F8      [19]  369 	ld	-8 (ix), l
   21FE DD 74 F9      [19]  370 	ld	-7 (ix), h
   2201 36 00         [10]  371 	ld	(hl), #0x00
   2203 DD 7E F8      [19]  372 	ld	a, -8 (ix)
   2206 C6 01         [ 7]  373 	add	a, #0x01
   2208 DD 77 FE      [19]  374 	ld	-2 (ix), a
   220B DD 7E F9      [19]  375 	ld	a, -7 (ix)
   220E CE 00         [ 7]  376 	adc	a, #0x00
   2210 DD 77 FF      [19]  377 	ld	-1 (ix), a
   2213 DD 6E FE      [19]  378 	ld	l,-2 (ix)
   2216 DD 66 FF      [19]  379 	ld	h,-1 (ix)
   2219 36 00         [10]  380 	ld	(hl), #0x00
                            381 ;src/redefine.c:118: v_print_c(g_strings[50], title_loc.y * LINE_P_H, FONT_RED);
   221B 3A CC 21      [13]  382 	ld	a, (#(_title_loc + 0x0001) + 0)
   221E 5F            [ 4]  383 	ld	e, a
   221F 87            [ 4]  384 	add	a, a
   2220 83            [ 4]  385 	add	a, e
   2221 87            [ 4]  386 	add	a, a
   2222 47            [ 4]  387 	ld	b, a
   2223 ED 5B 8B 67   [20]  388 	ld	de, (#_g_strings + 100)
   2227 C5            [11]  389 	push	bc
   2228 AF            [ 4]  390 	xor	a, a
   2229 F5            [11]  391 	push	af
   222A 33            [ 6]  392 	inc	sp
   222B C5            [11]  393 	push	bc
   222C 33            [ 6]  394 	inc	sp
   222D D5            [11]  395 	push	de
   222E CD 03 31      [17]  396 	call	_v_print_c
   2231 F1            [10]  397 	pop	af
   2232 F1            [10]  398 	pop	af
   2233 C1            [10]  399 	pop	bc
                            400 ;src/redefine.c:120: for (u8 i = KEY_UP; i < JOY_UP; i++) {
   2234 DD 7E F8      [19]  401 	ld	a, -8 (ix)
   2237 DD 77 FA      [19]  402 	ld	-6 (ix), a
   223A DD 7E F9      [19]  403 	ld	a, -7 (ix)
   223D DD 77 FB      [19]  404 	ld	-5 (ix), a
   2240 DD 71 F7      [19]  405 	ld	-9 (ix), c
   2243 DD 36 F3 00   [19]  406 	ld	-13 (ix), #0x00
   2247                     407 00115$:
   2247 DD 7E F3      [19]  408 	ld	a, -13 (ix)
   224A D6 05         [ 7]  409 	sub	a, #0x05
   224C D2 A8 23      [10]  410 	jp	NC, 00113$
                            411 ;src/redefine.c:122: str = g_strings[i + 51];
   224F DD 7E F3      [19]  412 	ld	a, -13 (ix)
   2252 DD 77 FC      [19]  413 	ld	-4 (ix), a
   2255 DD 36 FD 00   [19]  414 	ld	-3 (ix), #0x00
   2259 DD 7E FC      [19]  415 	ld	a, -4 (ix)
   225C C6 33         [ 7]  416 	add	a, #0x33
   225E 6F            [ 4]  417 	ld	l, a
   225F DD 7E FD      [19]  418 	ld	a, -3 (ix)
   2262 CE 00         [ 7]  419 	adc	a, #0x00
   2264 67            [ 4]  420 	ld	h, a
   2265 29            [11]  421 	add	hl, hl
   2266 11 27 67      [10]  422 	ld	de, #_g_strings
   2269 19            [11]  423 	add	hl, de
   226A 4E            [ 7]  424 	ld	c, (hl)
   226B 23            [ 6]  425 	inc	hl
   226C 46            [ 7]  426 	ld	b, (hl)
                            427 ;src/redefine.c:123: col = i == current ? FONT_WHITE : FONT_BLUE;
   226D DD 7E F3      [19]  428 	ld	a, -13 (ix)
   2270 DD 96 04      [19]  429 	sub	a, 4 (ix)
   2273 20 04         [12]  430 	jr	NZ,00119$
   2275 1E 02         [ 7]  431 	ld	e, #0x02
   2277 18 02         [12]  432 	jr	00120$
   2279                     433 00119$:
   2279 1E 01         [ 7]  434 	ld	e, #0x01
   227B                     435 00120$:
   227B DD 73 F4      [19]  436 	ld	-12 (ix), e
                            437 ;src/redefine.c:124: v_print(str, redefine_loc.x, y, col);
   227E 21 CD 21      [10]  438 	ld	hl, #_redefine_loc + 0
   2281 56            [ 7]  439 	ld	d, (hl)
   2282 DD 66 F4      [19]  440 	ld	h, -12 (ix)
   2285 DD 6E F7      [19]  441 	ld	l, -9 (ix)
   2288 E5            [11]  442 	push	hl
   2289 D5            [11]  443 	push	de
   228A 33            [ 6]  444 	inc	sp
   228B C5            [11]  445 	push	bc
   228C CD 8F 31      [17]  446 	call	_v_print
   228F F1            [10]  447 	pop	af
   2290 F1            [10]  448 	pop	af
   2291 33            [ 6]  449 	inc	sp
                            450 ;src/redefine.c:125: v_print("     ", redefine_loc.x + 35, y, col);
   2292 3A CD 21      [13]  451 	ld	a, (#_redefine_loc + 0)
   2295 C6 23         [ 7]  452 	add	a, #0x23
   2297 47            [ 4]  453 	ld	b, a
   2298 DD 66 F4      [19]  454 	ld	h, -12 (ix)
   229B DD 6E F7      [19]  455 	ld	l, -9 (ix)
   229E E5            [11]  456 	push	hl
   229F C5            [11]  457 	push	bc
   22A0 33            [ 6]  458 	inc	sp
   22A1 21 E8 23      [10]  459 	ld	hl, #___str_1
   22A4 E5            [11]  460 	push	hl
   22A5 CD 8F 31      [17]  461 	call	_v_print
   22A8 F1            [10]  462 	pop	af
   22A9 F1            [10]  463 	pop	af
   22AA 33            [ 6]  464 	inc	sp
                            465 ;src/redefine.c:127: if (controls[i] == Key_CursorLeft) {
   22AB DD 6E FC      [19]  466 	ld	l,-4 (ix)
   22AE DD 66 FD      [19]  467 	ld	h,-3 (ix)
   22B1 29            [11]  468 	add	hl, hl
   22B2 11 48 9E      [10]  469 	ld	de, #_controls
   22B5 19            [11]  470 	add	hl, de
   22B6 7E            [ 7]  471 	ld	a, (hl)
   22B7 DD 77 FC      [19]  472 	ld	-4 (ix), a
   22BA 23            [ 6]  473 	inc	hl
   22BB 7E            [ 7]  474 	ld	a, (hl)
   22BC DD 77 FD      [19]  475 	ld	-3 (ix), a
   22BF DD 7E FC      [19]  476 	ld	a, -4 (ix)
   22C2 3D            [ 4]  477 	dec	a
   22C3 20 23         [12]  478 	jr	NZ,00111$
   22C5 DD 7E FD      [19]  479 	ld	a, -3 (ix)
   22C8 3D            [ 4]  480 	dec	a
   22C9 20 1D         [12]  481 	jr	NZ,00111$
                            482 ;src/redefine.c:128: v_print(g_strings[64], redefine_loc.x + 35, y, col);
   22CB 3A CD 21      [13]  483 	ld	a, (#_redefine_loc + 0)
   22CE C6 23         [ 7]  484 	add	a, #0x23
   22D0 57            [ 4]  485 	ld	d, a
   22D1 ED 4B A7 67   [20]  486 	ld	bc, (#_g_strings + 128)
   22D5 DD 66 F4      [19]  487 	ld	h, -12 (ix)
   22D8 DD 6E F7      [19]  488 	ld	l, -9 (ix)
   22DB E5            [11]  489 	push	hl
   22DC D5            [11]  490 	push	de
   22DD 33            [ 6]  491 	inc	sp
   22DE C5            [11]  492 	push	bc
   22DF CD 8F 31      [17]  493 	call	_v_print
   22E2 F1            [10]  494 	pop	af
   22E3 F1            [10]  495 	pop	af
   22E4 33            [ 6]  496 	inc	sp
   22E5 C3 9A 23      [10]  497 	jp	00112$
   22E8                     498 00111$:
                            499 ;src/redefine.c:129: } else if (controls[i] == Key_CursorRight) {
   22E8 DD 7E FC      [19]  500 	ld	a, -4 (ix)
   22EB B7            [ 4]  501 	or	a, a
   22EC 20 24         [12]  502 	jr	NZ,00108$
   22EE DD 7E FD      [19]  503 	ld	a, -3 (ix)
   22F1 D6 02         [ 7]  504 	sub	a, #0x02
   22F3 20 1D         [12]  505 	jr	NZ,00108$
                            506 ;src/redefine.c:130: v_print(g_strings[65], redefine_loc.x + 35, y, col);
   22F5 3A CD 21      [13]  507 	ld	a, (#_redefine_loc + 0)
   22F8 C6 23         [ 7]  508 	add	a, #0x23
   22FA 5F            [ 4]  509 	ld	e, a
   22FB ED 4B A9 67   [20]  510 	ld	bc, (#_g_strings + 130)
   22FF DD 7E F4      [19]  511 	ld	a, -12 (ix)
   2302 F5            [11]  512 	push	af
   2303 33            [ 6]  513 	inc	sp
   2304 DD 56 F7      [19]  514 	ld	d, -9 (ix)
   2307 D5            [11]  515 	push	de
   2308 C5            [11]  516 	push	bc
   2309 CD 8F 31      [17]  517 	call	_v_print
   230C F1            [10]  518 	pop	af
   230D F1            [10]  519 	pop	af
   230E 33            [ 6]  520 	inc	sp
   230F C3 9A 23      [10]  521 	jp	00112$
   2312                     522 00108$:
                            523 ;src/redefine.c:131: } else if (controls[i] == Key_CursorUp) {
   2312 DD 7E FC      [19]  524 	ld	a, -4 (ix)
   2315 B7            [ 4]  525 	or	a, a
   2316 20 22         [12]  526 	jr	NZ,00105$
   2318 DD 7E FD      [19]  527 	ld	a, -3 (ix)
   231B 3D            [ 4]  528 	dec	a
   231C 20 1C         [12]  529 	jr	NZ,00105$
                            530 ;src/redefine.c:132: v_print(g_strings[62], redefine_loc.x + 35, y, col);
   231E 3A CD 21      [13]  531 	ld	a, (#_redefine_loc + 0)
   2321 C6 23         [ 7]  532 	add	a, #0x23
   2323 57            [ 4]  533 	ld	d, a
   2324 ED 4B A3 67   [20]  534 	ld	bc, (#_g_strings + 124)
   2328 DD 66 F4      [19]  535 	ld	h, -12 (ix)
   232B DD 6E F7      [19]  536 	ld	l, -9 (ix)
   232E E5            [11]  537 	push	hl
   232F D5            [11]  538 	push	de
   2330 33            [ 6]  539 	inc	sp
   2331 C5            [11]  540 	push	bc
   2332 CD 8F 31      [17]  541 	call	_v_print
   2335 F1            [10]  542 	pop	af
   2336 F1            [10]  543 	pop	af
   2337 33            [ 6]  544 	inc	sp
   2338 18 60         [12]  545 	jr	00112$
   233A                     546 00105$:
                            547 ;src/redefine.c:133: } else if (controls[i] == Key_CursorDown) {
   233A DD 7E FC      [19]  548 	ld	a, -4 (ix)
   233D B7            [ 4]  549 	or	a, a
   233E 20 23         [12]  550 	jr	NZ,00102$
   2340 DD 7E FD      [19]  551 	ld	a, -3 (ix)
   2343 D6 04         [ 7]  552 	sub	a, #0x04
   2345 20 1C         [12]  553 	jr	NZ,00102$
                            554 ;src/redefine.c:134: v_print(g_strings[63], redefine_loc.x + 35, y, col);
   2347 3A CD 21      [13]  555 	ld	a, (#_redefine_loc + 0)
   234A C6 23         [ 7]  556 	add	a, #0x23
   234C 57            [ 4]  557 	ld	d, a
   234D ED 4B A5 67   [20]  558 	ld	bc, (#_g_strings + 126)
   2351 DD 66 F4      [19]  559 	ld	h, -12 (ix)
   2354 DD 6E F7      [19]  560 	ld	l, -9 (ix)
   2357 E5            [11]  561 	push	hl
   2358 D5            [11]  562 	push	de
   2359 33            [ 6]  563 	inc	sp
   235A C5            [11]  564 	push	bc
   235B CD 8F 31      [17]  565 	call	_v_print
   235E F1            [10]  566 	pop	af
   235F F1            [10]  567 	pop	af
   2360 33            [ 6]  568 	inc	sp
   2361 18 37         [12]  569 	jr	00112$
   2363                     570 00102$:
                            571 ;src/redefine.c:136: ascii = u_map_key_to_char(controls[i]);
   2363 DD 6E FC      [19]  572 	ld	l,-4 (ix)
   2366 DD 66 FD      [19]  573 	ld	h,-3 (ix)
   2369 E5            [11]  574 	push	hl
   236A CD 72 2A      [17]  575 	call	_u_map_key_to_char
   236D F1            [10]  576 	pop	af
   236E 4D            [ 4]  577 	ld	c, l
                            578 ;src/redefine.c:137: key[0] = ascii;
   236F DD 6E F8      [19]  579 	ld	l,-8 (ix)
   2372 DD 66 F9      [19]  580 	ld	h,-7 (ix)
   2375 71            [ 7]  581 	ld	(hl), c
                            582 ;src/redefine.c:138: key[1] = '\0';
   2376 DD 6E FE      [19]  583 	ld	l,-2 (ix)
   2379 DD 66 FF      [19]  584 	ld	h,-1 (ix)
   237C 36 00         [10]  585 	ld	(hl), #0x00
                            586 ;src/redefine.c:139: v_print(key, redefine_loc.x + 43, y, col);
   237E 3A CD 21      [13]  587 	ld	a, (#_redefine_loc + 0)
   2381 C6 2B         [ 7]  588 	add	a, #0x2b
   2383 57            [ 4]  589 	ld	d, a
   2384 DD 4E FA      [19]  590 	ld	c,-6 (ix)
   2387 DD 46 FB      [19]  591 	ld	b,-5 (ix)
   238A DD 66 F4      [19]  592 	ld	h, -12 (ix)
   238D DD 6E F7      [19]  593 	ld	l, -9 (ix)
   2390 E5            [11]  594 	push	hl
   2391 D5            [11]  595 	push	de
   2392 33            [ 6]  596 	inc	sp
   2393 C5            [11]  597 	push	bc
   2394 CD 8F 31      [17]  598 	call	_v_print
   2397 F1            [10]  599 	pop	af
   2398 F1            [10]  600 	pop	af
   2399 33            [ 6]  601 	inc	sp
   239A                     602 00112$:
                            603 ;src/redefine.c:142: y += LINE_P_H * 2;
   239A DD 7E F7      [19]  604 	ld	a, -9 (ix)
   239D C6 0C         [ 7]  605 	add	a, #0x0c
   239F DD 77 F7      [19]  606 	ld	-9 (ix), a
                            607 ;src/redefine.c:120: for (u8 i = KEY_UP; i < JOY_UP; i++) {
   23A2 DD 34 F3      [23]  608 	inc	-13 (ix)
   23A5 C3 47 22      [10]  609 	jp	00115$
   23A8                     610 00113$:
                            611 ;src/redefine.c:145: str = g_strings[current + 56];
   23A8 DD 4E 04      [19]  612 	ld	c, 4 (ix)
   23AB 06 00         [ 7]  613 	ld	b, #0x00
   23AD 21 38 00      [10]  614 	ld	hl, #0x0038
   23B0 09            [11]  615 	add	hl, bc
   23B1 29            [11]  616 	add	hl, hl
   23B2 11 27 67      [10]  617 	ld	de, #_g_strings
   23B5 19            [11]  618 	add	hl, de
   23B6 4E            [ 7]  619 	ld	c, (hl)
   23B7 23            [ 6]  620 	inc	hl
   23B8 46            [ 7]  621 	ld	b, (hl)
                            622 ;src/redefine.c:146: v_print_c(str, instruct_loc.y * LINE_P_H, FONT_RED);
   23B9 3A D0 21      [13]  623 	ld	a, (#(_instruct_loc + 0x0001) + 0)
   23BC 5F            [ 4]  624 	ld	e, a
   23BD 87            [ 4]  625 	add	a, a
   23BE 83            [ 4]  626 	add	a, e
   23BF 87            [ 4]  627 	add	a, a
   23C0 57            [ 4]  628 	ld	d, a
   23C1 AF            [ 4]  629 	xor	a, a
   23C2 F5            [11]  630 	push	af
   23C3 33            [ 6]  631 	inc	sp
   23C4 D5            [11]  632 	push	de
   23C5 33            [ 6]  633 	inc	sp
   23C6 C5            [11]  634 	push	bc
   23C7 CD 03 31      [17]  635 	call	_v_print_c
   23CA F1            [10]  636 	pop	af
   23CB F1            [10]  637 	pop	af
                            638 ;src/redefine.c:147: str = g_strings[66];
   23CC ED 4B AB 67   [20]  639 	ld	bc, (#_g_strings + 132)
                            640 ;src/redefine.c:148: v_print_c(str, (instruct_loc.y + 2) * LINE_P_H, FONT_RED);
   23D0 3A D0 21      [13]  641 	ld	a, (#(_instruct_loc + 0x0001) + 0)
   23D3 C6 02         [ 7]  642 	add	a, #0x02
   23D5 5F            [ 4]  643 	ld	e, a
   23D6 87            [ 4]  644 	add	a, a
   23D7 83            [ 4]  645 	add	a, e
   23D8 87            [ 4]  646 	add	a, a
   23D9 57            [ 4]  647 	ld	d, a
   23DA AF            [ 4]  648 	xor	a, a
   23DB F5            [11]  649 	push	af
   23DC 33            [ 6]  650 	inc	sp
   23DD D5            [11]  651 	push	de
   23DE 33            [ 6]  652 	inc	sp
   23DF C5            [11]  653 	push	bc
   23E0 CD 03 31      [17]  654 	call	_v_print_c
   23E3 DD F9         [10]  655 	ld	sp,ix
   23E5 DD E1         [14]  656 	pop	ix
   23E7 C9            [10]  657 	ret
   23E8                     658 ___str_1:
   23E8 20 20 20 20 20      659 	.ascii "     "
   23ED 00                  660 	.db 0x00
                            661 ;src/redefine.c:152: static bool r_is_control_used(const cpct_keyID control) {
                            662 ;	---------------------------------
                            663 ; Function r_is_control_used
                            664 ; ---------------------------------
   23EE                     665 _r_is_control_used:
   23EE DD E5         [15]  666 	push	ix
   23F0 DD 21 00 00   [14]  667 	ld	ix,#0
   23F4 DD 39         [15]  668 	add	ix,sp
                            669 ;src/redefine.c:154: for (control_t i = KEY_UP; i < JOY_UP; i++) {
   23F6 0E 00         [ 7]  670 	ld	c, #0x00
   23F8                     671 00105$:
   23F8 79            [ 4]  672 	ld	a, c
   23F9 D6 05         [ 7]  673 	sub	a, #0x05
   23FB 30 1E         [12]  674 	jr	NC,00103$
                            675 ;src/redefine.c:155: if (controls[i] == control)
   23FD 69            [ 4]  676 	ld	l, c
   23FE 26 00         [ 7]  677 	ld	h, #0x00
   2400 29            [11]  678 	add	hl, hl
   2401 11 48 9E      [10]  679 	ld	de, #_controls
   2404 19            [11]  680 	add	hl, de
   2405 5E            [ 7]  681 	ld	e, (hl)
   2406 23            [ 6]  682 	inc	hl
   2407 56            [ 7]  683 	ld	d, (hl)
   2408 DD 7E 04      [19]  684 	ld	a, 4 (ix)
   240B 93            [ 4]  685 	sub	a, e
   240C 20 0A         [12]  686 	jr	NZ,00106$
   240E DD 7E 05      [19]  687 	ld	a, 5 (ix)
   2411 92            [ 4]  688 	sub	a, d
   2412 20 04         [12]  689 	jr	NZ,00106$
                            690 ;src/redefine.c:156: return true;
   2414 2E 01         [ 7]  691 	ld	l, #0x01
   2416 18 05         [12]  692 	jr	00107$
   2418                     693 00106$:
                            694 ;src/redefine.c:154: for (control_t i = KEY_UP; i < JOY_UP; i++) {
   2418 0C            [ 4]  695 	inc	c
   2419 18 DD         [12]  696 	jr	00105$
   241B                     697 00103$:
                            698 ;src/redefine.c:159: return false;
   241B 2E 00         [ 7]  699 	ld	l, #0x00
   241D                     700 00107$:
   241D DD E1         [14]  701 	pop	ix
   241F C9            [10]  702 	ret
                            703 	.area _CODE
                            704 	.area _INITIALIZER
                            705 	.area _CABS (ABS)
