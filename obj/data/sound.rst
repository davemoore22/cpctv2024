                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module sound
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _PLAYER_ARKOS_STOP
                             12 	.globl _PLAYER_ARKOS_PLAY
                             13 	.globl _PLAYER_ARKOS_INIT
                             14 	.globl _PLAYER_ARKOS_PLAYSOUNDEFFECT
                             15 	.globl _PLAYER_ARKOS_INITSOUNDEFFECTS
                             16 	.globl __songNumber
                             17 	.globl __songChanged
                             18 	.globl __fxVolume
                             19 	.globl __fxChannel
                             20 	.globl __fxNumber
                             21 	.globl __fxChanged
                             22 	.globl __currentMusic
                             23 	.globl _InitSound
                             24 	.globl _InitSFX
                             25 	.globl _InitMusic
                             26 	.globl _PlaySFX
                             27 	.globl _PlayMusic
                             28 	.globl _PlaySound
                             29 	.globl _StopMusic
                             30 ;--------------------------------------------------------
                             31 ; special function registers
                             32 ;--------------------------------------------------------
                             33 ;--------------------------------------------------------
                             34 ; ram data
                             35 ;--------------------------------------------------------
                             36 	.area _DATA
   A058                      37 __currentMusic::
   A058                      38 	.ds 2
   A05A                      39 __fxChanged::
   A05A                      40 	.ds 1
   A05B                      41 __fxNumber::
   A05B                      42 	.ds 1
   A05C                      43 __fxChannel::
   A05C                      44 	.ds 1
   A05D                      45 __fxVolume::
   A05D                      46 	.ds 1
   A05E                      47 __songChanged::
   A05E                      48 	.ds 1
   A05F                      49 __songNumber::
   A05F                      50 	.ds 1
                             51 ;--------------------------------------------------------
                             52 ; ram data
                             53 ;--------------------------------------------------------
                             54 	.area _INITIALIZED
                             55 ;--------------------------------------------------------
                             56 ; absolute external ram data
                             57 ;--------------------------------------------------------
                             58 	.area _DABS (ABS)
                             59 ;--------------------------------------------------------
                             60 ; global & static initialisations
                             61 ;--------------------------------------------------------
                             62 	.area _HOME
                             63 	.area _GSINIT
                             64 	.area _GSFINAL
                             65 	.area _GSINIT
                             66 ;--------------------------------------------------------
                             67 ; Home
                             68 ;--------------------------------------------------------
                             69 	.area _HOME
                             70 	.area _HOME
                             71 ;--------------------------------------------------------
                             72 ; code
                             73 ;--------------------------------------------------------
                             74 	.area _CODE
                             75 ;src/data/sound.c:48: void InitSound()
                             76 ;	---------------------------------
                             77 ; Function InitSound
                             78 ; ---------------------------------
   6692                      79 _InitSound::
                             80 ;src/data/sound.c:50: _fxChanged = 0;
   6692 21 5A A0      [10]   81 	ld	hl,#__fxChanged + 0
   6695 36 00         [10]   82 	ld	(hl), #0x00
                             83 ;src/data/sound.c:51: _songChanged = 0;
   6697 21 5E A0      [10]   84 	ld	hl,#__songChanged + 0
   669A 36 00         [10]   85 	ld	(hl), #0x00
                             86 ;src/data/sound.c:53: InitSFX(&SOUNDEFFECTS_SOUNDEFFECTS);
   669C 21 59 82      [10]   87 	ld	hl, #_SOUNDEFFECTS_SOUNDEFFECTS
   669F E5            [11]   88 	push	hl
   66A0 CD AC 66      [17]   89 	call	_InitSFX
                             90 ;src/data/sound.c:54: InitMusic(&AHARMLESSGRENADE_START);
   66A3 21 46 7E      [10]   91 	ld	hl, #_AHARMLESSGRENADE_START
   66A6 E3            [19]   92 	ex	(sp),hl
   66A7 CD B3 66      [17]   93 	call	_InitMusic
   66AA F1            [10]   94 	pop	af
   66AB C9            [10]   95 	ret
                             96 ;src/data/sound.c:62: void InitSFX(void* sfx_SoundEffects)
                             97 ;	---------------------------------
                             98 ; Function InitSFX
                             99 ; ---------------------------------
   66AC                     100 _InitSFX::
                            101 ;src/data/sound.c:64: PLAYER_ARKOS_INITSOUNDEFFECTS(sfx_SoundEffects);
   66AC C1            [10]  102 	pop	bc
   66AD E1            [10]  103 	pop	hl
   66AE E5            [11]  104 	push	hl
   66AF C5            [11]  105 	push	bc
   66B0 C3 3C 8A      [10]  106 	jp  _PLAYER_ARKOS_INITSOUNDEFFECTS
                            107 ;src/data/sound.c:72: void InitMusic(void* music)
                            108 ;	---------------------------------
                            109 ; Function InitMusic
                            110 ; ---------------------------------
   66B3                     111 _InitMusic::
                            112 ;src/data/sound.c:74: _currentMusic = music;
   66B3 21 02 00      [10]  113 	ld	hl, #2+0
   66B6 39            [11]  114 	add	hl, sp
   66B7 7E            [ 7]  115 	ld	a, (hl)
   66B8 32 58 A0      [13]  116 	ld	(#__currentMusic + 0),a
   66BB 21 03 00      [10]  117 	ld	hl, #2+1
   66BE 39            [11]  118 	add	hl, sp
   66BF 7E            [ 7]  119 	ld	a, (hl)
   66C0 32 59 A0      [13]  120 	ld	(#__currentMusic + 1),a
   66C3 C9            [10]  121 	ret
                            122 ;src/data/sound.c:82: void PlaySFX(u8 fxNumber, u8 channel, u8 volume)
                            123 ;	---------------------------------
                            124 ; Function PlaySFX
                            125 ; ---------------------------------
   66C4                     126 _PlaySFX::
                            127 ;src/data/sound.c:84: _fxNumber = fxNumber;
   66C4 21 02 00      [10]  128 	ld	hl, #2+0
   66C7 39            [11]  129 	add	hl, sp
   66C8 7E            [ 7]  130 	ld	a, (hl)
   66C9 32 5B A0      [13]  131 	ld	(#__fxNumber + 0),a
                            132 ;src/data/sound.c:85: _fxChannel = channel;
   66CC 21 03 00      [10]  133 	ld	hl, #3+0
   66CF 39            [11]  134 	add	hl, sp
   66D0 7E            [ 7]  135 	ld	a, (hl)
   66D1 32 5C A0      [13]  136 	ld	(#__fxChannel + 0),a
                            137 ;src/data/sound.c:86: _fxVolume = volume;
   66D4 21 04 00      [10]  138 	ld	hl, #4+0
   66D7 39            [11]  139 	add	hl, sp
   66D8 7E            [ 7]  140 	ld	a, (hl)
   66D9 32 5D A0      [13]  141 	ld	(#__fxVolume + 0),a
                            142 ;src/data/sound.c:88: _fxChanged = 1;
   66DC 21 5A A0      [10]  143 	ld	hl,#__fxChanged + 0
   66DF 36 01         [10]  144 	ld	(hl), #0x01
   66E1 C9            [10]  145 	ret
                            146 ;src/data/sound.c:96: void PlayMusic(u8 songNumber)
                            147 ;	---------------------------------
                            148 ; Function PlayMusic
                            149 ; ---------------------------------
   66E2                     150 _PlayMusic::
                            151 ;src/data/sound.c:98: _songChanged = 1;
   66E2 21 5E A0      [10]  152 	ld	hl,#__songChanged + 0
   66E5 36 01         [10]  153 	ld	(hl), #0x01
   66E7 C9            [10]  154 	ret
                            155 ;src/data/sound.c:106: void PlaySound()
                            156 ;	---------------------------------
                            157 ; Function PlaySound
                            158 ; ---------------------------------
   66E8                     159 _PlaySound::
                            160 ;src/data/sound.c:108: if (_fxChanged)
   66E8 3A 5A A0      [13]  161 	ld	a,(#__fxChanged + 0)
   66EB B7            [ 4]  162 	or	a, a
   66EC 28 19         [12]  163 	jr	Z,00102$
                            164 ;src/data/sound.c:110: PLAYER_ARKOS_PLAYSOUNDEFFECT(_fxNumber, _fxChannel, _fxVolume);
   66EE 21 5B A0      [10]  165 	ld	hl,#__fxNumber + 0
   66F1 4E            [ 7]  166 	ld	c, (hl)
   66F2 06 00         [ 7]  167 	ld	b, #0x00
   66F4 3A 5D A0      [13]  168 	ld	a, (__fxVolume)
   66F7 F5            [11]  169 	push	af
   66F8 33            [ 6]  170 	inc	sp
   66F9 3A 5C A0      [13]  171 	ld	a, (__fxChannel)
   66FC F5            [11]  172 	push	af
   66FD 33            [ 6]  173 	inc	sp
   66FE C5            [11]  174 	push	bc
   66FF CD 3F 8A      [17]  175 	call	_PLAYER_ARKOS_PLAYSOUNDEFFECT
                            176 ;src/data/sound.c:111: _fxChanged = 0;
   6702 21 5A A0      [10]  177 	ld	hl,#__fxChanged + 0
   6705 36 00         [10]  178 	ld	(hl), #0x00
   6707                     179 00102$:
                            180 ;src/data/sound.c:114: if (_songChanged)
   6707 3A 5E A0      [13]  181 	ld	a,(#__songChanged + 0)
   670A B7            [ 4]  182 	or	a, a
   670B 28 13         [12]  183 	jr	Z,00104$
                            184 ;src/data/sound.c:116: PLAYER_ARKOS_INIT(_currentMusic, _songNumber);
   670D 21 5F A0      [10]  185 	ld	hl,#__songNumber + 0
   6710 4E            [ 7]  186 	ld	c, (hl)
   6711 06 00         [ 7]  187 	ld	b, #0x00
   6713 C5            [11]  188 	push	bc
   6714 2A 58 A0      [16]  189 	ld	hl, (__currentMusic)
   6717 E5            [11]  190 	push	hl
   6718 CD 4B 8A      [17]  191 	call	_PLAYER_ARKOS_INIT
                            192 ;src/data/sound.c:117: _songChanged = 0;
   671B 21 5E A0      [10]  193 	ld	hl,#__songChanged + 0
   671E 36 00         [10]  194 	ld	(hl), #0x00
   6720                     195 00104$:
                            196 ;src/data/sound.c:120: PLAYER_ARKOS_PLAY();
   6720 CD 56 8A      [17]  197 	call	_PLAYER_ARKOS_PLAY
   6723 C9            [10]  198 	ret
                            199 ;src/data/sound.c:123: void StopMusic() {
                            200 ;	---------------------------------
                            201 ; Function StopMusic
                            202 ; ---------------------------------
   6724                     203 _StopMusic::
                            204 ;src/data/sound.c:124: PLAYER_ARKOS_STOP();
   6724 C3 53 8A      [10]  205 	jp  _PLAYER_ARKOS_STOP
                            206 	.area _CODE
                            207 	.area _INITIALIZER
                            208 	.area _CABS (ABS)
