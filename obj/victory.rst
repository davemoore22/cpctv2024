                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module victory
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _v_print
                             12 	.globl _v_wipe_scr
                             13 	.globl _v_clr_scr
                             14 	.globl _v_reset_pal_v
                             15 	.globl _v_reset_pal
                             16 	.globl _v_blk_scr
                             17 	.globl _StopMusic
                             18 	.globl _cpct_zx7b_decrunch_s
                             19 	.globl _cpct_isAnyKeyPressed
                             20 	.globl _cpct_isKeyPressed
                             21 	.globl _cpct_scanKeyboard
                             22 	.globl _c_scr_start
                             23 	.globl _c_can_continue
                             24 	.globl _c_scr_stop
                             25 ;--------------------------------------------------------
                             26 ; special function registers
                             27 ;--------------------------------------------------------
                             28 ;--------------------------------------------------------
                             29 ; ram data
                             30 ;--------------------------------------------------------
                             31 	.area _DATA
   9E5B                      32 _music:
   9E5B                      33 	.ds 1
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
                             58 ;src/victory.c:29: void c_scr_start(void) {
                             59 ;	---------------------------------
                             60 ; Function c_scr_start
                             61 ; ---------------------------------
   26AA                      62 _c_scr_start::
   26AA DD E5         [15]   63 	push	ix
   26AC DD 21 00 00   [14]   64 	ld	ix,#0
   26B0 DD 39         [15]   65 	add	ix,sp
   26B2 F5            [11]   66 	push	af
   26B3 3B            [ 6]   67 	dec	sp
                             68 ;src/victory.c:31: bool kp = false;
   26B4 0E 00         [ 7]   69 	ld	c, #0x00
                             70 ;src/victory.c:34: music = g_music_sfx;
   26B6 3A C2 9B      [13]   71 	ld	a,(#_g_music_sfx + 0)
   26B9 32 5B 9E      [13]   72 	ld	(#_music + 0),a
                             73 ;src/victory.c:35: g_music_sfx = false;
   26BC 21 C2 9B      [10]   74 	ld	hl,#_g_music_sfx + 0
   26BF 36 00         [10]   75 	ld	(hl), #0x00
                             76 ;src/victory.c:36: StopMusic();
   26C1 C5            [11]   77 	push	bc
   26C2 CD 24 67      [17]   78 	call	_StopMusic
   26C5 CD F2 30      [17]   79 	call	_v_clr_scr
   26C8 CD 2D 32      [17]   80 	call	_v_reset_pal
   26CB CD 72 30      [17]   81 	call	_v_blk_scr
   26CE CD F2 30      [17]   82 	call	_v_clr_scr
   26D1 CD C0 28      [17]   83 	call	_c_draw_victory
   26D4 C1            [10]   84 	pop	bc
                             85 ;src/victory.c:49: y = wd_loc.y;
   26D5 3A 8F 28      [13]   86 	ld	a,(#_wd_loc + 1)
                             87 ;src/victory.c:50: v_print(g_strings[110], wd_loc.x, y * LINE_P_H, FONT_WHITE);
   26D8 DD 77 FF      [19]   88 	ld	-1 (ix), a
   26DB 5F            [ 4]   89 	ld	e, a
   26DC 87            [ 4]   90 	add	a, a
   26DD 83            [ 4]   91 	add	a, e
   26DE 87            [ 4]   92 	add	a, a
   26DF DD 77 FE      [19]   93 	ld	-2 (ix), a
   26E2 21 8E 28      [10]   94 	ld	hl, #_wd_loc + 0
   26E5 46            [ 7]   95 	ld	b, (hl)
   26E6 ED 5B 03 68   [20]   96 	ld	de, (#_g_strings + 220)
   26EA C5            [11]   97 	push	bc
   26EB 3E 02         [ 7]   98 	ld	a, #0x02
   26ED F5            [11]   99 	push	af
   26EE 33            [ 6]  100 	inc	sp
   26EF DD 7E FE      [19]  101 	ld	a, -2 (ix)
   26F2 F5            [11]  102 	push	af
   26F3 33            [ 6]  103 	inc	sp
   26F4 C5            [11]  104 	push	bc
   26F5 33            [ 6]  105 	inc	sp
   26F6 D5            [11]  106 	push	de
   26F7 CD 8F 31      [17]  107 	call	_v_print
   26FA F1            [10]  108 	pop	af
   26FB F1            [10]  109 	pop	af
   26FC 33            [ 6]  110 	inc	sp
   26FD C1            [10]  111 	pop	bc
                            112 ;src/victory.c:51: y = y + 2;
   26FE DD 5E FF      [19]  113 	ld	e, -1 (ix)
   2701 1C            [ 4]  114 	inc	e
   2702 1C            [ 4]  115 	inc	e
                            116 ;src/victory.c:52: v_print(g_strings[111], wd_loc.x, y * LINE_P_H, FONT_WHITE);
   2703 7B            [ 4]  117 	ld	a, e
   2704 87            [ 4]  118 	add	a, a
   2705 83            [ 4]  119 	add	a, e
   2706 87            [ 4]  120 	add	a, a
   2707 DD 77 FE      [19]  121 	ld	-2 (ix), a
   270A 21 8E 28      [10]  122 	ld	hl, #_wd_loc + 0
   270D 46            [ 7]  123 	ld	b, (hl)
   270E ED 5B 05 68   [20]  124 	ld	de, (#_g_strings + 222)
   2712 C5            [11]  125 	push	bc
   2713 3E 02         [ 7]  126 	ld	a, #0x02
   2715 F5            [11]  127 	push	af
   2716 33            [ 6]  128 	inc	sp
   2717 DD 7E FE      [19]  129 	ld	a, -2 (ix)
   271A F5            [11]  130 	push	af
   271B 33            [ 6]  131 	inc	sp
   271C C5            [11]  132 	push	bc
   271D 33            [ 6]  133 	inc	sp
   271E D5            [11]  134 	push	de
   271F CD 8F 31      [17]  135 	call	_v_print
   2722 F1            [10]  136 	pop	af
   2723 F1            [10]  137 	pop	af
   2724 33            [ 6]  138 	inc	sp
   2725 C1            [10]  139 	pop	bc
                            140 ;src/victory.c:54: y = yh_loc.y;
   2726 3A 91 28      [13]  141 	ld	a,(#_yh_loc + 1)
                            142 ;src/victory.c:55: v_print(g_strings[112], yh_loc.x, y * LINE_P_H, FONT_WHITE);
   2729 DD 77 FE      [19]  143 	ld	-2 (ix), a
   272C 5F            [ 4]  144 	ld	e, a
   272D 87            [ 4]  145 	add	a, a
   272E 83            [ 4]  146 	add	a, e
   272F 87            [ 4]  147 	add	a, a
   2730 DD 77 FF      [19]  148 	ld	-1 (ix), a
   2733 21 90 28      [10]  149 	ld	hl, #_yh_loc + 0
   2736 46            [ 7]  150 	ld	b, (hl)
   2737 ED 5B 07 68   [20]  151 	ld	de, (#_g_strings + 224)
   273B C5            [11]  152 	push	bc
   273C 3E 02         [ 7]  153 	ld	a, #0x02
   273E F5            [11]  154 	push	af
   273F 33            [ 6]  155 	inc	sp
   2740 DD 7E FF      [19]  156 	ld	a, -1 (ix)
   2743 F5            [11]  157 	push	af
   2744 33            [ 6]  158 	inc	sp
   2745 C5            [11]  159 	push	bc
   2746 33            [ 6]  160 	inc	sp
   2747 D5            [11]  161 	push	de
   2748 CD 8F 31      [17]  162 	call	_v_print
   274B F1            [10]  163 	pop	af
   274C F1            [10]  164 	pop	af
   274D 33            [ 6]  165 	inc	sp
   274E C1            [10]  166 	pop	bc
                            167 ;src/victory.c:56: y = y + 2;
   274F DD 34 FE      [23]  168 	inc	-2 (ix)
   2752 DD 34 FE      [23]  169 	inc	-2 (ix)
                            170 ;src/victory.c:57: v_print(g_strings[113], yh_loc.x, y * LINE_P_H, FONT_WHITE);
   2755 DD 7E FE      [19]  171 	ld	a, -2 (ix)
   2758 5F            [ 4]  172 	ld	e, a
   2759 87            [ 4]  173 	add	a, a
   275A 83            [ 4]  174 	add	a, e
   275B 87            [ 4]  175 	add	a, a
   275C DD 77 FF      [19]  176 	ld	-1 (ix), a
   275F 21 90 28      [10]  177 	ld	hl, #_yh_loc + 0
   2762 46            [ 7]  178 	ld	b, (hl)
   2763 ED 5B 09 68   [20]  179 	ld	de, (#_g_strings + 226)
   2767 C5            [11]  180 	push	bc
   2768 3E 02         [ 7]  181 	ld	a, #0x02
   276A F5            [11]  182 	push	af
   276B 33            [ 6]  183 	inc	sp
   276C DD 7E FF      [19]  184 	ld	a, -1 (ix)
   276F F5            [11]  185 	push	af
   2770 33            [ 6]  186 	inc	sp
   2771 C5            [11]  187 	push	bc
   2772 33            [ 6]  188 	inc	sp
   2773 D5            [11]  189 	push	de
   2774 CD 8F 31      [17]  190 	call	_v_print
   2777 F1            [10]  191 	pop	af
   2778 F1            [10]  192 	pop	af
   2779 33            [ 6]  193 	inc	sp
   277A C1            [10]  194 	pop	bc
                            195 ;src/victory.c:58: y = y + 2;
   277B DD 34 FE      [23]  196 	inc	-2 (ix)
   277E DD 34 FE      [23]  197 	inc	-2 (ix)
                            198 ;src/victory.c:59: v_print(g_strings[114], yh_loc.x, y * LINE_P_H, FONT_WHITE);
   2781 DD 7E FE      [19]  199 	ld	a, -2 (ix)
   2784 5F            [ 4]  200 	ld	e, a
   2785 87            [ 4]  201 	add	a, a
   2786 83            [ 4]  202 	add	a, e
   2787 87            [ 4]  203 	add	a, a
   2788 DD 77 FF      [19]  204 	ld	-1 (ix), a
   278B 21 90 28      [10]  205 	ld	hl, #_yh_loc + 0
   278E 46            [ 7]  206 	ld	b, (hl)
   278F ED 5B 0B 68   [20]  207 	ld	de, (#_g_strings + 228)
   2793 C5            [11]  208 	push	bc
   2794 3E 02         [ 7]  209 	ld	a, #0x02
   2796 F5            [11]  210 	push	af
   2797 33            [ 6]  211 	inc	sp
   2798 DD 7E FF      [19]  212 	ld	a, -1 (ix)
   279B F5            [11]  213 	push	af
   279C 33            [ 6]  214 	inc	sp
   279D C5            [11]  215 	push	bc
   279E 33            [ 6]  216 	inc	sp
   279F D5            [11]  217 	push	de
   27A0 CD 8F 31      [17]  218 	call	_v_print
   27A3 F1            [10]  219 	pop	af
   27A4 F1            [10]  220 	pop	af
   27A5 33            [ 6]  221 	inc	sp
   27A6 C1            [10]  222 	pop	bc
                            223 ;src/victory.c:60: y = y + 2;
   27A7 DD 7E FE      [19]  224 	ld	a, -2 (ix)
   27AA C6 02         [ 7]  225 	add	a, #0x02
                            226 ;src/victory.c:61: v_print(g_strings[115], yh_loc.x, y * LINE_P_H, FONT_WHITE);
   27AC DD 77 FD      [19]  227 	ld	-3 (ix), a
   27AF 5F            [ 4]  228 	ld	e, a
   27B0 87            [ 4]  229 	add	a, a
   27B1 83            [ 4]  230 	add	a, e
   27B2 87            [ 4]  231 	add	a, a
   27B3 DD 77 FE      [19]  232 	ld	-2 (ix), a
   27B6 21 90 28      [10]  233 	ld	hl, #_yh_loc + 0
   27B9 46            [ 7]  234 	ld	b, (hl)
   27BA ED 5B 0D 68   [20]  235 	ld	de, (#_g_strings + 230)
   27BE C5            [11]  236 	push	bc
   27BF 3E 02         [ 7]  237 	ld	a, #0x02
   27C1 F5            [11]  238 	push	af
   27C2 33            [ 6]  239 	inc	sp
   27C3 DD 7E FE      [19]  240 	ld	a, -2 (ix)
   27C6 F5            [11]  241 	push	af
   27C7 33            [ 6]  242 	inc	sp
   27C8 C5            [11]  243 	push	bc
   27C9 33            [ 6]  244 	inc	sp
   27CA D5            [11]  245 	push	de
   27CB CD 8F 31      [17]  246 	call	_v_print
   27CE F1            [10]  247 	pop	af
   27CF F1            [10]  248 	pop	af
   27D0 33            [ 6]  249 	inc	sp
   27D1 C1            [10]  250 	pop	bc
                            251 ;src/victory.c:62: y = y + 4;
   27D2 DD 7E FD      [19]  252 	ld	a, -3 (ix)
   27D5 C6 04         [ 7]  253 	add	a, #0x04
                            254 ;src/victory.c:63: v_print(g_strings[116], yh_loc.x, y * LINE_P_H, FONT_WHITE);
   27D7 DD 77 FE      [19]  255 	ld	-2 (ix), a
   27DA 5F            [ 4]  256 	ld	e, a
   27DB 87            [ 4]  257 	add	a, a
   27DC 83            [ 4]  258 	add	a, e
   27DD 87            [ 4]  259 	add	a, a
   27DE DD 77 FF      [19]  260 	ld	-1 (ix), a
   27E1 21 90 28      [10]  261 	ld	hl, #_yh_loc + 0
   27E4 46            [ 7]  262 	ld	b, (hl)
   27E5 ED 5B 0F 68   [20]  263 	ld	de, (#_g_strings + 232)
   27E9 C5            [11]  264 	push	bc
   27EA 3E 02         [ 7]  265 	ld	a, #0x02
   27EC F5            [11]  266 	push	af
   27ED 33            [ 6]  267 	inc	sp
   27EE DD 7E FF      [19]  268 	ld	a, -1 (ix)
   27F1 F5            [11]  269 	push	af
   27F2 33            [ 6]  270 	inc	sp
   27F3 C5            [11]  271 	push	bc
   27F4 33            [ 6]  272 	inc	sp
   27F5 D5            [11]  273 	push	de
   27F6 CD 8F 31      [17]  274 	call	_v_print
   27F9 F1            [10]  275 	pop	af
   27FA F1            [10]  276 	pop	af
   27FB 33            [ 6]  277 	inc	sp
   27FC C1            [10]  278 	pop	bc
                            279 ;src/victory.c:64: y = y + 2;
   27FD DD 5E FE      [19]  280 	ld	e, -2 (ix)
   2800 1C            [ 4]  281 	inc	e
   2801 1C            [ 4]  282 	inc	e
                            283 ;src/victory.c:65: v_print(g_strings[117], yh_loc.x, y * LINE_P_H, FONT_WHITE);
   2802 7B            [ 4]  284 	ld	a, e
   2803 87            [ 4]  285 	add	a, a
   2804 83            [ 4]  286 	add	a, e
   2805 87            [ 4]  287 	add	a, a
   2806 DD 77 FE      [19]  288 	ld	-2 (ix), a
   2809 21 90 28      [10]  289 	ld	hl, #_yh_loc + 0
   280C 46            [ 7]  290 	ld	b, (hl)
   280D ED 5B 11 68   [20]  291 	ld	de, (#_g_strings + 234)
   2811 C5            [11]  292 	push	bc
   2812 3E 02         [ 7]  293 	ld	a, #0x02
   2814 F5            [11]  294 	push	af
   2815 33            [ 6]  295 	inc	sp
   2816 DD 7E FE      [19]  296 	ld	a, -2 (ix)
   2819 F5            [11]  297 	push	af
   281A 33            [ 6]  298 	inc	sp
   281B C5            [11]  299 	push	bc
   281C 33            [ 6]  300 	inc	sp
   281D D5            [11]  301 	push	de
   281E CD 8F 31      [17]  302 	call	_v_print
   2821 F1            [10]  303 	pop	af
   2822 F1            [10]  304 	pop	af
   2823 33            [ 6]  305 	inc	sp
   2824 C1            [10]  306 	pop	bc
                            307 ;src/victory.c:67: y = co_loc.y;
   2825 3A 93 28      [13]  308 	ld	a, (#_co_loc+1)
                            309 ;src/victory.c:68: v_print(g_strings[118], yh_loc.x, y * LINE_P_H, FONT_WHITE);
   2828 DD 77 FE      [19]  310 	ld	-2 (ix), a
   282B 5F            [ 4]  311 	ld	e, a
   282C 87            [ 4]  312 	add	a, a
   282D 83            [ 4]  313 	add	a, e
   282E 87            [ 4]  314 	add	a, a
   282F DD 77 FF      [19]  315 	ld	-1 (ix), a
   2832 21 90 28      [10]  316 	ld	hl, #_yh_loc + 0
   2835 46            [ 7]  317 	ld	b, (hl)
   2836 ED 5B 13 68   [20]  318 	ld	de, (#_g_strings + 236)
   283A C5            [11]  319 	push	bc
   283B 3E 02         [ 7]  320 	ld	a, #0x02
   283D F5            [11]  321 	push	af
   283E 33            [ 6]  322 	inc	sp
   283F DD 7E FF      [19]  323 	ld	a, -1 (ix)
   2842 F5            [11]  324 	push	af
   2843 33            [ 6]  325 	inc	sp
   2844 C5            [11]  326 	push	bc
   2845 33            [ 6]  327 	inc	sp
   2846 D5            [11]  328 	push	de
   2847 CD 8F 31      [17]  329 	call	_v_print
   284A F1            [10]  330 	pop	af
   284B F1            [10]  331 	pop	af
   284C 33            [ 6]  332 	inc	sp
   284D C1            [10]  333 	pop	bc
                            334 ;src/victory.c:69: y = y + 2;
   284E DD 5E FE      [19]  335 	ld	e, -2 (ix)
   2851 1C            [ 4]  336 	inc	e
   2852 1C            [ 4]  337 	inc	e
                            338 ;src/victory.c:70: v_print(g_strings[119], yh_loc.x, y * LINE_P_H, FONT_WHITE);
   2853 7B            [ 4]  339 	ld	a, e
   2854 87            [ 4]  340 	add	a, a
   2855 83            [ 4]  341 	add	a, e
   2856 87            [ 4]  342 	add	a, a
   2857 DD 77 FE      [19]  343 	ld	-2 (ix), a
   285A 21 90 28      [10]  344 	ld	hl, #_yh_loc + 0
   285D 46            [ 7]  345 	ld	b, (hl)
   285E ED 5B 15 68   [20]  346 	ld	de, (#_g_strings + 238)
   2862 C5            [11]  347 	push	bc
   2863 3E 02         [ 7]  348 	ld	a, #0x02
   2865 F5            [11]  349 	push	af
   2866 33            [ 6]  350 	inc	sp
   2867 DD 7E FE      [19]  351 	ld	a, -2 (ix)
   286A F5            [11]  352 	push	af
   286B 33            [ 6]  353 	inc	sp
   286C C5            [11]  354 	push	bc
   286D 33            [ 6]  355 	inc	sp
   286E D5            [11]  356 	push	de
   286F CD 8F 31      [17]  357 	call	_v_print
   2872 F1            [10]  358 	pop	af
   2873 F1            [10]  359 	pop	af
   2874 33            [ 6]  360 	inc	sp
   2875 CD 53 32      [17]  361 	call	_v_reset_pal_v
   2878 C1            [10]  362 	pop	bc
                            363 ;src/victory.c:76: while (!kp) {
   2879                     364 00101$:
   2879 CB 41         [ 8]  365 	bit	0, c
   287B 20 0C         [12]  366 	jr	NZ,00104$
                            367 ;src/victory.c:79: cpct_scanKeyboard();
   287D CD 04 90      [17]  368 	call	_cpct_scanKeyboard
                            369 ;src/victory.c:80: kp = cpct_isAnyKeyPressed();
   2880 CD 38 8E      [17]  370 	call	_cpct_isAnyKeyPressed
   2883 AF            [ 4]  371 	xor	a, a
   2884 BD            [ 4]  372 	cp	a, l
   2885 17            [ 4]  373 	rla
   2886 4F            [ 4]  374 	ld	c, a
   2887 18 F0         [12]  375 	jr	00101$
   2889                     376 00104$:
   2889 DD F9         [10]  377 	ld	sp, ix
   288B DD E1         [14]  378 	pop	ix
   288D C9            [10]  379 	ret
   288E                     380 _wd_loc:
   288E 36                  381 	.db #0x36	; 54	'6'
   288F 04                  382 	.db #0x04	; 4
   2890                     383 _yh_loc:
   2890 36                  384 	.db #0x36	; 54	'6'
   2891 0B                  385 	.db #0x0b	; 11
   2892                     386 _co_loc:
   2892 36                  387 	.db #0x36	; 54	'6'
   2893 1C                  388 	.db #0x1c	; 28
                            389 ;src/victory.c:85: bool c_can_continue(void) {
                            390 ;	---------------------------------
                            391 ; Function c_can_continue
                            392 ; ---------------------------------
   2894                     393 _c_can_continue::
                            394 ;src/victory.c:89: while (!proceed) {
   2894                     395 00105$:
                            396 ;src/victory.c:91: cpct_scanKeyboard();
   2894 CD 04 90      [17]  397 	call	_cpct_scanKeyboard
                            398 ;src/victory.c:92: if (cpct_isKeyPressed(Key_Y))
   2897 21 05 08      [10]  399 	ld	hl, #0x0805
   289A CD EE 8A      [17]  400 	call	_cpct_isKeyPressed
   289D 7D            [ 4]  401 	ld	a, l
   289E B7            [ 4]  402 	or	a, a
   289F 28 03         [12]  403 	jr	Z,00102$
                            404 ;src/victory.c:93: return true;
   28A1 2E 01         [ 7]  405 	ld	l, #0x01
   28A3 C9            [10]  406 	ret
   28A4                     407 00102$:
                            408 ;src/victory.c:94: if (cpct_isKeyPressed(Key_N))
   28A4 21 05 40      [10]  409 	ld	hl, #0x4005
   28A7 CD EE 8A      [17]  410 	call	_cpct_isKeyPressed
   28AA 7D            [ 4]  411 	ld	a, l
   28AB B7            [ 4]  412 	or	a, a
   28AC 28 E6         [12]  413 	jr	Z,00105$
                            414 ;src/victory.c:95: return false;
   28AE 2E 00         [ 7]  415 	ld	l, #0x00
                            416 ;src/victory.c:98: return false;
   28B0 C9            [10]  417 	ret
                            418 ;src/victory.c:102: void c_scr_stop(void) {
                            419 ;	---------------------------------
                            420 ; Function c_scr_stop
                            421 ; ---------------------------------
   28B1                     422 _c_scr_stop::
                            423 ;src/victory.c:104: v_wipe_scr(true);
   28B1 3E 01         [ 7]  424 	ld	a, #0x01
   28B3 F5            [11]  425 	push	af
   28B4 33            [ 6]  426 	inc	sp
   28B5 CD 9B 30      [17]  427 	call	_v_wipe_scr
   28B8 33            [ 6]  428 	inc	sp
                            429 ;src/victory.c:106: g_music_sfx = music;
   28B9 3A 5B 9E      [13]  430 	ld	a,(#_music + 0)
   28BC 32 C2 9B      [13]  431 	ld	(#_g_music_sfx + 0),a
   28BF C9            [10]  432 	ret
                            433 ;src/victory.c:110: static void c_draw_victory(void) {
                            434 ;	---------------------------------
                            435 ; Function c_draw_victory
                            436 ; ---------------------------------
   28C0                     437 _c_draw_victory:
                            438 ;src/victory.c:113: cpct_zx7b_decrunch_s(VIDEO_MEM_END, img_victory_end);
   28C0 21 43 64      [10]  439 	ld	hl, #(_img_victory + 0x1150)
   28C3 E5            [11]  440 	push	hl
   28C4 21 FF FF      [10]  441 	ld	hl, #0xffff
   28C7 E5            [11]  442 	push	hl
   28C8 CD C3 8E      [17]  443 	call	_cpct_zx7b_decrunch_s
   28CB C9            [10]  444 	ret
                            445 	.area _CODE
                            446 	.area _INITIALIZER
                            447 	.area _CABS (ABS)
