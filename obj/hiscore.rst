                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module hiscore
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _v_reset_timers
                             12 	.globl _v_interrupt
                             13 	.globl _v_draw_logo
                             14 	.globl _v_print_n
                             15 	.globl _v_print
                             16 	.globl _v_print_c
                             17 	.globl _v_wipe_scr
                             18 	.globl _v_clr_scr
                             19 	.globl _v_reset_pal
                             20 	.globl _v_blk_scr
                             21 	.globl _u_get_width
                             22 	.globl _u_sort_hiscores
                             23 	.globl _cpct_waitVSYNC
                             24 	.globl _cpct_getKeypressedAsASCII
                             25 	.globl _cpct_isAnyKeyPressed
                             26 	.globl _cpct_isKeyPressed
                             27 	.globl _cpct_scanKeyboard
                             28 	.globl _cpct_removeInterruptHandler
                             29 	.globl _cpct_setInterruptHandler
                             30 	.globl _h_start
                             31 	.globl _h_enter_start
                             32 	.globl _h_stop
                             33 	.globl _h_insert
                             34 ;--------------------------------------------------------
                             35 ; special function registers
                             36 ;--------------------------------------------------------
                             37 ;--------------------------------------------------------
                             38 ; ram data
                             39 ;--------------------------------------------------------
                             40 	.area _DATA
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
                             65 ;src/hiscore.c:30: void h_start(void) {
                             66 ;	---------------------------------
                             67 ; Function h_start
                             68 ; ---------------------------------
   1A9E                      69 _h_start::
   1A9E 3B            [ 6]   70 	dec	sp
                             71 ;src/hiscore.c:32: bool kp = false;
   1A9F FD 21 00 00   [14]   72 	ld	iy, #0
   1AA3 FD 39         [15]   73 	add	iy, sp
   1AA5 FD 36 00 00   [19]   74 	ld	0 (iy), #0x00
                             75 ;src/hiscore.c:35: v_blk_scr();
   1AA9 CD 72 30      [17]   76 	call	_v_blk_scr
                             77 ;src/hiscore.c:36: v_clr_scr();
   1AAC CD F2 30      [17]   78 	call	_v_clr_scr
                             79 ;src/hiscore.c:39: v_draw_logo();
   1AAF CD 33 30      [17]   80 	call	_v_draw_logo
                             81 ;src/hiscore.c:40: h_draw_hiscores();
   1AB2 CD BA 1D      [17]   82 	call	_h_draw_hiscores
                             83 ;src/hiscore.c:41: v_reset_pal();
   1AB5 CD 2D 32      [17]   84 	call	_v_reset_pal
                             85 ;src/hiscore.c:43: v_reset_timers();
   1AB8 CD CB 32      [17]   86 	call	_v_reset_timers
                             87 ;src/hiscore.c:44: cpct_waitVSYNC();
   1ABB CD B7 8E      [17]   88 	call	_cpct_waitVSYNC
                             89 ;src/hiscore.c:45: cpct_setInterruptHandler(v_interrupt);
   1ABE 21 DB 32      [10]   90 	ld	hl, #_v_interrupt
   1AC1 CD 55 90      [17]   91 	call	_cpct_setInterruptHandler
                             92 ;src/hiscore.c:48: while (!kp)
   1AC4                      93 00101$:
   1AC4 21 00 00      [10]   94 	ld	hl, #0+0
   1AC7 39            [11]   95 	add	hl, sp
   1AC8 CB 46         [12]   96 	bit	0, (hl)
   1ACA 20 0B         [12]   97 	jr	NZ,00104$
                             98 ;src/hiscore.c:49: kp = cpct_isAnyKeyPressed();
   1ACC CD 34 8E      [17]   99 	call	_cpct_isAnyKeyPressed
   1ACF AF            [ 4]  100 	xor	a, a
   1AD0 BD            [ 4]  101 	cp	a, l
   1AD1 17            [ 4]  102 	rla
   1AD2 33            [ 6]  103 	inc	sp
   1AD3 F5            [11]  104 	push	af
   1AD4 33            [ 6]  105 	inc	sp
   1AD5 18 ED         [12]  106 	jr	00101$
   1AD7                     107 00104$:
   1AD7 33            [ 6]  108 	inc	sp
   1AD8 C9            [10]  109 	ret
   1AD9                     110 _title_loc:
   1AD9 01                  111 	.db #0x01	; 1
   1ADA 08                  112 	.db #0x08	; 8
   1ADB                     113 _scores_loc:
   1ADB 12                  114 	.db #0x12	; 18
   1ADC 0B                  115 	.db #0x0b	; 11
   1ADD                     116 _key_loc:
   1ADD 01                  117 	.db #0x01	; 1
   1ADE 20                  118 	.db #0x20	; 32
   1ADF                     119 _cg_loc:
   1ADF 00                  120 	.db #0x00	; 0
   1AE0 0B                  121 	.db #0x0b	; 11
   1AE1                     122 _ei_loc:
   1AE1 00                  123 	.db #0x00	; 0
   1AE2 13                  124 	.db #0x13	; 19
                            125 ;src/hiscore.c:53: void h_enter_start(void) {
                            126 ;	---------------------------------
                            127 ; Function h_enter_start
                            128 ; ---------------------------------
   1AE3                     129 _h_enter_start::
   1AE3 DD E5         [15]  130 	push	ix
   1AE5 DD 21 00 00   [14]  131 	ld	ix,#0
   1AE9 DD 39         [15]  132 	add	ix,sp
   1AEB 21 F2 FF      [10]  133 	ld	hl, #-14
   1AEE 39            [11]  134 	add	hl, sp
   1AEF F9            [ 6]  135 	ld	sp, hl
                            136 ;src/hiscore.c:55: u8 y = cg_loc.y * LINE_P_H;
   1AF0 3A E0 1A      [13]  137 	ld	a, (#(_cg_loc + 0x0001) + 0)
   1AF3 4F            [ 4]  138 	ld	c, a
   1AF4 87            [ 4]  139 	add	a, a
   1AF5 81            [ 4]  140 	add	a, c
   1AF6 87            [ 4]  141 	add	a, a
   1AF7 DD 77 FD      [19]  142 	ld	-3 (ix), a
                            143 ;src/hiscore.c:56: char name[4] = "", key;
   1AFA 21 00 00      [10]  144 	ld	hl, #0x0000
   1AFD 39            [11]  145 	add	hl, sp
   1AFE DD 75 F9      [19]  146 	ld	-7 (ix), l
   1B01 DD 74 FA      [19]  147 	ld	-6 (ix), h
   1B04 36 00         [10]  148 	ld	(hl), #0x00
   1B06 DD 4E F9      [19]  149 	ld	c,-7 (ix)
   1B09 DD 46 FA      [19]  150 	ld	b,-6 (ix)
   1B0C 03            [ 6]  151 	inc	bc
   1B0D AF            [ 4]  152 	xor	a, a
   1B0E 02            [ 7]  153 	ld	(bc), a
   1B0F DD 4E F9      [19]  154 	ld	c,-7 (ix)
   1B12 DD 46 FA      [19]  155 	ld	b,-6 (ix)
   1B15 03            [ 6]  156 	inc	bc
   1B16 03            [ 6]  157 	inc	bc
   1B17 AF            [ 4]  158 	xor	a, a
   1B18 02            [ 7]  159 	ld	(bc), a
   1B19 DD 7E F9      [19]  160 	ld	a, -7 (ix)
   1B1C C6 03         [ 7]  161 	add	a, #0x03
   1B1E DD 77 FB      [19]  162 	ld	-5 (ix), a
   1B21 DD 7E FA      [19]  163 	ld	a, -6 (ix)
   1B24 CE 00         [ 7]  164 	adc	a, #0x00
   1B26 DD 77 FC      [19]  165 	ld	-4 (ix), a
   1B29 DD 6E FB      [19]  166 	ld	l,-5 (ix)
   1B2C DD 66 FC      [19]  167 	ld	h,-4 (ix)
   1B2F 36 00         [10]  168 	ld	(hl), #0x00
                            169 ;src/hiscore.c:57: u8 len = 0;
   1B31 DD 36 F6 00   [19]  170 	ld	-10 (ix), #0x00
                            171 ;src/hiscore.c:58: u16 count = 0;
   1B35 DD 36 F7 00   [19]  172 	ld	-9 (ix), #0x00
   1B39 DD 36 F8 00   [19]  173 	ld	-8 (ix), #0x00
                            174 ;src/hiscore.c:61: if (g_current_score > g_hiscores[0].score) {
   1B3D ED 4B D2 9D   [20]  175 	ld	bc, (#(_g_hiscores + 0x0004) + 0)
   1B41 ED 5B D4 9D   [20]  176 	ld	de, (#(_g_hiscores + 0x0004) + 2)
   1B45 79            [ 4]  177 	ld	a, c
   1B46 FD 21 3A 9E   [14]  178 	ld	iy, #_g_current_score
   1B4A FD 96 00      [19]  179 	sub	a, 0 (iy)
   1B4D 78            [ 4]  180 	ld	a, b
   1B4E FD 9E 01      [19]  181 	sbc	a, 1 (iy)
   1B51 7B            [ 4]  182 	ld	a, e
   1B52 FD 9E 02      [19]  183 	sbc	a, 2 (iy)
   1B55 7A            [ 4]  184 	ld	a, d
   1B56 FD 9E 03      [19]  185 	sbc	a, 3 (iy)
   1B59 D2 B6 1C      [10]  186 	jp	NC, 00119$
                            187 ;src/hiscore.c:64: v_blk_scr();
   1B5C CD 72 30      [17]  188 	call	_v_blk_scr
                            189 ;src/hiscore.c:65: v_clr_scr();
   1B5F CD F2 30      [17]  190 	call	_v_clr_scr
                            191 ;src/hiscore.c:67: cpct_waitVSYNC();
   1B62 CD B7 8E      [17]  192 	call	_cpct_waitVSYNC
                            193 ;src/hiscore.c:69: v_print_c(g_strings[100], y, FONT_RED);
   1B65 ED 4B EF 67   [20]  194 	ld	bc, (#_g_strings + 200)
   1B69 AF            [ 4]  195 	xor	a, a
   1B6A F5            [11]  196 	push	af
   1B6B 33            [ 6]  197 	inc	sp
   1B6C DD 7E FD      [19]  198 	ld	a, -3 (ix)
   1B6F F5            [11]  199 	push	af
   1B70 33            [ 6]  200 	inc	sp
   1B71 C5            [11]  201 	push	bc
   1B72 CD 03 31      [17]  202 	call	_v_print_c
   1B75 F1            [10]  203 	pop	af
   1B76 F1            [10]  204 	pop	af
                            205 ;src/hiscore.c:70: v_print_c(g_strings[101], y += (LINE_P_H * 3), FONT_BLUE);
   1B77 DD 7E FD      [19]  206 	ld	a, -3 (ix)
   1B7A C6 12         [ 7]  207 	add	a, #0x12
   1B7C 47            [ 4]  208 	ld	b, a
   1B7D 48            [ 4]  209 	ld	c, b
   1B7E ED 5B F1 67   [20]  210 	ld	de, (#_g_strings + 202)
   1B82 C5            [11]  211 	push	bc
   1B83 3E 01         [ 7]  212 	ld	a, #0x01
   1B85 F5            [11]  213 	push	af
   1B86 33            [ 6]  214 	inc	sp
   1B87 C5            [11]  215 	push	bc
   1B88 33            [ 6]  216 	inc	sp
   1B89 D5            [11]  217 	push	de
   1B8A CD 03 31      [17]  218 	call	_v_print_c
   1B8D F1            [10]  219 	pop	af
   1B8E F1            [10]  220 	pop	af
   1B8F C1            [10]  221 	pop	bc
                            222 ;src/hiscore.c:71: v_print_c(g_strings[102], y += (LINE_P_H * 2), FONT_BLUE);
   1B90 79            [ 4]  223 	ld	a, c
   1B91 C6 0C         [ 7]  224 	add	a, #0x0c
   1B93 57            [ 4]  225 	ld	d, a
   1B94 ED 4B F3 67   [20]  226 	ld	bc, (#_g_strings + 204)
   1B98 3E 01         [ 7]  227 	ld	a, #0x01
   1B9A F5            [11]  228 	push	af
   1B9B 33            [ 6]  229 	inc	sp
   1B9C D5            [11]  230 	push	de
   1B9D 33            [ 6]  231 	inc	sp
   1B9E C5            [11]  232 	push	bc
   1B9F CD 03 31      [17]  233 	call	_v_print_c
   1BA2 F1            [10]  234 	pop	af
   1BA3 F1            [10]  235 	pop	af
                            236 ;src/hiscore.c:72: v_reset_pal();
   1BA4 CD 2D 32      [17]  237 	call	_v_reset_pal
                            238 ;src/hiscore.c:75: y = ei_loc.y * LINE_P_H;
   1BA7 3A E2 1A      [13]  239 	ld	a, (#(_ei_loc + 0x0001) + 0)
   1BAA 4F            [ 4]  240 	ld	c, a
   1BAB 87            [ 4]  241 	add	a, a
   1BAC 81            [ 4]  242 	add	a, c
   1BAD 87            [ 4]  243 	add	a, a
   1BAE DD 77 FD      [19]  244 	ld	-3 (ix), a
                            245 ;src/hiscore.c:76: while (len <= 2) {
   1BB1 DD 7E F9      [19]  246 	ld	a, -7 (ix)
   1BB4 DD 77 FE      [19]  247 	ld	-2 (ix), a
   1BB7 DD 7E FA      [19]  248 	ld	a, -6 (ix)
   1BBA DD 77 FF      [19]  249 	ld	-1 (ix), a
   1BBD                     250 00113$:
   1BBD 3E 02         [ 7]  251 	ld	a, #0x02
   1BBF DD 96 F6      [19]  252 	sub	a, -10 (ix)
   1BC2 DA 73 1C      [10]  253 	jp	C, 00115$
                            254 ;src/hiscore.c:78: if (count % 200 == 0) {
   1BC5 21 C8 00      [10]  255 	ld	hl, #0x00c8
   1BC8 E5            [11]  256 	push	hl
   1BC9 DD 6E F7      [19]  257 	ld	l,-9 (ix)
   1BCC DD 66 F8      [19]  258 	ld	h,-8 (ix)
   1BCF E5            [11]  259 	push	hl
   1BD0 CD 1C 8C      [17]  260 	call	__moduint
   1BD3 F1            [10]  261 	pop	af
   1BD4 F1            [10]  262 	pop	af
   1BD5 5D            [ 4]  263 	ld	e, l
   1BD6 7C            [ 4]  264 	ld	a, h
   1BD7 B3            [ 4]  265 	or	a,e
   1BD8 20 79         [12]  266 	jr	NZ,00110$
                            267 ;src/hiscore.c:80: cpct_waitVSYNC();
   1BDA CD B7 8E      [17]  268 	call	_cpct_waitVSYNC
                            269 ;src/hiscore.c:81: v_print(g_strings[103], 36, y, FONT_WHITE);
   1BDD ED 4B F5 67   [20]  270 	ld	bc, (#_g_strings + 206)
   1BE1 3E 02         [ 7]  271 	ld	a, #0x02
   1BE3 F5            [11]  272 	push	af
   1BE4 33            [ 6]  273 	inc	sp
   1BE5 DD 56 FD      [19]  274 	ld	d, -3 (ix)
   1BE8 1E 24         [ 7]  275 	ld	e,#0x24
   1BEA D5            [11]  276 	push	de
   1BEB C5            [11]  277 	push	bc
   1BEC CD 8F 31      [17]  278 	call	_v_print
   1BEF F1            [10]  279 	pop	af
   1BF0 F1            [10]  280 	pop	af
   1BF1 33            [ 6]  281 	inc	sp
                            282 ;src/hiscore.c:82: v_print(name, 36, y, FONT_WHITE);
   1BF2 DD 4E FE      [19]  283 	ld	c,-2 (ix)
   1BF5 DD 46 FF      [19]  284 	ld	b,-1 (ix)
   1BF8 3E 02         [ 7]  285 	ld	a, #0x02
   1BFA F5            [11]  286 	push	af
   1BFB 33            [ 6]  287 	inc	sp
   1BFC DD 56 FD      [19]  288 	ld	d, -3 (ix)
   1BFF 1E 24         [ 7]  289 	ld	e,#0x24
   1C01 D5            [11]  290 	push	de
   1C02 C5            [11]  291 	push	bc
   1C03 CD 8F 31      [17]  292 	call	_v_print
   1C06 F1            [10]  293 	pop	af
   1C07 F1            [10]  294 	pop	af
   1C08 33            [ 6]  295 	inc	sp
                            296 ;src/hiscore.c:85: cpct_scanKeyboard();
   1C09 CD 00 90      [17]  297 	call	_cpct_scanKeyboard
                            298 ;src/hiscore.c:88: if (cpct_isKeyPressed(Key_Del) && (len > 0)) {
   1C0C 21 09 80      [10]  299 	ld	hl, #0x8009
   1C0F CD EA 8A      [17]  300 	call	_cpct_isKeyPressed
   1C12 7D            [ 4]  301 	ld	a, l
   1C13 B7            [ 4]  302 	or	a, a
   1C14 28 1A         [12]  303 	jr	Z,00106$
   1C16 DD 7E F6      [19]  304 	ld	a, -10 (ix)
   1C19 B7            [ 4]  305 	or	a, a
   1C1A 28 14         [12]  306 	jr	Z,00106$
                            307 ;src/hiscore.c:89: --len;
   1C1C DD 35 F6      [23]  308 	dec	-10 (ix)
                            309 ;src/hiscore.c:90: name[len] = '\0';
   1C1F DD 7E F9      [19]  310 	ld	a, -7 (ix)
   1C22 DD 86 F6      [19]  311 	add	a, -10 (ix)
   1C25 4F            [ 4]  312 	ld	c, a
   1C26 DD 7E FA      [19]  313 	ld	a, -6 (ix)
   1C29 CE 00         [ 7]  314 	adc	a, #0x00
   1C2B 47            [ 4]  315 	ld	b, a
   1C2C AF            [ 4]  316 	xor	a, a
   1C2D 02            [ 7]  317 	ld	(bc), a
   1C2E 18 23         [12]  318 	jr	00110$
   1C30                     319 00106$:
                            320 ;src/hiscore.c:92: key = cpct_getKeypressedAsASCII();
   1C30 CD 06 8D      [17]  321 	call	_cpct_getKeypressedAsASCII
   1C33 4D            [ 4]  322 	ld	c, l
                            323 ;src/hiscore.c:93: if ((key != 0) && (key >= 65) &&
   1C34 79            [ 4]  324 	ld	a, c
   1C35 B7            [ 4]  325 	or	a, a
   1C36 28 1B         [12]  326 	jr	Z,00110$
   1C38 79            [ 4]  327 	ld	a, c
   1C39 D6 41         [ 7]  328 	sub	a, #0x41
   1C3B 38 16         [12]  329 	jr	C,00110$
                            330 ;src/hiscore.c:94: (key <= 122)) {
   1C3D 3E 7A         [ 7]  331 	ld	a, #0x7a
   1C3F 91            [ 4]  332 	sub	a, c
   1C40 38 11         [12]  333 	jr	C,00110$
                            334 ;src/hiscore.c:96: name[len] = key;
   1C42 DD 7E F9      [19]  335 	ld	a, -7 (ix)
   1C45 DD 86 F6      [19]  336 	add	a, -10 (ix)
   1C48 6F            [ 4]  337 	ld	l, a
   1C49 DD 7E FA      [19]  338 	ld	a, -6 (ix)
   1C4C CE 00         [ 7]  339 	adc	a, #0x00
   1C4E 67            [ 4]  340 	ld	h, a
   1C4F 71            [ 7]  341 	ld	(hl), c
                            342 ;src/hiscore.c:97: ++len;
   1C50 DD 34 F6      [23]  343 	inc	-10 (ix)
   1C53                     344 00110$:
                            345 ;src/hiscore.c:102: ++count;
   1C53 DD 34 F7      [23]  346 	inc	-9 (ix)
   1C56 20 03         [12]  347 	jr	NZ,00166$
   1C58 DD 34 F8      [23]  348 	inc	-8 (ix)
   1C5B                     349 00166$:
                            350 ;src/hiscore.c:104: if (count > 10000)
   1C5B 3E 10         [ 7]  351 	ld	a, #0x10
   1C5D DD BE F7      [19]  352 	cp	a, -9 (ix)
   1C60 3E 27         [ 7]  353 	ld	a, #0x27
   1C62 DD 9E F8      [19]  354 	sbc	a, -8 (ix)
   1C65 D2 BD 1B      [10]  355 	jp	NC, 00113$
                            356 ;src/hiscore.c:105: count = 0;
   1C68 DD 36 F7 00   [19]  357 	ld	-9 (ix), #0x00
   1C6C DD 36 F8 00   [19]  358 	ld	-8 (ix), #0x00
   1C70 C3 BD 1B      [10]  359 	jp	00113$
   1C73                     360 00115$:
                            361 ;src/hiscore.c:113: name[3] = '\0';
   1C73 DD 6E FB      [19]  362 	ld	l,-5 (ix)
   1C76 DD 66 FC      [19]  363 	ld	h,-4 (ix)
   1C79 36 00         [10]  364 	ld	(hl), #0x00
                            365 ;src/hiscore.c:114: if (g_current_score > g_hiscores[0].score) {
   1C7B ED 4B D2 9D   [20]  366 	ld	bc, (#(_g_hiscores + 0x0004) + 0)
   1C7F ED 5B D4 9D   [20]  367 	ld	de, (#(_g_hiscores + 0x0004) + 2)
   1C83 79            [ 4]  368 	ld	a, c
   1C84 FD 21 3A 9E   [14]  369 	ld	iy, #_g_current_score
   1C88 FD 96 00      [19]  370 	sub	a, 0 (iy)
   1C8B 78            [ 4]  371 	ld	a, b
   1C8C FD 9E 01      [19]  372 	sbc	a, 1 (iy)
   1C8F 7B            [ 4]  373 	ld	a, e
   1C90 FD 9E 02      [19]  374 	sbc	a, 2 (iy)
   1C93 7A            [ 4]  375 	ld	a, d
   1C94 FD 9E 03      [19]  376 	sbc	a, 3 (iy)
   1C97 30 1D         [12]  377 	jr	NC,00119$
                            378 ;src/hiscore.c:115: h_insert(name, g_current_score, 0);
   1C99 DD 4E F9      [19]  379 	ld	c,-7 (ix)
   1C9C DD 46 FA      [19]  380 	ld	b,-6 (ix)
   1C9F AF            [ 4]  381 	xor	a, a
   1CA0 F5            [11]  382 	push	af
   1CA1 33            [ 6]  383 	inc	sp
   1CA2 2A 3C 9E      [16]  384 	ld	hl, (_g_current_score + 2)
   1CA5 E5            [11]  385 	push	hl
   1CA6 2A 3A 9E      [16]  386 	ld	hl, (_g_current_score)
   1CA9 E5            [11]  387 	push	hl
   1CAA C5            [11]  388 	push	bc
   1CAB CD D6 1C      [17]  389 	call	_h_insert
   1CAE 21 07 00      [10]  390 	ld	hl, #7
   1CB1 39            [11]  391 	add	hl, sp
   1CB2 F9            [ 6]  392 	ld	sp, hl
                            393 ;src/hiscore.c:116: u_sort_hiscores();
   1CB3 CD D0 2D      [17]  394 	call	_u_sort_hiscores
   1CB6                     395 00119$:
                            396 ;src/hiscore.c:120: v_wipe_scr(true);
   1CB6 3E 01         [ 7]  397 	ld	a, #0x01
   1CB8 F5            [11]  398 	push	af
   1CB9 33            [ 6]  399 	inc	sp
   1CBA CD 9B 30      [17]  400 	call	_v_wipe_scr
   1CBD DD F9         [10]  401 	ld	sp,ix
   1CBF DD E1         [14]  402 	pop	ix
   1CC1 C9            [10]  403 	ret
                            404 ;src/hiscore.c:124: void h_stop(void) {
                            405 ;	---------------------------------
                            406 ; Function h_stop
                            407 ; ---------------------------------
   1CC2                     408 _h_stop::
                            409 ;src/hiscore.c:126: v_wipe_scr(true);
   1CC2 3E 01         [ 7]  410 	ld	a, #0x01
   1CC4 F5            [11]  411 	push	af
   1CC5 33            [ 6]  412 	inc	sp
   1CC6 CD 9B 30      [17]  413 	call	_v_wipe_scr
   1CC9 33            [ 6]  414 	inc	sp
                            415 ;src/hiscore.c:127: v_blk_scr();
   1CCA CD 72 30      [17]  416 	call	_v_blk_scr
                            417 ;src/hiscore.c:128: v_clr_scr();
   1CCD CD F2 30      [17]  418 	call	_v_clr_scr
                            419 ;src/hiscore.c:129: cpct_removeInterruptHandler();
   1CD0 CD 59 8A      [17]  420 	call	_cpct_removeInterruptHandler
                            421 ;src/hiscore.c:130: v_reset_timers();
   1CD3 C3 CB 32      [10]  422 	jp  _v_reset_timers
                            423 ;src/hiscore.c:134: void h_insert(const char *initials, const u32 score, const u8 pos) {
                            424 ;	---------------------------------
                            425 ; Function h_insert
                            426 ; ---------------------------------
   1CD6                     427 _h_insert::
   1CD6 DD E5         [15]  428 	push	ix
   1CD8 DD 21 00 00   [14]  429 	ld	ix,#0
   1CDC DD 39         [15]  430 	add	ix,sp
                            431 ;src/hiscore.c:136: g_hiscores[pos].score = score;
   1CDE 01 CE 9D      [10]  432 	ld	bc, #_g_hiscores+0
   1CE1 DD 5E 0A      [19]  433 	ld	e,10 (ix)
   1CE4 16 00         [ 7]  434 	ld	d,#0x00
   1CE6 6B            [ 4]  435 	ld	l, e
   1CE7 62            [ 4]  436 	ld	h, d
   1CE8 29            [11]  437 	add	hl, hl
   1CE9 29            [11]  438 	add	hl, hl
   1CEA 29            [11]  439 	add	hl, hl
   1CEB 19            [11]  440 	add	hl, de
   1CEC 09            [11]  441 	add	hl,bc
   1CED 4D            [ 4]  442 	ld	c, l
   1CEE 44            [ 4]  443 	ld	b, h
   1CEF 21 04 00      [10]  444 	ld	hl, #0x0004
   1CF2 09            [11]  445 	add	hl,bc
   1CF3 EB            [ 4]  446 	ex	de,hl
   1CF4 C5            [11]  447 	push	bc
   1CF5 21 08 00      [10]  448 	ld	hl, #0x0008
   1CF8 39            [11]  449 	add	hl, sp
   1CF9 01 04 00      [10]  450 	ld	bc, #0x0004
   1CFC ED B0         [21]  451 	ldir
   1CFE C1            [10]  452 	pop	bc
                            453 ;src/hiscore.c:137: strcpy(g_hiscores[pos].initials, initials);
   1CFF 59            [ 4]  454 	ld	e, c
   1D00 50            [ 4]  455 	ld	d, b
   1D01 C5            [11]  456 	push	bc
   1D02 DD 6E 04      [19]  457 	ld	l,4 (ix)
   1D05 DD 66 05      [19]  458 	ld	h,5 (ix)
   1D08 AF            [ 4]  459 	xor	a, a
   1D09                     460 00103$:
   1D09 BE            [ 7]  461 	cp	a, (hl)
   1D0A ED A0         [16]  462 	ldi
   1D0C 20 FB         [12]  463 	jr	NZ, 00103$
   1D0E C1            [10]  464 	pop	bc
                            465 ;src/hiscore.c:138: g_hiscores[pos].width = u_get_width(score);
   1D0F 21 08 00      [10]  466 	ld	hl, #0x0008
   1D12 09            [11]  467 	add	hl, bc
   1D13 E5            [11]  468 	push	hl
   1D14 DD 6E 08      [19]  469 	ld	l,8 (ix)
   1D17 DD 66 09      [19]  470 	ld	h,9 (ix)
   1D1A E5            [11]  471 	push	hl
   1D1B DD 6E 06      [19]  472 	ld	l,6 (ix)
   1D1E DD 66 07      [19]  473 	ld	h,7 (ix)
   1D21 E5            [11]  474 	push	hl
   1D22 CD 1C 29      [17]  475 	call	_u_get_width
   1D25 F1            [10]  476 	pop	af
   1D26 F1            [10]  477 	pop	af
   1D27 4D            [ 4]  478 	ld	c, l
   1D28 E1            [10]  479 	pop	hl
   1D29 71            [ 7]  480 	ld	(hl), c
   1D2A DD E1         [14]  481 	pop	ix
   1D2C C9            [10]  482 	ret
                            483 ;src/hiscore.c:142: static bool h_check(void) {
                            484 ;	---------------------------------
                            485 ; Function h_check
                            486 ; ---------------------------------
   1D2D                     487 _h_check:
   1D2D DD E5         [15]  488 	push	ix
   1D2F DD 21 00 00   [14]  489 	ld	ix,#0
   1D33 DD 39         [15]  490 	add	ix,sp
   1D35 F5            [11]  491 	push	af
   1D36 F5            [11]  492 	push	af
   1D37 3B            [ 6]  493 	dec	sp
                            494 ;src/hiscore.c:144: u32 min = g_hiscores[0].score;
   1D38 ED 4B D2 9D   [20]  495 	ld	bc, (#_g_hiscores + 4)
   1D3C ED 5B D4 9D   [20]  496 	ld	de, (#_g_hiscores + 6)
                            497 ;src/hiscore.c:147: for (u8 i = 1; i < 10; i++) {
   1D40 DD 36 FB 01   [19]  498 	ld	-5 (ix), #0x01
   1D44                     499 00105$:
   1D44 DD 7E FB      [19]  500 	ld	a, -5 (ix)
   1D47 D6 0A         [ 7]  501 	sub	a, #0x0a
   1D49 30 52         [12]  502 	jr	NC,00103$
                            503 ;src/hiscore.c:148: if (g_hiscores[i].score < min)
   1D4B D5            [11]  504 	push	de
   1D4C DD 5E FB      [19]  505 	ld	e,-5 (ix)
   1D4F 16 00         [ 7]  506 	ld	d,#0x00
   1D51 6B            [ 4]  507 	ld	l, e
   1D52 62            [ 4]  508 	ld	h, d
   1D53 29            [11]  509 	add	hl, hl
   1D54 29            [11]  510 	add	hl, hl
   1D55 29            [11]  511 	add	hl, hl
   1D56 19            [11]  512 	add	hl, de
   1D57 D1            [10]  513 	pop	de
   1D58 FD 21 CE 9D   [14]  514 	ld	iy, #_g_hiscores
   1D5C C5            [11]  515 	push	bc
   1D5D 4D            [ 4]  516 	ld	c, l
   1D5E 44            [ 4]  517 	ld	b, h
   1D5F FD 09         [15]  518 	add	iy, bc
   1D61 C1            [10]  519 	pop	bc
   1D62 FD 7E 04      [19]  520 	ld	a, 4 (iy)
   1D65 DD 77 FC      [19]  521 	ld	-4 (ix), a
   1D68 FD 7E 05      [19]  522 	ld	a, 5 (iy)
   1D6B DD 77 FD      [19]  523 	ld	-3 (ix), a
   1D6E FD 7E 06      [19]  524 	ld	a, 6 (iy)
   1D71 DD 77 FE      [19]  525 	ld	-2 (ix), a
   1D74 FD 7E 07      [19]  526 	ld	a, 7 (iy)
   1D77 DD 77 FF      [19]  527 	ld	-1 (ix), a
   1D7A DD 7E FC      [19]  528 	ld	a, -4 (ix)
   1D7D 91            [ 4]  529 	sub	a, c
   1D7E DD 7E FD      [19]  530 	ld	a, -3 (ix)
   1D81 98            [ 4]  531 	sbc	a, b
   1D82 DD 7E FE      [19]  532 	ld	a, -2 (ix)
   1D85 9B            [ 4]  533 	sbc	a, e
   1D86 DD 7E FF      [19]  534 	ld	a, -1 (ix)
   1D89 9A            [ 4]  535 	sbc	a, d
   1D8A 30 0C         [12]  536 	jr	NC,00106$
                            537 ;src/hiscore.c:149: min = g_hiscores[i].score;
   1D8C DD 4E FC      [19]  538 	ld	c, -4 (ix)
   1D8F DD 46 FD      [19]  539 	ld	b, -3 (ix)
   1D92 DD 5E FE      [19]  540 	ld	e, -2 (ix)
   1D95 DD 56 FF      [19]  541 	ld	d, -1 (ix)
   1D98                     542 00106$:
                            543 ;src/hiscore.c:147: for (u8 i = 1; i < 10; i++) {
   1D98 DD 34 FB      [23]  544 	inc	-5 (ix)
   1D9B 18 A7         [12]  545 	jr	00105$
   1D9D                     546 00103$:
                            547 ;src/hiscore.c:152: return g_current_score > min;
   1D9D 79            [ 4]  548 	ld	a, c
   1D9E FD 21 3A 9E   [14]  549 	ld	iy, #_g_current_score
   1DA2 FD 96 00      [19]  550 	sub	a, 0 (iy)
   1DA5 78            [ 4]  551 	ld	a, b
   1DA6 FD 9E 01      [19]  552 	sbc	a, 1 (iy)
   1DA9 7B            [ 4]  553 	ld	a, e
   1DAA FD 9E 02      [19]  554 	sbc	a, 2 (iy)
   1DAD 7A            [ 4]  555 	ld	a, d
   1DAE FD 9E 03      [19]  556 	sbc	a, 3 (iy)
   1DB1 3E 00         [ 7]  557 	ld	a, #0x00
   1DB3 17            [ 4]  558 	rla
   1DB4 6F            [ 4]  559 	ld	l, a
   1DB5 DD F9         [10]  560 	ld	sp, ix
   1DB7 DD E1         [14]  561 	pop	ix
   1DB9 C9            [10]  562 	ret
                            563 ;src/hiscore.c:156: static void h_draw_hiscores(void) {
                            564 ;	---------------------------------
                            565 ; Function h_draw_hiscores
                            566 ; ---------------------------------
   1DBA                     567 _h_draw_hiscores:
   1DBA DD E5         [15]  568 	push	ix
   1DBC DD 21 00 00   [14]  569 	ld	ix,#0
   1DC0 DD 39         [15]  570 	add	ix,sp
   1DC2 21 F6 FF      [10]  571 	ld	hl, #-10
   1DC5 39            [11]  572 	add	hl, sp
   1DC6 F9            [ 6]  573 	ld	sp, hl
                            574 ;src/hiscore.c:158: u8 y = scores_loc.y * LINE_P_H;
   1DC7 3A DC 1A      [13]  575 	ld	a, (#_scores_loc + 1)
   1DCA 4F            [ 4]  576 	ld	c, a
   1DCB 87            [ 4]  577 	add	a, a
   1DCC 81            [ 4]  578 	add	a, c
   1DCD 87            [ 4]  579 	add	a, a
   1DCE 4F            [ 4]  580 	ld	c, a
                            581 ;src/hiscore.c:162: v_print_c(g_strings[29], title_loc.y * LINE_P_H, FONT_RED);
   1DCF 3A DA 1A      [13]  582 	ld	a, (#(_title_loc + 0x0001) + 0)
   1DD2 5F            [ 4]  583 	ld	e, a
   1DD3 87            [ 4]  584 	add	a, a
   1DD4 83            [ 4]  585 	add	a, e
   1DD5 87            [ 4]  586 	add	a, a
   1DD6 47            [ 4]  587 	ld	b, a
   1DD7 ED 5B 61 67   [20]  588 	ld	de, (#_g_strings + 58)
   1DDB C5            [11]  589 	push	bc
   1DDC AF            [ 4]  590 	xor	a, a
   1DDD F5            [11]  591 	push	af
   1DDE 33            [ 6]  592 	inc	sp
   1DDF C5            [11]  593 	push	bc
   1DE0 33            [ 6]  594 	inc	sp
   1DE1 D5            [11]  595 	push	de
   1DE2 CD 03 31      [17]  596 	call	_v_print_c
   1DE5 F1            [10]  597 	pop	af
   1DE6 F1            [10]  598 	pop	af
   1DE7 C1            [10]  599 	pop	bc
                            600 ;src/hiscore.c:165: for (int i = 9; i >= 0; i--) {
   1DE8 21 09 00      [10]  601 	ld	hl, #0x0009
   1DEB E3            [19]  602 	ex	(sp), hl
   1DEC                     603 00103$:
   1DEC DD CB F7 7E   [20]  604 	bit	7, -9 (ix)
   1DF0 C2 D4 1E      [10]  605 	jp	NZ, 00101$
                            606 ;src/hiscore.c:169: v_print(g_hiscores[i].initials, scores_loc.x, y, FONT_BLUE);
   1DF3 21 DB 1A      [10]  607 	ld	hl, #_scores_loc + 0
   1DF6 46            [ 7]  608 	ld	b, (hl)
   1DF7 D1            [10]  609 	pop	de
   1DF8 D5            [11]  610 	push	de
   1DF9 6B            [ 4]  611 	ld	l, e
   1DFA 62            [ 4]  612 	ld	h, d
   1DFB 29            [11]  613 	add	hl, hl
   1DFC 29            [11]  614 	add	hl, hl
   1DFD 29            [11]  615 	add	hl, hl
   1DFE 19            [11]  616 	add	hl, de
   1DFF EB            [ 4]  617 	ex	de,hl
   1E00 21 CE 9D      [10]  618 	ld	hl, #_g_hiscores
   1E03 19            [11]  619 	add	hl,de
   1E04 DD 75 F8      [19]  620 	ld	-8 (ix), l
   1E07 DD 74 F9      [19]  621 	ld	-7 (ix), h
   1E0A EB            [ 4]  622 	ex	de,hl
   1E0B C5            [11]  623 	push	bc
   1E0C 3E 01         [ 7]  624 	ld	a, #0x01
   1E0E F5            [11]  625 	push	af
   1E0F 33            [ 6]  626 	inc	sp
   1E10 79            [ 4]  627 	ld	a, c
   1E11 F5            [11]  628 	push	af
   1E12 33            [ 6]  629 	inc	sp
   1E13 C5            [11]  630 	push	bc
   1E14 33            [ 6]  631 	inc	sp
   1E15 D5            [11]  632 	push	de
   1E16 CD 8F 31      [17]  633 	call	_v_print
   1E19 F1            [10]  634 	pop	af
   1E1A F1            [10]  635 	pop	af
   1E1B 33            [ 6]  636 	inc	sp
   1E1C C1            [10]  637 	pop	bc
                            638 ;src/hiscore.c:170: v_print(g_strings[27], scores_loc.x + 7, y, FONT_BLUE);
   1E1D 3A DB 1A      [13]  639 	ld	a, (#_scores_loc + 0)
   1E20 C6 07         [ 7]  640 	add	a, #0x07
   1E22 47            [ 4]  641 	ld	b, a
   1E23 ED 5B 5D 67   [20]  642 	ld	de, (#_g_strings + 54)
   1E27 C5            [11]  643 	push	bc
   1E28 3E 01         [ 7]  644 	ld	a, #0x01
   1E2A F5            [11]  645 	push	af
   1E2B 33            [ 6]  646 	inc	sp
   1E2C 79            [ 4]  647 	ld	a, c
   1E2D F5            [11]  648 	push	af
   1E2E 33            [ 6]  649 	inc	sp
   1E2F C5            [11]  650 	push	bc
   1E30 33            [ 6]  651 	inc	sp
   1E31 D5            [11]  652 	push	de
   1E32 CD 8F 31      [17]  653 	call	_v_print
   1E35 F1            [10]  654 	pop	af
   1E36 F1            [10]  655 	pop	af
   1E37 33            [ 6]  656 	inc	sp
   1E38 C1            [10]  657 	pop	bc
                            658 ;src/hiscore.c:171: v_print(g_strings[28], scores_loc.x + 23, y, FONT_BLUE);
   1E39 3A DB 1A      [13]  659 	ld	a, (#_scores_loc + 0)
   1E3C C6 17         [ 7]  660 	add	a, #0x17
   1E3E 47            [ 4]  661 	ld	b, a
   1E3F ED 5B 5F 67   [20]  662 	ld	de, (#_g_strings + 56)
   1E43 C5            [11]  663 	push	bc
   1E44 3E 01         [ 7]  664 	ld	a, #0x01
   1E46 F5            [11]  665 	push	af
   1E47 33            [ 6]  666 	inc	sp
   1E48 79            [ 4]  667 	ld	a, c
   1E49 F5            [11]  668 	push	af
   1E4A 33            [ 6]  669 	inc	sp
   1E4B C5            [11]  670 	push	bc
   1E4C 33            [ 6]  671 	inc	sp
   1E4D D5            [11]  672 	push	de
   1E4E CD 8F 31      [17]  673 	call	_v_print
   1E51 F1            [10]  674 	pop	af
   1E52 F1            [10]  675 	pop	af
   1E53 33            [ 6]  676 	inc	sp
   1E54 C1            [10]  677 	pop	bc
                            678 ;src/hiscore.c:173: (scores_loc.x + 43) - (g_hiscores[i].width * 2), y,
   1E55 3A DB 1A      [13]  679 	ld	a, (#_scores_loc + 0)
   1E58 C6 2B         [ 7]  680 	add	a, #0x2b
   1E5A 5F            [ 4]  681 	ld	e, a
   1E5B DD 6E F8      [19]  682 	ld	l,-8 (ix)
   1E5E DD 66 F9      [19]  683 	ld	h,-7 (ix)
   1E61 C5            [11]  684 	push	bc
   1E62 01 08 00      [10]  685 	ld	bc, #0x0008
   1E65 09            [11]  686 	add	hl, bc
   1E66 C1            [10]  687 	pop	bc
   1E67 6E            [ 7]  688 	ld	l, (hl)
   1E68 CB 25         [ 8]  689 	sla	l
   1E6A 7B            [ 4]  690 	ld	a, e
   1E6B 95            [ 4]  691 	sub	a, l
   1E6C 47            [ 4]  692 	ld	b, a
                            693 ;src/hiscore.c:172: v_print_n(g_hiscores[i].score,
   1E6D D1            [10]  694 	pop	de
   1E6E E1            [10]  695 	pop	hl
   1E6F E5            [11]  696 	push	hl
   1E70 D5            [11]  697 	push	de
   1E71 11 04 00      [10]  698 	ld	de, #0x0004
   1E74 19            [11]  699 	add	hl, de
   1E75 5E            [ 7]  700 	ld	e, (hl)
   1E76 23            [ 6]  701 	inc	hl
   1E77 56            [ 7]  702 	ld	d, (hl)
   1E78 23            [ 6]  703 	inc	hl
   1E79 23            [ 6]  704 	inc	hl
   1E7A 7E            [ 7]  705 	ld	a, (hl)
   1E7B 2B            [ 6]  706 	dec	hl
   1E7C 6E            [ 7]  707 	ld	l, (hl)
   1E7D 67            [ 4]  708 	ld	h, a
   1E7E DD 73 F8      [19]  709 	ld	-8 (ix), e
   1E81 DD 72 F9      [19]  710 	ld	-7 (ix), d
   1E84 DD 75 FA      [19]  711 	ld	-6 (ix), l
   1E87 DD 74 FB      [19]  712 	ld	-5 (ix), h
   1E8A DD 36 FC 00   [19]  713 	ld	-4 (ix), #0x00
   1E8E DD 36 FD 00   [19]  714 	ld	-3 (ix), #0x00
   1E92 DD 36 FE 00   [19]  715 	ld	-2 (ix), #0x00
   1E96 DD 36 FF 00   [19]  716 	ld	-1 (ix), #0x00
   1E9A C5            [11]  717 	push	bc
   1E9B 3E 01         [ 7]  718 	ld	a, #0x01
   1E9D F5            [11]  719 	push	af
   1E9E 33            [ 6]  720 	inc	sp
   1E9F 79            [ 4]  721 	ld	a, c
   1EA0 F5            [11]  722 	push	af
   1EA1 33            [ 6]  723 	inc	sp
   1EA2 C5            [11]  724 	push	bc
   1EA3 33            [ 6]  725 	inc	sp
   1EA4 DD 66 FF      [19]  726 	ld	h, -1 (ix)
   1EA7 DD 6E FE      [19]  727 	ld	l, -2 (ix)
   1EAA E5            [11]  728 	push	hl
   1EAB DD 66 FD      [19]  729 	ld	h, -3 (ix)
   1EAE DD 6E FC      [19]  730 	ld	l, -4 (ix)
   1EB1 E5            [11]  731 	push	hl
   1EB2 DD 66 FB      [19]  732 	ld	h, -5 (ix)
   1EB5 DD 6E FA      [19]  733 	ld	l, -6 (ix)
   1EB8 E5            [11]  734 	push	hl
   1EB9 DD 66 F9      [19]  735 	ld	h, -7 (ix)
   1EBC DD 6E F8      [19]  736 	ld	l, -8 (ix)
   1EBF E5            [11]  737 	push	hl
   1EC0 CD 35 31      [17]  738 	call	_v_print_n
   1EC3 21 0B 00      [10]  739 	ld	hl, #11
   1EC6 39            [11]  740 	add	hl, sp
   1EC7 F9            [ 6]  741 	ld	sp, hl
   1EC8 C1            [10]  742 	pop	bc
                            743 ;src/hiscore.c:175: y += (LINE_P_H * 2);
   1EC9 79            [ 4]  744 	ld	a, c
   1ECA C6 0C         [ 7]  745 	add	a, #0x0c
   1ECC 4F            [ 4]  746 	ld	c, a
                            747 ;src/hiscore.c:165: for (int i = 9; i >= 0; i--) {
   1ECD E1            [10]  748 	pop	hl
   1ECE E5            [11]  749 	push	hl
   1ECF 2B            [ 6]  750 	dec	hl
   1ED0 E3            [19]  751 	ex	(sp), hl
   1ED1 C3 EC 1D      [10]  752 	jp	00103$
   1ED4                     753 00101$:
                            754 ;src/hiscore.c:178: v_print_c(g_strings[49], key_loc.y * LINE_P_H, FONT_RED);
   1ED4 3A DE 1A      [13]  755 	ld	a, (#(_key_loc + 0x0001) + 0)
   1ED7 4F            [ 4]  756 	ld	c, a
   1ED8 87            [ 4]  757 	add	a, a
   1ED9 81            [ 4]  758 	add	a, c
   1EDA 87            [ 4]  759 	add	a, a
   1EDB 47            [ 4]  760 	ld	b, a
   1EDC ED 5B 89 67   [20]  761 	ld	de, (#_g_strings + 98)
   1EE0 AF            [ 4]  762 	xor	a, a
   1EE1 F5            [11]  763 	push	af
   1EE2 33            [ 6]  764 	inc	sp
   1EE3 C5            [11]  765 	push	bc
   1EE4 33            [ 6]  766 	inc	sp
   1EE5 D5            [11]  767 	push	de
   1EE6 CD 03 31      [17]  768 	call	_v_print_c
   1EE9 DD F9         [10]  769 	ld	sp,ix
   1EEB DD E1         [14]  770 	pop	ix
   1EED C9            [10]  771 	ret
                            772 	.area _CODE
                            773 	.area _INITIALIZER
                            774 	.area _CABS (ABS)
