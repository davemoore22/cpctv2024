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
   6735 AC 68                52 	.dw __str_7
   6737 C0 68                53 	.dw __str_8
   6739 C0 68                54 	.dw __str_8
   673B C1 68                55 	.dw __str_9
   673D C4 68                56 	.dw __str_10
   673F C7 68                57 	.dw __str_11
   6741 CA 68                58 	.dw __str_12
   6743 CD 68                59 	.dw __str_13
   6745 D0 68                60 	.dw __str_14
   6747 D3 68                61 	.dw __str_15
   6749 E1 68                62 	.dw __str_16
   674B F2 68                63 	.dw __str_17
   674D 00 69                64 	.dw __str_18
   674F 12 69                65 	.dw __str_19
   6751 1C 69                66 	.dw __str_20
   6753 C0 68                67 	.dw __str_8
   6755 C0 68                68 	.dw __str_8
   6757 C0 68                69 	.dw __str_8
   6759 C0 68                70 	.dw __str_8
   675B C0 68                71 	.dw __str_8
   675D 21 69                72 	.dw __str_21
   675F 2C 69                73 	.dw __str_22
   6761 37 69                74 	.dw __str_23
   6763 4B 69                75 	.dw __str_24
   6765 6A 69                76 	.dw __str_25
   6767 85 69                77 	.dw __str_26
   6769 A5 69                78 	.dw __str_27
   676B C3 69                79 	.dw __str_28
   676D C0 68                80 	.dw __str_8
   676F DB 69                81 	.dw __str_29
   6771 FA 69                82 	.dw __str_30
   6773 18 6A                83 	.dw __str_31
   6775 34 6A                84 	.dw __str_32
   6777 52 6A                85 	.dw __str_33
   6779 72 6A                86 	.dw __str_34
   677B 8C 6A                87 	.dw __str_35
   677D A7 6A                88 	.dw __str_36
   677F C0 68                89 	.dw __str_8
   6781 C0 68                90 	.dw __str_8
   6783 C0 68                91 	.dw __str_8
   6785 C0 68                92 	.dw __str_8
   6787 BC 6A                93 	.dw __str_37
   6789 C9 6A                94 	.dw __str_38
   678B D3 68                95 	.dw __str_15
   678D D7 6A                96 	.dw __str_39
   678F DB 6A                97 	.dw __str_40
   6791 E1 6A                98 	.dw __str_41
   6793 E6 6A                99 	.dw __str_42
   6795 ED 6A               100 	.dw __str_43
   6797 F4 6A               101 	.dw __str_44
   6799 0E 6B               102 	.dw __str_45
   679B 28 6B               103 	.dw __str_46
   679D 42 6B               104 	.dw __str_47
   679F 5C 6B               105 	.dw __str_48
   67A1 76 6B               106 	.dw __str_49
   67A3 90 6B               107 	.dw __str_50
   67A5 96 6B               108 	.dw __str_51
   67A7 9C 6B               109 	.dw __str_52
   67A9 A2 6B               110 	.dw __str_53
   67AB A8 6B               111 	.dw __str_54
   67AD C0 68               112 	.dw __str_8
   67AF C0 68               113 	.dw __str_8
   67B1 C0 68               114 	.dw __str_8
   67B3 B8 6B               115 	.dw __str_55
   67B5 BE 6B               116 	.dw __str_56
   67B7 C3 6B               117 	.dw __str_57
   67B9 CE 6B               118 	.dw __str_58
   67BB D9 6B               119 	.dw __str_59
   67BD EA 6B               120 	.dw __str_60
   67BF C0 68               121 	.dw __str_8
   67C1 C0 68               122 	.dw __str_8
   67C3 C0 68               123 	.dw __str_8
   67C5 C0 68               124 	.dw __str_8
   67C7 2C 69               125 	.dw __str_22
   67C9 02 6C               126 	.dw __str_61
   67CB 06 6C               127 	.dw __str_62
   67CD 0A 6C               128 	.dw __str_63
   67CF 0E 6C               129 	.dw __str_64
   67D1 12 6C               130 	.dw __str_65
   67D3 14 6C               131 	.dw __str_66
   67D5 C0 68               132 	.dw __str_8
   67D7 C0 68               133 	.dw __str_8
   67D9 C0 68               134 	.dw __str_8
   67DB 17 6C               135 	.dw __str_67
   67DD 25 6C               136 	.dw __str_68
   67DF 2C 6C               137 	.dw __str_69
   67E1 38 6C               138 	.dw __str_70
   67E3 45 6C               139 	.dw __str_71
   67E5 52 6C               140 	.dw __str_72
   67E7 C0 68               141 	.dw __str_8
   67E9 C0 68               142 	.dw __str_8
   67EB C0 68               143 	.dw __str_8
   67ED C0 68               144 	.dw __str_8
   67EF D9 6B               145 	.dw __str_59
   67F1 64 6C               146 	.dw __str_73
   67F3 84 6C               147 	.dw __str_74
   67F5 99 6C               148 	.dw __str_75
   67F7 C0 68               149 	.dw __str_8
   67F9 C0 68               150 	.dw __str_8
   67FB C0 68               151 	.dw __str_8
   67FD C0 68               152 	.dw __str_8
   67FF C0 68               153 	.dw __str_8
   6801 C0 68               154 	.dw __str_8
   6803 9D 6C               155 	.dw __str_76
   6805 AA 6C               156 	.dw __str_77
   6807 B6 6C               157 	.dw __str_78
   6809 C4 6C               158 	.dw __str_79
   680B D0 6C               159 	.dw __str_80
   680D DC 6C               160 	.dw __str_81
   680F E9 6C               161 	.dw __str_82
   6811 F4 6C               162 	.dw __str_83
   6813 02 6D               163 	.dw __str_84
   6815 0E 6D               164 	.dw __str_85
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
   68A0 4A 55 4C 49 41 4E   184 	.ascii "JULIAN NEVO"
        20 4E 45 56 4F
   68AB 00                  185 	.db 0x00
   68AC                     186 __str_7:
   68AC 4D 41 44 45 20 57   187 	.ascii "MADE WITH CPCTELERA"
        49 54 48 20 43 50
        43 54 45 4C 45 52
        41
   68BF 00                  188 	.db 0x00
   68C0                     189 __str_8:
   68C0 00                  190 	.db 0x00
   68C1                     191 __str_9:
   68C1 31 2E               192 	.ascii "1."
   68C3 00                  193 	.db 0x00
   68C4                     194 __str_10:
   68C4 32 2E               195 	.ascii "2."
   68C6 00                  196 	.db 0x00
   68C7                     197 __str_11:
   68C7 33 2E               198 	.ascii "3."
   68C9 00                  199 	.db 0x00
   68CA                     200 __str_12:
   68CA 34 2E               201 	.ascii "4."
   68CC 00                  202 	.db 0x00
   68CD                     203 __str_13:
   68CD 39 2E               204 	.ascii "9."
   68CF 00                  205 	.db 0x00
   68D0                     206 __str_14:
   68D0 30 2E               207 	.ascii "0."
   68D2 00                  208 	.db 0x00
   68D3                     209 __str_15:
   68D3 52 45 44 45 46 49   210 	.ascii "REDEFINE KEYS"
        4E 45 20 4B 45 59
        53
   68E0 00                  211 	.db 0x00
   68E1                     212 __str_16:
   68E1 4D 55 53 49 43 2F   213 	.ascii "MUSIC/SFX ON/OFF"
        53 46 58 20 4F 4E
        2F 4F 46 46
   68F1 00                  214 	.db 0x00
   68F2                     215 __str_17:
   68F2 53 48 4F 57 20 48   216 	.ascii "SHOW HISCORES"
        49 53 43 4F 52 45
        53
   68FF 00                  217 	.db 0x00
   6900                     218 __str_18:
   6900 56 49 45 57 20 49   219 	.ascii "VIEW INSTRUCTIONS"
        4E 53 54 52 55 43
        54 49 4F 4E 53
   6911 00                  220 	.db 0x00
   6912                     221 __str_19:
   6912 50 4C 41 59 20 47   222 	.ascii "PLAY GAME"
        41 4D 45
   691B 00                  223 	.db 0x00
   691C                     224 __str_20:
   691C 51 55 49 54         225 	.ascii "QUIT"
   6920 00                  226 	.db 0x00
   6921                     227 __str_21:
   6921 2E 2E 2E 2E 2E 2E   228 	.ascii ".........."
        2E 2E 2E 2E
   692B 00                  229 	.db 0x00
   692C                     230 __str_22:
   692C 30 30 30 30 30 30   231 	.ascii "0000000000"
        30 30 30 30
   6936 00                  232 	.db 0x00
   6937                     233 __str_23:
   6937 54 4F 44 41 59 27   234 	.ascii "TODAY'S HIGH SCORES"
        53 20 48 49 47 48
        20 53 43 4F 52 45
        53
   694A 00                  235 	.db 0x00
   694B                     236 __str_24:
   694B 59 4F 55 52 20 4D   237 	.ascii "YOUR MISSION AS CAPTAIN OF THE"
        49 53 53 49 4F 4E
        20 41 53 20 43 41
        50 54 41 49 4E 20
        4F 46 20 54 48 45
   6969 00                  238 	.db 0x00
   696A                     239 __str_25:
   696A 27 45 4C 49 4D 49   240 	.ascii "'ELIMINAX' IS TO ENTER THE"
        4E 41 58 27 20 49
        53 20 54 4F 20 45
        4E 54 45 52 20 54
        48 45
   6984 00                  241 	.db 0x00
   6985                     242 __str_26:
   6985 47 41 4C 41 43 54   243 	.ascii "GALACTIC GRID AND ELIMINATE THE"
        49 43 20 47 52 49
        44 20 41 4E 44 20
        45 4C 49 4D 49 4E
        41 54 45 20 54 48
        45
   69A4 00                  244 	.db 0x00
   69A5                     245 __str_27:
   69A5 41 4C 49 45 4E 20   246 	.ascii "ALIEN PODS, PASSING OVER THEM"
        50 4F 44 53 2C 20
        50 41 53 53 49 4E
        47 20 4F 56 45 52
        20 54 48 45 4D
   69C2 00                  247 	.db 0x00
   69C3                     248 __str_28:
   69C3 57 49 54 48 20 59   249 	.ascii "WITH YOUR RAYDON FIELD."
        4F 55 52 20 52 41
        59 44 4F 4E 20 46
        49 45 4C 44 2E
   69DA 00                  250 	.db 0x00
   69DB                     251 __str_29:
   69DB 54 48 45 20 47 55   252 	.ascii "THE GUARDIANS WILL TRY TO STOP"
        41 52 44 49 41 4E
        53 20 57 49 4C 4C
        20 54 52 59 20 54
        4F 20 53 54 4F 50
   69F9 00                  253 	.db 0x00
   69FA                     254 __str_30:
   69FA 59 4F 55 20 42 59   255 	.ascii "YOU BY FIRING ALONG BOTH AXES"
        20 46 49 52 49 4E
        47 20 41 4C 4F 4E
        47 20 42 4F 54 48
        20 41 58 45 53
   6A17 00                  256 	.db 0x00
   6A18                     257 __str_31:
   6A18 4F 46 20 54 48 45   258 	.ascii "OF THE GRID WITH LASERS AND"
        20 47 52 49 44 20
        57 49 54 48 20 4C
        41 53 45 52 53 20
        41 4E 44
   6A33 00                  259 	.db 0x00
   6A34                     260 __str_32:
   6A34 42 4C 41 53 54 45   261 	.ascii "BLASTERS. AS EACH POD AREA IS"
        52 53 2E 20 41 53
        20 45 41 43 48 20
        50 4F 44 20 41 52
        45 41 20 49 53
   6A51 00                  262 	.db 0x00
   6A52                     263 __str_33:
   6A52 43 4C 45 41 52 45   264 	.ascii "CLEARED YOU MOVE TO ANOTHER AND"
        44 20 59 4F 55 20
        4D 4F 56 45 20 54
        4F 20 41 4E 4F 54
        48 45 52 20 41 4E
        44
   6A71 00                  265 	.db 0x00
   6A72                     266 __str_34:
   6A72 54 48 45 20 47 55   267 	.ascii "THE GUARDIANS BECOME MORE"
        41 52 44 49 41 4E
        53 20 42 45 43 4F
        4D 45 20 4D 4F 52
        45
   6A8B 00                  268 	.db 0x00
   6A8C                     269 __str_35:
   6A8C 56 49 43 49 4F 55   270 	.ascii "VICIOUS IN THE ATTEMPTS TO"
        53 20 49 4E 20 54
        48 45 20 41 54 54
        45 4D 50 54 53 20
        54 4F
   6AA6 00                  271 	.db 0x00
   6AA7                     272 __str_36:
   6AA7 50 52 4F 54 45 43   273 	.ascii "PROTECT THEIR SPAWN!"
        54 20 54 48 45 49
        52 20 53 50 41 57
        4E 21
   6ABB 00                  274 	.db 0x00
   6ABC                     275 __str_37:
   6ABC 49 4E 53 54 52 55   276 	.ascii "INSTRUCTIONS"
        43 54 49 4F 4E 53
   6AC8 00                  277 	.db 0x00
   6AC9                     278 __str_38:
   6AC9 50 52 45 53 53 20   279 	.ascii "PRESS ANY KEY"
        41 4E 59 20 4B 45
        59
   6AD6 00                  280 	.db 0x00
   6AD7                     281 __str_39:
   6AD7 55 50 3A            282 	.ascii "UP:"
   6ADA 00                  283 	.db 0x00
   6ADB                     284 __str_40:
   6ADB 44 4F 57 4E 3A      285 	.ascii "DOWN:"
   6AE0 00                  286 	.db 0x00
   6AE1                     287 __str_41:
   6AE1 4C 45 46 54         288 	.ascii "LEFT"
   6AE5 00                  289 	.db 0x00
   6AE6                     290 __str_42:
   6AE6 52 49 47 48 54 3A   291 	.ascii "RIGHT:"
   6AEC 00                  292 	.db 0x00
   6AED                     293 __str_43:
   6AED 50 41 55 53 45 3A   294 	.ascii "PAUSE:"
   6AF3 00                  295 	.db 0x00
   6AF4                     296 __str_44:
   6AF4 20 20 50 52 45 53   297 	.ascii "  PRESS NEW KEY FOR UP:  "
        53 20 4E 45 57 20
        4B 45 59 20 46 4F
        52 20 55 50 3A 20
        20
   6B0D 00                  298 	.db 0x00
   6B0E                     299 __str_45:
   6B0E 20 50 52 45 53 53   300 	.ascii " PRESS NEW KEY FOR DOWN: "
        20 4E 45 57 20 4B
        45 59 20 46 4F 52
        20 44 4F 57 4E 3A
        20
   6B27 00                  301 	.db 0x00
   6B28                     302 __str_46:
   6B28 20 50 52 45 53 53   303 	.ascii " PRESS NEW KEY FOR LEFT: "
        20 4E 45 57 20 4B
        45 59 20 46 4F 52
        20 4C 45 46 54 3A
        20
   6B41 00                  304 	.db 0x00
   6B42                     305 __str_47:
   6B42 20 50 52 45 53 53   306 	.ascii " PRESS NEW KEY FOR RIGHT:"
        20 4E 45 57 20 4B
        45 59 20 46 4F 52
        20 52 49 47 48 54
        3A
   6B5B 00                  307 	.db 0x00
   6B5C                     308 __str_48:
   6B5C 20 50 52 45 53 53   309 	.ascii " PRESS NEW KEY FOR PAUSE:"
        20 4E 45 57 20 4B
        45 59 20 46 4F 52
        20 50 41 55 53 45
        3A
   6B75 00                  310 	.db 0x00
   6B76                     311 __str_49:
   6B76 20 20 20 20 20 20   312 	.ascii "                         "
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20
   6B8F 00                  313 	.db 0x00
   6B90                     314 __str_50:
   6B90 20 20 20 55 50      315 	.ascii "   UP"
   6B95 00                  316 	.db 0x00
   6B96                     317 __str_51:
   6B96 20 44 4F 57 4E      318 	.ascii " DOWN"
   6B9B 00                  319 	.db 0x00
   6B9C                     320 __str_52:
   6B9C 20 4C 45 46 54      321 	.ascii " LEFT"
   6BA1 00                  322 	.db 0x00
   6BA2                     323 __str_53:
   6BA2 52 49 47 48 54      324 	.ascii "RIGHT"
   6BA7 00                  325 	.db 0x00
   6BA8                     326 __str_54:
   6BA8 28 45 53 43 20 54   327 	.ascii "(ESC TO CANCEL)"
        4F 20 43 41 4E 43
        45 4C 29
   6BB7 00                  328 	.db 0x00
   6BB8                     329 __str_55:
   6BB8 52 4F 55 4E 44      330 	.ascii "ROUND"
   6BBD 00                  331 	.db 0x00
   6BBE                     332 __str_56:
   6BBE 47 52 49 44         333 	.ascii "GRID"
   6BC2 00                  334 	.db 0x00
   6BC3                     335 __str_57:
   6BC3 47 45 54 20 52 45   336 	.ascii "GET READY!"
        41 44 59 21
   6BCD 00                  337 	.db 0x00
   6BCE                     338 __str_58:
   6BCE 47 41 4D 45 20 4F   339 	.ascii "GAME OVER!"
        56 45 52 21
   6BD8 00                  340 	.db 0x00
   6BD9                     341 __str_59:
   6BD9 43 4F 4E 47 52 41   342 	.ascii "CONGRATULATIONS!"
        54 55 4C 41 54 49
        4F 4E 53 21
   6BE9 00                  343 	.db 0x00
   6BEA                     344 __str_60:
   6BEA 59 4F 55 20 48 41   345 	.ascii "YOU HAVE BEEN DEFEATED!"
        56 45 20 42 45 45
        4E 20 44 45 46 45
        41 54 45 44 21
   6C01 00                  346 	.db 0x00
   6C02                     347 __str_61:
   6C02 53 43 3A            348 	.ascii "SC:"
   6C05 00                  349 	.db 0x00
   6C06                     350 __str_62:
   6C06 48 49 3A            351 	.ascii "HI:"
   6C09 00                  352 	.db 0x00
   6C0A                     353 __str_63:
   6C0A 4C 49 3A            354 	.ascii "LI:"
   6C0D 00                  355 	.db 0x00
   6C0E                     356 __str_64:
   6C0E 4C 56 3A            357 	.ascii "LV:"
   6C11 00                  358 	.db 0x00
   6C12                     359 __str_65:
   6C12 2D                  360 	.ascii "-"
   6C13 00                  361 	.db 0x00
   6C14                     362 __str_66:
   6C14 30 30               363 	.ascii "00"
   6C16 00                  364 	.db 0x00
   6C17                     365 __str_67:
   6C17 47 52 49 44 20 43   366 	.ascii "GRID CLEAR!!!"
        4C 45 41 52 21 21
        21
   6C24 00                  367 	.db 0x00
   6C25                     368 __str_68:
   6C25 53 43 4F 52 45 3A   369 	.ascii "SCORE:"
   6C2B 00                  370 	.db 0x00
   6C2C                     371 __str_69:
   6C2C 54 49 4D 45 20 42   372 	.ascii "TIME BONUS:"
        4F 4E 55 53 3A
   6C37 00                  373 	.db 0x00
   6C38                     374 __str_70:
   6C38 54 4F 54 41 4C 20   375 	.ascii "TOTAL SCORE:"
        53 43 4F 52 45 3A
   6C44 00                  376 	.db 0x00
   6C45                     377 __str_71:
   6C45 47 41 4D 45 20 50   378 	.ascii "GAME PAUSED!"
        41 55 53 45 44 21
   6C51 00                  379 	.db 0x00
   6C52                     380 __str_72:
   6C52 53 50 41 43 45 20   381 	.ascii "SPACE TO CONTINUE"
        54 4F 20 43 4F 4E
        54 49 4E 55 45
   6C63 00                  382 	.db 0x00
   6C64                     383 __str_73:
   6C64 59 4F 55 20 48 41   384 	.ascii "YOU HAVE ACHIEVED A HIGH SCORE!"
        56 45 20 41 43 48
        49 45 56 45 44 20
        41 20 48 49 47 48
        20 53 43 4F 52 45
        21
   6C83 00                  385 	.db 0x00
   6C84                     386 __str_74:
   6C84 45 4E 54 45 52 20   387 	.ascii "ENTER YOUR INITIALS:"
        59 4F 55 52 20 49
        4E 49 54 49 41 4C
        53 3A
   6C98 00                  388 	.db 0x00
   6C99                     389 __str_75:
   6C99 2A 2A 2A            390 	.ascii "***"
   6C9C 00                  391 	.db 0x00
   6C9D                     392 __str_76:
   6C9D 20 20 57 45 4C 4C   393 	.ascii "  WELL DONE,"
        20 44 4F 4E 45 2C
   6CA9 00                  394 	.db 0x00
   6CAA                     395 __str_77:
   6CAA 20 20 20 43 41 50   396 	.ascii "   CAPTAIN!"
        54 41 49 4E 21
   6CB5 00                  397 	.db 0x00
   6CB6                     398 __str_78:
   6CB6 20 20 54 48 45 20   399 	.ascii "  THE ALIENS "
        41 4C 49 45 4E 53
        20
   6CC3 00                  400 	.db 0x00
   6CC4                     401 __str_79:
   6CC4 20 20 41 4E 44 20   402 	.ascii "  AND THEIR"
        54 48 45 49 52
   6CCF 00                  403 	.db 0x00
   6CD0                     404 __str_80:
   6CD0 20 20 53 50 41 57   405 	.ascii "  SPAWN ARE"
        4E 20 41 52 45
   6CDB 00                  406 	.db 0x00
   6CDC                     407 __str_81:
   6CDC 20 20 20 44 45 46   408 	.ascii "   DEFEATED!"
        45 41 54 45 44 21
   6CE8 00                  409 	.db 0x00
   6CE9                     410 __str_82:
   6CE9 20 20 42 55 54 20   411 	.ascii "  BUT THEY"
        54 48 45 59
   6CF3 00                  412 	.db 0x00
   6CF4                     413 __str_83:
   6CF4 57 49 4C 4C 20 42   414 	.ascii "WILL BE BACK!"
        45 20 42 41 43 4B
        21
   6D01 00                  415 	.db 0x00
   6D02                     416 __str_84:
   6D02 20 20 43 4F 4E 54   417 	.ascii "  CONTINUE?"
        49 4E 55 45 3F
   6D0D 00                  418 	.db 0x00
   6D0E                     419 __str_85:
   6D0E 20 20 20 20 28 59   420 	.ascii "    (Y/N)"
        2F 4E 29
   6D17 00                  421 	.db 0x00
                            422 	.area _INITIALIZER
                            423 	.area _CABS (ABS)
