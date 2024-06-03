                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module main
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _main
                             12 	.globl _t_stop
                             13 	.globl _t_start
                             14 	.globl _r_stop
                             15 	.globl _r_start
                             16 	.globl _i_stop
                             17 	.globl _i_start
                             18 	.globl _h_stop
                             19 	.globl _h_start
                             20 	.globl _g_stop
                             21 	.globl _g_start
                             22 	.globl _g_setup
                             23 	.globl _v_init
                             24 	.globl _InitSound
                             25 ;--------------------------------------------------------
                             26 ; special function registers
                             27 ;--------------------------------------------------------
                             28 ;--------------------------------------------------------
                             29 ; ram data
                             30 ;--------------------------------------------------------
                             31 	.area _DATA
                             32 ;--------------------------------------------------------
                             33 ; ram data
                             34 ;--------------------------------------------------------
                             35 	.area _INITIALIZED
                             36 ;--------------------------------------------------------
                             37 ; absolute external ram data
                             38 ;--------------------------------------------------------
                             39 	.area _DABS (ABS)
                             40 ;--------------------------------------------------------
                             41 ; global & static initialisations
                             42 ;--------------------------------------------------------
                             43 	.area _HOME
                             44 	.area _GSINIT
                             45 	.area _GSFINAL
                             46 	.area _GSINIT
                             47 ;--------------------------------------------------------
                             48 ; Home
                             49 ;--------------------------------------------------------
                             50 	.area _HOME
                             51 	.area _HOME
                             52 ;--------------------------------------------------------
                             53 ; code
                             54 ;--------------------------------------------------------
                             55 	.area _CODE
                             56 ;src/main.c:22: void main(void) {
                             57 ;	---------------------------------
                             58 ; Function main
                             59 ; ---------------------------------
   1FA6                      60 _main::
   1FA6 3B            [ 6]   61 	dec	sp
                             62 ;src/main.c:24: bool quit = false;
   1FA7 FD 21 00 00   [14]   63 	ld	iy, #0
   1FAB FD 39         [15]   64 	add	iy, sp
   1FAD FD 36 00 00   [19]   65 	ld	0 (iy), #0x00
                             66 ;src/main.c:28: g_setup();
   1FB1 CD 1A 02      [17]   67 	call	_g_setup
                             68 ;src/main.c:31: v_init();
   1FB4 CD 59 30      [17]   69 	call	_v_init
                             70 ;src/main.c:34: InitSound();
   1FB7 CD 92 66      [17]   71 	call	_InitSound
                             72 ;src/main.c:40: key = t_start(false);
   1FBA AF            [ 4]   73 	xor	a, a
   1FBB F5            [11]   74 	push	af
   1FBC 33            [ 6]   75 	inc	sp
   1FBD CD 20 24      [17]   76 	call	_t_start
   1FC0 33            [ 6]   77 	inc	sp
                             78 ;src/main.c:43: while (!quit) {
   1FC1                      79 00112$:
   1FC1 FD 21 00 00   [14]   80 	ld	iy, #0
   1FC5 FD 39         [15]   81 	add	iy, sp
   1FC7 FD CB 00 46   [20]   82 	bit	0, 0 (iy)
   1FCB C2 4E 20      [10]   83 	jp	NZ, 00114$
                             84 ;src/main.c:44: quit = key == Key_0;
   1FCE 7D            [ 4]   85 	ld	a, l
   1FCF D6 04         [ 7]   86 	sub	a, #0x04
   1FD1 20 08         [12]   87 	jr	NZ,00147$
   1FD3 7C            [ 4]   88 	ld	a, h
   1FD4 3D            [ 4]   89 	dec	a
   1FD5 20 04         [12]   90 	jr	NZ,00147$
   1FD7 3E 01         [ 7]   91 	ld	a,#0x01
   1FD9 18 01         [12]   92 	jr	00148$
   1FDB                      93 00147$:
   1FDB AF            [ 4]   94 	xor	a,a
   1FDC                      95 00148$:
   1FDC 33            [ 6]   96 	inc	sp
   1FDD F5            [11]   97 	push	af
   1FDE 33            [ 6]   98 	inc	sp
                             99 ;src/main.c:46: if (key == Key_1) {
   1FDF 7D            [ 4]  100 	ld	a, l
   1FE0 D6 08         [ 7]  101 	sub	a, #0x08
   1FE2 20 16         [12]  102 	jr	NZ,00110$
   1FE4 7C            [ 4]  103 	ld	a, h
   1FE5 3D            [ 4]  104 	dec	a
   1FE6 20 12         [12]  105 	jr	NZ,00110$
                            106 ;src/main.c:49: t_stop();
   1FE8 CD 09 25      [17]  107 	call	_t_stop
                            108 ;src/main.c:50: r_start();
   1FEB CD 5B 20      [17]  109 	call	_r_start
                            110 ;src/main.c:51: r_stop();
   1FEE CD D1 21      [17]  111 	call	_r_stop
                            112 ;src/main.c:54: key = t_start(false);
   1FF1 AF            [ 4]  113 	xor	a, a
   1FF2 F5            [11]  114 	push	af
   1FF3 33            [ 6]  115 	inc	sp
   1FF4 CD 20 24      [17]  116 	call	_t_start
   1FF7 33            [ 6]  117 	inc	sp
   1FF8 18 C7         [12]  118 	jr	00112$
   1FFA                     119 00110$:
                            120 ;src/main.c:55: } else if (key == Key_3) {
   1FFA 7D            [ 4]  121 	ld	a, l
   1FFB D6 07         [ 7]  122 	sub	a, #0x07
   1FFD 20 17         [12]  123 	jr	NZ,00107$
   1FFF 7C            [ 4]  124 	ld	a, h
   2000 D6 02         [ 7]  125 	sub	a, #0x02
   2002 20 12         [12]  126 	jr	NZ,00107$
                            127 ;src/main.c:58: t_stop();
   2004 CD 09 25      [17]  128 	call	_t_stop
                            129 ;src/main.c:59: h_start();
   2007 CD 9E 1A      [17]  130 	call	_h_start
                            131 ;src/main.c:60: h_stop();
   200A CD C2 1C      [17]  132 	call	_h_stop
                            133 ;src/main.c:63: key = t_start(false);
   200D AF            [ 4]  134 	xor	a, a
   200E F5            [11]  135 	push	af
   200F 33            [ 6]  136 	inc	sp
   2010 CD 20 24      [17]  137 	call	_t_start
   2013 33            [ 6]  138 	inc	sp
   2014 18 AB         [12]  139 	jr	00112$
   2016                     140 00107$:
                            141 ;src/main.c:64: } else if (key == Key_4) {
   2016 7D            [ 4]  142 	ld	a, l
   2017 D6 07         [ 7]  143 	sub	a, #0x07
   2019 20 16         [12]  144 	jr	NZ,00104$
   201B 7C            [ 4]  145 	ld	a, h
   201C 3D            [ 4]  146 	dec	a
   201D 20 12         [12]  147 	jr	NZ,00104$
                            148 ;src/main.c:67: t_stop();
   201F CD 09 25      [17]  149 	call	_t_stop
                            150 ;src/main.c:68: i_start();
   2022 CD EE 1E      [17]  151 	call	_i_start
                            152 ;src/main.c:69: i_stop();
   2025 CD 2F 1F      [17]  153 	call	_i_stop
                            154 ;src/main.c:72: key = t_start(false);
   2028 AF            [ 4]  155 	xor	a, a
   2029 F5            [11]  156 	push	af
   202A 33            [ 6]  157 	inc	sp
   202B CD 20 24      [17]  158 	call	_t_start
   202E 33            [ 6]  159 	inc	sp
   202F 18 90         [12]  160 	jr	00112$
   2031                     161 00104$:
                            162 ;src/main.c:73: } else if (key == Key_9) {
   2031 7D            [ 4]  163 	ld	a, l
   2032 D6 04         [ 7]  164 	sub	a, #0x04
   2034 20 8B         [12]  165 	jr	NZ,00112$
   2036 7C            [ 4]  166 	ld	a, h
   2037 D6 02         [ 7]  167 	sub	a, #0x02
   2039 20 86         [12]  168 	jr	NZ,00112$
                            169 ;src/main.c:76: t_stop();
   203B CD 09 25      [17]  170 	call	_t_stop
                            171 ;src/main.c:77: g_start();
   203E CD 4D 03      [17]  172 	call	_g_start
                            173 ;src/main.c:78: g_stop();
   2041 CD 54 04      [17]  174 	call	_g_stop
                            175 ;src/main.c:81: key = t_start(false);
   2044 AF            [ 4]  176 	xor	a, a
   2045 F5            [11]  177 	push	af
   2046 33            [ 6]  178 	inc	sp
   2047 CD 20 24      [17]  179 	call	_t_start
   204A 33            [ 6]  180 	inc	sp
   204B C3 C1 1F      [10]  181 	jp	00112$
   204E                     182 00114$:
                            183 ;src/main.c:86: if (quit)
   204E 21 00 00      [10]  184 	ld	hl, #0+0
   2051 39            [11]  185 	add	hl, sp
   2052 CB 46         [12]  186 	bit	0, (hl)
   2054 28 03         [12]  187 	jr	Z,00117$
                            188 ;src/main.c:87: t_stop();
   2056 CD 09 25      [17]  189 	call	_t_stop
   2059                     190 00117$:
   2059 33            [ 6]  191 	inc	sp
   205A C9            [10]  192 	ret
                            193 	.area _CODE
                            194 	.area _INITIALIZER
                            195 	.area _CABS (ABS)
