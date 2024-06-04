                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module between
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _v_print_n
                             12 	.globl _v_print
                             13 	.globl _v_print_c
                             14 	.globl _v_wipe_scr
                             15 	.globl _v_clr_scr
                             16 	.globl _v_reset_pal
                             17 	.globl _v_blk_scr
                             18 	.globl _u_reset_clock
                             19 	.globl _u_clock_interrupt
                             20 	.globl _cpct_zx7b_decrunch_s
                             21 	.globl _cpct_isAnyKeyPressed
                             22 	.globl _cpct_scanKeyboard
                             23 	.globl _cpct_removeInterruptHandler
                             24 	.globl _cpct_setInterruptHandler
                             25 	.globl _b_scr_start
                             26 	.globl _b_scr_stop
                             27 ;--------------------------------------------------------
                             28 ; special function registers
                             29 ;--------------------------------------------------------
                             30 ;--------------------------------------------------------
                             31 ; ram data
                             32 ;--------------------------------------------------------
                             33 	.area _DATA
                             34 ;--------------------------------------------------------
                             35 ; ram data
                             36 ;--------------------------------------------------------
                             37 	.area _INITIALIZED
                             38 ;--------------------------------------------------------
                             39 ; absolute external ram data
                             40 ;--------------------------------------------------------
                             41 	.area _DABS (ABS)
                             42 ;--------------------------------------------------------
                             43 ; global & static initialisations
                             44 ;--------------------------------------------------------
                             45 	.area _HOME
                             46 	.area _GSINIT
                             47 	.area _GSFINAL
                             48 	.area _GSINIT
                             49 ;--------------------------------------------------------
                             50 ; Home
                             51 ;--------------------------------------------------------
                             52 	.area _HOME
                             53 	.area _HOME
                             54 ;--------------------------------------------------------
                             55 ; code
                             56 ;--------------------------------------------------------
                             57 	.area _CODE
                             58 ;src/between.c:28: void b_scr_start(const screen_t type) {
                             59 ;	---------------------------------
                             60 ; Function b_scr_start
                             61 ; ---------------------------------
   0040                      62 _b_scr_start::
   0040 DD E5         [15]   63 	push	ix
   0042 DD 21 00 00   [14]   64 	ld	ix,#0
   0046 DD 39         [15]   65 	add	ix,sp
   0048 21 F7 FF      [10]   66 	ld	hl, #-9
   004B 39            [11]   67 	add	hl, sp
   004C F9            [ 6]   68 	ld	sp, hl
                             69 ;src/between.c:31: bool kp = false;
   004D DD 36 F7 00   [19]   70 	ld	-9 (ix), #0x00
                             71 ;src/between.c:33: v_clr_scr();
   0051 CD F2 30      [17]   72 	call	_v_clr_scr
                             73 ;src/between.c:34: v_reset_pal();
   0054 CD 2D 32      [17]   74 	call	_v_reset_pal
                             75 ;src/between.c:38: v_blk_scr();
   0057 CD 72 30      [17]   76 	call	_v_blk_scr
                             77 ;src/between.c:39: v_clr_scr();
   005A CD F2 30      [17]   78 	call	_v_clr_scr
                             79 ;src/between.c:42: g_clock_on = false;
   005D 21 58 9E      [10]   80 	ld	hl,#_g_clock_on + 0
   0060 36 00         [10]   81 	ld	(hl), #0x00
                             82 ;src/between.c:44: if (type == SCR_GET_READY) {
   0062 DD 7E 04      [19]   83 	ld	a, 4 (ix)
   0065 B7            [ 4]   84 	or	a, a
   0066 C2 73 01      [10]   85 	jp	NZ, 00104$
                             86 ;src/between.c:47: b_draw_transition();
   0069 CD 0E 02      [17]   87 	call	_b_draw_transition
                             88 ;src/between.c:50: v_print(g_strings[70], pg_loc.x, pg_loc.y * LINE_P_H,
   006C 3A FE 01      [13]   89 	ld	a, (#(_pg_loc + 0x0001) + 0)
   006F 4F            [ 4]   90 	ld	c, a
   0070 87            [ 4]   91 	add	a, a
   0071 81            [ 4]   92 	add	a, c
   0072 87            [ 4]   93 	add	a, a
   0073 57            [ 4]   94 	ld	d, a
   0074 21 FD 01      [10]   95 	ld	hl, #_pg_loc + 0
   0077 5E            [ 7]   96 	ld	e, (hl)
   0078 ED 4B B3 67   [20]   97 	ld	bc, (#_g_strings + 140)
   007C 3E 01         [ 7]   98 	ld	a, #0x01
   007E F5            [11]   99 	push	af
   007F 33            [ 6]  100 	inc	sp
   0080 D5            [11]  101 	push	de
   0081 C5            [11]  102 	push	bc
   0082 CD 8F 31      [17]  103 	call	_v_print
   0085 F1            [10]  104 	pop	af
   0086 F1            [10]  105 	pop	af
   0087 33            [ 6]  106 	inc	sp
                            107 ;src/between.c:52: v_print(g_strings[71], pg_loc.x + 18, pg_loc.y * LINE_P_H,
   0088 3A FE 01      [13]  108 	ld	a, (#(_pg_loc + 0x0001) + 0)
   008B 4F            [ 4]  109 	ld	c, a
   008C 87            [ 4]  110 	add	a, a
   008D 81            [ 4]  111 	add	a, c
   008E 87            [ 4]  112 	add	a, a
   008F 57            [ 4]  113 	ld	d, a
   0090 3A FD 01      [13]  114 	ld	a, (#_pg_loc + 0)
   0093 C6 12         [ 7]  115 	add	a, #0x12
   0095 5F            [ 4]  116 	ld	e, a
   0096 ED 4B B5 67   [20]  117 	ld	bc, (#_g_strings + 142)
   009A 3E 01         [ 7]  118 	ld	a, #0x01
   009C F5            [11]  119 	push	af
   009D 33            [ 6]  120 	inc	sp
   009E D5            [11]  121 	push	de
   009F C5            [11]  122 	push	bc
   00A0 CD 8F 31      [17]  123 	call	_v_print
   00A3 F1            [10]  124 	pop	af
   00A4 F1            [10]  125 	pop	af
   00A5 33            [ 6]  126 	inc	sp
                            127 ;src/between.c:54: v_print_n(g_current_round, pg_loc.x + 12, pg_loc.y * LINE_P_H, FONT_BLUE);
   00A6 3A FE 01      [13]  128 	ld	a, (#(_pg_loc + 0x0001) + 0)
   00A9 4F            [ 4]  129 	ld	c, a
   00AA 87            [ 4]  130 	add	a, a
   00AB 81            [ 4]  131 	add	a, c
   00AC 87            [ 4]  132 	add	a, a
   00AD 57            [ 4]  133 	ld	d, a
   00AE 3A FD 01      [13]  134 	ld	a, (#_pg_loc + 0)
   00B1 C6 0C         [ 7]  135 	add	a, #0x0c
   00B3 47            [ 4]  136 	ld	b, a
   00B4 3A C2 9D      [13]  137 	ld	a,(#_g_current_round + 0)
   00B7 DD 77 F8      [19]  138 	ld	-8 (ix), a
   00BA DD 36 F9 00   [19]  139 	ld	-7 (ix), #0x00
   00BE DD 36 FA 00   [19]  140 	ld	-6 (ix), #0x00
   00C2 DD 36 FB 00   [19]  141 	ld	-5 (ix), #0x00
   00C6 DD 36 FC 00   [19]  142 	ld	-4 (ix), #0x00
   00CA DD 36 FD 00   [19]  143 	ld	-3 (ix), #0x00
   00CE DD 36 FE 00   [19]  144 	ld	-2 (ix), #0x00
   00D2 DD 36 FF 00   [19]  145 	ld	-1 (ix), #0x00
   00D6 3E 01         [ 7]  146 	ld	a, #0x01
   00D8 F5            [11]  147 	push	af
   00D9 33            [ 6]  148 	inc	sp
   00DA 58            [ 4]  149 	ld	e, b
   00DB D5            [11]  150 	push	de
   00DC DD 66 FF      [19]  151 	ld	h, -1 (ix)
   00DF DD 6E FE      [19]  152 	ld	l, -2 (ix)
   00E2 E5            [11]  153 	push	hl
   00E3 DD 66 FD      [19]  154 	ld	h, -3 (ix)
   00E6 DD 6E FC      [19]  155 	ld	l, -4 (ix)
   00E9 E5            [11]  156 	push	hl
   00EA DD 66 FB      [19]  157 	ld	h, -5 (ix)
   00ED DD 6E FA      [19]  158 	ld	l, -6 (ix)
   00F0 E5            [11]  159 	push	hl
   00F1 DD 66 F9      [19]  160 	ld	h, -7 (ix)
   00F4 DD 6E F8      [19]  161 	ld	l, -8 (ix)
   00F7 E5            [11]  162 	push	hl
   00F8 CD 35 31      [17]  163 	call	_v_print_n
   00FB 21 0B 00      [10]  164 	ld	hl, #11
   00FE 39            [11]  165 	add	hl, sp
   00FF F9            [ 6]  166 	ld	sp, hl
                            167 ;src/between.c:55: v_print_n(g_current_level, pg_loc.x + 29, pg_loc.y * LINE_P_H, FONT_BLUE);
   0100 3A FE 01      [13]  168 	ld	a, (#(_pg_loc + 0x0001) + 0)
   0103 4F            [ 4]  169 	ld	c, a
   0104 87            [ 4]  170 	add	a, a
   0105 81            [ 4]  171 	add	a, c
   0106 87            [ 4]  172 	add	a, a
   0107 57            [ 4]  173 	ld	d, a
   0108 3A FD 01      [13]  174 	ld	a, (#_pg_loc + 0)
   010B C6 1D         [ 7]  175 	add	a, #0x1d
   010D 47            [ 4]  176 	ld	b, a
   010E 3A C1 9D      [13]  177 	ld	a,(#_g_current_level + 0)
   0111 DD 77 F8      [19]  178 	ld	-8 (ix), a
   0114 DD 36 F9 00   [19]  179 	ld	-7 (ix), #0x00
   0118 DD 36 FA 00   [19]  180 	ld	-6 (ix), #0x00
   011C DD 36 FB 00   [19]  181 	ld	-5 (ix), #0x00
   0120 DD 36 FC 00   [19]  182 	ld	-4 (ix), #0x00
   0124 DD 36 FD 00   [19]  183 	ld	-3 (ix), #0x00
   0128 DD 36 FE 00   [19]  184 	ld	-2 (ix), #0x00
   012C DD 36 FF 00   [19]  185 	ld	-1 (ix), #0x00
   0130 3E 01         [ 7]  186 	ld	a, #0x01
   0132 F5            [11]  187 	push	af
   0133 33            [ 6]  188 	inc	sp
   0134 58            [ 4]  189 	ld	e, b
   0135 D5            [11]  190 	push	de
   0136 DD 66 FF      [19]  191 	ld	h, -1 (ix)
   0139 DD 6E FE      [19]  192 	ld	l, -2 (ix)
   013C E5            [11]  193 	push	hl
   013D DD 66 FD      [19]  194 	ld	h, -3 (ix)
   0140 DD 6E FC      [19]  195 	ld	l, -4 (ix)
   0143 E5            [11]  196 	push	hl
   0144 DD 66 FB      [19]  197 	ld	h, -5 (ix)
   0147 DD 6E FA      [19]  198 	ld	l, -6 (ix)
   014A E5            [11]  199 	push	hl
   014B DD 66 F9      [19]  200 	ld	h, -7 (ix)
   014E DD 6E F8      [19]  201 	ld	l, -8 (ix)
   0151 E5            [11]  202 	push	hl
   0152 CD 35 31      [17]  203 	call	_v_print_n
   0155 21 0B 00      [10]  204 	ld	hl, #11
   0158 39            [11]  205 	add	hl, sp
   0159 F9            [ 6]  206 	ld	sp, hl
                            207 ;src/between.c:56: v_print_c(g_strings[72], gr_loc.y * LINE_P_H, FONT_RED);
   015A 3A 00 02      [13]  208 	ld	a, (#(_gr_loc + 0x0001) + 0)
   015D 4F            [ 4]  209 	ld	c, a
   015E 87            [ 4]  210 	add	a, a
   015F 81            [ 4]  211 	add	a, c
   0160 87            [ 4]  212 	add	a, a
   0161 57            [ 4]  213 	ld	d, a
   0162 ED 4B B7 67   [20]  214 	ld	bc, (#_g_strings + 144)
   0166 AF            [ 4]  215 	xor	a, a
   0167 F5            [11]  216 	push	af
   0168 33            [ 6]  217 	inc	sp
   0169 D5            [11]  218 	push	de
   016A 33            [ 6]  219 	inc	sp
   016B C5            [11]  220 	push	bc
   016C CD 03 31      [17]  221 	call	_v_print_c
   016F F1            [10]  222 	pop	af
   0170 F1            [10]  223 	pop	af
   0171 18 38         [12]  224 	jr	00105$
   0173                     225 00104$:
                            226 ;src/between.c:58: } else if (type == SCR_GAME_OVER) {
   0173 DD 7E 04      [19]  227 	ld	a, 4 (ix)
   0176 3D            [ 4]  228 	dec	a
   0177 20 32         [12]  229 	jr	NZ,00105$
                            230 ;src/between.c:61: b_draw_transition();
   0179 CD 0E 02      [17]  231 	call	_b_draw_transition
                            232 ;src/between.c:64: v_print_c(g_strings[75], pg_loc.y * LINE_P_H, FONT_BLUE);
   017C 3A FE 01      [13]  233 	ld	a, (#(_pg_loc + 0x0001) + 0)
   017F 4F            [ 4]  234 	ld	c, a
   0180 87            [ 4]  235 	add	a, a
   0181 81            [ 4]  236 	add	a, c
   0182 87            [ 4]  237 	add	a, a
   0183 57            [ 4]  238 	ld	d, a
   0184 ED 4B BD 67   [20]  239 	ld	bc, (#_g_strings + 150)
   0188 3E 01         [ 7]  240 	ld	a, #0x01
   018A F5            [11]  241 	push	af
   018B 33            [ 6]  242 	inc	sp
   018C D5            [11]  243 	push	de
   018D 33            [ 6]  244 	inc	sp
   018E C5            [11]  245 	push	bc
   018F CD 03 31      [17]  246 	call	_v_print_c
   0192 F1            [10]  247 	pop	af
   0193 F1            [10]  248 	pop	af
                            249 ;src/between.c:65: v_print_c(g_strings[73], gr_loc.y * LINE_P_H, FONT_RED);
   0194 3A 00 02      [13]  250 	ld	a, (#(_gr_loc + 0x0001) + 0)
   0197 4F            [ 4]  251 	ld	c, a
   0198 87            [ 4]  252 	add	a, a
   0199 81            [ 4]  253 	add	a, c
   019A 87            [ 4]  254 	add	a, a
   019B 57            [ 4]  255 	ld	d, a
   019C ED 4B B9 67   [20]  256 	ld	bc, (#_g_strings + 146)
   01A0 AF            [ 4]  257 	xor	a, a
   01A1 F5            [11]  258 	push	af
   01A2 33            [ 6]  259 	inc	sp
   01A3 D5            [11]  260 	push	de
   01A4 33            [ 6]  261 	inc	sp
   01A5 C5            [11]  262 	push	bc
   01A6 CD 03 31      [17]  263 	call	_v_print_c
   01A9 F1            [10]  264 	pop	af
   01AA F1            [10]  265 	pop	af
   01AB                     266 00105$:
                            267 ;src/between.c:69: v_reset_pal();
   01AB CD 2D 32      [17]  268 	call	_v_reset_pal
                            269 ;src/between.c:71: g_clock_on = false;
   01AE 21 58 9E      [10]  270 	ld	hl,#_g_clock_on + 0
   01B1 36 00         [10]  271 	ld	(hl), #0x00
                            272 ;src/between.c:72: u_reset_clock();
   01B3 CD 9E 2D      [17]  273 	call	_u_reset_clock
                            274 ;src/between.c:73: cpct_setInterruptHandler(u_clock_interrupt);
   01B6 21 54 2D      [10]  275 	ld	hl, #_u_clock_interrupt
   01B9 CD 55 90      [17]  276 	call	_cpct_setInterruptHandler
                            277 ;src/between.c:76: duration = type == SCR_GET_READY ? 5 : 10;
   01BC DD 7E 04      [19]  278 	ld	a, 4 (ix)
   01BF B7            [ 4]  279 	or	a, a
   01C0 20 04         [12]  280 	jr	NZ,00112$
   01C2 0E 05         [ 7]  281 	ld	c, #0x05
   01C4 18 02         [12]  282 	jr	00113$
   01C6                     283 00112$:
   01C6 0E 0A         [ 7]  284 	ld	c, #0x0a
   01C8                     285 00113$:
   01C8 06 00         [ 7]  286 	ld	b, #0x00
                            287 ;src/between.c:77: g_clock_on = true;
   01CA 21 58 9E      [10]  288 	ld	hl,#_g_clock_on + 0
   01CD 36 01         [10]  289 	ld	(hl), #0x01
                            290 ;src/between.c:80: while ((!kp) && (g_clock.s < duration)) {
   01CF                     291 00107$:
   01CF DD CB F7 46   [20]  292 	bit	0, -9 (ix)
   01D3 20 18         [12]  293 	jr	NZ,00109$
   01D5 2A 69 A0      [16]  294 	ld	hl, (#(_g_clock + 0x0002) + 0)
   01D8 BF            [ 4]  295 	cp	a, a
   01D9 ED 42         [15]  296 	sbc	hl, bc
   01DB 30 10         [12]  297 	jr	NC,00109$
                            298 ;src/between.c:83: cpct_scanKeyboard();
   01DD C5            [11]  299 	push	bc
   01DE CD 00 90      [17]  300 	call	_cpct_scanKeyboard
   01E1 CD 34 8E      [17]  301 	call	_cpct_isAnyKeyPressed
   01E4 C1            [10]  302 	pop	bc
   01E5 AF            [ 4]  303 	xor	a, a
   01E6 BD            [ 4]  304 	cp	a, l
   01E7 17            [ 4]  305 	rla
   01E8 DD 77 F7      [19]  306 	ld	-9 (ix), a
   01EB 18 E2         [12]  307 	jr	00107$
   01ED                     308 00109$:
                            309 ;src/between.c:88: g_clock_on = false;
   01ED 21 58 9E      [10]  310 	ld	hl,#_g_clock_on + 0
   01F0 36 00         [10]  311 	ld	(hl), #0x00
                            312 ;src/between.c:89: cpct_removeInterruptHandler();
   01F2 CD 59 8A      [17]  313 	call	_cpct_removeInterruptHandler
                            314 ;src/between.c:90: u_reset_clock();
   01F5 CD 9E 2D      [17]  315 	call	_u_reset_clock
   01F8 DD F9         [10]  316 	ld	sp, ix
   01FA DD E1         [14]  317 	pop	ix
   01FC C9            [10]  318 	ret
   01FD                     319 _pg_loc:
   01FD 18                  320 	.db #0x18	; 24
   01FE 04                  321 	.db #0x04	; 4
   01FF                     322 _gr_loc:
   01FF 00                  323 	.db #0x00	; 0
   0200 1C                  324 	.db #0x1c	; 28
   0201                     325 _go_loc:
   0201 00                  326 	.db #0x00	; 0
   0202 0B                  327 	.db #0x0b	; 11
   0203                     328 _wd_loc:
   0203 00                  329 	.db #0x00	; 0
   0204 0B                  330 	.db #0x0b	; 11
                            331 ;src/between.c:94: void b_scr_stop(void) {
                            332 ;	---------------------------------
                            333 ; Function b_scr_stop
                            334 ; ---------------------------------
   0205                     335 _b_scr_stop::
                            336 ;src/between.c:96: v_wipe_scr(true);
   0205 3E 01         [ 7]  337 	ld	a, #0x01
   0207 F5            [11]  338 	push	af
   0208 33            [ 6]  339 	inc	sp
   0209 CD 9B 30      [17]  340 	call	_v_wipe_scr
   020C 33            [ 6]  341 	inc	sp
   020D C9            [10]  342 	ret
                            343 ;src/between.c:100: static void b_draw_transition(void) {
                            344 ;	---------------------------------
                            345 ; Function b_draw_transition
                            346 ; ---------------------------------
   020E                     347 _b_draw_transition:
                            348 ;src/between.c:103: cpct_zx7b_decrunch_s(VIDEO_MEM_END, img_transition_end);
   020E 21 B4 51      [10]  349 	ld	hl, #(_img_transition + 0x0263)
   0211 E5            [11]  350 	push	hl
   0212 21 FF FF      [10]  351 	ld	hl, #0xffff
   0215 E5            [11]  352 	push	hl
   0216 CD BF 8E      [17]  353 	call	_cpct_zx7b_decrunch_s
   0219 C9            [10]  354 	ret
                            355 	.area _CODE
                            356 	.area _INITIALIZER
                            357 	.area _CABS (ABS)
