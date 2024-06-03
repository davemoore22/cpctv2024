;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module sound
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PLAYER_ARKOS_STOP
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
	.globl _StopMusic
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
;src/data/sound.c:48: void InitSound()
;	---------------------------------
; Function InitSound
; ---------------------------------
_InitSound::
;src/data/sound.c:50: _fxChanged = 0;
	ld	hl,#__fxChanged + 0
	ld	(hl), #0x00
;src/data/sound.c:51: _songChanged = 0;
	ld	hl,#__songChanged + 0
	ld	(hl), #0x00
;src/data/sound.c:53: InitSFX(&SOUNDEFFECTS_SOUNDEFFECTS);
	ld	hl, #_SOUNDEFFECTS_SOUNDEFFECTS
	push	hl
	call	_InitSFX
;src/data/sound.c:54: InitMusic(&AHARMLESSGRENADE_START);
	ld	hl, #_AHARMLESSGRENADE_START
	ex	(sp),hl
	call	_InitMusic
	pop	af
	ret
;src/data/sound.c:62: void InitSFX(void* sfx_SoundEffects)
;	---------------------------------
; Function InitSFX
; ---------------------------------
_InitSFX::
;src/data/sound.c:64: PLAYER_ARKOS_INITSOUNDEFFECTS(sfx_SoundEffects);
	pop	bc
	pop	hl
	push	hl
	push	bc
	jp  _PLAYER_ARKOS_INITSOUNDEFFECTS
;src/data/sound.c:72: void InitMusic(void* music)
;	---------------------------------
; Function InitMusic
; ---------------------------------
_InitMusic::
;src/data/sound.c:74: _currentMusic = music;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	(#__currentMusic + 0),a
	ld	hl, #2+1
	add	hl, sp
	ld	a, (hl)
	ld	(#__currentMusic + 1),a
	ret
;src/data/sound.c:82: void PlaySFX(u8 fxNumber, u8 channel, u8 volume)
;	---------------------------------
; Function PlaySFX
; ---------------------------------
_PlaySFX::
;src/data/sound.c:84: _fxNumber = fxNumber;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	(#__fxNumber + 0),a
;src/data/sound.c:85: _fxChannel = channel;
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	ld	(#__fxChannel + 0),a
;src/data/sound.c:86: _fxVolume = volume;
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	ld	(#__fxVolume + 0),a
;src/data/sound.c:88: _fxChanged = 1;
	ld	hl,#__fxChanged + 0
	ld	(hl), #0x01
	ret
;src/data/sound.c:96: void PlayMusic(u8 songNumber)
;	---------------------------------
; Function PlayMusic
; ---------------------------------
_PlayMusic::
;src/data/sound.c:98: _songChanged = 1;
	ld	hl,#__songChanged + 0
	ld	(hl), #0x01
	ret
;src/data/sound.c:106: void PlaySound()
;	---------------------------------
; Function PlaySound
; ---------------------------------
_PlaySound::
;src/data/sound.c:108: if (_fxChanged)
	ld	a,(#__fxChanged + 0)
	or	a, a
	jr	Z,00102$
;src/data/sound.c:110: PLAYER_ARKOS_PLAYSOUNDEFFECT(_fxNumber, _fxChannel, _fxVolume);
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
;src/data/sound.c:111: _fxChanged = 0;
	ld	hl,#__fxChanged + 0
	ld	(hl), #0x00
00102$:
;src/data/sound.c:114: if (_songChanged)
	ld	a,(#__songChanged + 0)
	or	a, a
	jr	Z,00104$
;src/data/sound.c:116: PLAYER_ARKOS_INIT(_currentMusic, _songNumber);
	ld	hl,#__songNumber + 0
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, (__currentMusic)
	push	hl
	call	_PLAYER_ARKOS_INIT
;src/data/sound.c:117: _songChanged = 0;
	ld	hl,#__songChanged + 0
	ld	(hl), #0x00
00104$:
;src/data/sound.c:120: PLAYER_ARKOS_PLAY();
	call	_PLAYER_ARKOS_PLAY
	ret
;src/data/sound.c:123: void StopMusic() {
;	---------------------------------
; Function StopMusic
; ---------------------------------
_StopMusic::
;src/data/sound.c:124: PLAYER_ARKOS_STOP();
	jp  _PLAYER_ARKOS_STOP
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
