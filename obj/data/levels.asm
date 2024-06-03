;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module levels
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_game_grids
	.globl _g_game_grid_7
	.globl _g_game_grid_5
	.globl _g_game_grid_3
	.globl _g_game_grid_2
	.globl _g_game_grid_1
	.globl _g_game_grid_bt
	.globl _g_game_grid_fg
	.globl _g_game_grid_bg
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
	.area _CODE
_g_game_grid_bg:
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
_g_game_grid_fg:
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x04	; 4
_g_game_grid_bt:
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x0a	; 10
_g_game_grid_1:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x98	; 152
	.db #0x00	; 0
	.db #0xa4	; 164
	.db #0x4a	; 74	'J'
	.db #0x00	; 0
	.db #0x92	; 146
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x12	; 18
	.db #0x20	; 32
	.db #0x84	; 132
	.db #0x89	; 137
	.db #0x08	; 8
	.db #0x7e	; 126
	.db #0x44	; 68	'D'
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x91	; 145
	.db #0x3f	; 63
	.db #0x08	; 8
	.db #0x48	; 72	'H'
	.db #0x90	; 144
	.db #0x82	; 130
	.db #0x24	; 36
	.db #0x48	; 72	'H'
	.db #0x80	; 128
	.db #0x92	; 146
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x29	; 41
	.db #0x12	; 18
	.db #0x80	; 128
	.db #0x0c	; 12
	.db #0xf9	; 249
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_game_grid_2:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_game_grid_3:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x9e	; 158
	.db #0xf3	; 243
	.db #0xc2	; 194
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x21	; 33
	.db #0x24	; 36
	.db #0xa4	; 164
	.db #0x90	; 144
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xf8	; 248
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x80	; 128
	.db #0x90	; 144
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x48	; 72	'H'
	.db #0x0f	; 15
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0x84	; 132
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x42	; 66	'B'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x21	; 33
	.db #0xff	; 255
	.db #0xbc	; 188
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_game_grid_5:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0xc0	; 192
	.db #0x1f	; 31
	.db #0x87	; 135
	.db #0xe0	; 224
	.db #0x0f	; 15
	.db #0xc3	; 195
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0xe1	; 225
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x87	; 135
	.db #0xe0	; 224
	.db #0x0f	; 15
	.db #0xc3	; 195
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0xe1	; 225
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0xf0	; 240
	.db #0xfc	; 252
	.db #0x01	; 1
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_game_grid_7:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0x3f	; 63
	.db #0x90	; 144
	.db #0x40	; 64
	.db #0x10	; 16
	.db #0x48	; 72	'H'
	.db #0x20	; 32
	.db #0x08	; 8
	.db #0x24	; 36
	.db #0x10	; 16
	.db #0x04	; 4
	.db #0x12	; 18
	.db #0x0b	; 11
	.db #0xfa	; 250
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0xfe	; 254
	.db #0x82	; 130
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0xa0	; 160
	.db #0xbf	; 191
	.db #0x90	; 144
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x48	; 72	'H'
	.db #0x2f	; 47
	.db #0xe8	; 232
	.db #0x24	; 36
	.db #0x10	; 16
	.db #0x04	; 4
	.db #0x12	; 18
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_game_grids:
	.dw _g_game_grid_1
	.dw _g_game_grid_2
	.dw _g_game_grid_3
	.dw _g_game_grid_2
	.dw _g_game_grid_5
	.dw _g_game_grid_2
	.dw _g_game_grid_7
	.dw _g_game_grid_2
	.area _INITIALIZER
	.area _CABS (ABS)
