                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module utilities
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _cpct_getRandom_glfsr16_u8
                             12 	.globl _cpct_getRandom_lcg_u8
                             13 	.globl _cpct_isAnyKeyPressed
                             14 	.globl _cpct_isKeyPressed
                             15 	.globl _cpct_scanKeyboard_f
                             16 	.globl _cpct_scanKeyboard
                             17 	.globl _cpct_memset
                             18 	.globl _g_clock
                             19 	.globl _g_clock_on
                             20 	.globl _u_wait_kp
                             21 	.globl _u_power_2
                             22 	.globl _u_wait_for_key
                             23 	.globl _u_wait
                             24 	.globl _u_get_width
                             25 	.globl _u_get_random
                             26 	.globl _u_get_xy
                             27 	.globl _u_map_char_to_key
                             28 	.globl _u_map_key_to_char
                             29 	.globl _u_get_delta
                             30 	.globl _u_bounds_delta_check
                             31 	.globl _u_bounds_check
                             32 	.globl _u_clear_input
                             33 	.globl _u_clock_interrupt
                             34 	.globl _u_reset_clock
                             35 	.globl _u_check_collide
                             36 	.globl _u_sort_hiscores
                             37 ;--------------------------------------------------------
                             38 ; special function registers
                             39 ;--------------------------------------------------------
                             40 ;--------------------------------------------------------
                             41 ; ram data
                             42 ;--------------------------------------------------------
                             43 	.area _DATA
   9E5C                      44 _g_clock_on::
   9E5C                      45 	.ds 1
   9E5D                      46 _u_clock_interrupt_count_1_315:
   9E5D                      47 	.ds 1
                             48 ;--------------------------------------------------------
                             49 ; ram data
                             50 ;--------------------------------------------------------
                             51 	.area _INITIALIZED
   A06B                      52 _g_clock::
   A06B                      53 	.ds 4
                             54 ;--------------------------------------------------------
                             55 ; absolute external ram data
                             56 ;--------------------------------------------------------
                             57 	.area _DABS (ABS)
                             58 ;--------------------------------------------------------
                             59 ; global & static initialisations
                             60 ;--------------------------------------------------------
                             61 	.area _HOME
                             62 	.area _GSINIT
                             63 	.area _GSFINAL
                             64 	.area _GSINIT
                             65 ;src/lib/utilities.c:276: static u8 count = 0;
   A0F0 FD 21 5D 9E   [14]   66 	ld	iy, #_u_clock_interrupt_count_1_315
   A0F4 FD 36 00 00   [19]   67 	ld	0 (iy), #0x00
                             68 ;--------------------------------------------------------
                             69 ; Home
                             70 ;--------------------------------------------------------
                             71 	.area _HOME
                             72 	.area _HOME
                             73 ;--------------------------------------------------------
                             74 ; code
                             75 ;--------------------------------------------------------
                             76 	.area _CODE
                             77 ;src/lib/utilities.c:28: void u_wait_kp(void) {
                             78 ;	---------------------------------
                             79 ; Function u_wait_kp
                             80 ; ---------------------------------
   28CC                      81 _u_wait_kp::
                             82 ;src/lib/utilities.c:30: bool kp = false;
   28CC 3E 00         [ 7]   83 	ld	a, #0x00
                             84 ;src/lib/utilities.c:31: while (!kp) {
   28CE                      85 00101$:
   28CE CB 47         [ 8]   86 	bit	0, a
   28D0 C0            [11]   87 	ret	NZ
                             88 ;src/lib/utilities.c:32: cpct_scanKeyboard();
   28D1 CD 04 90      [17]   89 	call	_cpct_scanKeyboard
                             90 ;src/lib/utilities.c:33: kp = cpct_isAnyKeyPressed();
   28D4 CD 38 8E      [17]   91 	call	_cpct_isAnyKeyPressed
   28D7 AF            [ 4]   92 	xor	a, a
   28D8 BD            [ 4]   93 	cp	a, l
   28D9 17            [ 4]   94 	rla
   28DA 18 F2         [12]   95 	jr	00101$
                             96 ;src/lib/utilities.c:38: inline u8 u_power_2(const u8 pow) {
                             97 ;	---------------------------------
                             98 ; Function u_power_2
                             99 ; ---------------------------------
   28DC                     100 _u_power_2::
                            101 ;src/lib/utilities.c:40: u8 result = 1;
                            102 ;src/lib/utilities.c:42: for (u8 i = 0; i < pow; i++)
   28DC 01 01 00      [10]  103 	ld	bc,#0x0001
   28DF                     104 00103$:
   28DF 21 02 00      [10]  105 	ld	hl, #2
   28E2 39            [11]  106 	add	hl, sp
   28E3 78            [ 4]  107 	ld	a, b
   28E4 96            [ 7]  108 	sub	a, (hl)
   28E5 30 05         [12]  109 	jr	NC,00101$
                            110 ;src/lib/utilities.c:43: result *= 2;
   28E7 CB 21         [ 8]  111 	sla	c
                            112 ;src/lib/utilities.c:42: for (u8 i = 0; i < pow; i++)
   28E9 04            [ 4]  113 	inc	b
   28EA 18 F3         [12]  114 	jr	00103$
   28EC                     115 00101$:
                            116 ;src/lib/utilities.c:45: return result;
   28EC 69            [ 4]  117 	ld	l, c
   28ED C9            [10]  118 	ret
                            119 ;src/lib/utilities.c:50: void u_wait_for_key(cpct_keyID key) {
                            120 ;	---------------------------------
                            121 ; Function u_wait_for_key
                            122 ; ---------------------------------
   28EE                     123 _u_wait_for_key::
                            124 ;src/lib/utilities.c:52: do
   28EE                     125 00101$:
                            126 ;src/lib/utilities.c:53: cpct_scanKeyboard_f();
   28EE CD 84 8A      [17]  127 	call	_cpct_scanKeyboard_f
                            128 ;src/lib/utilities.c:54: while(!cpct_isKeyPressed(key));
   28F1 C1            [10]  129 	pop	bc
   28F2 E1            [10]  130 	pop	hl
   28F3 E5            [11]  131 	push	hl
   28F4 C5            [11]  132 	push	bc
   28F5 CD EE 8A      [17]  133 	call	_cpct_isKeyPressed
   28F8 7D            [ 4]  134 	ld	a, l
   28F9 B7            [ 4]  135 	or	a, a
   28FA 28 F2         [12]  136 	jr	Z,00101$
                            137 ;src/lib/utilities.c:56: do
   28FC                     138 00104$:
                            139 ;src/lib/utilities.c:57: cpct_scanKeyboard_f();
   28FC CD 84 8A      [17]  140 	call	_cpct_scanKeyboard_f
                            141 ;src/lib/utilities.c:58: while(cpct_isKeyPressed(key));
   28FF C1            [10]  142 	pop	bc
   2900 E1            [10]  143 	pop	hl
   2901 E5            [11]  144 	push	hl
   2902 C5            [11]  145 	push	bc
   2903 CD EE 8A      [17]  146 	call	_cpct_isKeyPressed
   2906 7D            [ 4]  147 	ld	a, l
   2907 B7            [ 4]  148 	or	a, a
   2908 20 F2         [12]  149 	jr	NZ,00104$
   290A C9            [10]  150 	ret
                            151 ;src/lib/utilities.c:62: void u_wait(const u16 n) {
                            152 ;	---------------------------------
                            153 ; Function u_wait
                            154 ; ---------------------------------
   290B                     155 _u_wait::
                            156 ;src/lib/utilities.c:64: for (u16 i = 0; i < n; i++)
   290B 01 00 00      [10]  157 	ld	bc, #0x0000
   290E                     158 00103$:
   290E 21 02 00      [10]  159 	ld	hl, #2
   2911 39            [11]  160 	add	hl, sp
   2912 79            [ 4]  161 	ld	a, c
   2913 96            [ 7]  162 	sub	a, (hl)
   2914 78            [ 4]  163 	ld	a, b
   2915 23            [ 6]  164 	inc	hl
   2916 9E            [ 7]  165 	sbc	a, (hl)
   2917 D0            [11]  166 	ret	NC
                            167 ;src/lib/utilities.c:65: __asm__("NOP");
   2918 00            [ 4]  168 	NOP
                            169 ;src/lib/utilities.c:64: for (u16 i = 0; i < n; i++)
   2919 03            [ 6]  170 	inc	bc
   291A 18 F2         [12]  171 	jr	00103$
                            172 ;src/lib/utilities.c:69: u8 u_get_width(const u32 score) {
                            173 ;	---------------------------------
                            174 ; Function u_get_width
                            175 ; ---------------------------------
   291C                     176 _u_get_width::
   291C DD E5         [15]  177 	push	ix
   291E DD 21 00 00   [14]  178 	ld	ix,#0
   2922 DD 39         [15]  179 	add	ix,sp
   2924 3B            [ 6]  180 	dec	sp
                            181 ;src/lib/utilities.c:72: u32 num = score;
   2925 DD 4E 04      [19]  182 	ld	c, 4 (ix)
   2928 DD 46 05      [19]  183 	ld	b, 5 (ix)
   292B DD 5E 06      [19]  184 	ld	e, 6 (ix)
   292E DD 56 07      [19]  185 	ld	d, 7 (ix)
                            186 ;src/lib/utilities.c:74: do {
   2931 DD 36 FF 00   [19]  187 	ld	-1 (ix), #0x00
   2935                     188 00101$:
                            189 ;src/lib/utilities.c:75: num /= 10;
   2935 21 00 00      [10]  190 	ld	hl, #0x0000
   2938 E5            [11]  191 	push	hl
   2939 21 0A 00      [10]  192 	ld	hl, #0x000a
   293C E5            [11]  193 	push	hl
   293D D5            [11]  194 	push	de
   293E C5            [11]  195 	push	bc
   293F CD 74 A0      [17]  196 	call	__divulong
   2942 F1            [10]  197 	pop	af
   2943 F1            [10]  198 	pop	af
   2944 F1            [10]  199 	pop	af
   2945 F1            [10]  200 	pop	af
   2946 4D            [ 4]  201 	ld	c, l
   2947 44            [ 4]  202 	ld	b, h
                            203 ;src/lib/utilities.c:76: ++width;
   2948 DD 34 FF      [23]  204 	inc	-1 (ix)
                            205 ;src/lib/utilities.c:77: } while (num != 0);
   294B 7A            [ 4]  206 	ld	a, d
   294C B3            [ 4]  207 	or	a, e
   294D B0            [ 4]  208 	or	a, b
   294E B1            [ 4]  209 	or	a,c
   294F 20 E4         [12]  210 	jr	NZ,00101$
                            211 ;src/lib/utilities.c:79: return width;
   2951 DD 6E FF      [19]  212 	ld	l, -1 (ix)
   2954 33            [ 6]  213 	inc	sp
   2955 DD E1         [14]  214 	pop	ix
   2957 C9            [10]  215 	ret
                            216 ;src/lib/utilities.c:83: u8 u_get_random(const u8 max) {
                            217 ;	---------------------------------
                            218 ; Function u_get_random
                            219 ; ---------------------------------
   2958                     220 _u_get_random::
                            221 ;src/lib/utilities.c:85: bool finished = false;
   2958 06 00         [ 7]  222 	ld	b, #0x00
                            223 ;src/lib/utilities.c:86: u8 num = max;
   295A 21 02 00      [10]  224 	ld	hl, #2+0
   295D 39            [11]  225 	add	hl, sp
   295E 4E            [ 7]  226 	ld	c, (hl)
                            227 ;src/lib/utilities.c:88: while (!finished) {
   295F                     228 00101$:
   295F CB 40         [ 8]  229 	bit	0, b
   2961 20 13         [12]  230 	jr	NZ,00103$
                            231 ;src/lib/utilities.c:89: num = cpct_getRandom_lcg_u8(cpct_getRandom_glfsr16_u8());
   2963 CD 23 8F      [17]  232 	call	_cpct_getRandom_glfsr16_u8
   2966 CD 27 8E      [17]  233 	call	_cpct_getRandom_lcg_u8
   2969 4D            [ 4]  234 	ld	c, l
                            235 ;src/lib/utilities.c:90: finished = num < max;
   296A 21 02 00      [10]  236 	ld	hl, #2
   296D 39            [11]  237 	add	hl, sp
   296E 79            [ 4]  238 	ld	a, c
   296F 96            [ 7]  239 	sub	a, (hl)
   2970 3E 00         [ 7]  240 	ld	a, #0x00
   2972 17            [ 4]  241 	rla
   2973 47            [ 4]  242 	ld	b, a
   2974 18 E9         [12]  243 	jr	00101$
   2976                     244 00103$:
                            245 ;src/lib/utilities.c:93: return num;
   2976 69            [ 4]  246 	ld	l, c
   2977 C9            [10]  247 	ret
                            248 ;src/lib/utilities.c:97: inline u16 u_get_xy(const i16 x, const i16 y) {
                            249 ;	---------------------------------
                            250 ; Function u_get_xy
                            251 ; ---------------------------------
   2978                     252 _u_get_xy::
                            253 ;src/lib/utilities.c:99: return x + (y * GRID_U_W);
   2978 21 04 00      [10]  254 	ld	hl, #4
   297B 39            [11]  255 	add	hl, sp
   297C 4E            [ 7]  256 	ld	c, (hl)
   297D 23            [ 6]  257 	inc	hl
   297E 46            [ 7]  258 	ld	b, (hl)
   297F 69            [ 4]  259 	ld	l, c
   2980 60            [ 4]  260 	ld	h, b
   2981 29            [11]  261 	add	hl, hl
   2982 09            [11]  262 	add	hl, bc
   2983 29            [11]  263 	add	hl, hl
   2984 29            [11]  264 	add	hl, hl
   2985 29            [11]  265 	add	hl, hl
   2986 09            [11]  266 	add	hl, bc
   2987 4D            [ 4]  267 	ld	c, l
   2988 44            [ 4]  268 	ld	b, h
   2989 21 02 00      [10]  269 	ld	hl, #2
   298C 39            [11]  270 	add	hl, sp
   298D 7E            [ 7]  271 	ld	a, (hl)
   298E 23            [ 6]  272 	inc	hl
   298F 66            [ 7]  273 	ld	h, (hl)
   2990 6F            [ 4]  274 	ld	l, a
   2991 09            [11]  275 	add	hl, bc
   2992 C9            [10]  276 	ret
                            277 ;src/lib/utilities.c:103: cpct_keyID u_map_char_to_key(const char key) {
                            278 ;	---------------------------------
                            279 ; Function u_map_char_to_key
                            280 ; ---------------------------------
   2993                     281 _u_map_char_to_key::
                            282 ;src/lib/utilities.c:105: switch (key) {
   2993 FD 21 02 00   [14]  283 	ld	iy, #2
   2997 FD 39         [15]  284 	add	iy, sp
   2999 FD 7E 00      [19]  285 	ld	a, 0 (iy)
   299C D6 41         [ 7]  286 	sub	a, #0x41
   299E DA 6E 2A      [10]  287 	jp	C, 00127$
   29A1 3E 5A         [ 7]  288 	ld	a, #0x5a
   29A3 FD 96 00      [19]  289 	sub	a, 0 (iy)
   29A6 DA 6E 2A      [10]  290 	jp	C, 00127$
   29A9 FD 7E 00      [19]  291 	ld	a, 0 (iy)
   29AC C6 BF         [ 7]  292 	add	a, #0xbf
   29AE 4F            [ 4]  293 	ld	c, a
   29AF 06 00         [ 7]  294 	ld	b, #0x00
   29B1 21 B8 29      [10]  295 	ld	hl, #00139$
   29B4 09            [11]  296 	add	hl, bc
   29B5 09            [11]  297 	add	hl, bc
   29B6 09            [11]  298 	add	hl, bc
   29B7 E9            [ 4]  299 	jp	(hl)
   29B8                     300 00139$:
   29B8 C3 06 2A      [10]  301 	jp	00101$
   29BB C3 0A 2A      [10]  302 	jp	00102$
   29BE C3 0E 2A      [10]  303 	jp	00103$
   29C1 C3 12 2A      [10]  304 	jp	00104$
   29C4 C3 16 2A      [10]  305 	jp	00105$
   29C7 C3 1A 2A      [10]  306 	jp	00106$
   29CA C3 1E 2A      [10]  307 	jp	00107$
   29CD C3 22 2A      [10]  308 	jp	00108$
   29D0 C3 26 2A      [10]  309 	jp	00109$
   29D3 C3 2A 2A      [10]  310 	jp	00110$
   29D6 C3 2E 2A      [10]  311 	jp	00111$
   29D9 C3 32 2A      [10]  312 	jp	00112$
   29DC C3 36 2A      [10]  313 	jp	00113$
   29DF C3 3A 2A      [10]  314 	jp	00114$
   29E2 C3 3E 2A      [10]  315 	jp	00115$
   29E5 C3 42 2A      [10]  316 	jp	00116$
   29E8 C3 46 2A      [10]  317 	jp	00117$
   29EB C3 4A 2A      [10]  318 	jp	00118$
   29EE C3 4E 2A      [10]  319 	jp	00119$
   29F1 C3 52 2A      [10]  320 	jp	00120$
   29F4 C3 56 2A      [10]  321 	jp	00121$
   29F7 C3 5A 2A      [10]  322 	jp	00122$
   29FA C3 5E 2A      [10]  323 	jp	00123$
   29FD C3 62 2A      [10]  324 	jp	00124$
   2A00 C3 66 2A      [10]  325 	jp	00125$
   2A03 C3 6A 2A      [10]  326 	jp	00126$
                            327 ;src/lib/utilities.c:106: case 'A':
   2A06                     328 00101$:
                            329 ;src/lib/utilities.c:107: return Key_A;
   2A06 21 08 20      [10]  330 	ld	hl, #0x2008
   2A09 C9            [10]  331 	ret
                            332 ;src/lib/utilities.c:108: case 'B':
   2A0A                     333 00102$:
                            334 ;src/lib/utilities.c:109: return Key_B;
   2A0A 21 06 40      [10]  335 	ld	hl, #0x4006
   2A0D C9            [10]  336 	ret
                            337 ;src/lib/utilities.c:110: case 'C':
   2A0E                     338 00103$:
                            339 ;src/lib/utilities.c:111: return Key_C;
   2A0E 21 07 40      [10]  340 	ld	hl, #0x4007
   2A11 C9            [10]  341 	ret
                            342 ;src/lib/utilities.c:112: case 'D':
   2A12                     343 00104$:
                            344 ;src/lib/utilities.c:113: return Key_D;
   2A12 21 07 20      [10]  345 	ld	hl, #0x2007
   2A15 C9            [10]  346 	ret
                            347 ;src/lib/utilities.c:114: case 'E':
   2A16                     348 00105$:
                            349 ;src/lib/utilities.c:115: return Key_E;
   2A16 21 07 04      [10]  350 	ld	hl, #0x0407
   2A19 C9            [10]  351 	ret
                            352 ;src/lib/utilities.c:116: case 'F':
   2A1A                     353 00106$:
                            354 ;src/lib/utilities.c:117: return Key_F;
   2A1A 21 06 20      [10]  355 	ld	hl, #0x2006
   2A1D C9            [10]  356 	ret
                            357 ;src/lib/utilities.c:118: case 'G':
   2A1E                     358 00107$:
                            359 ;src/lib/utilities.c:119: return Key_G;
   2A1E 21 06 10      [10]  360 	ld	hl, #0x1006
   2A21 C9            [10]  361 	ret
                            362 ;src/lib/utilities.c:120: case 'H':
   2A22                     363 00108$:
                            364 ;src/lib/utilities.c:121: return Key_H;
   2A22 21 05 10      [10]  365 	ld	hl, #0x1005
   2A25 C9            [10]  366 	ret
                            367 ;src/lib/utilities.c:122: case 'I':
   2A26                     368 00109$:
                            369 ;src/lib/utilities.c:123: return Key_I;
   2A26 21 04 08      [10]  370 	ld	hl, #0x0804
   2A29 C9            [10]  371 	ret
                            372 ;src/lib/utilities.c:124: case 'J':
   2A2A                     373 00110$:
                            374 ;src/lib/utilities.c:125: return Key_J;
   2A2A 21 05 20      [10]  375 	ld	hl, #0x2005
   2A2D C9            [10]  376 	ret
                            377 ;src/lib/utilities.c:126: case 'K':
   2A2E                     378 00111$:
                            379 ;src/lib/utilities.c:127: return Key_K;
   2A2E 21 04 20      [10]  380 	ld	hl, #0x2004
   2A31 C9            [10]  381 	ret
                            382 ;src/lib/utilities.c:128: case 'L':
   2A32                     383 00112$:
                            384 ;src/lib/utilities.c:129: return Key_L;
   2A32 21 04 10      [10]  385 	ld	hl, #0x1004
   2A35 C9            [10]  386 	ret
                            387 ;src/lib/utilities.c:130: case 'M':
   2A36                     388 00113$:
                            389 ;src/lib/utilities.c:131: return Key_M;
   2A36 21 04 40      [10]  390 	ld	hl, #0x4004
   2A39 C9            [10]  391 	ret
                            392 ;src/lib/utilities.c:132: case 'N':
   2A3A                     393 00114$:
                            394 ;src/lib/utilities.c:133: return Key_N;
   2A3A 21 05 40      [10]  395 	ld	hl, #0x4005
   2A3D C9            [10]  396 	ret
                            397 ;src/lib/utilities.c:134: case 'O':
   2A3E                     398 00115$:
                            399 ;src/lib/utilities.c:135: return Key_O;
   2A3E 21 04 04      [10]  400 	ld	hl, #0x0404
   2A41 C9            [10]  401 	ret
                            402 ;src/lib/utilities.c:136: case 'P':
   2A42                     403 00116$:
                            404 ;src/lib/utilities.c:137: return Key_P;
   2A42 21 03 08      [10]  405 	ld	hl, #0x0803
   2A45 C9            [10]  406 	ret
                            407 ;src/lib/utilities.c:138: case 'Q':
   2A46                     408 00117$:
                            409 ;src/lib/utilities.c:139: return Key_Q;
   2A46 21 08 08      [10]  410 	ld	hl, #0x0808
   2A49 C9            [10]  411 	ret
                            412 ;src/lib/utilities.c:140: case 'R':
   2A4A                     413 00118$:
                            414 ;src/lib/utilities.c:141: return Key_R;
   2A4A 21 06 04      [10]  415 	ld	hl, #0x0406
   2A4D C9            [10]  416 	ret
                            417 ;src/lib/utilities.c:142: case 'S':
   2A4E                     418 00119$:
                            419 ;src/lib/utilities.c:143: return Key_S;
   2A4E 21 07 10      [10]  420 	ld	hl, #0x1007
   2A51 C9            [10]  421 	ret
                            422 ;src/lib/utilities.c:144: case 'T':
   2A52                     423 00120$:
                            424 ;src/lib/utilities.c:145: return Key_T;
   2A52 21 06 08      [10]  425 	ld	hl, #0x0806
   2A55 C9            [10]  426 	ret
                            427 ;src/lib/utilities.c:146: case 'U':
   2A56                     428 00121$:
                            429 ;src/lib/utilities.c:147: return Key_U;
   2A56 21 05 04      [10]  430 	ld	hl, #0x0405
   2A59 C9            [10]  431 	ret
                            432 ;src/lib/utilities.c:148: case 'V':
   2A5A                     433 00122$:
                            434 ;src/lib/utilities.c:149: return Key_V;
   2A5A 21 06 80      [10]  435 	ld	hl, #0x8006
   2A5D C9            [10]  436 	ret
                            437 ;src/lib/utilities.c:150: case 'W':
   2A5E                     438 00123$:
                            439 ;src/lib/utilities.c:151: return Key_W;
   2A5E 21 07 08      [10]  440 	ld	hl, #0x0807
   2A61 C9            [10]  441 	ret
                            442 ;src/lib/utilities.c:152: case 'X':
   2A62                     443 00124$:
                            444 ;src/lib/utilities.c:153: return Key_X;
   2A62 21 07 80      [10]  445 	ld	hl, #0x8007
   2A65 C9            [10]  446 	ret
                            447 ;src/lib/utilities.c:154: case 'Y':
   2A66                     448 00125$:
                            449 ;src/lib/utilities.c:155: return Key_Y;
   2A66 21 05 08      [10]  450 	ld	hl, #0x0805
   2A69 C9            [10]  451 	ret
                            452 ;src/lib/utilities.c:156: case 'Z':
   2A6A                     453 00126$:
                            454 ;src/lib/utilities.c:157: return Key_Z;
   2A6A 21 08 80      [10]  455 	ld	hl, #0x8008
   2A6D C9            [10]  456 	ret
                            457 ;src/lib/utilities.c:158: default:
   2A6E                     458 00127$:
                            459 ;src/lib/utilities.c:159: return Key_Space;
   2A6E 21 05 80      [10]  460 	ld	hl, #0x8005
                            461 ;src/lib/utilities.c:160: }
   2A71 C9            [10]  462 	ret
                            463 ;src/lib/utilities.c:164: char u_map_key_to_char(const cpct_keyID key) {
                            464 ;	---------------------------------
                            465 ; Function u_map_key_to_char
                            466 ; ---------------------------------
   2A72                     467 _u_map_key_to_char::
   2A72 DD E5         [15]  468 	push	ix
   2A74 DD 21 00 00   [14]  469 	ld	ix,#0
   2A78 DD 39         [15]  470 	add	ix,sp
                            471 ;src/lib/utilities.c:166: switch (key) {
   2A7A DD 7E 04      [19]  472 	ld	a, 4 (ix)
   2A7D D6 06         [ 7]  473 	sub	a, #0x06
   2A7F 20 08         [12]  474 	jr	NZ,00235$
   2A81 DD 7E 05      [19]  475 	ld	a, 5 (ix)
   2A84 D6 80         [ 7]  476 	sub	a, #0x80
   2A86 CA 51 2C      [10]  477 	jp	Z,00122$
   2A89                     478 00235$:
   2A89 DD 7E 04      [19]  479 	ld	a, 4 (ix)
   2A8C D6 07         [ 7]  480 	sub	a, #0x07
   2A8E 20 08         [12]  481 	jr	NZ,00236$
   2A90 DD 7E 05      [19]  482 	ld	a, 5 (ix)
   2A93 D6 80         [ 7]  483 	sub	a, #0x80
   2A95 CA 59 2C      [10]  484 	jp	Z,00124$
   2A98                     485 00236$:
   2A98 DD 7E 04      [19]  486 	ld	a, 4 (ix)
   2A9B D6 08         [ 7]  487 	sub	a, #0x08
   2A9D 20 08         [12]  488 	jr	NZ,00237$
   2A9F DD 7E 05      [19]  489 	ld	a, 5 (ix)
   2AA2 D6 80         [ 7]  490 	sub	a, #0x80
   2AA4 CA 61 2C      [10]  491 	jp	Z,00126$
   2AA7                     492 00237$:
   2AA7 DD 7E 04      [19]  493 	ld	a, 4 (ix)
   2AAA D6 04         [ 7]  494 	sub	a, #0x04
   2AAC 20 08         [12]  495 	jr	NZ,00238$
   2AAE DD 7E 05      [19]  496 	ld	a, 5 (ix)
   2AB1 D6 04         [ 7]  497 	sub	a, #0x04
   2AB3 CA 35 2C      [10]  498 	jp	Z,00115$
   2AB6                     499 00238$:
   2AB6 DD 7E 04      [19]  500 	ld	a, 4 (ix)
   2AB9 D6 05         [ 7]  501 	sub	a, #0x05
   2ABB 20 08         [12]  502 	jr	NZ,00239$
   2ABD DD 7E 05      [19]  503 	ld	a, 5 (ix)
   2AC0 D6 04         [ 7]  504 	sub	a, #0x04
   2AC2 CA 4D 2C      [10]  505 	jp	Z,00121$
   2AC5                     506 00239$:
   2AC5 DD 7E 04      [19]  507 	ld	a, 4 (ix)
   2AC8 D6 06         [ 7]  508 	sub	a, #0x06
   2ACA 20 08         [12]  509 	jr	NZ,00240$
   2ACC DD 7E 05      [19]  510 	ld	a, 5 (ix)
   2ACF D6 04         [ 7]  511 	sub	a, #0x04
   2AD1 CA 41 2C      [10]  512 	jp	Z,00118$
   2AD4                     513 00240$:
   2AD4 DD 7E 04      [19]  514 	ld	a, 4 (ix)
   2AD7 D6 07         [ 7]  515 	sub	a, #0x07
   2AD9 20 08         [12]  516 	jr	NZ,00241$
   2ADB DD 7E 05      [19]  517 	ld	a, 5 (ix)
   2ADE D6 04         [ 7]  518 	sub	a, #0x04
   2AE0 CA 0D 2C      [10]  519 	jp	Z,00105$
   2AE3                     520 00241$:
   2AE3 DD 7E 04      [19]  521 	ld	a, 4 (ix)
   2AE6 D6 03         [ 7]  522 	sub	a, #0x03
   2AE8 20 08         [12]  523 	jr	NZ,00242$
   2AEA DD 7E 05      [19]  524 	ld	a, 5 (ix)
   2AED D6 08         [ 7]  525 	sub	a, #0x08
   2AEF CA 39 2C      [10]  526 	jp	Z,00116$
   2AF2                     527 00242$:
   2AF2 DD 7E 04      [19]  528 	ld	a, 4 (ix)
   2AF5 D6 04         [ 7]  529 	sub	a, #0x04
   2AF7 20 08         [12]  530 	jr	NZ,00243$
   2AF9 DD 7E 05      [19]  531 	ld	a, 5 (ix)
   2AFC D6 08         [ 7]  532 	sub	a, #0x08
   2AFE CA 1D 2C      [10]  533 	jp	Z,00109$
   2B01                     534 00243$:
   2B01 DD 7E 04      [19]  535 	ld	a, 4 (ix)
   2B04 D6 05         [ 7]  536 	sub	a, #0x05
   2B06 20 08         [12]  537 	jr	NZ,00244$
   2B08 DD 7E 05      [19]  538 	ld	a, 5 (ix)
   2B0B D6 08         [ 7]  539 	sub	a, #0x08
   2B0D CA 5D 2C      [10]  540 	jp	Z,00125$
   2B10                     541 00244$:
   2B10 DD 7E 04      [19]  542 	ld	a, 4 (ix)
   2B13 D6 06         [ 7]  543 	sub	a, #0x06
   2B15 20 08         [12]  544 	jr	NZ,00245$
   2B17 DD 7E 05      [19]  545 	ld	a, 5 (ix)
   2B1A D6 08         [ 7]  546 	sub	a, #0x08
   2B1C CA 49 2C      [10]  547 	jp	Z,00120$
   2B1F                     548 00245$:
   2B1F DD 7E 04      [19]  549 	ld	a, 4 (ix)
   2B22 D6 07         [ 7]  550 	sub	a, #0x07
   2B24 20 08         [12]  551 	jr	NZ,00246$
   2B26 DD 7E 05      [19]  552 	ld	a, 5 (ix)
   2B29 D6 08         [ 7]  553 	sub	a, #0x08
   2B2B CA 55 2C      [10]  554 	jp	Z,00123$
   2B2E                     555 00246$:
   2B2E DD 7E 04      [19]  556 	ld	a, 4 (ix)
   2B31 D6 08         [ 7]  557 	sub	a, #0x08
   2B33 20 08         [12]  558 	jr	NZ,00247$
   2B35 DD 7E 05      [19]  559 	ld	a, 5 (ix)
   2B38 D6 08         [ 7]  560 	sub	a, #0x08
   2B3A CA 3D 2C      [10]  561 	jp	Z,00117$
   2B3D                     562 00247$:
   2B3D DD 7E 04      [19]  563 	ld	a, 4 (ix)
   2B40 D6 04         [ 7]  564 	sub	a, #0x04
   2B42 20 08         [12]  565 	jr	NZ,00248$
   2B44 DD 7E 05      [19]  566 	ld	a, 5 (ix)
   2B47 D6 10         [ 7]  567 	sub	a, #0x10
   2B49 CA 29 2C      [10]  568 	jp	Z,00112$
   2B4C                     569 00248$:
   2B4C DD 7E 04      [19]  570 	ld	a, 4 (ix)
   2B4F D6 05         [ 7]  571 	sub	a, #0x05
   2B51 20 08         [12]  572 	jr	NZ,00249$
   2B53 DD 7E 05      [19]  573 	ld	a, 5 (ix)
   2B56 D6 10         [ 7]  574 	sub	a, #0x10
   2B58 CA 19 2C      [10]  575 	jp	Z,00108$
   2B5B                     576 00249$:
   2B5B DD 7E 04      [19]  577 	ld	a, 4 (ix)
   2B5E D6 06         [ 7]  578 	sub	a, #0x06
   2B60 20 08         [12]  579 	jr	NZ,00250$
   2B62 DD 7E 05      [19]  580 	ld	a, 5 (ix)
   2B65 D6 10         [ 7]  581 	sub	a, #0x10
   2B67 CA 15 2C      [10]  582 	jp	Z,00107$
   2B6A                     583 00250$:
   2B6A DD 7E 04      [19]  584 	ld	a, 4 (ix)
   2B6D D6 07         [ 7]  585 	sub	a, #0x07
   2B6F 20 08         [12]  586 	jr	NZ,00251$
   2B71 DD 7E 05      [19]  587 	ld	a, 5 (ix)
   2B74 D6 10         [ 7]  588 	sub	a, #0x10
   2B76 CA 45 2C      [10]  589 	jp	Z,00119$
   2B79                     590 00251$:
   2B79 DD 7E 04      [19]  591 	ld	a, 4 (ix)
   2B7C D6 04         [ 7]  592 	sub	a, #0x04
   2B7E 20 08         [12]  593 	jr	NZ,00252$
   2B80 DD 7E 05      [19]  594 	ld	a, 5 (ix)
   2B83 D6 20         [ 7]  595 	sub	a, #0x20
   2B85 CA 25 2C      [10]  596 	jp	Z,00111$
   2B88                     597 00252$:
   2B88 DD 7E 04      [19]  598 	ld	a, 4 (ix)
   2B8B D6 05         [ 7]  599 	sub	a, #0x05
   2B8D 20 08         [12]  600 	jr	NZ,00253$
   2B8F DD 7E 05      [19]  601 	ld	a, 5 (ix)
   2B92 D6 20         [ 7]  602 	sub	a, #0x20
   2B94 CA 21 2C      [10]  603 	jp	Z,00110$
   2B97                     604 00253$:
   2B97 DD 7E 04      [19]  605 	ld	a, 4 (ix)
   2B9A D6 06         [ 7]  606 	sub	a, #0x06
   2B9C 20 07         [12]  607 	jr	NZ,00254$
   2B9E DD 7E 05      [19]  608 	ld	a, 5 (ix)
   2BA1 D6 20         [ 7]  609 	sub	a, #0x20
   2BA3 28 6C         [12]  610 	jr	Z,00106$
   2BA5                     611 00254$:
   2BA5 DD 7E 04      [19]  612 	ld	a, 4 (ix)
   2BA8 D6 07         [ 7]  613 	sub	a, #0x07
   2BAA 20 07         [12]  614 	jr	NZ,00255$
   2BAC DD 7E 05      [19]  615 	ld	a, 5 (ix)
   2BAF D6 20         [ 7]  616 	sub	a, #0x20
   2BB1 28 56         [12]  617 	jr	Z,00104$
   2BB3                     618 00255$:
   2BB3 DD 7E 04      [19]  619 	ld	a, 4 (ix)
   2BB6 D6 08         [ 7]  620 	sub	a, #0x08
   2BB8 20 07         [12]  621 	jr	NZ,00256$
   2BBA DD 7E 05      [19]  622 	ld	a, 5 (ix)
   2BBD D6 20         [ 7]  623 	sub	a, #0x20
   2BBF 28 3B         [12]  624 	jr	Z,00101$
   2BC1                     625 00256$:
   2BC1 DD 7E 04      [19]  626 	ld	a, 4 (ix)
   2BC4 D6 04         [ 7]  627 	sub	a, #0x04
   2BC6 20 07         [12]  628 	jr	NZ,00257$
   2BC8 DD 7E 05      [19]  629 	ld	a, 5 (ix)
   2BCB D6 40         [ 7]  630 	sub	a, #0x40
   2BCD 28 5E         [12]  631 	jr	Z,00113$
   2BCF                     632 00257$:
   2BCF DD 7E 04      [19]  633 	ld	a, 4 (ix)
   2BD2 D6 05         [ 7]  634 	sub	a, #0x05
   2BD4 20 07         [12]  635 	jr	NZ,00258$
   2BD6 DD 7E 05      [19]  636 	ld	a, 5 (ix)
   2BD9 D6 40         [ 7]  637 	sub	a, #0x40
   2BDB 28 54         [12]  638 	jr	Z,00114$
   2BDD                     639 00258$:
   2BDD DD 7E 04      [19]  640 	ld	a, 4 (ix)
   2BE0 D6 06         [ 7]  641 	sub	a, #0x06
   2BE2 20 07         [12]  642 	jr	NZ,00259$
   2BE4 DD 7E 05      [19]  643 	ld	a, 5 (ix)
   2BE7 D6 40         [ 7]  644 	sub	a, #0x40
   2BE9 28 16         [12]  645 	jr	Z,00102$
   2BEB                     646 00259$:
   2BEB DD 7E 04      [19]  647 	ld	a, 4 (ix)
   2BEE D6 07         [ 7]  648 	sub	a, #0x07
   2BF0 20 73         [12]  649 	jr	NZ,00127$
   2BF2 DD 7E 05      [19]  650 	ld	a, 5 (ix)
   2BF5 D6 40         [ 7]  651 	sub	a, #0x40
   2BF7 28 0C         [12]  652 	jr	Z,00103$
   2BF9 C3 65 2C      [10]  653 	jp	00127$
                            654 ;src/lib/utilities.c:167: case Key_A:
   2BFC                     655 00101$:
                            656 ;src/lib/utilities.c:168: return 'A';
   2BFC 2E 41         [ 7]  657 	ld	l, #0x41
   2BFE C3 67 2C      [10]  658 	jp	00129$
                            659 ;src/lib/utilities.c:169: case Key_B:
   2C01                     660 00102$:
                            661 ;src/lib/utilities.c:170: return 'B';
   2C01 2E 42         [ 7]  662 	ld	l, #0x42
   2C03 18 62         [12]  663 	jr	00129$
                            664 ;src/lib/utilities.c:171: case Key_C:
   2C05                     665 00103$:
                            666 ;src/lib/utilities.c:172: return 'C';
   2C05 2E 43         [ 7]  667 	ld	l, #0x43
   2C07 18 5E         [12]  668 	jr	00129$
                            669 ;src/lib/utilities.c:173: case Key_D:
   2C09                     670 00104$:
                            671 ;src/lib/utilities.c:174: return 'D';
   2C09 2E 44         [ 7]  672 	ld	l, #0x44
   2C0B 18 5A         [12]  673 	jr	00129$
                            674 ;src/lib/utilities.c:175: case Key_E:
   2C0D                     675 00105$:
                            676 ;src/lib/utilities.c:176: return 'E';
   2C0D 2E 45         [ 7]  677 	ld	l, #0x45
   2C0F 18 56         [12]  678 	jr	00129$
                            679 ;src/lib/utilities.c:177: case Key_F:
   2C11                     680 00106$:
                            681 ;src/lib/utilities.c:178: return 'F';
   2C11 2E 46         [ 7]  682 	ld	l, #0x46
   2C13 18 52         [12]  683 	jr	00129$
                            684 ;src/lib/utilities.c:179: case Key_G:
   2C15                     685 00107$:
                            686 ;src/lib/utilities.c:180: return 'G';
   2C15 2E 47         [ 7]  687 	ld	l, #0x47
   2C17 18 4E         [12]  688 	jr	00129$
                            689 ;src/lib/utilities.c:181: case Key_H:
   2C19                     690 00108$:
                            691 ;src/lib/utilities.c:182: return 'H';
   2C19 2E 48         [ 7]  692 	ld	l, #0x48
   2C1B 18 4A         [12]  693 	jr	00129$
                            694 ;src/lib/utilities.c:183: case Key_I:
   2C1D                     695 00109$:
                            696 ;src/lib/utilities.c:184: return 'I';
   2C1D 2E 49         [ 7]  697 	ld	l, #0x49
   2C1F 18 46         [12]  698 	jr	00129$
                            699 ;src/lib/utilities.c:185: case Key_J:
   2C21                     700 00110$:
                            701 ;src/lib/utilities.c:186: return 'J';
   2C21 2E 4A         [ 7]  702 	ld	l, #0x4a
   2C23 18 42         [12]  703 	jr	00129$
                            704 ;src/lib/utilities.c:187: case Key_K:
   2C25                     705 00111$:
                            706 ;src/lib/utilities.c:188: return 'K';
   2C25 2E 4B         [ 7]  707 	ld	l, #0x4b
   2C27 18 3E         [12]  708 	jr	00129$
                            709 ;src/lib/utilities.c:189: case Key_L:
   2C29                     710 00112$:
                            711 ;src/lib/utilities.c:190: return 'L';
   2C29 2E 4C         [ 7]  712 	ld	l, #0x4c
   2C2B 18 3A         [12]  713 	jr	00129$
                            714 ;src/lib/utilities.c:191: case Key_M:
   2C2D                     715 00113$:
                            716 ;src/lib/utilities.c:192: return 'M';
   2C2D 2E 4D         [ 7]  717 	ld	l, #0x4d
   2C2F 18 36         [12]  718 	jr	00129$
                            719 ;src/lib/utilities.c:193: case Key_N:
   2C31                     720 00114$:
                            721 ;src/lib/utilities.c:194: return 'N';
   2C31 2E 4E         [ 7]  722 	ld	l, #0x4e
   2C33 18 32         [12]  723 	jr	00129$
                            724 ;src/lib/utilities.c:195: case Key_O:
   2C35                     725 00115$:
                            726 ;src/lib/utilities.c:196: return 'O';
   2C35 2E 4F         [ 7]  727 	ld	l, #0x4f
   2C37 18 2E         [12]  728 	jr	00129$
                            729 ;src/lib/utilities.c:197: case Key_P:
   2C39                     730 00116$:
                            731 ;src/lib/utilities.c:198: return 'P';
   2C39 2E 50         [ 7]  732 	ld	l, #0x50
   2C3B 18 2A         [12]  733 	jr	00129$
                            734 ;src/lib/utilities.c:199: case Key_Q:
   2C3D                     735 00117$:
                            736 ;src/lib/utilities.c:200: return 'Q';
   2C3D 2E 51         [ 7]  737 	ld	l, #0x51
   2C3F 18 26         [12]  738 	jr	00129$
                            739 ;src/lib/utilities.c:201: case Key_R:
   2C41                     740 00118$:
                            741 ;src/lib/utilities.c:202: return 'R';
   2C41 2E 52         [ 7]  742 	ld	l, #0x52
   2C43 18 22         [12]  743 	jr	00129$
                            744 ;src/lib/utilities.c:203: case Key_S:
   2C45                     745 00119$:
                            746 ;src/lib/utilities.c:204: return 'S';
   2C45 2E 53         [ 7]  747 	ld	l, #0x53
   2C47 18 1E         [12]  748 	jr	00129$
                            749 ;src/lib/utilities.c:205: case Key_T:
   2C49                     750 00120$:
                            751 ;src/lib/utilities.c:206: return 'T';
   2C49 2E 54         [ 7]  752 	ld	l, #0x54
   2C4B 18 1A         [12]  753 	jr	00129$
                            754 ;src/lib/utilities.c:207: case Key_U:
   2C4D                     755 00121$:
                            756 ;src/lib/utilities.c:208: return 'U';
   2C4D 2E 55         [ 7]  757 	ld	l, #0x55
   2C4F 18 16         [12]  758 	jr	00129$
                            759 ;src/lib/utilities.c:209: case Key_V:
   2C51                     760 00122$:
                            761 ;src/lib/utilities.c:210: return 'V';
   2C51 2E 56         [ 7]  762 	ld	l, #0x56
   2C53 18 12         [12]  763 	jr	00129$
                            764 ;src/lib/utilities.c:211: case Key_W:
   2C55                     765 00123$:
                            766 ;src/lib/utilities.c:212: return 'W';
   2C55 2E 57         [ 7]  767 	ld	l, #0x57
   2C57 18 0E         [12]  768 	jr	00129$
                            769 ;src/lib/utilities.c:213: case Key_X:
   2C59                     770 00124$:
                            771 ;src/lib/utilities.c:214: return 'X';
   2C59 2E 58         [ 7]  772 	ld	l, #0x58
   2C5B 18 0A         [12]  773 	jr	00129$
                            774 ;src/lib/utilities.c:215: case Key_Y:
   2C5D                     775 00125$:
                            776 ;src/lib/utilities.c:216: return 'Y';
   2C5D 2E 59         [ 7]  777 	ld	l, #0x59
   2C5F 18 06         [12]  778 	jr	00129$
                            779 ;src/lib/utilities.c:217: case Key_Z:
   2C61                     780 00126$:
                            781 ;src/lib/utilities.c:218: return 'Z';
   2C61 2E 5A         [ 7]  782 	ld	l, #0x5a
   2C63 18 02         [12]  783 	jr	00129$
                            784 ;src/lib/utilities.c:219: default:
   2C65                     785 00127$:
                            786 ;src/lib/utilities.c:220: return ' ';
   2C65 2E 20         [ 7]  787 	ld	l, #0x20
                            788 ;src/lib/utilities.c:221: }
   2C67                     789 00129$:
   2C67 DD E1         [14]  790 	pop	ix
   2C69 C9            [10]  791 	ret
                            792 ;src/lib/utilities.c:225: inline void u_get_delta(const dir_t dir, i8 *dx, i8 *dy) {
                            793 ;	---------------------------------
                            794 ; Function u_get_delta
                            795 ; ---------------------------------
   2C6A                     796 _u_get_delta::
   2C6A DD E5         [15]  797 	push	ix
   2C6C DD 21 00 00   [14]  798 	ld	ix,#0
   2C70 DD 39         [15]  799 	add	ix,sp
                            800 ;src/lib/utilities.c:229: *dx = (offsets[(int)dir][0]);
   2C72 DD 4E 05      [19]  801 	ld	c,5 (ix)
   2C75 DD 46 06      [19]  802 	ld	b,6 (ix)
   2C78 11 96 2C      [10]  803 	ld	de, #_u_get_delta_offsets_1_307+0
   2C7B DD 6E 04      [19]  804 	ld	l, 4 (ix)
   2C7E DD 7E 04      [19]  805 	ld	a, 4 (ix)
   2C81 17            [ 4]  806 	rla
   2C82 9F            [ 4]  807 	sbc	a, a
   2C83 67            [ 4]  808 	ld	h, a
   2C84 29            [11]  809 	add	hl, hl
   2C85 19            [11]  810 	add	hl,de
   2C86 EB            [ 4]  811 	ex	de,hl
   2C87 1A            [ 7]  812 	ld	a, (de)
   2C88 02            [ 7]  813 	ld	(bc), a
                            814 ;src/lib/utilities.c:230: *dy = (offsets[(int)dir][1]);
   2C89 DD 4E 07      [19]  815 	ld	c,7 (ix)
   2C8C DD 46 08      [19]  816 	ld	b,8 (ix)
   2C8F EB            [ 4]  817 	ex	de,hl
   2C90 23            [ 6]  818 	inc	hl
   2C91 7E            [ 7]  819 	ld	a, (hl)
   2C92 02            [ 7]  820 	ld	(bc), a
                            821 ;src/lib/utilities.c:232: return;
   2C93 DD E1         [14]  822 	pop	ix
   2C95 C9            [10]  823 	ret
   2C96                     824 _u_get_delta_offsets_1_307:
   2C96 00                  825 	.db #0x00	;  0
   2C97 FF                  826 	.db #0xff	; -1
   2C98 01                  827 	.db #0x01	;  1
   2C99 00                  828 	.db #0x00	;  0
   2C9A 00                  829 	.db #0x00	;  0
   2C9B 01                  830 	.db #0x01	;  1
   2C9C FF                  831 	.db #0xff	; -1
   2C9D 00                  832 	.db #0x00	;  0
                            833 ;src/lib/utilities.c:236: inline bool u_bounds_delta_check(const i16 x, const i16 y, const i8 dx,
                            834 ;	---------------------------------
                            835 ; Function u_bounds_delta_check
                            836 ; ---------------------------------
   2C9E                     837 _u_bounds_delta_check::
                            838 ;src/lib/utilities.c:239: if (x + dx >= GRID_U_W)
   2C9E FD 21 06 00   [14]  839 	ld	iy, #6
   2CA2 FD 39         [15]  840 	add	iy, sp
   2CA4 FD 4E 00      [19]  841 	ld	c, 0 (iy)
   2CA7 FD 7E 00      [19]  842 	ld	a, 0 (iy)
   2CAA 17            [ 4]  843 	rla
   2CAB 9F            [ 4]  844 	sbc	a, a
   2CAC 47            [ 4]  845 	ld	b, a
   2CAD 21 02 00      [10]  846 	ld	hl, #2
   2CB0 39            [11]  847 	add	hl, sp
   2CB1 7E            [ 7]  848 	ld	a, (hl)
   2CB2 23            [ 6]  849 	inc	hl
   2CB3 66            [ 7]  850 	ld	h, (hl)
   2CB4 6F            [ 4]  851 	ld	l, a
   2CB5 09            [11]  852 	add	hl, bc
   2CB6 7D            [ 4]  853 	ld	a, l
   2CB7 D6 19         [ 7]  854 	sub	a, #0x19
   2CB9 7C            [ 4]  855 	ld	a, h
   2CBA 17            [ 4]  856 	rla
   2CBB 3F            [ 4]  857 	ccf
   2CBC 1F            [ 4]  858 	rra
   2CBD DE 80         [ 7]  859 	sbc	a, #0x80
   2CBF 38 03         [12]  860 	jr	C,00102$
                            861 ;src/lib/utilities.c:240: return false;
   2CC1 2E 00         [ 7]  862 	ld	l, #0x00
   2CC3 C9            [10]  863 	ret
   2CC4                     864 00102$:
                            865 ;src/lib/utilities.c:241: if (x + dx < 0)
   2CC4 CB 7C         [ 8]  866 	bit	7, h
   2CC6 28 03         [12]  867 	jr	Z,00104$
                            868 ;src/lib/utilities.c:242: return false;
   2CC8 2E 00         [ 7]  869 	ld	l, #0x00
   2CCA C9            [10]  870 	ret
   2CCB                     871 00104$:
                            872 ;src/lib/utilities.c:243: if (y + dy >= GRID_U_H)
   2CCB FD 21 07 00   [14]  873 	ld	iy, #7
   2CCF FD 39         [15]  874 	add	iy, sp
   2CD1 FD 4E 00      [19]  875 	ld	c, 0 (iy)
   2CD4 FD 7E 00      [19]  876 	ld	a, 0 (iy)
   2CD7 17            [ 4]  877 	rla
   2CD8 9F            [ 4]  878 	sbc	a, a
   2CD9 47            [ 4]  879 	ld	b, a
   2CDA 21 04 00      [10]  880 	ld	hl, #4
   2CDD 39            [11]  881 	add	hl, sp
   2CDE 7E            [ 7]  882 	ld	a, (hl)
   2CDF 23            [ 6]  883 	inc	hl
   2CE0 66            [ 7]  884 	ld	h, (hl)
   2CE1 6F            [ 4]  885 	ld	l, a
   2CE2 09            [11]  886 	add	hl, bc
   2CE3 7D            [ 4]  887 	ld	a, l
   2CE4 D6 11         [ 7]  888 	sub	a, #0x11
   2CE6 7C            [ 4]  889 	ld	a, h
   2CE7 17            [ 4]  890 	rla
   2CE8 3F            [ 4]  891 	ccf
   2CE9 1F            [ 4]  892 	rra
   2CEA DE 80         [ 7]  893 	sbc	a, #0x80
   2CEC 38 03         [12]  894 	jr	C,00106$
                            895 ;src/lib/utilities.c:244: return false;
   2CEE 2E 00         [ 7]  896 	ld	l, #0x00
   2CF0 C9            [10]  897 	ret
   2CF1                     898 00106$:
                            899 ;src/lib/utilities.c:245: if (y + dy < 0)
   2CF1 CB 7C         [ 8]  900 	bit	7, h
   2CF3 28 03         [12]  901 	jr	Z,00108$
                            902 ;src/lib/utilities.c:246: return false;
   2CF5 2E 00         [ 7]  903 	ld	l, #0x00
   2CF7 C9            [10]  904 	ret
   2CF8                     905 00108$:
                            906 ;src/lib/utilities.c:248: return true;
   2CF8 2E 01         [ 7]  907 	ld	l, #0x01
   2CFA C9            [10]  908 	ret
                            909 ;src/lib/utilities.c:252: inline bool u_bounds_check(const i16 x, const i16 y) {
                            910 ;	---------------------------------
                            911 ; Function u_bounds_check
                            912 ; ---------------------------------
   2CFB                     913 _u_bounds_check::
                            914 ;src/lib/utilities.c:254: if (x < 0)
   2CFB 21 03 00      [10]  915 	ld	hl, #2+1
   2CFE 39            [11]  916 	add	hl, sp
   2CFF CB 7E         [12]  917 	bit	7, (hl)
   2D01 28 03         [12]  918 	jr	Z,00102$
                            919 ;src/lib/utilities.c:255: return false;
   2D03 2E 00         [ 7]  920 	ld	l, #0x00
   2D05 C9            [10]  921 	ret
   2D06                     922 00102$:
                            923 ;src/lib/utilities.c:256: if (x >= GRID_U_W)
   2D06 FD 21 02 00   [14]  924 	ld	iy, #2
   2D0A FD 39         [15]  925 	add	iy, sp
   2D0C FD 7E 00      [19]  926 	ld	a, 0 (iy)
   2D0F D6 19         [ 7]  927 	sub	a, #0x19
   2D11 FD 7E 01      [19]  928 	ld	a, 1 (iy)
   2D14 17            [ 4]  929 	rla
   2D15 3F            [ 4]  930 	ccf
   2D16 1F            [ 4]  931 	rra
   2D17 DE 80         [ 7]  932 	sbc	a, #0x80
   2D19 38 03         [12]  933 	jr	C,00104$
                            934 ;src/lib/utilities.c:257: return false;
   2D1B 2E 00         [ 7]  935 	ld	l, #0x00
   2D1D C9            [10]  936 	ret
   2D1E                     937 00104$:
                            938 ;src/lib/utilities.c:258: if (y >= GRID_U_H)
   2D1E FD 21 04 00   [14]  939 	ld	iy, #4
   2D22 FD 39         [15]  940 	add	iy, sp
   2D24 FD 7E 00      [19]  941 	ld	a, 0 (iy)
   2D27 D6 11         [ 7]  942 	sub	a, #0x11
   2D29 FD 7E 01      [19]  943 	ld	a, 1 (iy)
   2D2C 17            [ 4]  944 	rla
   2D2D 3F            [ 4]  945 	ccf
   2D2E 1F            [ 4]  946 	rra
   2D2F DE 80         [ 7]  947 	sbc	a, #0x80
   2D31 38 03         [12]  948 	jr	C,00106$
                            949 ;src/lib/utilities.c:259: return false;
   2D33 2E 00         [ 7]  950 	ld	l, #0x00
   2D35 C9            [10]  951 	ret
   2D36                     952 00106$:
                            953 ;src/lib/utilities.c:260: if (y < 0)
   2D36 21 05 00      [10]  954 	ld	hl, #4+1
   2D39 39            [11]  955 	add	hl, sp
   2D3A CB 7E         [12]  956 	bit	7, (hl)
   2D3C 28 03         [12]  957 	jr	Z,00108$
                            958 ;src/lib/utilities.c:261: return false;
   2D3E 2E 00         [ 7]  959 	ld	l, #0x00
   2D40 C9            [10]  960 	ret
   2D41                     961 00108$:
                            962 ;src/lib/utilities.c:263: return true;
   2D41 2E 01         [ 7]  963 	ld	l, #0x01
   2D43 C9            [10]  964 	ret
                            965 ;src/lib/utilities.c:267: void u_clear_input(void) {
                            966 ;	---------------------------------
                            967 ; Function u_clear_input
                            968 ; ---------------------------------
   2D44                     969 _u_clear_input::
                            970 ;src/lib/utilities.c:269: cpct_memset(cpct_keyboardStatusBuffer, 0xff,
   2D44 21 0A 00      [10]  971 	ld	hl, #0x000a
   2D47 E5            [11]  972 	push	hl
   2D48 3E FF         [ 7]  973 	ld	a, #0xff
   2D4A F5            [11]  974 	push	af
   2D4B 33            [ 6]  975 	inc	sp
   2D4C 21 2B 8C      [10]  976 	ld	hl, #_cpct_keyboardStatusBuffer
   2D4F E5            [11]  977 	push	hl
   2D50 CD 06 8F      [17]  978 	call	_cpct_memset
   2D53 C9            [10]  979 	ret
                            980 ;src/lib/utilities.c:274: void u_clock_interrupt(void) {
                            981 ;	---------------------------------
                            982 ; Function u_clock_interrupt
                            983 ; ---------------------------------
   2D54                     984 _u_clock_interrupt::
                            985 ;src/lib/utilities.c:279: if (g_clock_on) {
   2D54 21 5C 9E      [10]  986 	ld	hl,#_g_clock_on+0
   2D57 CB 46         [12]  987 	bit	0, (hl)
   2D59 C8            [11]  988 	ret	Z
                            989 ;src/lib/utilities.c:286: count = ++count % 6;
   2D5A 21 5D 9E      [10]  990 	ld	hl, #_u_clock_interrupt_count_1_315+0
   2D5D 34            [11]  991 	inc	(hl)
   2D5E 3E 06         [ 7]  992 	ld	a, #0x06
   2D60 F5            [11]  993 	push	af
   2D61 33            [ 6]  994 	inc	sp
   2D62 3A 5D 9E      [13]  995 	ld	a, (_u_clock_interrupt_count_1_315)
   2D65 F5            [11]  996 	push	af
   2D66 33            [ 6]  997 	inc	sp
   2D67 CD 14 8C      [17]  998 	call	__moduchar
   2D6A F1            [10]  999 	pop	af
   2D6B FD 21 5D 9E   [14] 1000 	ld	iy, #_u_clock_interrupt_count_1_315
   2D6F FD 75 00      [19] 1001 	ld	0 (iy), l
                           1002 ;src/lib/utilities.c:287: if (count == 5) {
   2D72 FD 7E 00      [19] 1003 	ld	a, 0 (iy)
   2D75 D6 05         [ 7] 1004 	sub	a, #0x05
   2D77 C0            [11] 1005 	ret	NZ
                           1006 ;src/lib/utilities.c:288: g_clock.ms += 20;
   2D78 ED 4B 6B A0   [20] 1007 	ld	bc, (#_g_clock + 0)
   2D7C 21 14 00      [10] 1008 	ld	hl, #0x0014
   2D7F 09            [11] 1009 	add	hl,bc
   2D80 4D            [ 4] 1010 	ld	c, l
   2D81 44            [ 4] 1011 	ld	b, h
   2D82 ED 43 6B A0   [20] 1012 	ld	(_g_clock), bc
                           1013 ;src/lib/utilities.c:289: if (g_clock.ms == 1000) {
   2D86 79            [ 4] 1014 	ld	a, c
   2D87 D6 E8         [ 7] 1015 	sub	a, #0xe8
   2D89 C0            [11] 1016 	ret	NZ
   2D8A 78            [ 4] 1017 	ld	a, b
   2D8B D6 03         [ 7] 1018 	sub	a, #0x03
   2D8D C0            [11] 1019 	ret	NZ
                           1020 ;src/lib/utilities.c:290: ++g_clock.s;
   2D8E ED 4B 6D A0   [20] 1021 	ld	bc, (#(_g_clock + 0x0002) + 0)
   2D92 03            [ 6] 1022 	inc	bc
   2D93 ED 43 6D A0   [20] 1023 	ld	((_g_clock + 0x0002)), bc
                           1024 ;src/lib/utilities.c:291: g_clock.ms = 0;
   2D97 21 00 00      [10] 1025 	ld	hl, #0x0000
   2D9A 22 6B A0      [16] 1026 	ld	(_g_clock), hl
   2D9D C9            [10] 1027 	ret
                           1028 ;src/lib/utilities.c:304: void u_reset_clock(void) {
                           1029 ;	---------------------------------
                           1030 ; Function u_reset_clock
                           1031 ; ---------------------------------
   2D9E                    1032 _u_reset_clock::
                           1033 ;src/lib/utilities.c:306: g_clock.ms = g_clock.s = 0;
   2D9E 21 00 00      [10] 1034 	ld	hl, #0x0000
   2DA1 22 6D A0      [16] 1035 	ld	((_g_clock + 0x0002)), hl
   2DA4 2E 00         [ 7] 1036 	ld	l, #0x00
   2DA6 22 6B A0      [16] 1037 	ld	(_g_clock), hl
   2DA9 C9            [10] 1038 	ret
                           1039 ;src/lib/utilities.c:310: inline bool u_check_collide(const i8 x1, const i8 y1, const i8 x2,
                           1040 ;	---------------------------------
                           1041 ; Function u_check_collide
                           1042 ; ---------------------------------
   2DAA                    1043 _u_check_collide::
                           1044 ;src/lib/utilities.c:313: return ((x1 == x2) && (y1 == y2));
   2DAA 21 02 00      [10] 1045 	ld	hl, #2+0
   2DAD 39            [11] 1046 	add	hl, sp
   2DAE 7E            [ 7] 1047 	ld	a, (hl)
   2DAF FD 21 04 00   [14] 1048 	ld	iy, #4
   2DB3 FD 39         [15] 1049 	add	iy, sp
   2DB5 FD 96 00      [19] 1050 	sub	a, 0 (iy)
   2DB8 20 10         [12] 1051 	jr	NZ,00103$
   2DBA 21 03 00      [10] 1052 	ld	hl, #3+0
   2DBD 39            [11] 1053 	add	hl, sp
   2DBE 7E            [ 7] 1054 	ld	a, (hl)
   2DBF FD 21 05 00   [14] 1055 	ld	iy, #5
   2DC3 FD 39         [15] 1056 	add	iy, sp
   2DC5 FD 96 00      [19] 1057 	sub	a, 0 (iy)
   2DC8 28 03         [12] 1058 	jr	Z,00104$
   2DCA                    1059 00103$:
   2DCA 2E 00         [ 7] 1060 	ld	l, #0x00
   2DCC C9            [10] 1061 	ret
   2DCD                    1062 00104$:
   2DCD 2E 01         [ 7] 1063 	ld	l, #0x01
   2DCF C9            [10] 1064 	ret
                           1065 ;src/lib/utilities.c:317: void u_sort_hiscores(void) {
                           1066 ;	---------------------------------
                           1067 ; Function u_sort_hiscores
                           1068 ; ---------------------------------
   2DD0                    1069 _u_sort_hiscores::
                           1070 ;src/lib/utilities.c:324: u_quicksort(g_hiscores, n);
   2DD0 3E 0A         [ 7] 1071 	ld	a, #0x0a
   2DD2 F5            [11] 1072 	push	af
   2DD3 33            [ 6] 1073 	inc	sp
   2DD4 21 D2 9D      [10] 1074 	ld	hl, #_g_hiscores
   2DD7 E5            [11] 1075 	push	hl
   2DD8 CD DE 2D      [17] 1076 	call	_u_quicksort
   2DDB F1            [10] 1077 	pop	af
   2DDC 33            [ 6] 1078 	inc	sp
   2DDD C9            [10] 1079 	ret
                           1080 ;src/lib/utilities.c:329: static void u_quicksort(score_t *arr, u8 len) {
                           1081 ;	---------------------------------
                           1082 ; Function u_quicksort
                           1083 ; ---------------------------------
   2DDE                    1084 _u_quicksort:
   2DDE DD E5         [15] 1085 	push	ix
   2DE0 DD 21 00 00   [14] 1086 	ld	ix,#0
   2DE4 DD 39         [15] 1087 	add	ix,sp
   2DE6 21 DA FF      [10] 1088 	ld	hl, #-38
   2DE9 39            [11] 1089 	add	hl, sp
   2DEA F9            [ 6] 1090 	ld	sp, hl
                           1091 ;src/lib/utilities.c:335: if (len < 2)
   2DEB DD 7E 06      [19] 1092 	ld	a, 6 (ix)
   2DEE D6 02         [ 7] 1093 	sub	a, #0x02
                           1094 ;src/lib/utilities.c:336: return;
   2DF0 DA 29 30      [10] 1095 	jp	C,00114$
                           1096 ;src/lib/utilities.c:338: pivot = arr[len / 2].score;
   2DF3 DD 4E 06      [19] 1097 	ld	c, 6 (ix)
   2DF6 CB 39         [ 8] 1098 	srl	c
   2DF8 06 00         [ 7] 1099 	ld	b,#0x00
   2DFA 69            [ 4] 1100 	ld	l, c
   2DFB 60            [ 4] 1101 	ld	h, b
   2DFC 29            [11] 1102 	add	hl, hl
   2DFD 29            [11] 1103 	add	hl, hl
   2DFE 29            [11] 1104 	add	hl, hl
   2DFF 09            [11] 1105 	add	hl, bc
   2E00 4D            [ 4] 1106 	ld	c, l
   2E01 44            [ 4] 1107 	ld	b, h
   2E02 DD 6E 04      [19] 1108 	ld	l,4 (ix)
   2E05 DD 66 05      [19] 1109 	ld	h,5 (ix)
   2E08 09            [11] 1110 	add	hl, bc
   2E09 11 04 00      [10] 1111 	ld	de, #0x0004
   2E0C 19            [11] 1112 	add	hl, de
   2E0D 7E            [ 7] 1113 	ld	a, (hl)
   2E0E DD 77 E4      [19] 1114 	ld	-28 (ix), a
   2E11 23            [ 6] 1115 	inc	hl
   2E12 7E            [ 7] 1116 	ld	a, (hl)
   2E13 DD 77 E5      [19] 1117 	ld	-27 (ix), a
   2E16 23            [ 6] 1118 	inc	hl
   2E17 7E            [ 7] 1119 	ld	a, (hl)
   2E18 DD 77 E6      [19] 1120 	ld	-26 (ix), a
   2E1B 23            [ 6] 1121 	inc	hl
   2E1C 7E            [ 7] 1122 	ld	a, (hl)
   2E1D DD 77 E7      [19] 1123 	ld	-25 (ix), a
                           1124 ;src/lib/utilities.c:340: for (i = 0, j = len - 1;; i++, j--) {
   2E20 DD 36 E3 00   [19] 1125 	ld	-29 (ix), #0x00
   2E24 DD 7E 06      [19] 1126 	ld	a, 6 (ix)
   2E27 C6 FF         [ 7] 1127 	add	a, #0xff
   2E29 DD 77 FF      [19] 1128 	ld	-1 (ix), a
                           1129 ;src/lib/utilities.c:342: while (arr[i].score < pivot)
   2E2C 21 00 00      [10] 1130 	ld	hl, #0x0000
   2E2F 39            [11] 1131 	add	hl, sp
   2E30 DD 75 F8      [19] 1132 	ld	-8 (ix), l
   2E33 DD 74 F9      [19] 1133 	ld	-7 (ix), h
   2E36 DD 7E F8      [19] 1134 	ld	a, -8 (ix)
   2E39 DD 77 EB      [19] 1135 	ld	-21 (ix), a
   2E3C DD 7E F9      [19] 1136 	ld	a, -7 (ix)
   2E3F DD 77 EC      [19] 1137 	ld	-20 (ix), a
   2E42 DD 7E F8      [19] 1138 	ld	a, -8 (ix)
   2E45 DD 77 E8      [19] 1139 	ld	-24 (ix), a
   2E48 DD 7E F9      [19] 1140 	ld	a, -7 (ix)
   2E4B DD 77 E9      [19] 1141 	ld	-23 (ix), a
   2E4E                    1142 00103$:
   2E4E DD 4E E3      [19] 1143 	ld	c,-29 (ix)
   2E51 06 00         [ 7] 1144 	ld	b,#0x00
   2E53 69            [ 4] 1145 	ld	l, c
   2E54 60            [ 4] 1146 	ld	h, b
   2E55 29            [11] 1147 	add	hl, hl
   2E56 29            [11] 1148 	add	hl, hl
   2E57 29            [11] 1149 	add	hl, hl
   2E58 09            [11] 1150 	add	hl, bc
   2E59 4D            [ 4] 1151 	ld	c, l
   2E5A 44            [ 4] 1152 	ld	b, h
   2E5B DD 7E 04      [19] 1153 	ld	a, 4 (ix)
   2E5E 81            [ 4] 1154 	add	a, c
   2E5F DD 77 FD      [19] 1155 	ld	-3 (ix), a
   2E62 DD 7E 05      [19] 1156 	ld	a, 5 (ix)
   2E65 88            [ 4] 1157 	adc	a, b
   2E66 DD 77 FE      [19] 1158 	ld	-2 (ix), a
   2E69 DD 7E FD      [19] 1159 	ld	a, -3 (ix)
   2E6C C6 04         [ 7] 1160 	add	a, #0x04
   2E6E DD 77 F2      [19] 1161 	ld	-14 (ix), a
   2E71 DD 7E FE      [19] 1162 	ld	a, -2 (ix)
   2E74 CE 00         [ 7] 1163 	adc	a, #0x00
   2E76 DD 77 F3      [19] 1164 	ld	-13 (ix), a
   2E79 DD 6E F2      [19] 1165 	ld	l,-14 (ix)
   2E7C DD 66 F3      [19] 1166 	ld	h,-13 (ix)
   2E7F 4E            [ 7] 1167 	ld	c, (hl)
   2E80 23            [ 6] 1168 	inc	hl
   2E81 46            [ 7] 1169 	ld	b, (hl)
   2E82 23            [ 6] 1170 	inc	hl
   2E83 5E            [ 7] 1171 	ld	e, (hl)
   2E84 23            [ 6] 1172 	inc	hl
   2E85 56            [ 7] 1173 	ld	d, (hl)
                           1174 ;src/lib/utilities.c:343: i++;
   2E86 DD 7E E3      [19] 1175 	ld	a, -29 (ix)
   2E89 3C            [ 4] 1176 	inc	a
   2E8A DD 77 EA      [19] 1177 	ld	-22 (ix), a
                           1178 ;src/lib/utilities.c:342: while (arr[i].score < pivot)
   2E8D 79            [ 4] 1179 	ld	a, c
   2E8E DD 96 E4      [19] 1180 	sub	a, -28 (ix)
   2E91 78            [ 4] 1181 	ld	a, b
   2E92 DD 9E E5      [19] 1182 	sbc	a, -27 (ix)
   2E95 7B            [ 4] 1183 	ld	a, e
   2E96 DD 9E E6      [19] 1184 	sbc	a, -26 (ix)
   2E99 7A            [ 4] 1185 	ld	a, d
   2E9A DD 9E E7      [19] 1186 	sbc	a, -25 (ix)
   2E9D 30 08         [12] 1187 	jr	NC,00120$
                           1188 ;src/lib/utilities.c:343: i++;
   2E9F DD 7E EA      [19] 1189 	ld	a, -22 (ix)
   2EA2 DD 77 E3      [19] 1190 	ld	-29 (ix), a
   2EA5 18 A7         [12] 1191 	jr	00103$
                           1192 ;src/lib/utilities.c:344: while (arr[j].score > pivot)
   2EA7                    1193 00120$:
   2EA7 DD 7E FF      [19] 1194 	ld	a, -1 (ix)
   2EAA DD 77 FA      [19] 1195 	ld	-6 (ix), a
   2EAD                    1196 00106$:
   2EAD DD 4E FA      [19] 1197 	ld	c,-6 (ix)
   2EB0 06 00         [ 7] 1198 	ld	b,#0x00
   2EB2 69            [ 4] 1199 	ld	l, c
   2EB3 60            [ 4] 1200 	ld	h, b
   2EB4 29            [11] 1201 	add	hl, hl
   2EB5 29            [11] 1202 	add	hl, hl
   2EB6 29            [11] 1203 	add	hl, hl
   2EB7 09            [11] 1204 	add	hl, bc
   2EB8 4D            [ 4] 1205 	ld	c, l
   2EB9 44            [ 4] 1206 	ld	b, h
   2EBA DD 7E 04      [19] 1207 	ld	a, 4 (ix)
   2EBD 81            [ 4] 1208 	add	a, c
   2EBE DD 77 FB      [19] 1209 	ld	-5 (ix), a
   2EC1 DD 7E 05      [19] 1210 	ld	a, 5 (ix)
   2EC4 88            [ 4] 1211 	adc	a, b
   2EC5 DD 77 FC      [19] 1212 	ld	-4 (ix), a
   2EC8 DD 7E FB      [19] 1213 	ld	a, -5 (ix)
   2ECB C6 04         [ 7] 1214 	add	a, #0x04
   2ECD DD 77 F0      [19] 1215 	ld	-16 (ix), a
   2ED0 DD 7E FC      [19] 1216 	ld	a, -4 (ix)
   2ED3 CE 00         [ 7] 1217 	adc	a, #0x00
   2ED5 DD 77 F1      [19] 1218 	ld	-15 (ix), a
   2ED8 DD 5E F0      [19] 1219 	ld	e,-16 (ix)
   2EDB DD 56 F1      [19] 1220 	ld	d,-15 (ix)
   2EDE 21 1A 00      [10] 1221 	ld	hl, #0x001a
   2EE1 39            [11] 1222 	add	hl, sp
   2EE2 EB            [ 4] 1223 	ex	de, hl
   2EE3 01 04 00      [10] 1224 	ld	bc, #0x0004
   2EE6 ED B0         [21] 1225 	ldir
                           1226 ;src/lib/utilities.c:345: j--;
   2EE8 DD 7E FA      [19] 1227 	ld	a, -6 (ix)
   2EEB C6 FF         [ 7] 1228 	add	a, #0xff
   2EED DD 77 EF      [19] 1229 	ld	-17 (ix), a
                           1230 ;src/lib/utilities.c:344: while (arr[j].score > pivot)
   2EF0 DD 7E E4      [19] 1231 	ld	a, -28 (ix)
   2EF3 DD 96 F4      [19] 1232 	sub	a, -12 (ix)
   2EF6 DD 7E E5      [19] 1233 	ld	a, -27 (ix)
   2EF9 DD 9E F5      [19] 1234 	sbc	a, -11 (ix)
   2EFC DD 7E E6      [19] 1235 	ld	a, -26 (ix)
   2EFF DD 9E F6      [19] 1236 	sbc	a, -10 (ix)
   2F02 DD 7E E7      [19] 1237 	ld	a, -25 (ix)
   2F05 DD 9E F7      [19] 1238 	sbc	a, -9 (ix)
   2F08 30 08         [12] 1239 	jr	NC,00108$
                           1240 ;src/lib/utilities.c:345: j--;
   2F0A DD 7E EF      [19] 1241 	ld	a, -17 (ix)
   2F0D DD 77 FA      [19] 1242 	ld	-6 (ix), a
   2F10 18 9B         [12] 1243 	jr	00106$
   2F12                    1244 00108$:
                           1245 ;src/lib/utilities.c:347: if (i >= j)
   2F12 DD 7E E3      [19] 1246 	ld	a, -29 (ix)
   2F15 DD 96 FA      [19] 1247 	sub	a, -6 (ix)
   2F18 D2 03 30      [10] 1248 	jp	NC, 00111$
                           1249 ;src/lib/utilities.c:350: temp.score = arr[i].score;
   2F1B DD 7E F8      [19] 1250 	ld	a, -8 (ix)
   2F1E C6 04         [ 7] 1251 	add	a, #0x04
   2F20 DD 77 F4      [19] 1252 	ld	-12 (ix), a
   2F23 DD 7E F9      [19] 1253 	ld	a, -7 (ix)
   2F26 CE 00         [ 7] 1254 	adc	a, #0x00
   2F28 DD 77 F5      [19] 1255 	ld	-11 (ix), a
   2F2B DD 6E F2      [19] 1256 	ld	l,-14 (ix)
   2F2E DD 66 F3      [19] 1257 	ld	h,-13 (ix)
   2F31 4E            [ 7] 1258 	ld	c, (hl)
   2F32 23            [ 6] 1259 	inc	hl
   2F33 46            [ 7] 1260 	ld	b, (hl)
   2F34 23            [ 6] 1261 	inc	hl
   2F35 5E            [ 7] 1262 	ld	e, (hl)
   2F36 23            [ 6] 1263 	inc	hl
   2F37 56            [ 7] 1264 	ld	d, (hl)
   2F38 DD 6E F4      [19] 1265 	ld	l,-12 (ix)
   2F3B DD 66 F5      [19] 1266 	ld	h,-11 (ix)
   2F3E 71            [ 7] 1267 	ld	(hl), c
   2F3F 23            [ 6] 1268 	inc	hl
   2F40 70            [ 7] 1269 	ld	(hl), b
   2F41 23            [ 6] 1270 	inc	hl
   2F42 73            [ 7] 1271 	ld	(hl), e
   2F43 23            [ 6] 1272 	inc	hl
   2F44 72            [ 7] 1273 	ld	(hl), d
                           1274 ;src/lib/utilities.c:351: temp.width = arr[i].width;
   2F45 DD 7E F8      [19] 1275 	ld	a, -8 (ix)
   2F48 C6 08         [ 7] 1276 	add	a, #0x08
   2F4A DD 77 ED      [19] 1277 	ld	-19 (ix), a
   2F4D DD 7E F9      [19] 1278 	ld	a, -7 (ix)
   2F50 CE 00         [ 7] 1279 	adc	a, #0x00
   2F52 DD 77 EE      [19] 1280 	ld	-18 (ix), a
   2F55 FD 21 08 00   [14] 1281 	ld	iy, #0x0008
   2F59 DD 5E FD      [19] 1282 	ld	e,-3 (ix)
   2F5C DD 56 FE      [19] 1283 	ld	d,-2 (ix)
   2F5F FD 19         [15] 1284 	add	iy, de
   2F61 FD 4E 00      [19] 1285 	ld	c, 0 (iy)
   2F64 DD 6E ED      [19] 1286 	ld	l,-19 (ix)
   2F67 DD 66 EE      [19] 1287 	ld	h,-18 (ix)
   2F6A 71            [ 7] 1288 	ld	(hl), c
                           1289 ;src/lib/utilities.c:352: strcpy(temp.initials, arr[i].initials);
   2F6B DD 5E EB      [19] 1290 	ld	e,-21 (ix)
   2F6E DD 56 EC      [19] 1291 	ld	d,-20 (ix)
   2F71 DD 6E FD      [19] 1292 	ld	l,-3 (ix)
   2F74 DD 66 FE      [19] 1293 	ld	h,-2 (ix)
   2F77 AF            [ 4] 1294 	xor	a, a
   2F78                    1295 00141$:
   2F78 BE            [ 7] 1296 	cp	a, (hl)
   2F79 ED A0         [16] 1297 	ldi
   2F7B 20 FB         [12] 1298 	jr	NZ, 00141$
                           1299 ;src/lib/utilities.c:353: arr[i].score = arr[j].score;
   2F7D DD 6E F0      [19] 1300 	ld	l,-16 (ix)
   2F80 DD 66 F1      [19] 1301 	ld	h,-15 (ix)
   2F83 4E            [ 7] 1302 	ld	c, (hl)
   2F84 23            [ 6] 1303 	inc	hl
   2F85 46            [ 7] 1304 	ld	b, (hl)
   2F86 23            [ 6] 1305 	inc	hl
   2F87 5E            [ 7] 1306 	ld	e, (hl)
   2F88 23            [ 6] 1307 	inc	hl
   2F89 56            [ 7] 1308 	ld	d, (hl)
   2F8A DD 6E F2      [19] 1309 	ld	l,-14 (ix)
   2F8D DD 66 F3      [19] 1310 	ld	h,-13 (ix)
   2F90 71            [ 7] 1311 	ld	(hl), c
   2F91 23            [ 6] 1312 	inc	hl
   2F92 70            [ 7] 1313 	ld	(hl), b
   2F93 23            [ 6] 1314 	inc	hl
   2F94 73            [ 7] 1315 	ld	(hl), e
   2F95 23            [ 6] 1316 	inc	hl
   2F96 72            [ 7] 1317 	ld	(hl), d
                           1318 ;src/lib/utilities.c:354: arr[i].width = arr[j].width;
   2F97 DD 7E FB      [19] 1319 	ld	a, -5 (ix)
   2F9A C6 08         [ 7] 1320 	add	a, #0x08
   2F9C 4F            [ 4] 1321 	ld	c, a
   2F9D DD 7E FC      [19] 1322 	ld	a, -4 (ix)
   2FA0 CE 00         [ 7] 1323 	adc	a, #0x00
   2FA2 47            [ 4] 1324 	ld	b, a
   2FA3 0A            [ 7] 1325 	ld	a, (bc)
   2FA4 FD 77 00      [19] 1326 	ld	0 (iy), a
                           1327 ;src/lib/utilities.c:355: strcpy(arr[i].initials, arr[j].initials);
   2FA7 DD 5E FD      [19] 1328 	ld	e,-3 (ix)
   2FAA DD 56 FE      [19] 1329 	ld	d,-2 (ix)
   2FAD DD 6E FB      [19] 1330 	ld	l,-5 (ix)
   2FB0 DD 66 FC      [19] 1331 	ld	h,-4 (ix)
   2FB3 C5            [11] 1332 	push	bc
   2FB4 AF            [ 4] 1333 	xor	a, a
   2FB5                    1334 00142$:
   2FB5 BE            [ 7] 1335 	cp	a, (hl)
   2FB6 ED A0         [16] 1336 	ldi
   2FB8 20 FB         [12] 1337 	jr	NZ, 00142$
   2FBA DD 5E F4      [19] 1338 	ld	e,-12 (ix)
   2FBD DD 56 F5      [19] 1339 	ld	d,-11 (ix)
   2FC0 21 1C 00      [10] 1340 	ld	hl, #0x001c
   2FC3 39            [11] 1341 	add	hl, sp
   2FC4 EB            [ 4] 1342 	ex	de, hl
   2FC5 01 04 00      [10] 1343 	ld	bc, #0x0004
   2FC8 ED B0         [21] 1344 	ldir
   2FCA DD 5E F0      [19] 1345 	ld	e,-16 (ix)
   2FCD DD 56 F1      [19] 1346 	ld	d,-15 (ix)
   2FD0 21 1C 00      [10] 1347 	ld	hl, #0x001c
   2FD3 39            [11] 1348 	add	hl, sp
   2FD4 01 04 00      [10] 1349 	ld	bc, #0x0004
   2FD7 ED B0         [21] 1350 	ldir
   2FD9 C1            [10] 1351 	pop	bc
                           1352 ;src/lib/utilities.c:357: arr[j].width = temp.width;
   2FDA DD 6E ED      [19] 1353 	ld	l,-19 (ix)
   2FDD DD 66 EE      [19] 1354 	ld	h,-18 (ix)
   2FE0 7E            [ 7] 1355 	ld	a, (hl)
   2FE1 02            [ 7] 1356 	ld	(bc), a
                           1357 ;src/lib/utilities.c:358: strcpy(arr[j].initials, temp.initials);
   2FE2 DD 5E FB      [19] 1358 	ld	e,-5 (ix)
   2FE5 DD 56 FC      [19] 1359 	ld	d,-4 (ix)
   2FE8 DD 6E E8      [19] 1360 	ld	l,-24 (ix)
   2FEB DD 66 E9      [19] 1361 	ld	h,-23 (ix)
   2FEE AF            [ 4] 1362 	xor	a, a
   2FEF                    1363 00143$:
   2FEF BE            [ 7] 1364 	cp	a, (hl)
   2FF0 ED A0         [16] 1365 	ldi
   2FF2 20 FB         [12] 1366 	jr	NZ, 00143$
                           1367 ;src/lib/utilities.c:340: for (i = 0, j = len - 1;; i++, j--) {
   2FF4 DD 7E EA      [19] 1368 	ld	a, -22 (ix)
   2FF7 DD 77 E3      [19] 1369 	ld	-29 (ix), a
   2FFA DD 7E EF      [19] 1370 	ld	a, -17 (ix)
   2FFD DD 77 FF      [19] 1371 	ld	-1 (ix), a
   3000 C3 4E 2E      [10] 1372 	jp	00103$
   3003                    1373 00111$:
                           1374 ;src/lib/utilities.c:361: u_quicksort(arr, i);
   3003 DD 7E E3      [19] 1375 	ld	a, -29 (ix)
   3006 F5            [11] 1376 	push	af
   3007 33            [ 6] 1377 	inc	sp
   3008 DD 6E 04      [19] 1378 	ld	l,4 (ix)
   300B DD 66 05      [19] 1379 	ld	h,5 (ix)
   300E E5            [11] 1380 	push	hl
   300F CD DE 2D      [17] 1381 	call	_u_quicksort
   3012 F1            [10] 1382 	pop	af
   3013 33            [ 6] 1383 	inc	sp
                           1384 ;src/lib/utilities.c:362: u_quicksort(arr + i, len - i);
   3014 DD 7E 06      [19] 1385 	ld	a, 6 (ix)
   3017 DD 96 E3      [19] 1386 	sub	a, -29 (ix)
   301A 47            [ 4] 1387 	ld	b, a
   301B C5            [11] 1388 	push	bc
   301C 33            [ 6] 1389 	inc	sp
   301D DD 6E FD      [19] 1390 	ld	l,-3 (ix)
   3020 DD 66 FE      [19] 1391 	ld	h,-2 (ix)
   3023 E5            [11] 1392 	push	hl
   3024 CD DE 2D      [17] 1393 	call	_u_quicksort
   3027 F1            [10] 1394 	pop	af
   3028 33            [ 6] 1395 	inc	sp
   3029                    1396 00114$:
   3029 DD F9         [10] 1397 	ld	sp, ix
   302B DD E1         [14] 1398 	pop	ix
   302D C9            [10] 1399 	ret
                           1400 ;src/lib/utilities.c:366: static void u_sort_swap(score_t *h1, score_t *h2) {
                           1401 ;	---------------------------------
                           1402 ; Function u_sort_swap
                           1403 ; ---------------------------------
   302E                    1404 _u_sort_swap:
                           1405 ;src/lib/utilities.c:370: h2 = temp;
   302E C9            [10] 1406 	ret
                           1407 ;src/lib/utilities.c:374: static int u_qsort_compare(const void *h1, const void *h2) {
                           1408 ;	---------------------------------
                           1409 ; Function u_qsort_compare
                           1410 ; ---------------------------------
   302F                    1411 _u_qsort_compare:
                           1412 ;src/lib/utilities.c:391: return 0;
   302F 21 00 00      [10] 1413 	ld	hl, #0x0000
   3032 C9            [10] 1414 	ret
                           1415 	.area _CODE
                           1416 	.area _INITIALIZER
   A0FF                    1417 __xinit__g_clock:
   A0FF 00 00              1418 	.dw #0x0000
   A101 00 00              1419 	.dw #0x0000
                           1420 	.area _CABS (ABS)
