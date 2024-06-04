                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module strings
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _g_strings
                             12 ;--------------------------------------------------------
                             13 ; special function registers
                             14 ;--------------------------------------------------------
                             15 ;--------------------------------------------------------
                             16 ; ram data
                             17 ;--------------------------------------------------------
                             18 	.area _DATA
                             19 ;--------------------------------------------------------
                             20 ; ram data
                             21 ;--------------------------------------------------------
                             22 	.area _INITIALIZED
                             23 ;--------------------------------------------------------
                             24 ; absolute external ram data
                             25 ;--------------------------------------------------------
                             26 	.area _DABS (ABS)
                             27 ;--------------------------------------------------------
                             28 ; global & static initialisations
                             29 ;--------------------------------------------------------
                             30 	.area _HOME
                             31 	.area _GSINIT
                             32 	.area _GSFINAL
                             33 	.area _GSINIT
                             34 ;--------------------------------------------------------
                             35 ; Home
                             36 ;--------------------------------------------------------
                             37 	.area _HOME
                             38 	.area _HOME
                             39 ;--------------------------------------------------------
                             40 ; code
                             41 ;--------------------------------------------------------
                             42 	.area _CODE
                             43 	.area _CODE
   6727                      44 _g_strings:
   6727 17 68                45 	.dw __str_0
   6729 23 68                46 	.dw __str_1
   672B 3E 68                47 	.dw __str_2
   672D 57 68                48 	.dw __str_3
   672F 77 68                49 	.dw __str_4
   6731 93 68                50 	.dw __str_5
   6733 A0 68                51 	.dw __str_6
   6735 A8 68                52 	.dw __str_7
   6737 BC 68                53 	.dw __str_8
   6739 BC 68                54 	.dw __str_8
   673B BD 68                55 	.dw __str_9
   673D C0 68                56 	.dw __str_10
   673F C3 68                57 	.dw __str_11
   6741 C6 68                58 	.dw __str_12
   6743 C9 68                59 	.dw __str_13
   6745 CC 68                60 	.dw __str_14
   6747 CF 68                61 	.dw __str_15
   6749 DD 68                62 	.dw __str_16
   674B EE 68                63 	.dw __str_17
   674D FC 68                64 	.dw __str_18
   674F 0E 69                65 	.dw __str_19
   6751 18 69                66 	.dw __str_20
   6753 BC 68                67 	.dw __str_8
   6755 BC 68                68 	.dw __str_8
   6757 BC 68                69 	.dw __str_8
   6759 BC 68                70 	.dw __str_8
   675B BC 68                71 	.dw __str_8
   675D 1D 69                72 	.dw __str_21
   675F 28 69                73 	.dw __str_22
   6761 33 69                74 	.dw __str_23
   6763 47 69                75 	.dw __str_24
   6765 66 69                76 	.dw __str_25
   6767 81 69                77 	.dw __str_26
   6769 A1 69                78 	.dw __str_27
   676B BF 69                79 	.dw __str_28
   676D BC 68                80 	.dw __str_8
   676F D7 69                81 	.dw __str_29
   6771 F6 69                82 	.dw __str_30
   6773 14 6A                83 	.dw __str_31
   6775 30 6A                84 	.dw __str_32
   6777 4E 6A                85 	.dw __str_33
   6779 6E 6A                86 	.dw __str_34
   677B 88 6A                87 	.dw __str_35
   677D A3 6A                88 	.dw __str_36
   677F BC 68                89 	.dw __str_8
   6781 BC 68                90 	.dw __str_8
   6783 BC 68                91 	.dw __str_8
   6785 BC 68                92 	.dw __str_8
   6787 B8 6A                93 	.dw __str_37
   6789 C5 6A                94 	.dw __str_38
   678B CF 68                95 	.dw __str_15
   678D D3 6A                96 	.dw __str_39
   678F D7 6A                97 	.dw __str_40
   6791 DD 6A                98 	.dw __str_41
   6793 E2 6A                99 	.dw __str_42
   6795 E9 6A               100 	.dw __str_43
   6797 F0 6A               101 	.dw __str_44
   6799 0A 6B               102 	.dw __str_45
   679B 24 6B               103 	.dw __str_46
   679D 3E 6B               104 	.dw __str_47
   679F 58 6B               105 	.dw __str_48
   67A1 72 6B               106 	.dw __str_49
   67A3 8C 6B               107 	.dw __str_50
   67A5 92 6B               108 	.dw __str_51
   67A7 98 6B               109 	.dw __str_52
   67A9 9E 6B               110 	.dw __str_53
   67AB A4 6B               111 	.dw __str_54
   67AD BC 68               112 	.dw __str_8
   67AF BC 68               113 	.dw __str_8
   67B1 BC 68               114 	.dw __str_8
   67B3 B4 6B               115 	.dw __str_55
   67B5 BA 6B               116 	.dw __str_56
   67B7 BF 6B               117 	.dw __str_57
   67B9 CA 6B               118 	.dw __str_58
   67BB D5 6B               119 	.dw __str_59
   67BD E6 6B               120 	.dw __str_60
   67BF BC 68               121 	.dw __str_8
   67C1 BC 68               122 	.dw __str_8
   67C3 BC 68               123 	.dw __str_8
   67C5 BC 68               124 	.dw __str_8
   67C7 28 69               125 	.dw __str_22
   67C9 FE 6B               126 	.dw __str_61
   67CB 02 6C               127 	.dw __str_62
   67CD 06 6C               128 	.dw __str_63
   67CF 0A 6C               129 	.dw __str_64
   67D1 0E 6C               130 	.dw __str_65
   67D3 10 6C               131 	.dw __str_66
   67D5 BC 68               132 	.dw __str_8
   67D7 BC 68               133 	.dw __str_8
   67D9 BC 68               134 	.dw __str_8
   67DB 13 6C               135 	.dw __str_67
   67DD 21 6C               136 	.dw __str_68
   67DF 28 6C               137 	.dw __str_69
   67E1 34 6C               138 	.dw __str_70
   67E3 41 6C               139 	.dw __str_71
   67E5 4E 6C               140 	.dw __str_72
   67E7 BC 68               141 	.dw __str_8
   67E9 BC 68               142 	.dw __str_8
   67EB BC 68               143 	.dw __str_8
   67ED BC 68               144 	.dw __str_8
   67EF D5 6B               145 	.dw __str_59
   67F1 60 6C               146 	.dw __str_73
   67F3 80 6C               147 	.dw __str_74
   67F5 95 6C               148 	.dw __str_75
   67F7 BC 68               149 	.dw __str_8
   67F9 BC 68               150 	.dw __str_8
   67FB BC 68               151 	.dw __str_8
   67FD BC 68               152 	.dw __str_8
   67FF BC 68               153 	.dw __str_8
   6801 BC 68               154 	.dw __str_8
   6803 99 6C               155 	.dw __str_76
   6805 A6 6C               156 	.dw __str_77
   6807 B2 6C               157 	.dw __str_78
   6809 C0 6C               158 	.dw __str_79
   680B CC 6C               159 	.dw __str_80
   680D D8 6C               160 	.dw __str_81
   680F E5 6C               161 	.dw __str_82
   6811 F0 6C               162 	.dw __str_83
   6813 FE 6C               163 	.dw __str_84
   6815 0A 6D               164 	.dw __str_85
   6817                     165 __str_0:
   6817 41 20 52 45 4D 41   166 	.ascii "A REMAKE BY"
        4B 45 20 42 59
   6822 00                  167 	.db 0x00
   6823                     168 __str_1:
   6823 20 20 20 20 44 41   169 	.ascii "    DAVE MOORE (C) 2024   "
        56 45 20 4D 4F 4F
        52 45 20 28 43 29
        20 32 30 32 34 20
        20 20
   683D 00                  170 	.db 0x00
   683E                     171 __str_2:
   683E 42 41 53 45 44 20   172 	.ascii "BASED ON TRANSVERSION BY"
        4F 4E 20 54 52 41
        4E 53 56 45 52 53
        49 4F 4E 20 42 59
   6856 00                  173 	.db 0x00
   6857                     174 __str_3:
   6857 43 2E 20 46 2E 20   175 	.ascii "C. F. URQUHART AND N. PIERPOINT"
        55 52 51 55 48 41
        52 54 20 41 4E 44
        20 4E 2E 20 50 49
        45 52 50 4F 49 4E
        54
   6876 00                  176 	.db 0x00
   6877                     177 __str_4:
   6877 28 43 29 20 4F 43   178 	.ascii "(C) OCEAN SOFTWARE LTD 1983"
        45 41 4E 20 53 4F
        46 54 57 41 52 45
        20 4C 54 44 20 31
        39 38 33
   6892 00                  179 	.db 0x00
   6893                     180 __str_5:
   6893 4D 55 53 49 43 2F   181 	.ascii "MUSIC/SFX BY"
        53 46 58 20 42 59
   689F 00                  182 	.db 0x00
   68A0                     183 __str_6:
   68A0 54 41 52 47 48 41   184 	.ascii "TARGHAN"
        4E
   68A7 00                  185 	.db 0x00
   68A8                     186 __str_7:
   68A8 4D 41 44 45 20 57   187 	.ascii "MADE WITH CPCTELERA"
        49 54 48 20 43 50
        43 54 45 4C 45 52
        41
   68BB 00                  188 	.db 0x00
   68BC                     189 __str_8:
   68BC 00                  190 	.db 0x00
   68BD                     191 __str_9:
   68BD 31 2E               192 	.ascii "1."
   68BF 00                  193 	.db 0x00
   68C0                     194 __str_10:
   68C0 32 2E               195 	.ascii "2."
   68C2 00                  196 	.db 0x00
   68C3                     197 __str_11:
   68C3 33 2E               198 	.ascii "3."
   68C5 00                  199 	.db 0x00
   68C6                     200 __str_12:
   68C6 34 2E               201 	.ascii "4."
   68C8 00                  202 	.db 0x00
   68C9                     203 __str_13:
   68C9 39 2E               204 	.ascii "9."
   68CB 00                  205 	.db 0x00
   68CC                     206 __str_14:
   68CC 30 2E               207 	.ascii "0."
   68CE 00                  208 	.db 0x00
   68CF                     209 __str_15:
   68CF 52 45 44 45 46 49   210 	.ascii "REDEFINE KEYS"
        4E 45 20 4B 45 59
        53
   68DC 00                  211 	.db 0x00
   68DD                     212 __str_16:
   68DD 4D 55 53 49 43 2F   213 	.ascii "MUSIC/SFX ON/OFF"
        53 46 58 20 4F 4E
        2F 4F 46 46
   68ED 00                  214 	.db 0x00
   68EE                     215 __str_17:
   68EE 53 48 4F 57 20 48   216 	.ascii "SHOW HISCORES"
        49 53 43 4F 52 45
        53
   68FB 00                  217 	.db 0x00
   68FC                     218 __str_18:
   68FC 56 49 45 57 20 49   219 	.ascii "VIEW INSTRUCTIONS"
        4E 53 54 52 55 43
        54 49 4F 4E 53
   690D 00                  220 	.db 0x00
   690E                     221 __str_19:
   690E 50 4C 41 59 20 47   222 	.ascii "PLAY GAME"
        41 4D 45
   6917 00                  223 	.db 0x00
   6918                     224 __str_20:
   6918 51 55 49 54         225 	.ascii "QUIT"
   691C 00                  226 	.db 0x00
   691D                     227 __str_21:
   691D 2E 2E 2E 2E 2E 2E   228 	.ascii ".........."
        2E 2E 2E 2E
   6927 00                  229 	.db 0x00
   6928                     230 __str_22:
   6928 30 30 30 30 30 30   231 	.ascii "0000000000"
        30 30 30 30
   6932 00                  232 	.db 0x00
   6933                     233 __str_23:
   6933 54 4F 44 41 59 27   234 	.ascii "TODAY'S HIGH SCORES"
        53 20 48 49 47 48
        20 53 43 4F 52 45
        53
   6946 00                  235 	.db 0x00
   6947                     236 __str_24:
   6947 59 4F 55 52 20 4D   237 	.ascii "YOUR MISSION AS CAPTAIN OF THE"
        49 53 53 49 4F 4E
        20 41 53 20 43 41
        50 54 41 49 4E 20
        4F 46 20 54 48 45
   6965 00                  238 	.db 0x00
   6966                     239 __str_25:
   6966 27 45 4C 49 4D 49   240 	.ascii "'ELIMINAX' IS TO ENTER THE"
        4E 41 58 27 20 49
        53 20 54 4F 20 45
        4E 54 45 52 20 54
        48 45
   6980 00                  241 	.db 0x00
   6981                     242 __str_26:
   6981 47 41 4C 41 43 54   243 	.ascii "GALACTIC GRID AND ELIMINATE THE"
        49 43 20 47 52 49
        44 20 41 4E 44 20
        45 4C 49 4D 49 4E
        41 54 45 20 54 48
        45
   69A0 00                  244 	.db 0x00
   69A1                     245 __str_27:
   69A1 41 4C 49 45 4E 20   246 	.ascii "ALIEN PODS, PASSING OVER THEM"
        50 4F 44 53 2C 20
        50 41 53 53 49 4E
        47 20 4F 56 45 52
        20 54 48 45 4D
   69BE 00                  247 	.db 0x00
   69BF                     248 __str_28:
   69BF 57 49 54 48 20 59   249 	.ascii "WITH YOUR RAYDON FIELD."
        4F 55 52 20 52 41
        59 44 4F 4E 20 46
        49 45 4C 44 2E
   69D6 00                  250 	.db 0x00
   69D7                     251 __str_29:
   69D7 54 48 45 20 47 55   252 	.ascii "THE GUARDIANS WILL TRY TO STOP"
        41 52 44 49 41 4E
        53 20 57 49 4C 4C
        20 54 52 59 20 54
        4F 20 53 54 4F 50
   69F5 00                  253 	.db 0x00
   69F6                     254 __str_30:
   69F6 59 4F 55 20 42 59   255 	.ascii "YOU BY FIRING ALONG BOTH AXES"
        20 46 49 52 49 4E
        47 20 41 4C 4F 4E
        47 20 42 4F 54 48
        20 41 58 45 53
   6A13 00                  256 	.db 0x00
   6A14                     257 __str_31:
   6A14 4F 46 20 54 48 45   258 	.ascii "OF THE GRID WITH LASERS AND"
        20 47 52 49 44 20
        57 49 54 48 20 4C
        41 53 45 52 53 20
        41 4E 44
   6A2F 00                  259 	.db 0x00
   6A30                     260 __str_32:
   6A30 42 4C 41 53 54 45   261 	.ascii "BLASTERS. AS EACH POD AREA IS"
        52 53 2E 20 41 53
        20 45 41 43 48 20
        50 4F 44 20 41 52
        45 41 20 49 53
   6A4D 00                  262 	.db 0x00
   6A4E                     263 __str_33:
   6A4E 43 4C 45 41 52 45   264 	.ascii "CLEARED YOU MOVE TO ANOTHER AND"
        44 20 59 4F 55 20
        4D 4F 56 45 20 54
        4F 20 41 4E 4F 54
        48 45 52 20 41 4E
        44
   6A6D 00                  265 	.db 0x00
   6A6E                     266 __str_34:
   6A6E 54 48 45 20 47 55   267 	.ascii "THE GUARDIANS BECOME MORE"
        41 52 44 49 41 4E
        53 20 42 45 43 4F
        4D 45 20 4D 4F 52
        45
   6A87 00                  268 	.db 0x00
   6A88                     269 __str_35:
   6A88 56 49 43 49 4F 55   270 	.ascii "VICIOUS IN THE ATTEMPTS TO"
        53 20 49 4E 20 54
        48 45 20 41 54 54
        45 4D 50 54 53 20
        54 4F
   6AA2 00                  271 	.db 0x00
   6AA3                     272 __str_36:
   6AA3 50 52 4F 54 45 43   273 	.ascii "PROTECT THEIR SPAWN!"
        54 20 54 48 45 49
        52 20 53 50 41 57
        4E 21
   6AB7 00                  274 	.db 0x00
   6AB8                     275 __str_37:
   6AB8 49 4E 53 54 52 55   276 	.ascii "INSTRUCTIONS"
        43 54 49 4F 4E 53
   6AC4 00                  277 	.db 0x00
   6AC5                     278 __str_38:
   6AC5 50 52 45 53 53 20   279 	.ascii "PRESS ANY KEY"
        41 4E 59 20 4B 45
        59
   6AD2 00                  280 	.db 0x00
   6AD3                     281 __str_39:
   6AD3 55 50 3A            282 	.ascii "UP:"
   6AD6 00                  283 	.db 0x00
   6AD7                     284 __str_40:
   6AD7 44 4F 57 4E 3A      285 	.ascii "DOWN:"
   6ADC 00                  286 	.db 0x00
   6ADD                     287 __str_41:
   6ADD 4C 45 46 54         288 	.ascii "LEFT"
   6AE1 00                  289 	.db 0x00
   6AE2                     290 __str_42:
   6AE2 52 49 47 48 54 3A   291 	.ascii "RIGHT:"
   6AE8 00                  292 	.db 0x00
   6AE9                     293 __str_43:
   6AE9 50 41 55 53 45 3A   294 	.ascii "PAUSE:"
   6AEF 00                  295 	.db 0x00
   6AF0                     296 __str_44:
   6AF0 20 20 50 52 45 53   297 	.ascii "  PRESS NEW KEY FOR UP:  "
        53 20 4E 45 57 20
        4B 45 59 20 46 4F
        52 20 55 50 3A 20
        20
   6B09 00                  298 	.db 0x00
   6B0A                     299 __str_45:
   6B0A 20 50 52 45 53 53   300 	.ascii " PRESS NEW KEY FOR DOWN: "
        20 4E 45 57 20 4B
        45 59 20 46 4F 52
        20 44 4F 57 4E 3A
        20
   6B23 00                  301 	.db 0x00
   6B24                     302 __str_46:
   6B24 20 50 52 45 53 53   303 	.ascii " PRESS NEW KEY FOR LEFT: "
        20 4E 45 57 20 4B
        45 59 20 46 4F 52
        20 4C 45 46 54 3A
        20
   6B3D 00                  304 	.db 0x00
   6B3E                     305 __str_47:
   6B3E 20 50 52 45 53 53   306 	.ascii " PRESS NEW KEY FOR RIGHT:"
        20 4E 45 57 20 4B
        45 59 20 46 4F 52
        20 52 49 47 48 54
        3A
   6B57 00                  307 	.db 0x00
   6B58                     308 __str_48:
   6B58 20 50 52 45 53 53   309 	.ascii " PRESS NEW KEY FOR PAUSE:"
        20 4E 45 57 20 4B
        45 59 20 46 4F 52
        20 50 41 55 53 45
        3A
   6B71 00                  310 	.db 0x00
   6B72                     311 __str_49:
   6B72 20 20 20 20 20 20   312 	.ascii "                         "
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20
   6B8B 00                  313 	.db 0x00
   6B8C                     314 __str_50:
   6B8C 20 20 20 55 50      315 	.ascii "   UP"
   6B91 00                  316 	.db 0x00
   6B92                     317 __str_51:
   6B92 20 44 4F 57 4E      318 	.ascii " DOWN"
   6B97 00                  319 	.db 0x00
   6B98                     320 __str_52:
   6B98 20 4C 45 46 54      321 	.ascii " LEFT"
   6B9D 00                  322 	.db 0x00
   6B9E                     323 __str_53:
   6B9E 52 49 47 48 54      324 	.ascii "RIGHT"
   6BA3 00                  325 	.db 0x00
   6BA4                     326 __str_54:
   6BA4 28 45 53 43 20 54   327 	.ascii "(ESC TO CANCEL)"
        4F 20 43 41 4E 43
        45 4C 29
   6BB3 00                  328 	.db 0x00
   6BB4                     329 __str_55:
   6BB4 52 4F 55 4E 44      330 	.ascii "ROUND"
   6BB9 00                  331 	.db 0x00
   6BBA                     332 __str_56:
   6BBA 47 52 49 44         333 	.ascii "GRID"
   6BBE 00                  334 	.db 0x00
   6BBF                     335 __str_57:
   6BBF 47 45 54 20 52 45   336 	.ascii "GET READY!"
        41 44 59 21
   6BC9 00                  337 	.db 0x00
   6BCA                     338 __str_58:
   6BCA 47 41 4D 45 20 4F   339 	.ascii "GAME OVER!"
        56 45 52 21
   6BD4 00                  340 	.db 0x00
   6BD5                     341 __str_59:
   6BD5 43 4F 4E 47 52 41   342 	.ascii "CONGRATULATIONS!"
        54 55 4C 41 54 49
        4F 4E 53 21
   6BE5 00                  343 	.db 0x00
   6BE6                     344 __str_60:
   6BE6 59 4F 55 20 48 41   345 	.ascii "YOU HAVE BEEN DEFEATED!"
        56 45 20 42 45 45
        4E 20 44 45 46 45
        41 54 45 44 21
   6BFD 00                  346 	.db 0x00
   6BFE                     347 __str_61:
   6BFE 53 43 3A            348 	.ascii "SC:"
   6C01 00                  349 	.db 0x00
   6C02                     350 __str_62:
   6C02 48 49 3A            351 	.ascii "HI:"
   6C05 00                  352 	.db 0x00
   6C06                     353 __str_63:
   6C06 4C 49 3A            354 	.ascii "LI:"
   6C09 00                  355 	.db 0x00
   6C0A                     356 __str_64:
   6C0A 4C 56 3A            357 	.ascii "LV:"
   6C0D 00                  358 	.db 0x00
   6C0E                     359 __str_65:
   6C0E 2D                  360 	.ascii "-"
   6C0F 00                  361 	.db 0x00
   6C10                     362 __str_66:
   6C10 30 30               363 	.ascii "00"
   6C12 00                  364 	.db 0x00
   6C13                     365 __str_67:
   6C13 47 52 49 44 20 43   366 	.ascii "GRID CLEAR!!!"
        4C 45 41 52 21 21
        21
   6C20 00                  367 	.db 0x00
   6C21                     368 __str_68:
   6C21 53 43 4F 52 45 3A   369 	.ascii "SCORE:"
   6C27 00                  370 	.db 0x00
   6C28                     371 __str_69:
   6C28 54 49 4D 45 20 42   372 	.ascii "TIME BONUS:"
        4F 4E 55 53 3A
   6C33 00                  373 	.db 0x00
   6C34                     374 __str_70:
   6C34 54 4F 54 41 4C 20   375 	.ascii "TOTAL SCORE:"
        53 43 4F 52 45 3A
   6C40 00                  376 	.db 0x00
   6C41                     377 __str_71:
   6C41 47 41 4D 45 20 50   378 	.ascii "GAME PAUSED!"
        41 55 53 45 44 21
   6C4D 00                  379 	.db 0x00
   6C4E                     380 __str_72:
   6C4E 53 50 41 43 45 20   381 	.ascii "SPACE TO CONTINUE"
        54 4F 20 43 4F 4E
        54 49 4E 55 45
   6C5F 00                  382 	.db 0x00
   6C60                     383 __str_73:
   6C60 59 4F 55 20 48 41   384 	.ascii "YOU HAVE ACHIEVED A HIGH SCORE!"
        56 45 20 41 43 48
        49 45 56 45 44 20
        41 20 48 49 47 48
        20 53 43 4F 52 45
        21
   6C7F 00                  385 	.db 0x00
   6C80                     386 __str_74:
   6C80 45 4E 54 45 52 20   387 	.ascii "ENTER YOUR INITIALS:"
        59 4F 55 52 20 49
        4E 49 54 49 41 4C
        53 3A
   6C94 00                  388 	.db 0x00
   6C95                     389 __str_75:
   6C95 2A 2A 2A            390 	.ascii "***"
   6C98 00                  391 	.db 0x00
   6C99                     392 __str_76:
   6C99 20 20 57 45 4C 4C   393 	.ascii "  WELL DONE,"
        20 44 4F 4E 45 2C
   6CA5 00                  394 	.db 0x00
   6CA6                     395 __str_77:
   6CA6 20 20 20 43 41 50   396 	.ascii "   CAPTAIN!"
        54 41 49 4E 21
   6CB1 00                  397 	.db 0x00
   6CB2                     398 __str_78:
   6CB2 20 20 54 48 45 20   399 	.ascii "  THE ALIENS "
        41 4C 49 45 4E 53
        20
   6CBF 00                  400 	.db 0x00
   6CC0                     401 __str_79:
   6CC0 20 20 41 4E 44 20   402 	.ascii "  AND THEIR"
        54 48 45 49 52
   6CCB 00                  403 	.db 0x00
   6CCC                     404 __str_80:
   6CCC 20 20 53 50 41 57   405 	.ascii "  SPAWN ARE"
        4E 20 41 52 45
   6CD7 00                  406 	.db 0x00
   6CD8                     407 __str_81:
   6CD8 20 20 20 44 45 46   408 	.ascii "   DEFEATED!"
        45 41 54 45 44 21
   6CE4 00                  409 	.db 0x00
   6CE5                     410 __str_82:
   6CE5 20 20 42 55 54 20   411 	.ascii "  BUT THEY"
        54 48 45 59
   6CEF 00                  412 	.db 0x00
   6CF0                     413 __str_83:
   6CF0 57 49 4C 4C 20 42   414 	.ascii "WILL BE BACK!"
        45 20 42 41 43 4B
        21
   6CFD 00                  415 	.db 0x00
   6CFE                     416 __str_84:
   6CFE 20 20 43 4F 4E 54   417 	.ascii "  CONTINUE?"
        49 4E 55 45 3F
   6D09 00                  418 	.db 0x00
   6D0A                     419 __str_85:
   6D0A 20 20 20 20 28 59   420 	.ascii "    (Y/N)"
        2F 4E 29
   6D13 00                  421 	.db 0x00
                            422 	.area _INITIALIZER
                            423 	.area _CABS (ABS)
