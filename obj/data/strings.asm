;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module strings
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_strings
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
_g_strings:
	.dw __str_0
	.dw __str_1
	.dw __str_2
	.dw __str_3
	.dw __str_4
	.dw __str_5
	.dw __str_6
	.dw __str_7
	.dw __str_8
	.dw __str_8
	.dw __str_9
	.dw __str_10
	.dw __str_11
	.dw __str_12
	.dw __str_13
	.dw __str_14
	.dw __str_15
	.dw __str_16
	.dw __str_17
	.dw __str_18
	.dw __str_19
	.dw __str_20
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_21
	.dw __str_22
	.dw __str_23
	.dw __str_24
	.dw __str_25
	.dw __str_26
	.dw __str_27
	.dw __str_28
	.dw __str_8
	.dw __str_29
	.dw __str_30
	.dw __str_31
	.dw __str_32
	.dw __str_33
	.dw __str_34
	.dw __str_35
	.dw __str_36
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_37
	.dw __str_38
	.dw __str_15
	.dw __str_39
	.dw __str_40
	.dw __str_41
	.dw __str_42
	.dw __str_43
	.dw __str_44
	.dw __str_45
	.dw __str_46
	.dw __str_47
	.dw __str_48
	.dw __str_49
	.dw __str_50
	.dw __str_51
	.dw __str_52
	.dw __str_53
	.dw __str_54
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_55
	.dw __str_56
	.dw __str_57
	.dw __str_58
	.dw __str_59
	.dw __str_60
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_22
	.dw __str_61
	.dw __str_62
	.dw __str_63
	.dw __str_64
	.dw __str_65
	.dw __str_66
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_67
	.dw __str_68
	.dw __str_69
	.dw __str_70
	.dw __str_71
	.dw __str_72
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_59
	.dw __str_73
	.dw __str_74
	.dw __str_75
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_8
	.dw __str_76
	.dw __str_77
	.dw __str_78
	.dw __str_79
	.dw __str_80
	.dw __str_81
	.dw __str_82
	.dw __str_83
	.dw __str_84
	.dw __str_85
__str_0:
	.ascii "A REMAKE BY"
	.db 0x00
__str_1:
	.ascii "    DAVE MOORE (C) 2024   "
	.db 0x00
__str_2:
	.ascii "BASED ON TRANSVERSION BY"
	.db 0x00
__str_3:
	.ascii "C. F. URQUHART AND N. PIERPOINT"
	.db 0x00
__str_4:
	.ascii "(C) OCEAN SOFTWARE LTD 1983"
	.db 0x00
__str_5:
	.ascii "MUSIC/SFX BY"
	.db 0x00
__str_6:
	.ascii "JULIAN NEVO"
	.db 0x00
__str_7:
	.ascii "MADE WITH CPCTELERA"
	.db 0x00
__str_8:
	.db 0x00
__str_9:
	.ascii "1."
	.db 0x00
__str_10:
	.ascii "2."
	.db 0x00
__str_11:
	.ascii "3."
	.db 0x00
__str_12:
	.ascii "4."
	.db 0x00
__str_13:
	.ascii "9."
	.db 0x00
__str_14:
	.ascii "0."
	.db 0x00
__str_15:
	.ascii "REDEFINE KEYS"
	.db 0x00
__str_16:
	.ascii "MUSIC/SFX ON/OFF"
	.db 0x00
__str_17:
	.ascii "SHOW HISCORES"
	.db 0x00
__str_18:
	.ascii "VIEW INSTRUCTIONS"
	.db 0x00
__str_19:
	.ascii "PLAY GAME"
	.db 0x00
__str_20:
	.ascii "QUIT"
	.db 0x00
__str_21:
	.ascii ".........."
	.db 0x00
__str_22:
	.ascii "0000000000"
	.db 0x00
__str_23:
	.ascii "TODAY'S HIGH SCORES"
	.db 0x00
__str_24:
	.ascii "YOUR MISSION AS CAPTAIN OF THE"
	.db 0x00
__str_25:
	.ascii "'ELIMINAX' IS TO ENTER THE"
	.db 0x00
__str_26:
	.ascii "GALACTIC GRID AND ELIMINATE THE"
	.db 0x00
__str_27:
	.ascii "ALIEN PODS, PASSING OVER THEM"
	.db 0x00
__str_28:
	.ascii "WITH YOUR RAYDON FIELD."
	.db 0x00
__str_29:
	.ascii "THE GUARDIANS WILL TRY TO STOP"
	.db 0x00
