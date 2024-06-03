;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _sInterruptHandler
	.globl _PlaySound
	.globl _PlaySFX
	.globl _PlayMusic
	.globl _InitSound
	.globl _cpct_getScreenPtr
	.globl _cpct_waitVSYNC
	.globl _cpct_drawStringM1
	.globl _cpct_setDrawCharM1
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_if
	.globl _cpct_setInterruptHandler
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_sInterruptHandler_sInterrupt_1_133:
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
;src/main.c:28: static u8 sInterrupt = 0;
	ld	iy, #_sInterruptHandler_sInterrupt_1_133
	ld	0 (iy), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/main.c:26: void sInterruptHandler(void)
;	---------------------------------
; Function sInterruptHandler
; ---------------------------------
_sInterruptHandler::
;src/main.c:31: if (++sInterrupt == 6)
	ld	iy, #_sInterruptHandler_sInterrupt_1_133
	inc	0 (iy)
	ld	a, 0 (iy)
	sub	a, #0x06
	ret	NZ
;src/main.c:33: PlaySound();
	call	_PlaySound
;src/main.c:34: cpct_scanKeyboard_if();
	call	_cpct_scanKeyboard_if
;src/main.c:36: sInterrupt = 0;		
	ld	hl,#_sInterruptHandler_sInterrupt_1_133 + 0
	ld	(hl), #0x00
	ret
;src/main.c:41: void main(void) 
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/main.c:44: cpct_setDrawCharM1(1, 0);
	ld	hl, #0x0001
	push	hl
	call	_cpct_setDrawCharM1
;src/main.c:45: cpct_drawStringM1("ArkosTracker 2 demo", cpct_getScreenPtr(CPCT_VMEM_START, 20, 90));
	ld	hl, #0x5a14
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	bc, #___str_0+0
	push	hl
	push	bc
	call	_cpct_drawStringM1
;src/main.c:46: cpct_setDrawCharM1(2, 0);
	ld	hl, #0x0002
	push	hl
	call	_cpct_setDrawCharM1
;src/main.c:47: cpct_drawStringM1("Press 1 to 5 to play Sfx", cpct_getScreenPtr(CPCT_VMEM_START, 15, 104));
	ld	hl, #0x680f
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	bc, #___str_1+0
	push	hl
	push	bc
	call	_cpct_drawStringM1
;src/main.c:50: InitSound();
	call	_InitSound
;src/main.c:53: cpct_setInterruptHandler(sInterruptHandler);
	ld	hl, #_sInterruptHandler
	call	_cpct_setInterruptHandler
;src/main.c:57: PlayMusic(0);
	xor	a, a
	push	af
	inc	sp
	call	_PlayMusic
	inc	sp
;src/main.c:61: while (1)
00116$:
;src/main.c:63: if (cpct_isKeyPressed(Key_1))
	ld	hl, #0x0108
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00113$
;src/main.c:66: PlaySFX(1, CHANNEL_A, MAX_VOL);
	ld	hl, #0x0000
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	call	_PlaySFX
	pop	af
	inc	sp
	jr	00114$
00113$:
;src/main.c:68: else if (cpct_isKeyPressed(Key_2))
	ld	hl, #0x0208
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00110$
;src/main.c:70: PlaySFX(2, CHANNEL_A, MAX_VOL);
	ld	hl, #0x0000
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_PlaySFX
	pop	af
	inc	sp
	jr	00114$
00110$:
;src/main.c:72: else if (cpct_isKeyPressed(Key_3))
	ld	hl, #0x0207
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00107$
;src/main.c:74: PlaySFX(3, CHANNEL_B, MAX_VOL);
	ld	hl, #0x0001
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_PlaySFX
	pop	af
	inc	sp
	jr	00114$
00107$:
;src/main.c:76: else if (cpct_isKeyPressed(Key_4))
	ld	hl, #0x0107
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00104$
;src/main.c:78: PlaySFX(4, CHANNEL_B, MAX_VOL);
	ld	hl, #0x0001
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_PlaySFX
	pop	af
	inc	sp
	jr	00114$
00104$:
;src/main.c:80: else if (cpct_isKeyPressed(Key_5))
	ld	hl, #0x0206
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00114$
;src/main.c:82: PlaySFX(5, CHANNEL_C, MAX_VOL);
	ld	hl, #0x0002
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_PlaySFX
	pop	af
	inc	sp
00114$:
;src/main.c:87: cpct_waitVSYNC(); // Wait for next 1/50th second
	call	_cpct_waitVSYNC
	jp	00116$
___str_0:
	.ascii "ArkosTracker 2 demo"
	.db 0x00
___str_1:
	.ascii "Press 1 to 5 to play Sfx"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
