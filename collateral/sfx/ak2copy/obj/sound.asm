;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module sound
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PLAYER_ARKOS_PLAY
	.globl _PLAYER_ARKOS_INIT
	.globl _PLAYER_ARKOS_PLAYSOUNDEFFECT
	.globl _PLAYER_ARKOS_INITSOUNDEFFECTS
	.globl __songNumber
	.globl __songChanged
	.globl __fxVolume
	.globl __fxChannel
	.globl __fxNumber
	.globl __fxChanged
	.globl __currentMusic
	.globl _InitSound
	.globl _InitSFX
	.globl _InitMusic
	.globl _PlaySFX
	.globl _PlayMusic
	.globl _PlaySound
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
__currentMusic::
	.ds 2
__fxChanged::
	.ds 1
__fxNumber::
	.ds 1
__fxChannel::
	.ds 1
__fxVolume::
	.ds 1
__songChanged::
	.ds 1
__songNumber::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/sound.c:48: void InitSound()
;	---------------------------------
; Function InitSound
; ---------------------------------
_InitSound::
;src/sound.c:50: _fxChanged = 0;
	ld	hl,#__fxChanged + 0
	ld	(hl), #0x00
;src/sound.c:51: _songChanged = 0;
	ld	hl,#__songChanged + 0
	ld	(hl), #0x00
;src/sound.c:53: InitSFX(&SOUNDEFFECTS_SOUNDEFFECTS);
	ld	hl, #_SOUNDEFFECTS_SOUNDEFFECTS
	push	hl
	call	_InitSFX
;src/sound.c:54: InitMusic(&AHARMLESSGRENADE_START);
	ld	hl, #_AHARMLESSGRENADE_START
	ex	(sp),hl
	call	_InitMusic
	pop	af
	ret
;src/sound.c:62: void InitSFX(void* sfx_SoundEffects)
;	---------------------------------
; Function InitSFX
; ---------------------------------
_InitSFX::
;src/sound.c:64: PLAYER_ARKOS_INITSOUNDEFFECTS(sfx_SoundEffects);
	pop	bc
	pop	hl
	push	hl
	push	bc
	jp  _PLAYER_ARKOS_INITSOUNDEFFECTS
;src/sound.c:72: void InitMusic(void* music)
;	---------------------------------
; Function InitMusic
; ---------------------------------
_InitMusic::
;src/sound.c:74: _currentMusic = music;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	(#__currentMusic + 0),a
	ld	hl, #2+1
	add	hl, sp
	ld	a, (hl)
	ld	(#__currentMusic + 1),a
	ret
;src/sound.c:82: void PlaySFX(u8 fxNumber, u8 channel, u8 volume)
;	---------------------------------
; Function PlaySFX
; ---------------------------------
_PlaySFX::
;src/sound.c:84: _fxNumber = fxNumber;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	(#__fxNumber + 0),a
;src/sound.c:85: _fxChannel = channel;
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	ld	(#__fxChannel + 0),a
;src/sound.c:86: _fxVolume = volume;
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	ld	(#__fxVolume + 0),a
;src/sound.c:88: _fxChanged = 1;
	ld	hl,#__fxChanged + 0
	ld	(hl), #0x01
	ret
;src/sound.c:96: void PlayMusic(u8 songNumber)
;	---------------------------------
; Function PlayMusic
; ---------------------------------
_PlayMusic::
;src/sound.c:98: _songNumber = songNumber;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	(#__songNumber + 0),a
;src/sound.c:100: _songChanged = 1;
	ld	hl,#__songChanged + 0
	ld	(hl), #0x01
	ret
;src/sound.c:108: void PlaySound()
;	---------------------------------
; Function PlaySound
; ---------------------------------
_PlaySound::
;src/sound.c:110: if (_fxChanged)
	ld	a,(#__fxChanged + 0)
	or	a, a
	jr	Z,00102$
;src/sound.c:112: PLAYER_ARKOS_PLAYSOUNDEFFECT(_fxNumber, _fxChannel, _fxVolume);
	ld	hl,#__fxNumber + 0
	ld	c, (hl)
	ld	b, #0x00
	ld	a, (__fxVolume)
	push	af
	inc	sp
	ld	a, (__fxChannel)
	push	af
	inc	sp
	push	bc
	call	_PLAYER_ARKOS_PLAYSOUNDEFFECT
;src/sound.c:113: _fxChanged = 0;
	ld	hl,#__fxChanged + 0
	ld	(hl), #0x00
00102$:
;src/sound.c:116: if (_songChanged)
	ld	a,(#__songChanged + 0)
	or	a, a
	jr	Z,00104$
;src/sound.c:118: PLAYER_ARKOS_INIT(_currentMusic, _songNumber);
	ld	hl,#__songNumber + 0
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, (__currentMusic)
	push	hl
	call	_PLAYER_ARKOS_INIT
;src/sound.c:119: _songChanged = 0;
	ld	hl,#__songChanged + 0
	ld	(hl), #0x00
00104$:
;src/sound.c:122: PLAYER_ARKOS_PLAY();
	call	_PLAYER_ARKOS_PLAY
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
