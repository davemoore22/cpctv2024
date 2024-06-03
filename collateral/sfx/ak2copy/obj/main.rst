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
                             12 	.globl _sInterruptHandler
                             13 	.globl _PlaySound
                             14 	.globl _PlaySFX
                             15 	.globl _PlayMusic
                             16 	.globl _InitSound
                             17 	.globl _cpct_getScreenPtr
                             18 	.globl _cpct_waitVSYNC
                             19 	.globl _cpct_drawStringM1
                             20 	.globl _cpct_setDrawCharM1
                             21 	.globl _cpct_isKeyPressed
                             22 	.globl _cpct_scanKeyboard_if
                             23 	.globl _cpct_setInterruptHandler
                             24 ;--------------------------------------------------------
                             25 ; special function registers
                             26 ;--------------------------------------------------------
                             27 ;--------------------------------------------------------
                             28 ; ram data
                             29 ;--------------------------------------------------------
                             30 	.area _DATA
   4F88                      31 _sInterruptHandler_sInterrupt_1_133:
   4F88                      32 	.ds 1
                             33 ;--------------------------------------------------------
                             34 ; ram data
                             35 ;--------------------------------------------------------
                             36 	.area _INITIALIZED
                             37 ;--------------------------------------------------------
                             38 ; absolute external ram data
                             39 ;--------------------------------------------------------
                             40 	.area _DABS (ABS)
                             41 ;--------------------------------------------------------
                             42 ; global & static initialisations
                             43 ;--------------------------------------------------------
                             44 	.area _HOME
                             45 	.area _GSINIT
                             46 	.area _GSFINAL
                             47 	.area _GSINIT
                             48 ;src/main.c:28: static u8 sInterrupt = 0;
   4F91 FD 21 88 4F   [14]   49 	ld	iy, #_sInterruptHandler_sInterrupt_1_133
   4F95 FD 36 00 00   [19]   50 	ld	0 (iy), #0x00
                             51 ;--------------------------------------------------------
                             52 ; Home
                             53 ;--------------------------------------------------------
                             54 	.area _HOME
                             55 	.area _HOME
                             56 ;--------------------------------------------------------
                             57 ; code
                             58 ;--------------------------------------------------------
                             59 	.area _CODE
                             60 ;src/main.c:26: void sInterruptHandler(void)
                             61 ;	---------------------------------
                             62 ; Function sInterruptHandler
                             63 ; ---------------------------------
   4000                      64 _sInterruptHandler::
                             65 ;src/main.c:31: if (++sInterrupt == 6)
   4000 FD 21 88 4F   [14]   66 	ld	iy, #_sInterruptHandler_sInterrupt_1_133
   4004 FD 34 00      [23]   67 	inc	0 (iy)
   4007 FD 7E 00      [19]   68 	ld	a, 0 (iy)
   400A D6 06         [ 7]   69 	sub	a, #0x06
   400C C0            [11]   70 	ret	NZ
                             71 ;src/main.c:33: PlaySound();
   400D CD 69 41      [17]   72 	call	_PlaySound
                             73 ;src/main.c:34: cpct_scanKeyboard_if();
   4010 CD 82 4E      [17]   74 	call	_cpct_scanKeyboard_if
                             75 ;src/main.c:36: sInterrupt = 0;		
   4013 21 88 4F      [10]   76 	ld	hl,#_sInterruptHandler_sInterrupt_1_133 + 0
   4016 36 00         [10]   77 	ld	(hl), #0x00
   4018 C9            [10]   78 	ret
                             79 ;src/main.c:41: void main(void) 
                             80 ;	---------------------------------
                             81 ; Function main
                             82 ; ---------------------------------
   4019                      83 _main::
                             84 ;src/main.c:44: cpct_setDrawCharM1(1, 0);
   4019 21 01 00      [10]   85 	ld	hl, #0x0001
   401C E5            [11]   86 	push	hl
   401D CD 09 4F      [17]   87 	call	_cpct_setDrawCharM1
                             88 ;src/main.c:45: cpct_drawStringM1("ArkosTracker 2 demo", cpct_getScreenPtr(CPCT_VMEM_START, 20, 90));
   4020 21 14 5A      [10]   89 	ld	hl, #0x5a14
   4023 E5            [11]   90 	push	hl
   4024 21 00 C0      [10]   91 	ld	hl, #0xc000
   4027 E5            [11]   92 	push	hl
   4028 CD F3 4E      [17]   93 	call	_cpct_getScreenPtr
   402B 01 DE 40      [10]   94 	ld	bc, #___str_0+0
   402E E5            [11]   95 	push	hl
   402F C5            [11]   96 	push	bc
   4030 CD F8 4D      [17]   97 	call	_cpct_drawStringM1
                             98 ;src/main.c:46: cpct_setDrawCharM1(2, 0);
   4033 21 02 00      [10]   99 	ld	hl, #0x0002
   4036 E5            [11]  100 	push	hl
   4037 CD 09 4F      [17]  101 	call	_cpct_setDrawCharM1
                            102 ;src/main.c:47: cpct_drawStringM1("Press 1 to 5 to play Sfx", cpct_getScreenPtr(CPCT_VMEM_START, 15, 104));
   403A 21 0F 68      [10]  103 	ld	hl, #0x680f
   403D E5            [11]  104 	push	hl
   403E 21 00 C0      [10]  105 	ld	hl, #0xc000
   4041 E5            [11]  106 	push	hl
   4042 CD F3 4E      [17]  107 	call	_cpct_getScreenPtr
   4045 01 F2 40      [10]  108 	ld	bc, #___str_1+0
   4048 E5            [11]  109 	push	hl
   4049 C5            [11]  110 	push	bc
   404A CD F8 4D      [17]  111 	call	_cpct_drawStringM1
                            112 ;src/main.c:50: InitSound();
   404D CD 0B 41      [17]  113 	call	_InitSound
                            114 ;src/main.c:53: cpct_setInterruptHandler(sInterruptHandler);
   4050 21 00 40      [10]  115 	ld	hl, #_sInterruptHandler
   4053 CD 5D 4F      [17]  116 	call	_cpct_setInterruptHandler
                            117 ;src/main.c:57: PlayMusic(0);
   4056 AF            [ 4]  118 	xor	a, a
   4057 F5            [11]  119 	push	af
   4058 33            [ 6]  120 	inc	sp
   4059 CD 5B 41      [17]  121 	call	_PlayMusic
   405C 33            [ 6]  122 	inc	sp
                            123 ;src/main.c:61: while (1)
   405D                     124 00116$:
                            125 ;src/main.c:63: if (cpct_isKeyPressed(Key_1))
   405D 21 08 01      [10]  126 	ld	hl, #0x0108
   4060 CD EC 4D      [17]  127 	call	_cpct_isKeyPressed
   4063 7D            [ 4]  128 	ld	a, l
   4064 B7            [ 4]  129 	or	a, a
   4065 28 0F         [12]  130 	jr	Z,00113$
                            131 ;src/main.c:66: PlaySFX(1, CHANNEL_A, MAX_VOL);
   4067 21 00 00      [10]  132 	ld	hl, #0x0000
   406A E5            [11]  133 	push	hl
   406B 3E 01         [ 7]  134 	ld	a, #0x01
   406D F5            [11]  135 	push	af
   406E 33            [ 6]  136 	inc	sp
   406F CD 3D 41      [17]  137 	call	_PlaySFX
   4072 F1            [10]  138 	pop	af
   4073 33            [ 6]  139 	inc	sp
   4074 18 62         [12]  140 	jr	00114$
   4076                     141 00113$:
                            142 ;src/main.c:68: else if (cpct_isKeyPressed(Key_2))
   4076 21 08 02      [10]  143 	ld	hl, #0x0208
   4079 CD EC 4D      [17]  144 	call	_cpct_isKeyPressed
   407C 7D            [ 4]  145 	ld	a, l
   407D B7            [ 4]  146 	or	a, a
   407E 28 0F         [12]  147 	jr	Z,00110$
                            148 ;src/main.c:70: PlaySFX(2, CHANNEL_A, MAX_VOL);
   4080 21 00 00      [10]  149 	ld	hl, #0x0000
   4083 E5            [11]  150 	push	hl
   4084 3E 02         [ 7]  151 	ld	a, #0x02
   4086 F5            [11]  152 	push	af
   4087 33            [ 6]  153 	inc	sp
   4088 CD 3D 41      [17]  154 	call	_PlaySFX
   408B F1            [10]  155 	pop	af
   408C 33            [ 6]  156 	inc	sp
   408D 18 49         [12]  157 	jr	00114$
   408F                     158 00110$:
                            159 ;src/main.c:72: else if (cpct_isKeyPressed(Key_3))
   408F 21 07 02      [10]  160 	ld	hl, #0x0207
   4092 CD EC 4D      [17]  161 	call	_cpct_isKeyPressed
   4095 7D            [ 4]  162 	ld	a, l
   4096 B7            [ 4]  163 	or	a, a
   4097 28 0F         [12]  164 	jr	Z,00107$
                            165 ;src/main.c:74: PlaySFX(3, CHANNEL_B, MAX_VOL);
   4099 21 01 00      [10]  166 	ld	hl, #0x0001
   409C E5            [11]  167 	push	hl
   409D 3E 03         [ 7]  168 	ld	a, #0x03
   409F F5            [11]  169 	push	af
   40A0 33            [ 6]  170 	inc	sp
   40A1 CD 3D 41      [17]  171 	call	_PlaySFX
   40A4 F1            [10]  172 	pop	af
   40A5 33            [ 6]  173 	inc	sp
   40A6 18 30         [12]  174 	jr	00114$
   40A8                     175 00107$:
                            176 ;src/main.c:76: else if (cpct_isKeyPressed(Key_4))
   40A8 21 07 01      [10]  177 	ld	hl, #0x0107
   40AB CD EC 4D      [17]  178 	call	_cpct_isKeyPressed
   40AE 7D            [ 4]  179 	ld	a, l
   40AF B7            [ 4]  180 	or	a, a
   40B0 28 0F         [12]  181 	jr	Z,00104$
                            182 ;src/main.c:78: PlaySFX(4, CHANNEL_B, MAX_VOL);
   40B2 21 01 00      [10]  183 	ld	hl, #0x0001
   40B5 E5            [11]  184 	push	hl
   40B6 3E 04         [ 7]  185 	ld	a, #0x04
   40B8 F5            [11]  186 	push	af
   40B9 33            [ 6]  187 	inc	sp
   40BA CD 3D 41      [17]  188 	call	_PlaySFX
   40BD F1            [10]  189 	pop	af
   40BE 33            [ 6]  190 	inc	sp
   40BF 18 17         [12]  191 	jr	00114$
   40C1                     192 00104$:
                            193 ;src/main.c:80: else if (cpct_isKeyPressed(Key_5))
   40C1 21 06 02      [10]  194 	ld	hl, #0x0206
   40C4 CD EC 4D      [17]  195 	call	_cpct_isKeyPressed
   40C7 7D            [ 4]  196 	ld	a, l
   40C8 B7            [ 4]  197 	or	a, a
   40C9 28 0D         [12]  198 	jr	Z,00114$
                            199 ;src/main.c:82: PlaySFX(5, CHANNEL_C, MAX_VOL);
   40CB 21 02 00      [10]  200 	ld	hl, #0x0002
   40CE E5            [11]  201 	push	hl
   40CF 3E 05         [ 7]  202 	ld	a, #0x05
   40D1 F5            [11]  203 	push	af
   40D2 33            [ 6]  204 	inc	sp
   40D3 CD 3D 41      [17]  205 	call	_PlaySFX
   40D6 F1            [10]  206 	pop	af
   40D7 33            [ 6]  207 	inc	sp
   40D8                     208 00114$:
                            209 ;src/main.c:87: cpct_waitVSYNC(); // Wait for next 1/50th second
   40D8 CD EA 4E      [17]  210 	call	_cpct_waitVSYNC
   40DB C3 5D 40      [10]  211 	jp	00116$
   40DE                     212 ___str_0:
   40DE 41 72 6B 6F 73 54   213 	.ascii "ArkosTracker 2 demo"
        72 61 63 6B 65 72
        20 32 20 64 65 6D
        6F
   40F1 00                  214 	.db 0x00
   40F2                     215 ___str_1:
   40F2 50 72 65 73 73 20   216 	.ascii "Press 1 to 5 to play Sfx"
        31 20 74 6F 20 35
        20 74 6F 20 70 6C
        61 79 20 53 66 78
   410A 00                  217 	.db 0x00
                            218 	.area _CODE
                            219 	.area _INITIALIZER
                            220 	.area _CABS (ABS)
