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
                             11 	.globl _PLAYER_ARKOS_PLAY
                             12 	.globl _PLAYER_ARKOS_INIT
                             13 	.globl _PLAYER_ARKOS_PLAYSOUNDEFFECT
                             14 	.globl _PLAYER_ARKOS_INITSOUNDEFFECTS
                             15 	.globl __songNumber
                             16 	.globl __songChanged
                             17 	.globl __fxVolume
                             18 	.globl __fxChannel
                             19 	.globl __fxNumber
                             20 	.globl __fxChanged
                             21 	.globl __currentMusic
                             22 	.globl _InitSound
                             23 	.globl _InitSFX
                             24 	.globl _InitMusic
                             25 	.globl _PlaySFX
                             26 	.globl _PlayMusic
                             27 	.globl _PlaySound
                             28 ;--------------------------------------------------------
                             29 ; special function registers
                             30 ;--------------------------------------------------------
                             31 ;--------------------------------------------------------
                             32 ; ram data
                             33 ;--------------------------------------------------------
                             34 	.area _DATA
   4F89                      35 __currentMusic::
   4F89                      36 	.ds 2
   4F8B                      37 __fxChanged::
   4F8B                      38 	.ds 1
   4F8C                      39 __fxNumber::
   4F8C                      40 	.ds 1
   4F8D                      41 __fxChannel::
   4F8D                      42 	.ds 1
   4F8E                      43 __fxVolume::
   4F8E                      44 	.ds 1
   4F8F                      45 __songChanged::
   4F8F                      46 	.ds 1
   4F90                      47 __songNumber::
   4F90                      48 	.ds 1
                             49 ;--------------------------------------------------------
                             50 ; ram data
                             51 ;--------------------------------------------------------
                             52 	.area _INITIALIZED
                             53 ;--------------------------------------------------------
                             54 ; absolute external ram data
                             55 ;--------------------------------------------------------
                             56 	.area _DABS (ABS)
                             57 ;--------------------------------------------------------
                             58 ; global & static initialisations
                             59 ;--------------------------------------------------------
                             60 	.area _HOME
                             61 	.area _GSINIT
                             62 	.area _GSFINAL
                             63 	.area _GSINIT
                             64 ;--------------------------------------------------------
                             65 ; Home
                             66 ;--------------------------------------------------------
                             67 	.area _HOME
                             68 	.area _HOME
                             69 ;--------------------------------------------------------
                             70 ; code
                             71 ;--------------------------------------------------------
                             72 	.area _CODE
                             73 ;src/sound.c:48: void InitSound()
                             74 ;	---------------------------------
                             75 ; Function InitSound
                             76 ; ---------------------------------
   410B                      77 _InitSound::
                             78 ;src/sound.c:50: _fxChanged = 0;
   410B 21 8B 4F      [10]   79 	ld	hl,#__fxChanged + 0
   410E 36 00         [10]   80 	ld	(hl), #0x00
                             81 ;src/sound.c:51: _songChanged = 0;
   4110 21 8F 4F      [10]   82 	ld	hl,#__songChanged + 0
   4113 36 00         [10]   83 	ld	(hl), #0x00
                             84 ;src/sound.c:53: InitSFX(&SOUNDEFFECTS_SOUNDEFFECTS);
   4115 21 B8 45      [10]   85 	ld	hl, #_SOUNDEFFECTS_SOUNDEFFECTS
   4118 E5            [11]   86 	push	hl
   4119 CD 25 41      [17]   87 	call	_InitSFX
                             88 ;src/sound.c:54: InitMusic(&AHARMLESSGRENADE_START);
   411C 21 A5 41      [10]   89 	ld	hl, #_AHARMLESSGRENADE_START
   411F E3            [19]   90 	ex	(sp),hl
   4120 CD 2C 41      [17]   91 	call	_InitMusic
   4123 F1            [10]   92 	pop	af
   4124 C9            [10]   93 	ret
                             94 ;src/sound.c:62: void InitSFX(void* sfx_SoundEffects)
                             95 ;	---------------------------------
                             96 ; Function InitSFX
                             97 ; ---------------------------------
   4125                      98 _InitSFX::
                             99 ;src/sound.c:64: PLAYER_ARKOS_INITSOUNDEFFECTS(sfx_SoundEffects);
   4125 C1            [10]  100 	pop	bc
   4126 E1            [10]  101 	pop	hl
   4127 E5            [11]  102 	push	hl
   4128 C5            [11]  103 	push	bc
   4129 C3 9B 4D      [10]  104 	jp  _PLAYER_ARKOS_INITSOUNDEFFECTS
                            105 ;src/sound.c:72: void InitMusic(void* music)
                            106 ;	---------------------------------
                            107 ; Function InitMusic
                            108 ; ---------------------------------
   412C                     109 _InitMusic::
                            110 ;src/sound.c:74: _currentMusic = music;
   412C 21 02 00      [10]  111 	ld	hl, #2+0
   412F 39            [11]  112 	add	hl, sp
   4130 7E            [ 7]  113 	ld	a, (hl)
   4131 32 89 4F      [13]  114 	ld	(#__currentMusic + 0),a
   4134 21 03 00      [10]  115 	ld	hl, #2+1
   4137 39            [11]  116 	add	hl, sp
   4138 7E            [ 7]  117 	ld	a, (hl)
   4139 32 8A 4F      [13]  118 	ld	(#__currentMusic + 1),a
   413C C9            [10]  119 	ret
                            120 ;src/sound.c:82: void PlaySFX(u8 fxNumber, u8 channel, u8 volume)
                            121 ;	---------------------------------
                            122 ; Function PlaySFX
                            123 ; ---------------------------------
   413D                     124 _PlaySFX::
                            125 ;src/sound.c:84: _fxNumber = fxNumber;
   413D 21 02 00      [10]  126 	ld	hl, #2+0
   4140 39            [11]  127 	add	hl, sp
   4141 7E            [ 7]  128 	ld	a, (hl)
   4142 32 8C 4F      [13]  129 	ld	(#__fxNumber + 0),a
                            130 ;src/sound.c:85: _fxChannel = channel;
   4145 21 03 00      [10]  131 	ld	hl, #3+0
   4148 39            [11]  132 	add	hl, sp
   4149 7E            [ 7]  133 	ld	a, (hl)
   414A 32 8D 4F      [13]  134 	ld	(#__fxChannel + 0),a
                            135 ;src/sound.c:86: _fxVolume = volume;
   414D 21 04 00      [10]  136 	ld	hl, #4+0
   4150 39            [11]  137 	add	hl, sp
   4151 7E            [ 7]  138 	ld	a, (hl)
   4152 32 8E 4F      [13]  139 	ld	(#__fxVolume + 0),a
                            140 ;src/sound.c:88: _fxChanged = 1;
   4155 21 8B 4F      [10]  141 	ld	hl,#__fxChanged + 0
   4158 36 01         [10]  142 	ld	(hl), #0x01
   415A C9            [10]  143 	ret
                            144 ;src/sound.c:96: void PlayMusic(u8 songNumber)
                            145 ;	---------------------------------
                            146 ; Function PlayMusic
                            147 ; ---------------------------------
   415B                     148 _PlayMusic::
                            149 ;src/sound.c:98: _songNumber = songNumber;
   415B 21 02 00      [10]  150 	ld	hl, #2+0
   415E 39            [11]  151 	add	hl, sp
   415F 7E            [ 7]  152 	ld	a, (hl)
   4160 32 90 4F      [13]  153 	ld	(#__songNumber + 0),a
                            154 ;src/sound.c:100: _songChanged = 1;
   4163 21 8F 4F      [10]  155 	ld	hl,#__songChanged + 0
   4166 36 01         [10]  156 	ld	(hl), #0x01
   4168 C9            [10]  157 	ret
                            158 ;src/sound.c:108: void PlaySound()
                            159 ;	---------------------------------
                            160 ; Function PlaySound
                            161 ; ---------------------------------
   4169                     162 _PlaySound::
                            163 ;src/sound.c:110: if (_fxChanged)
   4169 3A 8B 4F      [13]  164 	ld	a,(#__fxChanged + 0)
   416C B7            [ 4]  165 	or	a, a
   416D 28 19         [12]  166 	jr	Z,00102$
                            167 ;src/sound.c:112: PLAYER_ARKOS_PLAYSOUNDEFFECT(_fxNumber, _fxChannel, _fxVolume);
   416F 21 8C 4F      [10]  168 	ld	hl,#__fxNumber + 0
   4172 4E            [ 7]  169 	ld	c, (hl)
   4173 06 00         [ 7]  170 	ld	b, #0x00
   4175 3A 8E 4F      [13]  171 	ld	a, (__fxVolume)
   4178 F5            [11]  172 	push	af
   4179 33            [ 6]  173 	inc	sp
   417A 3A 8D 4F      [13]  174 	ld	a, (__fxChannel)
   417D F5            [11]  175 	push	af
   417E 33            [ 6]  176 	inc	sp
   417F C5            [11]  177 	push	bc
   4180 CD 9E 4D      [17]  178 	call	_PLAYER_ARKOS_PLAYSOUNDEFFECT
                            179 ;src/sound.c:113: _fxChanged = 0;
   4183 21 8B 4F      [10]  180 	ld	hl,#__fxChanged + 0
   4186 36 00         [10]  181 	ld	(hl), #0x00
   4188                     182 00102$:
                            183 ;src/sound.c:116: if (_songChanged)
   4188 3A 8F 4F      [13]  184 	ld	a,(#__songChanged + 0)
   418B B7            [ 4]  185 	or	a, a
   418C 28 13         [12]  186 	jr	Z,00104$
                            187 ;src/sound.c:118: PLAYER_ARKOS_INIT(_currentMusic, _songNumber);
   418E 21 90 4F      [10]  188 	ld	hl,#__songNumber + 0
   4191 4E            [ 7]  189 	ld	c, (hl)
   4192 06 00         [ 7]  190 	ld	b, #0x00
   4194 C5            [11]  191 	push	bc
   4195 2A 89 4F      [16]  192 	ld	hl, (__currentMusic)
   4198 E5            [11]  193 	push	hl
   4199 CD AA 4D      [17]  194 	call	_PLAYER_ARKOS_INIT
                            195 ;src/sound.c:119: _songChanged = 0;
   419C 21 8F 4F      [10]  196 	ld	hl,#__songChanged + 0
   419F 36 00         [10]  197 	ld	(hl), #0x00
   41A1                     198 00104$:
                            199 ;src/sound.c:122: PLAYER_ARKOS_PLAY();
   41A1 CD B5 4D      [17]  200 	call	_PLAYER_ARKOS_PLAY
   41A4 C9            [10]  201 	ret
                            202 	.area _CODE
                            203 	.area _INITIALIZER
                            204 	.area _CABS (ABS)
