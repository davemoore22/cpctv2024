                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module instruct
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _v_reset_timers
                             12 	.globl _v_interrupt
                             13 	.globl _v_draw_logo
                             14 	.globl _v_print_c
                             15 	.globl _v_wipe_scr
                             16 	.globl _v_clr_scr
                             17 	.globl _v_reset_pal
                             18 	.globl _v_blk_scr
                             19 	.globl _cpct_waitVSYNC
                             20 	.globl _cpct_isAnyKeyPressed
                             21 	.globl _cpct_removeInterruptHandler
                             22 	.globl _cpct_setInterruptHandler
                             23 	.globl _i_start
                             24 	.globl _i_stop
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
                             56 ;src/instruct.c:27: void i_start(void) {
                             57 ;	---------------------------------
                             58 ; Function i_start
                             59 ; ---------------------------------
   1EEE                      60 _i_start::
   1EEE 3B            [ 6]   61 	dec	sp
                             62 ;src/instruct.c:29: bool kp = false;
   1EEF FD 21 00 00   [14]   63 	ld	iy, #0
   1EF3 FD 39         [15]   64 	add	iy, sp
   1EF5 FD 36 00 00   [19]   65 	ld	0 (iy), #0x00
                             66 ;src/instruct.c:32: v_blk_scr();
   1EF9 CD 72 30      [17]   67 	call	_v_blk_scr
                             68 ;src/instruct.c:33: v_clr_scr();
   1EFC CD F2 30      [17]   69 	call	_v_clr_scr
                             70 ;src/instruct.c:36: v_draw_logo();
   1EFF CD 33 30      [17]   71 	call	_v_draw_logo
                             72 ;src/instruct.c:37: i_draw_instructions();
   1F02 CD 43 1F      [17]   73 	call	_i_draw_instructions
                             74 ;src/instruct.c:38: v_reset_pal();
   1F05 CD 2D 32      [17]   75 	call	_v_reset_pal
                             76 ;src/instruct.c:40: v_reset_timers();
   1F08 CD CB 32      [17]   77 	call	_v_reset_timers
                             78 ;src/instruct.c:41: cpct_waitVSYNC();
   1F0B CD BB 8E      [17]   79 	call	_cpct_waitVSYNC
                             80 ;src/instruct.c:42: cpct_setInterruptHandler(v_interrupt);
   1F0E 21 DB 32      [10]   81 	ld	hl, #_v_interrupt
   1F11 CD 59 90      [17]   82 	call	_cpct_setInterruptHandler
                             83 ;src/instruct.c:45: while (!kp)
   1F14                      84 00101$:
   1F14 21 00 00      [10]   85 	ld	hl, #0+0
   1F17 39            [11]   86 	add	hl, sp
   1F18 CB 46         [12]   87 	bit	0, (hl)
   1F1A 20 0B         [12]   88 	jr	NZ,00104$
                             89 ;src/instruct.c:46: kp = cpct_isAnyKeyPressed();
   1F1C CD 38 8E      [17]   90 	call	_cpct_isAnyKeyPressed
   1F1F AF            [ 4]   91 	xor	a, a
   1F20 BD            [ 4]   92 	cp	a, l
   1F21 17            [ 4]   93 	rla
   1F22 33            [ 6]   94 	inc	sp
   1F23 F5            [11]   95 	push	af
   1F24 33            [ 6]   96 	inc	sp
   1F25 18 ED         [12]   97 	jr	00101$
   1F27                      98 00104$:
   1F27 33            [ 6]   99 	inc	sp
   1F28 C9            [10]  100 	ret
   1F29                     101 _title_loc:
   1F29 01                  102 	.db #0x01	; 1
   1F2A 08                  103 	.db #0x08	; 8
   1F2B                     104 _text_loc:
   1F2B 01                  105 	.db #0x01	; 1
   1F2C 0B                  106 	.db #0x0b	; 11
   1F2D                     107 _key_loc:
   1F2D 01                  108 	.db #0x01	; 1
   1F2E 20                  109 	.db #0x20	; 32
                            110 ;src/instruct.c:50: void i_stop(void) {
                            111 ;	---------------------------------
                            112 ; Function i_stop
                            113 ; ---------------------------------
   1F2F                     114 _i_stop::
                            115 ;src/instruct.c:52: v_wipe_scr(true);
   1F2F 3E 01         [ 7]  116 	ld	a, #0x01
   1F31 F5            [11]  117 	push	af
   1F32 33            [ 6]  118 	inc	sp
   1F33 CD 9B 30      [17]  119 	call	_v_wipe_scr
   1F36 33            [ 6]  120 	inc	sp
                            121 ;src/instruct.c:53: v_blk_scr();
   1F37 CD 72 30      [17]  122 	call	_v_blk_scr
                            123 ;src/instruct.c:54: v_clr_scr();
   1F3A CD F2 30      [17]  124 	call	_v_clr_scr
                            125 ;src/instruct.c:55: cpct_removeInterruptHandler();
   1F3D CD 5D 8A      [17]  126 	call	_cpct_removeInterruptHandler
                            127 ;src/instruct.c:56: v_reset_timers();
   1F40 C3 CB 32      [10]  128 	jp  _v_reset_timers
                            129 ;src/instruct.c:60: static void i_draw_instructions() {
                            130 ;	---------------------------------
                            131 ; Function i_draw_instructions
                            132 ; ---------------------------------
   1F43                     133 _i_draw_instructions:
                            134 ;src/instruct.c:62: v_print_c(g_strings[48], title_loc.y * LINE_P_H, FONT_RED);
   1F43 3A 2A 1F      [13]  135 	ld	a, (#(_title_loc + 0x0001) + 0)
   1F46 4F            [ 4]  136 	ld	c, a
   1F47 87            [ 4]  137 	add	a, a
   1F48 81            [ 4]  138 	add	a, c
   1F49 87            [ 4]  139 	add	a, a
   1F4A 57            [ 4]  140 	ld	d, a
   1F4B ED 4B 87 67   [20]  141 	ld	bc, (#_g_strings + 96)
   1F4F AF            [ 4]  142 	xor	a, a
   1F50 F5            [11]  143 	push	af
   1F51 33            [ 6]  144 	inc	sp
   1F52 D5            [11]  145 	push	de
   1F53 33            [ 6]  146 	inc	sp
   1F54 C5            [11]  147 	push	bc
   1F55 CD 03 31      [17]  148 	call	_v_print_c
   1F58 F1            [10]  149 	pop	af
   1F59 F1            [10]  150 	pop	af
                            151 ;src/instruct.c:64: for (u8 y = 0; y < 14; y++)
   1F5A 0E 00         [ 7]  152 	ld	c, #0x00
   1F5C                     153 00103$:
   1F5C 79            [ 4]  154 	ld	a, c
   1F5D D6 0E         [ 7]  155 	sub	a, #0x0e
   1F5F 30 2D         [12]  156 	jr	NC,00101$
                            157 ;src/instruct.c:66: ((y + text_loc.y) * LINE_P_H) + (y * 2), FONT_BLUE);
   1F61 21 2C 1F      [10]  158 	ld	hl, #(_text_loc + 0x0001) + 0
   1F64 6E            [ 7]  159 	ld	l, (hl)
   1F65 09            [11]  160 	add	hl, bc
   1F66 5D            [ 4]  161 	ld	e, l
   1F67 29            [11]  162 	add	hl, hl
   1F68 19            [11]  163 	add	hl, de
   1F69 29            [11]  164 	add	hl, hl
   1F6A 79            [ 4]  165 	ld	a, c
   1F6B 87            [ 4]  166 	add	a, a
   1F6C 85            [ 4]  167 	add	a,l
   1F6D 47            [ 4]  168 	ld	b, a
                            169 ;src/instruct.c:65: v_print_c(g_strings[y + 30],
   1F6E 59            [ 4]  170 	ld	e, c
   1F6F 16 00         [ 7]  171 	ld	d, #0x00
   1F71 21 1E 00      [10]  172 	ld	hl, #0x001e
   1F74 19            [11]  173 	add	hl, de
   1F75 29            [11]  174 	add	hl, hl
   1F76 11 27 67      [10]  175 	ld	de, #_g_strings
   1F79 19            [11]  176 	add	hl, de
   1F7A 5E            [ 7]  177 	ld	e, (hl)
   1F7B 23            [ 6]  178 	inc	hl
   1F7C 56            [ 7]  179 	ld	d, (hl)
   1F7D C5            [11]  180 	push	bc
   1F7E 3E 01         [ 7]  181 	ld	a, #0x01
   1F80 F5            [11]  182 	push	af
   1F81 33            [ 6]  183 	inc	sp
   1F82 C5            [11]  184 	push	bc
   1F83 33            [ 6]  185 	inc	sp
   1F84 D5            [11]  186 	push	de
   1F85 CD 03 31      [17]  187 	call	_v_print_c
   1F88 F1            [10]  188 	pop	af
   1F89 F1            [10]  189 	pop	af
   1F8A C1            [10]  190 	pop	bc
                            191 ;src/instruct.c:64: for (u8 y = 0; y < 14; y++)
   1F8B 0C            [ 4]  192 	inc	c
   1F8C 18 CE         [12]  193 	jr	00103$
   1F8E                     194 00101$:
                            195 ;src/instruct.c:68: v_print_c(g_strings[49], key_loc.y * LINE_P_H, FONT_RED);
   1F8E 3A 2E 1F      [13]  196 	ld	a, (#(_key_loc + 0x0001) + 0)
   1F91 4F            [ 4]  197 	ld	c, a
   1F92 87            [ 4]  198 	add	a, a
   1F93 81            [ 4]  199 	add	a, c
   1F94 87            [ 4]  200 	add	a, a
   1F95 47            [ 4]  201 	ld	b, a
   1F96 ED 5B 89 67   [20]  202 	ld	de, (#_g_strings + 98)
   1F9A AF            [ 4]  203 	xor	a, a
   1F9B F5            [11]  204 	push	af
   1F9C 33            [ 6]  205 	inc	sp
   1F9D C5            [11]  206 	push	bc
   1F9E 33            [ 6]  207 	inc	sp
   1F9F D5            [11]  208 	push	de
   1FA0 CD 03 31      [17]  209 	call	_v_print_c
   1FA3 F1            [10]  210 	pop	af
   1FA4 F1            [10]  211 	pop	af
   1FA5 C9            [10]  212 	ret
                            213 	.area _CODE
                            214 	.area _INITIALIZER
                            215 	.area _CABS (ABS)