__str_30:
	.ascii "YOU BY FIRING ALONG BOTH AXES"
	.db 0x00
__str_31:
	.ascii "OF THE GRID WITH LASERS AND"
	.db 0x00
__str_32:
	.ascii "BLASTERS. AS EACH POD AREA IS"
	.db 0x00
__str_33:
	.ascii "CLEARED YOU MOVE TO ANOTHER AND"
	.db 0x00
__str_34:
	.ascii "THE GUARDIANS BECOME MORE"
	.db 0x00
__str_35:
	.ascii "VICIOUS IN THE ATTEMPTS TO"
	.db 0x00
__str_36:
	.ascii "PROTECT THEIR SPAWN!"
	.db 0x00
__str_37:
	.ascii "INSTRUCTIONS"
	.db 0x00
__str_38:
	.ascii "PRESS ANY KEY"
	.db 0x00
__str_39:
	.ascii "UP:"
	.db 0x00
__str_40:
	.ascii "DOWN:"
	.db 0x00
__str_41:
	.ascii "LEFT"
	.db 0x00
__str_42:
	.ascii "RIGHT:"
	.db 0x00
__str_43:
	.ascii "PAUSE:"
	.db 0x00
__str_44:
	.ascii "  PRESS NEW KEY FOR UP:  "
	.db 0x00
__str_45:
	.ascii " PRESS NEW KEY FOR DOWN: "
	.db 0x00
__str_46:
	.ascii " PRESS NEW KEY FOR LEFT: "
	.db 0x00
__str_47:
	.ascii " PRESS NEW KEY FOR RIGHT:"
	.db 0x00
__str_48:
	.ascii " PRESS NEW KEY FOR PAUSE:"
	.db 0x00
__str_49:
	.ascii "                         "
	.db 0x00
__str_50:
	.ascii "   UP"
	.db 0x00
__str_51:
	.ascii " DOWN"
	.db 0x00
__str_52:
	.ascii " LEFT"
	.db 0x00
__str_53:
	.ascii "RIGHT"
	.db 0x00
__str_54:
	.ascii "(ESC TO CANCEL)"
	.db 0x00
__str_55:
	.ascii "ROUND"
	.db 0x00
__str_56:
	.ascii "GRID"
	.db 0x00
__str_57:
	.ascii "GET READY!"
	.db 0x00
__str_58:
	.ascii "GAME OVER!"
	.db 0x00
__str_59:
	.ascii "CONGRATULATIONS!"
	.db 0x00
__str_60:
	.ascii "YOU HAVE BEEN DEFEATED!"
	.db 0x00
__str_61:
	.ascii "SC:"
	.db 0x00
__str_62:
	.ascii "HI:"
	.db 0x00
__str_63:
	.ascii "LI:"
	.db 0x00
__str_64:
	.ascii "LV:"
	.db 0x00
__str_65:
	.ascii "-"
	.db 0x00
__str_66:
	.ascii "00"
	.db 0x00
__str_67:
	.ascii "GRID CLEAR!!!"
	.db 0x00
__str_68:
	.ascii "SCORE:"
	.db 0x00
__str_69:
	.ascii "TIME BONUS:"
	.db 0x00
__str_70:
	.ascii "TOTAL SCORE:"
	.db 0x00
__str_71:
	.ascii "GAME PAUSED!"
	.db 0x00
__str_72:
	.ascii "SPACE TO CONTINUE"
	.db 0x00
__str_73:
	.ascii "YOU HAVE ACHIEVED A HIGH SCORE!"
	.db 0x00
__str_74:
	.ascii "ENTER YOUR INITIALS:"
	.db 0x00
__str_75:
	.ascii "***"
	.db 0x00
__str_76:
	.ascii "  WELL DONE,"
	.db 0x00
__str_77:
	.ascii "   CAPTAIN!"
	.db 0x00
__str_78:
	.ascii "  THE ALIENS "
	.db 0x00
__str_79:
	.ascii "  AND THEIR"
	.db 0x00
__str_80:
	.ascii "  SPAWN ARE"
	.db 0x00
__str_81:
	.ascii "   DEFEATED!"
	.db 0x00
__str_82:
	.ascii "  BUT THEY"
	.db 0x00
__str_83:
	.ascii "WILL BE BACK!"
	.db 0x00
__str_84:
	.ascii "  CONTINUE?"
	.db 0x00
__str_85:
	.ascii "    (Y/N)"
	.db 0x00
	.area _INITIALIZER
	.area _CABS (ABS)
