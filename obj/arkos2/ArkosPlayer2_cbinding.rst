ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 ;;-----------------------------LICENSE NOTICE------------------------------------
                              2 ;;  ArkosTracker 2 for CPCTelera
                              3 ;;  Copyright (C) 2020 Arnaud Bouche (@Arnaud6128)
                              4 ;;
                              5 ;;  This program is free software: you can redistribute it and/or modify
                              6 ;;  it under the terms of the GNU Lesser General Public License as published by
                              7 ;;  the Free Software Foundation, either version 3 of the License, or
                              8 ;;  (at your option) any later version.
                              9 ;;
                             10 ;;  This program is distributed in the hope that it will be useful,
                             11 ;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
                             12 ;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
                             13 ;;  GNU Lesser General Public License for more details.
                             14 ;;
                             15 ;;  You should have received a copy of the GNU Lesser General Public License
                             16 ;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.
                             17 ;;-------------------------------------------------------------------------------
                             18 
                             19 .module arkos2
                             20 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                             21 .include "at2_files.asm"
                     0001     1 PLY_AKM_REGISTERS_OFFSETVOLUME = .+1
                     0001     2 PLY_AKM_DATA_OFFSETTRANSPOSITION = .+1
                     0001     3 PLY_AKM_OFFSET1B = .+1
                     0001     4 PLY_AKM_STOP_SOUNDS = .+1
                     0001     5 PLY_AKM_USE_HOOKS = .+1
   7E4A                       6 AHARMLESSGRENADE_START:
   7E4A                       7 _AHARMLESSGRENADE_START::
   7E4A 52 7E                 8 PLY_AKM_DATA_OFFSETWAITEMPTYCELL: .dw AHARMLESSGRENADE_INSTRUMENTINDEXES
                     0003     9 PLY_AKM_SOUNDEFFECTDATA_OFFSETCURRENTSTEP = .+1
   7E4C                      10 PLY_AKM_SOUNDEFFECTDATA_OFFSETINVERTEDVOLUME:
   7E4C                      11 PLY_AKM_OFFSET2B:
   7E4C 6B 7F                12 PLY_AKM_DATA_OFFSETPTSTARTTRACK: .dw AHARMLESSGRENADE_ARPEGGIOINDEXES-2
                     0005    13 PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODLSB = .+1
   7E4E                      14 PLY_AKM_SOUNDEFFECTDATA_OFFSETSPEED:
   7E4E 7F 7F                15 PLY_AKM_DATA_OFFSETPTTRACK: .dw AHARMLESSGRENADE_PITCHINDEXES-2
                     0007    16 PLY_AKM_DATA_OFFSETESCAPENOTE = .+1
   7E50 8B 7F                17 PLY_AKM_DATA_OFFSETBASENOTE: .dw AHARMLESSGRENADE_SUBSONG0
                     0009    18 PLY_AKM_DATA_OFFSETESCAPEWAIT = .+1
                     0009    19 PLY_AKM_DATA_OFFSETSECONDARYINSTRUMENT = .+1
                     0009    20 PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODMSB = .+1
   7E52                      21 AHARMLESSGRENADE_INSTRUMENTINDEXES:
   7E52                      22 PLY_AKM_CHANNEL_SOUNDEFFECTDATASIZE:
   7E52 7A 7E                23 PLY_AKM_DATA_OFFSETESCAPEINSTRUMENT: .dw AHARMLESSGRENADE_INSTRUMENT0
   7E54 7F 7E                24 PLY_AKM_DATA_OFFSETPTINSTRUMENT: .dw AHARMLESSGRENADE_INSTRUMENT1
                     000D    25 PLY_AKM_DATA_OFFSETINSTRUMENTSPEED = .+1
   7E56 91 7E                26 PLY_AKM_DATA_OFFSETINSTRUMENTCURRENTSTEP: .dw AHARMLESSGRENADE_INSTRUMENT2
                     000F    27 PLY_AKM_DATA_OFFSETISPITCHUPDOWNUSED = .+1
   7E58 AF 7E                28 PLY_AKM_DATA_OFFSETTRACKINVERTEDVOLUME: .dw AHARMLESSGRENADE_INSTRUMENT3
   7E5A B9 7E                29 PLY_AKM_DATA_OFFSETTRACKPITCHINTEGER: .dw AHARMLESSGRENADE_INSTRUMENT4
                     0013    30 PLY_AKM_DATA_OFFSETTRACKPITCHSPEED = .+1
   7E5C C1 7E                31 PLY_AKM_DATA_OFFSETTRACKPITCHDECIMAL: .dw AHARMLESSGRENADE_INSTRUMENT5
                     0015    32 PLY_AKM_DATA_OFFSETISARPEGGIOTABLEUSED = .+1
   7E5E CB 7E                33     .dw AHARMLESSGRENADE_INSTRUMENT6
   7E60 D1 7E                34 PLY_AKM_DATA_OFFSETPTARPEGGIOTABLE: .dw AHARMLESSGRENADE_INSTRUMENT7
                     0019    35 PLY_AKM_DATA_OFFSETARPEGGIOCURRENTSTEP = .+1
   7E62 E3 7E                36 PLY_AKM_DATA_OFFSETPTARPEGGIOOFFSET: .dw AHARMLESSGRENADE_INSTRUMENT8
                     001B    37 PLY_AKM_DATA_OFFSETCURRENTARPEGGIOVALUE = .+1
   7E64 E8 7E                38 PLY_AKM_DATA_OFFSETARPEGGIOORIGINALSPEED: .dw AHARMLESSGRENADE_INSTRUMENT9
                     001D    39 PLY_AKM_DATA_OFFSETPTPITCHTABLE = .+1
   7E66 01 7F                40 PLY_AKM_DATA_OFFSETISPITCHTABLEUSED: .dw AHARMLESSGRENADE_INSTRUMENT10
                     001F    41 PLY_AKM_DATA_OFFSETPTPITCHOFFSET = .+1
   7E68 06 7F                42     .dw AHARMLESSGRENADE_INSTRUMENT11
                     0021    43 PLY_AKM_DATA_OFFSETPITCHORIGINALSPEED = .+1
   7E6A 0F 7F                44 PLY_AKM_DATA_OFFSETPITCHCURRENTSTEP: .dw AHARMLESSGRENADE_INSTRUMENT12
   7E6C 14 7F                45 PLY_AKM_DATA_OFFSETCURRENTPITCHTABLEVALUE: .dw AHARMLESSGRENADE_INSTRUMENT13
   7E6E 19 7F                46 PLY_AKM_TRACK1_DATA_SIZE: .dw AHARMLESSGRENADE_INSTRUMENT14
   7E70 1E 7F                47     .dw AHARMLESSGRENADE_INSTRUMENT15
   7E72 35 7F                48     .dw AHARMLESSGRENADE_INSTRUMENT16
   7E74 43 7F                49     .dw AHARMLESSGRENADE_INSTRUMENT17
   7E76 51 7F                50     .dw AHARMLESSGRENADE_INSTRUMENT18
   7E78 5F 7F                51     .dw AHARMLESSGRENADE_INSTRUMENT19
   7E7A FF                   52 AHARMLESSGRENADE_INSTRUMENT0: .db 255
   7E7B 00                   53 AHARMLESSGRENADE_INSTRUMENT0LOOP: .db 0
   7E7C 04                   54     .db 4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



   7E7D 7B 7E                55     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7E7F 01                   56 AHARMLESSGRENADE_INSTRUMENT1: .db 1
   7E80 D2                   57     .db 210
   7E81 0C                   58     .db 12
   7E82 B2                   59     .db 178
   7E83 0C                   60     .db 12
   7E84 B2                   61     .db 178
   7E85 0C                   62     .db 12
   7E86 52                   63     .db 82
   7E87 A9                   64     .db 169
   7E88 18                   65     .db 24
   7E89 29                   66     .db 41
   7E8A A9                   67     .db 169
   7E8B 18                   68     .db 24
   7E8C 25                   69     .db 37
   7E8D 21                   70     .db 33
   7E8E 04                   71     .db 4
   7E8F 7B 7E                72     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7E91 00                   73 AHARMLESSGRENADE_INSTRUMENT2: .db 0
   7E92 BD                   74     .db 189
   7E93 01                   75     .db 1
   7E94 02                   76     .db 2
   7E95 FD                   77     .db 253
   7E96 01                   78     .db 1
   7E97 01                   79     .db 1
   7E98 20                   80     .db 32
   7E99 00                   81     .db 0
   7E9A 7D                   82     .db 125
   7E9B 30                   83     .db 48
   7E9C 00                   84     .db 0
   7E9D 7D                   85     .db 125
   7E9E 44                   86     .db 68
   7E9F 00                   87     .db 0
   7EA0 7D                   88     .db 125
   7EA1 74                   89     .db 116
   7EA2 00                   90     .db 0
   7EA3 7D                   91     .db 125
   7EA4 E4                   92     .db 228
   7EA5 00                   93     .db 0
   7EA6 79                   94     .db 121
   7EA7 B4                   95     .db 180
   7EA8 00                   96     .db 0
   7EA9 75                   97     .db 117
   7EAA 24                   98     .db 36
   7EAB 01                   99     .db 1
   7EAC 04                  100     .db 4
   7EAD 7B 7E               101     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7EAF 00                  102 AHARMLESSGRENADE_INSTRUMENT3: .db 0
   7EB0 F8                  103     .db 248
   7EB1 01                  104     .db 1
   7EB2 D8                  105     .db 216
   7EB3 01                  106     .db 1
   7EB4 B8                  107     .db 184
   7EB5 01                  108     .db 1
   7EB6 04                  109     .db 4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



   7EB7 7B 7E               110     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7EB9 00                  111 AHARMLESSGRENADE_INSTRUMENT4: .db 0
   7EBA F8                  112     .db 248
   7EBB 04                  113     .db 4
   7EBC C8                  114     .db 200
   7EBD 01                  115     .db 1
   7EBE 04                  116     .db 4
   7EBF 7B 7E               117     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7EC1 00                  118 AHARMLESSGRENADE_INSTRUMENT5: .db 0
   7EC2 F8                  119 AHARMLESSGRENADE_INSTRUMENT5LOOP: .db 248
   7EC3 01                  120     .db 1
   7EC4 C8                  121     .db 200
   7EC5 01                  122     .db 1
   7EC6 B0                  123     .db 176
   7EC7 01                  124     .db 1
   7EC8 04                  125     .db 4
   7EC9 C2 7E               126     .dw AHARMLESSGRENADE_INSTRUMENT5LOOP
   7ECB 03                  127 AHARMLESSGRENADE_INSTRUMENT6: .db 3
   7ECC F8                  128     .db 248
   7ECD 01                  129     .db 1
   7ECE 04                  130     .db 4
   7ECF 7B 7E               131     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7ED1 02                  132 AHARMLESSGRENADE_INSTRUMENT7: .db 2
   7ED2 3D                  133     .db 61
   7ED3 35                  134     .db 53
   7ED4 31                  135     .db 49
   7ED5 2D                  136     .db 45
   7ED6 29                  137     .db 41
   7ED7 25                  138     .db 37
   7ED8 21                  139     .db 33
   7ED9 1D                  140     .db 29
   7EDA 19                  141     .db 25
   7EDB 15                  142     .db 21
   7EDC 11                  143     .db 17
   7EDD 0D                  144     .db 13
   7EDE 09                  145     .db 9
   7EDF 05                  146     .db 5
   7EE0 04                  147     .db 4
   7EE1 7B 7E               148     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7EE3 00                  149 AHARMLESSGRENADE_INSTRUMENT8: .db 0
   7EE4 4A                  150 AHARMLESSGRENADE_INSTRUMENT8LOOP: .db 74
   7EE5 04                  151     .db 4
   7EE6 E4 7E               152     .dw AHARMLESSGRENADE_INSTRUMENT8LOOP
   7EE8 00                  153 AHARMLESSGRENADE_INSTRUMENT9: .db 0
   7EE9 F8                  154     .db 248
   7EEA 02                  155     .db 2
   7EEB 39                  156     .db 57
   7EEC F5                  157     .db 245
   7EED 01                  158     .db 1
   7EEE 01                  159     .db 1
   7EEF D0                  160     .db 208
   7EF0 00                  161     .db 0
   7EF1 ED                  162     .db 237
   7EF2 01                  163     .db 1
   7EF3 01                  164     .db 1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



   7EF4 90                  165     .db 144
   7EF5 01                  166     .db 1
   7EF6 D8                  167     .db 216
   7EF7 01                  168     .db 1
   7EF8 D8                  169     .db 216
   7EF9 03                  170     .db 3
   7EFA D0                  171     .db 208
   7EFB 04                  172     .db 4
   7EFC C8                  173     .db 200
   7EFD 01                  174     .db 1
   7EFE 04                  175     .db 4
   7EFF 7B 7E               176     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7F01 04                  177 AHARMLESSGRENADE_INSTRUMENT10: .db 4
   7F02 52                  178 AHARMLESSGRENADE_INSTRUMENT10LOOP: .db 82
   7F03 04                  179     .db 4
   7F04 02 7F               180     .dw AHARMLESSGRENADE_INSTRUMENT10LOOP
   7F06 01                  181 AHARMLESSGRENADE_INSTRUMENT11: .db 1
   7F07 C2                  182 AHARMLESSGRENADE_INSTRUMENT11LOOP: .db 194
   7F08 0C                  183     .db 12
   7F09 C2                  184     .db 194
   7F0A 0C                  185     .db 12
   7F0B 78                  186     .db 120
   7F0C 04                  187     .db 4
   7F0D 07 7F               188     .dw AHARMLESSGRENADE_INSTRUMENT11LOOP
   7F0F 00                  189 AHARMLESSGRENADE_INSTRUMENT12: .db 0
   7F10 3D                  190 AHARMLESSGRENADE_INSTRUMENT12LOOP: .db 61
   7F11 04                  191     .db 4
   7F12 10 7F               192     .dw AHARMLESSGRENADE_INSTRUMENT12LOOP
   7F14 00                  193 AHARMLESSGRENADE_INSTRUMENT13: .db 0
   7F15 3D                  194     .db 61
   7F16 04                  195     .db 4
   7F17 7B 7E               196     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7F19 00                  197 AHARMLESSGRENADE_INSTRUMENT14: .db 0
   7F1A 3A                  198 AHARMLESSGRENADE_INSTRUMENT14LOOP: .db 58
   7F1B 04                  199     .db 4
   7F1C 1A 7F               200     .dw AHARMLESSGRENADE_INSTRUMENT14LOOP
   7F1E 01                  201 AHARMLESSGRENADE_INSTRUMENT15: .db 1
   7F1F 3D                  202     .db 61
   7F20 79                  203 AHARMLESSGRENADE_INSTRUMENT15LOOP: .db 121
   7F21 FB                  204     .db 251
   7F22 FF                  205     .db 255
   7F23 31                  206     .db 49
   7F24 6D                  207     .db 109
   7F25 05                  208     .db 5
   7F26 00                  209     .db 0
   7F27 3D                  210     .db 61
   7F28 75                  211     .db 117
   7F29 F9                  212     .db 249
   7F2A FF                  213     .db 255
   7F2B 25                  214     .db 37
   7F2C 69                  215     .db 105
   7F2D 20                  216     .db 32
   7F2E 00                  217     .db 0
   7F2F 2D                  218     .db 45
   7F30 31                  219     .db 49
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



   7F31 39                  220     .db 57
   7F32 04                  221     .db 4
   7F33 20 7F               222     .dw AHARMLESSGRENADE_INSTRUMENT15LOOP
   7F35 00                  223 AHARMLESSGRENADE_INSTRUMENT16: .db 0
   7F36 E8                  224     .db 232
   7F37 05                  225     .db 5
   7F38 D8                  226     .db 216
   7F39 05                  227     .db 5
   7F3A D0                  228     .db 208
   7F3B 05                  229     .db 5
   7F3C C8                  230     .db 200
   7F3D 05                  231     .db 5
   7F3E B8                  232     .db 184
   7F3F 05                  233     .db 5
   7F40 04                  234     .db 4
   7F41 7B 7E               235     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7F43 00                  236 AHARMLESSGRENADE_INSTRUMENT17: .db 0
   7F44 E8                  237     .db 232
   7F45 09                  238     .db 9
   7F46 D8                  239     .db 216
   7F47 09                  240     .db 9
   7F48 D0                  241     .db 208
   7F49 09                  242     .db 9
   7F4A C8                  243     .db 200
   7F4B 09                  244     .db 9
   7F4C B8                  245     .db 184
   7F4D 09                  246     .db 9
   7F4E 04                  247     .db 4
   7F4F 7B 7E               248     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7F51 00                  249 AHARMLESSGRENADE_INSTRUMENT18: .db 0
   7F52 E8                  250     .db 232
   7F53 11                  251     .db 17
   7F54 D8                  252     .db 216
   7F55 11                  253     .db 17
   7F56 D0                  254     .db 208
   7F57 11                  255     .db 17
   7F58 C8                  256     .db 200
   7F59 11                  257     .db 17
   7F5A B8                  258     .db 184
   7F5B 11                  259     .db 17
   7F5C 04                  260     .db 4
   7F5D 7B 7E               261     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7F5F 00                  262 AHARMLESSGRENADE_INSTRUMENT19: .db 0
   7F60 E8                  263     .db 232
   7F61 19                  264     .db 25
   7F62 D8                  265     .db 216
   7F63 19                  266     .db 25
   7F64 D0                  267     .db 208
   7F65 19                  268     .db 25
   7F66 C8                  269     .db 200
   7F67 19                  270     .db 25
   7F68 B8                  271     .db 184
   7F69 19                  272     .db 25
   7F6A 04                  273     .db 4
   7F6B 7B 7E               274     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



   7F6D 71 7F               275 AHARMLESSGRENADE_ARPEGGIOINDEXES: .dw AHARMLESSGRENADE_ARPEGGIO1
   7F6F 78 7F               276     .dw AHARMLESSGRENADE_ARPEGGIO2
   7F71 00                  277 AHARMLESSGRENADE_ARPEGGIO1: .db 0
   7F72 00                  278     .db 0
   7F73 18                  279     .db 24
   7F74 12                  280     .db 18
   7F75 E8                  281     .db 232
   7F76 24                  282     .db 36
   7F77 01                  283     .db 1
   7F78 00                  284 AHARMLESSGRENADE_ARPEGGIO2: .db 0
   7F79 00                  285     .db 0
   7F7A 0C                  286     .db 12
   7F7B FA                  287     .db 250
   7F7C E8                  288     .db 232
   7F7D F4                  289     .db 244
   7F7E 00                  290     .db 0
   7F7F 18                  291     .db 24
   7F80 01                  292     .db 1
   7F81 83 7F               293 AHARMLESSGRENADE_PITCHINDEXES: .dw AHARMLESSGRENADE_PITCH1
   7F83 01                  294 AHARMLESSGRENADE_PITCH1: .db 1
   7F84 00                  295     .db 0
   7F85 00                  296     .db 0
   7F86 00                  297     .db 0
   7F87 FE                  298     .db 254
   7F88 F8                  299     .db 248
   7F89 04                  300     .db 4
   7F8A 05                  301     .db 5
   7F8B 51 82               302 AHARMLESSGRENADE_SUBSONG0: .dw AHARMLESSGRENADE_SUBSONG0_NOTEINDEXES
   7F8D 09 80               303     .dw AHARMLESSGRENADE_SUBSONG0_TRACKINDEXES
   7F8F 06                  304     .db 6
   7F90 01                  305     .db 1
   7F91 02                  306     .db 2
   7F92 00                  307     .db 0
   7F93 01                  308     .db 1
   7F94 15                  309     .db 21
   7F95 0A                  310     .db 10
   7F96 00                  311     .db 0
   7F97 0C                  312     .db 12
   7F98 FA                  313 AHARMLESSGRENADE_SUBSONG0_LOOP: .db 250
   7F99 1F                  314     .db 31
   7F9A 84                  315     .db 132
   7F9B 00                  316     .db 0
   7F9C 80                  317     .db 128
   7F9D 00                  318     .db 0
   7F9E 80                  319     .db 128
   7F9F A0                  320     .db 160
   7FA0 85                  321     .db 133
   7FA1 85                  322     .db 133
   7FA2 80                  323     .db 128
   7FA3 00                  324     .db 0
   7FA4 9A                  325     .db 154
   7FA5 00                  326     .db 0
   7FA6 A8                  327     .db 168
   7FA7 01                  328     .db 1
   7FA8 09                  329     .db 9
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



   7FA9 01                  330     .db 1
   7FAA 27                  331     .db 39
   7FAB 01                  332     .db 1
   7FAC 13                  333     .db 19
   7FAD AA                  334     .db 170
   7FAE 17                  335     .db 23
   7FAF 88                  336     .db 136
   7FB0 87                  337     .db 135
   7FB1 89                  338     .db 137
   7FB2 AA                  339     .db 170
   7FB3 07                  340     .db 7
   7FB4 01                  341     .db 1
   7FB5 8F                  342     .db 143
   7FB6 01                  343     .db 1
   7FB7 90                  344     .db 144
   7FB8 01                  345     .db 1
   7FB9 95                  346     .db 149
   7FBA AA                  347     .db 170
   7FBB 17                  348     .db 23
   7FBC 88                  349     .db 136
   7FBD 87                  350     .db 135
   7FBE 89                  351     .db 137
   7FBF AA                  352     .db 170
   7FC0 07                  353     .db 7
   7FC1 01                  354     .db 1
   7FC2 90                  355     .db 144
   7FC3 01                  356     .db 1
   7FC4 97                  357     .db 151
   7FC5 01                  358     .db 1
   7FC6 A7                  359     .db 167
   7FC7 AA                  360     .db 170
   7FC8 17                  361     .db 23
   7FC9 88                  362     .db 136
   7FCA 87                  363     .db 135
   7FCB 89                  364     .db 137
   7FCC AA                  365     .db 170
   7FCD 07                  366     .db 7
   7FCE 01                  367     .db 1
   7FCF 75                  368     .db 117
   7FD0 01                  369     .db 1
   7FD1 76                  370     .db 118
   7FD2 01                  371     .db 1
   7FD3 7B                  372     .db 123
   7FD4 AA                  373     .db 170
   7FD5 1F                  374     .db 31
   7FD6 8A                  375     .db 138
   7FD7 8B                  376     .db 139
   7FD8 01                  377     .db 1
   7FD9 BD                  378     .db 189
   7FDA 80                  379     .db 128
   7FDB 02                  380     .db 2
   7FDC 0A                  381     .db 10
   7FDD 82                  382     .db 130
   7FDE 1B                  383     .db 27
   7FDF 01                  384     .db 1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



   7FE0 B6                  385     .db 182
   7FE1 AA                  386     .db 170
   7FE2 03                  387     .db 3
   7FE3 80                  388     .db 128
   7FE4 81                  389     .db 129
   7FE5 80                  390     .db 128
   7FE6 AA                  391     .db 170
   7FE7 1F                  392     .db 31
   7FE8 01                  393     .db 1
   7FE9 C7                  394     .db 199
   7FEA 82                  395     .db 130
   7FEB 83                  396     .db 131
   7FEC 00                  397     .db 0
   7FED 08                  398     .db 8
   7FEE 8C                  399     .db 140
   7FEF 00                  400     .db 0
   7FF0 46                  401     .db 70
   7FF1 0F                  402     .db 15
   7FF2 02                  403     .db 2
   7FF3 02                  404     .db 2
   7FF4 FE                  405     .db 254
   7FF5 03                  406     .db 3
   7FF6 00                  407     .db 0
   7FF7 80                  408     .db 128
   7FF8 02                  409     .db 2
   7FF9 81                  410     .db 129
   7FFA 00                  411     .db 0
   7FFB 86                  412     .db 134
   7FFC 50                  413     .db 80
   7FFD 0A                  414     .db 10
   7FFE 04                  415     .db 4
   7FFF 50                  416     .db 80
   8000 14                  417     .db 20
   8001 08                  418     .db 8
   8002 50                  419     .db 80
   8003 24                  420     .db 36
   8004 0E                  421     .db 14
   8005 01                  422     .db 1
   8006 00                  423     .db 0
   8007 98 7F               424     .dw AHARMLESSGRENADE_SUBSONG0_LOOP
   8009 12 82               425 AHARMLESSGRENADE_SUBSONG0_TRACKINDEXES: .dw AHARMLESSGRENADE_SUBSONG0_TRACK22
   800B 15 82               426     .dw AHARMLESSGRENADE_SUBSONG0_TRACK23
   800D BC 81               427     .dw AHARMLESSGRENADE_SUBSONG0_TRACK19
   800F FB 81               428     .dw AHARMLESSGRENADE_SUBSONG0_TRACK21
   8011 23 80               429     .dw AHARMLESSGRENADE_SUBSONG0_TRACK0
   8013 3D 80               430     .dw AHARMLESSGRENADE_SUBSONG0_TRACK1
   8015 47 82               431     .dw AHARMLESSGRENADE_SUBSONG0_TRACK25
   8017 24 81               432     .dw AHARMLESSGRENADE_SUBSONG0_TRACK8
   8019 D5 80               433     .dw AHARMLESSGRENADE_SUBSONG0_TRACK6
   801B FB 80               434     .dw AHARMLESSGRENADE_SUBSONG0_TRACK7
   801D 78 81               435     .dw AHARMLESSGRENADE_SUBSONG0_TRACK15
   801F 83 81               436     .dw AHARMLESSGRENADE_SUBSONG0_TRACK16
   8021 1C 82               437     .dw AHARMLESSGRENADE_SUBSONG0_TRACK24
   8023 92                  438 AHARMLESSGRENADE_SUBSONG0_TRACK0: .db 146
   8024 52                  439     .db 82
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



   8025 92                  440     .db 146
   8026 92                  441     .db 146
   8027 52                  442     .db 82
   8028 92                  443     .db 146
   8029 92                  444     .db 146
   802A 92                  445     .db 146
   802B 92                  446     .db 146
   802C 92                  447     .db 146
   802D 52                  448     .db 82
   802E 92                  449     .db 146
   802F 92                  450     .db 146
   8030 52                  451     .db 82
   8031 52                  452     .db 82
   8032 5A                  453     .db 90
   8033 5E                  454     .db 94
   8034 1D                  455     .db 29
   8035 5E                  456     .db 94
   8036 20                  457     .db 32
   8037 55                  458     .db 85
   8038 5E                  459     .db 94
   8039 1D                  460     .db 29
   803A 50                  461     .db 80
   803B DA                  462     .db 218
   803C 7F                  463     .db 127
   803D CD                  464 AHARMLESSGRENADE_SUBSONG0_TRACK1: .db 205
   803E 7F                  465     .db 127
   803F 0C                  466 AHARMLESSGRENADE_SUBSONG0_TRACK2: .db 12
   8040 60                  467     .db 96
   8041 00                  468     .db 0
   8042 0C                  469     .db 12
   8043 70                  470     .db 112
   8044 03                  471     .db 3
   8045 32                  472     .db 50
   8046 0C                  473     .db 12
   8047 40                  474     .db 64
   8048 02                  475     .db 2
   8049 0C                  476     .db 12
   804A 40                  477     .db 64
   804B 32                  478     .db 50
   804C 0C                  479     .db 12
   804D 60                  480     .db 96
   804E 02                  481     .db 2
   804F 0C                  482     .db 12
   8050 70                  483     .db 112
   8051 04                  484     .db 4
   8052 12                  485     .db 18
   8053 0C                  486     .db 12
   8054 70                  487     .db 112
   8055 03                  488     .db 3
   8056 22                  489     .db 34
   8057 0C                  490     .db 12
   8058 40                  491     .db 64
   8059 32                  492     .db 50
   805A 0C                  493     .db 12
   805B 60                  494     .db 96
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



   805C 02                  495     .db 2
   805D 0C                  496     .db 12
   805E 70                  497     .db 112
   805F 05                  498     .db 5
   8060 12                  499     .db 18
   8061 0C                  500     .db 12
   8062 70                  501     .db 112
   8063 03                  502     .db 3
   8064 22                  503     .db 34
   8065 0C                  504     .db 12
   8066 70                  505     .db 112
   8067 04                  506     .db 4
   8068 32                  507     .db 50
   8069 0C                  508     .db 12
   806A 60                  509     .db 96
   806B 02                  510     .db 2
   806C 0C                  511     .db 12
   806D 70                  512     .db 112
   806E 06                  513     .db 6
   806F 32                  514     .db 50
   8070 0C                  515     .db 12
   8071 70                  516     .db 112
   8072 04                  517     .db 4
   8073 52                  518     .db 82
   8074 0C                  519     .db 12
   8075 70                  520     .db 112
   8076 06                  521     .db 6
   8077 22                  522     .db 34
   8078 0C                  523     .db 12
   8079 60                  524     .db 96
   807A 02                  525     .db 2
   807B 0C                  526     .db 12
   807C 70                  527     .db 112
   807D 03                  528     .db 3
   807E 22                  529     .db 34
   807F 0C                  530     .db 12
   8080 70                  531     .db 112
   8081 04                  532     .db 4
   8082 12                  533     .db 18
   8083 0C                  534     .db 12
   8084 70                  535     .db 112
   8085 03                  536     .db 3
   8086 32                  537     .db 50
   8087 0C                  538     .db 12
   8088 60                  539     .db 96
   8089 02                  540     .db 2
   808A 0C                  541     .db 12
   808B 70                  542     .db 112
   808C 04                  543     .db 4
   808D 22                  544     .db 34
   808E 0C                  545     .db 12
   808F 70                  546     .db 112
   8090 05                  547     .db 5
   8091 32                  548     .db 50
   8092 0C                  549     .db 12
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



   8093 70                  550     .db 112
   8094 04                  551     .db 4
   8095 12                  552     .db 18
   8096 0C                  553     .db 12
   8097 60                  554     .db 96
   8098 02                  555     .db 2
   8099 0C                  556     .db 12
   809A 70                  557     .db 112
   809B 03                  558     .db 3
   809C 12                  559     .db 18
   809D 0C                  560     .db 12
   809E 70                  561     .db 112
   809F 05                  562     .db 5
   80A0 32                  563     .db 50
   80A1 0C                  564     .db 12
   80A2 40                  565     .db 64
   80A3 42                  566     .db 66
   80A4 0C                  567     .db 12
   80A5 60                  568     .db 96
   80A6 02                  569     .db 2
   80A7 0C                  570     .db 12
   80A8 70                  571     .db 112
   80A9 03                  572     .db 3
   80AA 42                  573     .db 66
   80AB 0C                  574     .db 12
   80AC 70                  575     .db 112
   80AD 04                  576     .db 4
   80AE 22                  577     .db 34
   80AF F0                  578     .db 240
   80B0 06                  579     .db 6
   80B1 7F                  580     .db 127
   80B2 0C                  581 AHARMLESSGRENADE_SUBSONG0_TRACK3: .db 12
   80B3 FE                  582     .db 254
   80B4 4F                  583     .db 79
   80B5 07                  584     .db 7
   80B6 07                  585     .db 7
   80B7 21                  586     .db 33
   80B8 18                  587     .db 24
   80B9 0E                  588     .db 14
   80BA 4D                  589     .db 77
   80BB 0E                  590     .db 14
   80BC 48                  591     .db 72
   80BD CE                  592     .db 206
   80BE 4C                  593     .db 76
   80BF 7F                  594     .db 127
   80C0 0C                  595 AHARMLESSGRENADE_SUBSONG0_TRACK4: .db 12
   80C1 E0                  596     .db 224
   80C2 03                  597     .db 3
   80C3 00                  598     .db 0
   80C4 0C                  599     .db 12
   80C5 FE                  600     .db 254
   80C6 4B                  601     .db 75
   80C7 07                  602     .db 7
   80C8 07                  603     .db 7
   80C9 23                  604     .db 35
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



   80CA 18                  605     .db 24
   80CB 0E                  606     .db 14
   80CC 47                  607     .db 71
   80CD 0E                  608     .db 14
   80CE 4D                  609     .db 77
   80CF CE                  610     .db 206
   80D0 4F                  611     .db 79
   80D1 7F                  612     .db 127
   80D2 F2                  613 AHARMLESSGRENADE_SUBSONG0_TRACK5: .db 242
   80D3 08                  614     .db 8
   80D4 7F                  615     .db 127
   80D5 0C                  616 AHARMLESSGRENADE_SUBSONG0_TRACK6: .db 12
   80D6 45                  617     .db 69
   80D7 00                  618     .db 0
   80D8 9D                  619     .db 157
   80D9 F4                  620     .db 244
   80DA 00                  621     .db 0
   80DB 20                  622     .db 32
   80DC 45                  623     .db 69
   80DD 9D                  624     .db 157
   80DE F4                  625     .db 244
   80DF 00                  626     .db 0
   80E0 20                  627     .db 32
   80E1 45                  628     .db 69
   80E2 5D                  629     .db 93
   80E3 F4                  630     .db 244
   80E4 00                  631     .db 0
   80E5 20                  632     .db 32
   80E6 F1                  633     .db 241
   80E7 00                  634     .db 0
   80E8 06                  635     .db 6
   80E9 72                  636     .db 114
   80EA 0A                  637     .db 10
   80EB 45                  638     .db 69
   80EC 9D                  639     .db 157
   80ED F4                  640     .db 244
   80EE 00                  641     .db 0
   80EF 20                  642     .db 32
   80F0 45                  643     .db 69
   80F1 9D                  644     .db 157
   80F2 F4                  645     .db 244
   80F3 00                  646     .db 0
   80F4 20                  647     .db 32
   80F5 45                  648     .db 69
   80F6 DD                  649     .db 221
   80F7 7F                  650     .db 127
   80F8 F4                  651     .db 244
   80F9 00                  652     .db 0
   80FA 20                  653     .db 32
   80FB 0C                  654 AHARMLESSGRENADE_SUBSONG0_TRACK7: .db 12
   80FC 72                  655     .db 114
   80FD 0C                  656     .db 12
   80FE 00                  657     .db 0
   80FF 9D                  658     .db 157
   8100 F4                  659     .db 244
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



   8101 00                  660     .db 0
   8102 20                  661     .db 32
   8103 42                  662     .db 66
   8104 9D                  663     .db 157
   8105 F4                  664     .db 244
   8106 00                  665     .db 0
   8107 20                  666     .db 32
   8108 42                  667     .db 66
   8109 5D                  668     .db 93
   810A F4                  669     .db 244
   810B 00                  670     .db 0
   810C 20                  671     .db 32
   810D F1                  672     .db 241
   810E 00                  673     .db 0
   810F 06                  674     .db 6
   8110 72                  675     .db 114
   8111 0C                  676     .db 12
   8112 0C                  677     .db 12
   8113 42                  678     .db 66
   8114 02                  679     .db 2
   8115 9D                  680     .db 157
   8116 F4                  681     .db 244
   8117 00                  682     .db 0
   8118 20                  683     .db 32
   8119 42                  684     .db 66
   811A 9D                  685     .db 157
   811B F4                  686     .db 244
   811C 00                  687     .db 0
   811D 20                  688     .db 32
   811E 42                  689     .db 66
   811F DD                  690     .db 221
   8120 7F                  691     .db 127
   8121 F4                  692     .db 244
   8122 00                  693     .db 0
   8123 20                  694     .db 32
   8124 0C                  695 AHARMLESSGRENADE_SUBSONG0_TRACK8: .db 12
   8125 E0                  696     .db 224
   8126 02                  697     .db 2
   8127 00                  698     .db 0
   8128 20                  699     .db 32
   8129 A0                  700     .db 160
   812A 76                  701     .db 118
   812B 09                  702     .db 9
   812C 0C                  703     .db 12
   812D 46                  704     .db 70
   812E 12                  705     .db 18
   812F 0C                  706     .db 12
   8130 46                  707     .db 70
   8131 22                  708     .db 34
   8132 0C                  709     .db 12
   8133 46                  710     .db 70
   8134 32                  711     .db 50
   8135 0C                  712     .db 12
   8136 46                  713     .db 70
   8137 42                  714     .db 66
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



   8138 0C                  715     .db 12
   8139 46                  716     .db 70
   813A 52                  717     .db 82
   813B 0C                  718     .db 12
   813C 46                  719     .db 70
   813D 62                  720     .db 98
   813E 0C                  721     .db 12
   813F 60                  722     .db 96
   8140 02                  723     .db 2
   8141 20                  724     .db 32
   8142 20                  725     .db 32
   8143 E0                  726     .db 224
   8144 7F                  727     .db 127
   8145 8F                  728 AHARMLESSGRENADE_SUBSONG0_TRACK9: .db 143
   8146 CA                  729     .db 202
   8147 7F                  730     .db 127
   8148 F3                  731 AHARMLESSGRENADE_SUBSONG0_TRACK10: .db 243
   8149 09                  732     .db 9
   814A 03                  733     .db 3
   814B A0                  734     .db 160
   814C 43                  735     .db 67
   814D E0                  736     .db 224
   814E 7F                  737     .db 127
   814F BF                  738 AHARMLESSGRENADE_SUBSONG0_TRACK11: .db 191
   8150 0C                  739     .db 12
   8151 CA                  740     .db 202
   8152 7F                  741     .db 127
   8153 8E                  742 AHARMLESSGRENADE_SUBSONG0_TRACK12: .db 142
   8154 13                  743     .db 19
   8155 9D                  744     .db 157
   8156 F4                  745     .db 244
   8157 00                  746     .db 0
   8158 10                  747     .db 16
   8159 CE                  748     .db 206
   815A 10                  749     .db 16
   815B 7F                  750     .db 127
   815C 0C                  751 AHARMLESSGRENADE_SUBSONG0_TRACK13: .db 12
   815D E0                  752     .db 224
   815E 03                  753     .db 3
   815F 00                  754     .db 0
   8160 60                  755     .db 96
   8161 0C                  756     .db 12
   8162 73                  757     .db 115
   8163 04                  758     .db 4
   8164 32                  759     .db 50
   8165 0C                  760     .db 12
   8166 73                  761     .db 115
   8167 06                  762     .db 6
   8168 12                  763     .db 18
   8169 0C                  764     .db 12
   816A F3                  765     .db 243
   816B 03                  766     .db 3
   816C 7F                  767     .db 127
   816D 22                  768     .db 34
   816E BE                  769 AHARMLESSGRENADE_SUBSONG0_TRACK14: .db 190
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



   816F 13                  770     .db 19
   8170 0C                  771     .db 12
   8171 9D                  772     .db 157
   8172 F4                  773     .db 244
   8173 00                  774     .db 0
   8174 10                  775     .db 16
   8175 CE                  776     .db 206
   8176 10                  777     .db 16
   8177 7F                  778     .db 127
   8178 FE                  779 AHARMLESSGRENADE_SUBSONG0_TRACK15: .db 254
   8179 27                  780     .db 39
   817A 0E                  781     .db 14
   817B 05                  782     .db 5
   817C C3                  783     .db 195
   817D 09                  784     .db 9
   817E F7                  785     .db 247
   817F 08                  786     .db 8
   8180 05                  787     .db 5
   8181 C4                  788     .db 196
   8182 7F                  789     .db 127
   8183 E0                  790 AHARMLESSGRENADE_SUBSONG0_TRACK16: .db 224
   8184 02                  791     .db 2
   8185 A0                  792     .db 160
   8186 60                  793     .db 96
   8187 F3                  794     .db 243
   8188 09                  795     .db 9
   8189 03                  796     .db 3
   818A E0                  797     .db 224
   818B 02                  798     .db 2
   818C 20                  799     .db 32
   818D 20                  800     .db 32
   818E A0                  801     .db 160
   818F 60                  802     .db 96
   8190 C3                  803     .db 195
   8191 03                  804     .db 3
   8192 A0                  805     .db 160
   8193 43                  806     .db 67
   8194 A0                  807     .db 160
   8195 E0                  808     .db 224
   8196 7F                  809     .db 127
   8197 0C                  810 AHARMLESSGRENADE_SUBSONG0_TRACK17: .db 12
   8198 B1                  811     .db 177
   8199 0D                  812     .db 13
   819A 40                  813     .db 64
   819B 88                  814     .db 136
   819C 8E                  815     .db 142
   819D 37                  816     .db 55
   819E 8B                  817     .db 139
   819F 89                  818     .db 137
   81A0 0C                  819     .db 12
   81A1 81                  820     .db 129
   81A2 32                  821     .db 50
   81A3 81                  822     .db 129
   81A4 88                  823     .db 136
   81A5 8E                  824     .db 142
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



   81A6 36                  825     .db 54
   81A7 8B                  826     .db 139
   81A8 0C                  827     .db 12
   81A9 89                  828     .db 137
   81AA 22                  829     .db 34
   81AB 81                  830     .db 129
   81AC 81                  831     .db 129
   81AD 88                  832     .db 136
   81AE 8F                  833     .db 143
   81AF C9                  834     .db 201
   81B0 7F                  835     .db 127
   81B1 F4                  836 AHARMLESSGRENADE_SUBSONG0_TRACK18: .db 244
   81B2 0B                  837     .db 11
   81B3 05                  838     .db 5
   81B4 C0                  839     .db 192
   81B5 09                  840     .db 9
   81B6 CE                  841     .db 206
   81B7 12                  842     .db 18
   81B8 05                  843     .db 5
   81B9 CE                  844     .db 206
   81BA 0F                  845     .db 15
   81BB 7F                  846     .db 127
   81BC 60                  847 AHARMLESSGRENADE_SUBSONG0_TRACK19: .db 96
   81BD 71                  848     .db 113
   81BE 10                  849     .db 16
   81BF 41                  850     .db 65
   81C0 60                  851     .db 96
   81C1 41                  852     .db 65
   81C2 60                  853     .db 96
   81C3 73                  854     .db 115
   81C4 09                  855     .db 9
   81C5 71                  856     .db 113
   81C6 10                  857     .db 16
   81C7 41                  858     .db 65
   81C8 41                  859     .db 65
   81C9 60                  860     .db 96
   81CA 71                  861     .db 113
   81CB 11                  862     .db 17
   81CC 41                  863     .db 65
   81CD 60                  864     .db 96
   81CE 41                  865     .db 65
   81CF 41                  866     .db 65
   81D0 60                  867     .db 96
   81D1 41                  868     .db 65
   81D2 71                  869     .db 113
   81D3 12                  870     .db 18
   81D4 60                  871     .db 96
   81D5 41                  872     .db 65
   81D6 60                  873     .db 96
   81D7 73                  874     .db 115
   81D8 09                  875     .db 9
   81D9 71                  876     .db 113
   81DA 12                  877     .db 18
   81DB 71                  878     .db 113
   81DC 13                  879     .db 19
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



   81DD 41                  880     .db 65
   81DE 60                  881     .db 96
   81DF 41                  882     .db 65
   81E0 73                  883     .db 115
   81E1 09                  884     .db 9
   81E2 60                  885     .db 96
   81E3 71                  886     .db 113
   81E4 13                  887     .db 19
   81E5 E0                  888     .db 224
   81E6 7F                  889     .db 127
   81E7 0C                  890 AHARMLESSGRENADE_SUBSONG0_TRACK20: .db 12
   81E8 B1                  891     .db 177
   81E9 0F                  892     .db 15
   81EA 20                  893     .db 32
   81EB 8D                  894     .db 141
   81EC 8D                  895     .db 141
   81ED 8D                  896     .db 141
   81EE 8D                  897     .db 141
   81EF 8D                  898     .db 141
   81F0 8D                  899     .db 141
   81F1 8D                  900     .db 141
   81F2 8D                  901     .db 141
   81F3 8D                  902     .db 141
   81F4 8D                  903     .db 141
   81F5 8D                  904     .db 141
   81F6 8D                  905     .db 141
   81F7 8D                  906     .db 141
   81F8 8D                  907     .db 141
   81F9 CD                  908     .db 205
   81FA 7F                  909     .db 127
   81FB 0C                  910 AHARMLESSGRENADE_SUBSONG0_TRACK21: .db 12
   81FC B1                  911     .db 177
   81FD 07                  912     .db 7
   81FE 21                  913     .db 33
   81FF 16                  914     .db 22
   8200 88                  915     .db 136
   8201 8E                  916     .db 142
   8202 37                  917     .db 55
   8203 8B                  918     .db 139
   8204 89                  919     .db 137
   8205 81                  920     .db 129
   8206 81                  921     .db 129
   8207 88                  922     .db 136
   8208 8E                  923     .db 142
   8209 36                  924     .db 54
   820A 8B                  925     .db 139
   820B 89                  926     .db 137
   820C 81                  927     .db 129
   820D 81                  928     .db 129
   820E 88                  929     .db 136
   820F 8F                  930     .db 143
   8210 C9                  931     .db 201
   8211 7F                  932     .db 127
   8212 F1                  933 AHARMLESSGRENADE_SUBSONG0_TRACK22: .db 241
   8213 00                  934     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



   8214 7F                  935     .db 127
   8215 0C                  936 AHARMLESSGRENADE_SUBSONG0_TRACK23: .db 12
   8216 CE                  937     .db 206
   8217 3C                  938     .db 60
   8218 7F                  939     .db 127
   8219 F4                  940     .db 244
   821A 00                  941     .db 0
   821B 50                  942     .db 80
   821C 0C                  943 AHARMLESSGRENADE_SUBSONG0_TRACK24: .db 12
   821D 54                  944     .db 84
   821E 00                  945     .db 0
   821F 54                  946     .db 84
   8220 5E                  947     .db 94
   8221 1C                  948     .db 28
   8222 5F                  949     .db 95
   8223 57                  950     .db 87
   8224 5E                  951     .db 94
   8225 1F                  952     .db 31
   8226 50                  953     .db 80
   8227 50                  954     .db 80
   8228 50                  955     .db 80
   8229 50                  956     .db 80
   822A 50                  957     .db 80
   822B 50                  958     .db 80
   822C 5E                  959     .db 94
   822D 1C                  960     .db 28
   822E 50                  961     .db 80
   822F 5E                  962     .db 94
   8230 1F                  963     .db 31
   8231 50                  964     .db 80
   8232 57                  965     .db 87
   8233 57                  966     .db 87
   8234 57                  967     .db 87
   8235 57                  968     .db 87
   8236 5E                  969     .db 94
   8237 20                  970     .db 32
   8238 5E                  971     .db 94
   8239 21                  972     .db 33
   823A 54                  973     .db 84
   823B 54                  974     .db 84
   823C 54                  975     .db 84
   823D 54                  976     .db 84
   823E 54                  977     .db 84
   823F 5A                  978     .db 90
   8240 5E                  979     .db 94
   8241 19                  980     .db 25
   8242 50                  981     .db 80
   8243 52                  982     .db 82
   8244 DE                  983     .db 222
   8245 16                  984     .db 22
   8246 7F                  985     .db 127
   8247 0C                  986 AHARMLESSGRENADE_SUBSONG0_TRACK25: .db 12
   8248 FE                  987     .db 254
   8249 48                  988     .db 72
   824A 0C                  989     .db 12
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



   824B 7F                  990     .db 127
   824C 51                  991     .db 81
   824D F5                  992     .db 245
   824E 00                  993     .db 0
   824F 02                  994     .db 2
   8250 26                  995     .db 38
   8251 18                  996 AHARMLESSGRENADE_SUBSONG0_NOTEINDEXES: .db 24
   8252 30                  997     .db 48
   8253 17                  998     .db 23
   8254 24                  999     .db 36
   8255 1B                 1000     .db 27
   8256 23                 1001     .db 35
   8257 28                 1002     .db 40
   8258 1E                 1003     .db 30
   8259 33                 1004     .db 51
   825A 39                 1005     .db 57
   825B 1A                 1006     .db 26
   825C 3A                 1007     .db 58
   825D                    1008 SOUNDEFFECTS_SOUNDEFFECTS:
   825D 67 82              1009 _SOUNDEFFECTS_SOUNDEFFECTS:: .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND1
   825F 79 82              1010     .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND2
   8261 9F 82              1011     .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND3
   8263 DE 82              1012     .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND4
   8265 F4 82              1013     .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND5
   8267 00                 1014 SOUNDEFFECTS_SOUNDEFFECTS_SOUND1: .db 0
   8268 BD                 1015 SOUNDEFFECTS_SOUNDEFFECTS_SOUND1_LOOP: .db 189
   8269 01                 1016     .db 1
   826A 5F                 1017     .db 95
   826B 00                 1018     .db 0
   826C BD                 1019     .db 189
   826D 01                 1020     .db 1
   826E 63                 1021     .db 99
   826F 00                 1022     .db 0
   8270 B1                 1023     .db 177
   8271 01                 1024     .db 1
   8272 66                 1025     .db 102
   8273 00                 1026     .db 0
   8274 AD                 1027     .db 173
   8275 01                 1028     .db 1
   8276 6A                 1029     .db 106
   8277 00                 1030     .db 0
   8278 04                 1031     .db 4
   8279 01                 1032 SOUNDEFFECTS_SOUNDEFFECTS_SOUND2: .db 1
   827A BD                 1033 SOUNDEFFECTS_SOUNDEFFECTS_SOUND2_LOOP: .db 189
   827B 01                 1034     .db 1
   827C 2D                 1035     .db 45
   827D 01                 1036     .db 1
   827E BD                 1037     .db 189
   827F 08                 1038     .db 8
   8280 3F                 1039     .db 63
   8281 01                 1040     .db 1
   8282 B9                 1041     .db 185
   8283 02                 1042     .db 2
   8284 92                 1043     .db 146
   8285 01                 1044     .db 1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



   8286 B5                 1045     .db 181
   8287 10                 1046     .db 16
   8288 D5                 1047     .db 213
   8289 00                 1048     .db 0
   828A B1                 1049     .db 177
   828B 02                 1050     .db 2
   828C E1                 1051     .db 225
   828D 00                 1052     .db 0
   828E AD                 1053     .db 173
   828F 02                 1054     .db 2
   8290 EF                 1055     .db 239
   8291 00                 1056     .db 0
   8292 A5                 1057     .db 165
   8293 10                 1058     .db 16
   8294 66                 1059     .db 102
   8295 01                 1060     .db 1
   8296 9D                 1061     .db 157
   8297 1F                 1062     .db 31
   8298 77                 1063     .db 119
   8299 00                 1064     .db 0
   829A 99                 1065     .db 153
   829B 07                 1066     .db 7
   829C 50                 1067     .db 80
   829D 00                 1068     .db 0
   829E 04                 1069     .db 4
   829F 01                 1070 SOUNDEFFECTS_SOUNDEFFECTS_SOUND3: .db 1
   82A0 BD                 1071 SOUNDEFFECTS_SOUNDEFFECTS_SOUND3_LOOP: .db 189
   82A1 01                 1072     .db 1
   82A2 77                 1073     .db 119
   82A3 00                 1074     .db 0
   82A4 39                 1075     .db 57
   82A5 3C                 1076     .db 60
   82A6 00                 1077     .db 0
   82A7 B5                 1078     .db 181
   82A8 01                 1079     .db 1
   82A9 5F                 1080     .db 95
   82AA 00                 1081     .db 0
   82AB 31                 1082     .db 49
   82AC 2F                 1083     .db 47
   82AD 00                 1084     .db 0
   82AE B9                 1085     .db 185
   82AF 01                 1086     .db 1
   82B0 50                 1087     .db 80
   82B1 00                 1088     .db 0
   82B2 3D                 1089     .db 61
   82B3 28                 1090     .db 40
   82B4 00                 1091     .db 0
   82B5 03                 1092     .db 3
   82B6 0F                 1093     .db 15
   82B7 00                 1094     .db 0
   82B8 DE                 1095     .db 222
   82B9 01                 1096     .db 1
   82BA 3D                 1097     .db 61
   82BB EF                 1098     .db 239
   82BC 00                 1099     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



   82BD 03                 1100     .db 3
   82BE 0F                 1101     .db 15
   82BF 00                 1102     .db 0
   82C0 DE                 1103     .db 222
   82C1 01                 1104     .db 1
   82C2 3D                 1105     .db 61
   82C3 EF                 1106     .db 239
   82C4 00                 1107     .db 0
   82C5 03                 1108     .db 3
   82C6 0F                 1109     .db 15
   82C7 00                 1110     .db 0
   82C8 DE                 1111     .db 222
   82C9 01                 1112     .db 1
   82CA 3D                 1113     .db 61
   82CB EF                 1114     .db 239
   82CC 00                 1115     .db 0
   82CD 03                 1116     .db 3
   82CE 1E                 1117     .db 30
   82CF 00                 1118     .db 0
   82D0 BC                 1119     .db 188
   82D1 03                 1120     .db 3
   82D2 3D                 1121     .db 61
   82D3 EF                 1122     .db 239
   82D4 00                 1123     .db 0
   82D5 03                 1124     .db 3
   82D6 1E                 1125     .db 30
   82D7 00                 1126     .db 0
   82D8 BC                 1127     .db 188
   82D9 03                 1128     .db 3
   82DA 3D                 1129     .db 61
   82DB EF                 1130     .db 239
   82DC 00                 1131     .db 0
   82DD 04                 1132     .db 4
   82DE 01                 1133 SOUNDEFFECTS_SOUNDEFFECTS_SOUND4: .db 1
   82DF BD                 1134 SOUNDEFFECTS_SOUNDEFFECTS_SOUND4_LOOP: .db 189
   82E0 01                 1135     .db 1
   82E1 77                 1136     .db 119
   82E2 00                 1137     .db 0
   82E3 3D                 1138     .db 61
   82E4 38                 1139     .db 56
   82E5 00                 1140     .db 0
   82E6 BD                 1141     .db 189
   82E7 01                 1142     .db 1
   82E8 6A                 1143     .db 106
   82E9 00                 1144     .db 0
   82EA 3D                 1145     .db 61
   82EB 35                 1146     .db 53
   82EC 00                 1147     .db 0
   82ED 3D                 1148     .db 61
   82EE 64                 1149     .db 100
   82EF 00                 1150     .db 0
   82F0 3D                 1151     .db 61
   82F1 32                 1152     .db 50
   82F2 00                 1153     .db 0
   82F3 04                 1154     .db 4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



   82F4 01                 1155 SOUNDEFFECTS_SOUNDEFFECTS_SOUND5: .db 1
   82F5 03                 1156 SOUNDEFFECTS_SOUNDEFFECTS_SOUND5_LOOP: .db 3
   82F6 02                 1157     .db 2
   82F7 00                 1158     .db 0
   82F8 1B                 1159     .db 27
   82F9 00                 1160     .db 0
   82FA 03                 1161     .db 3
   82FB 03                 1162     .db 3
   82FC 00                 1163     .db 0
   82FD 2F                 1164     .db 47
   82FE 00                 1165     .db 0
   82FF 03                 1166     .db 3
   8300 02                 1167     .db 2
   8301 00                 1168     .db 0
   8302 1E                 1169     .db 30
   8303 00                 1170     .db 0
   8304 03                 1171     .db 3
   8305 05                 1172     .db 5
   8306 00                 1173     .db 0
   8307 4B                 1174     .db 75
   8308 00                 1175     .db 0
   8309 03                 1176     .db 3
   830A 03                 1177     .db 3
   830B 00                 1178     .db 0
   830C 2F                 1179     .db 47
   830D 00                 1180     .db 0
   830E 03                 1181     .db 3
   830F 07                 1182     .db 7
   8310 00                 1183     .db 0
   8311 77                 1184     .db 119
   8312 00                 1185     .db 0
   8313 03                 1186     .db 3
   8314 05                 1187     .db 5
   8315 00                 1188     .db 0
   8316 4B                 1189     .db 75
   8317 00                 1190     .db 0
   8318 03                 1191     .db 3
   8319 0C                 1192     .db 12
   831A 00                 1193     .db 0
   831B BE                 1194     .db 190
   831C 00                 1195     .db 0
   831D 03                 1196     .db 3
   831E 07                 1197     .db 7
   831F 00                 1198     .db 0
   8320 77                 1199     .db 119
   8321 00                 1200     .db 0
   8322 03                 1201     .db 3
   8323 13                 1202     .db 19
   8324 00                 1203     .db 0
   8325 2D                 1204     .db 45
   8326 01                 1205     .db 1
   8327 03                 1206     .db 3
   8328 0C                 1207     .db 12
   8329 00                 1208     .db 0
   832A BE                 1209     .db 190
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



   832B 00                 1210     .db 0
   832C 03                 1211     .db 3
   832D 22                 1212     .db 34
   832E 00                 1213     .db 0
   832F 18                 1214     .db 24
   8330 02                 1215     .db 2
   8331 03                 1216     .db 3
   8332 32                 1217     .db 50
   8333 00                 1218     .db 0
   8334 24                 1219     .db 36
   8335 03                 1220     .db 3
   8336 04                 1221     .db 4
   8337 C3 45 84      [10] 1222 PLY_AKM_START: jp PLY_AKM_INIT
   833A C3 D9 84      [10] 1223     jp PLY_AKM_PLAY
   833D C3 C3 84      [10] 1224     jp PLY_AKM_INITVARS_END
   8340                    1225 _PLY_AKM_INITSOUNDEFFECTS::
   8340 22 46 83      [16] 1226 PLY_AKM_INITSOUNDEFFECTS: ld (PLY_AKM_PTSOUNDEFFECTTABLE+1),hl
   8343 C9            [10] 1227     ret 
   8344                    1228 _PLY_AKM_PLAYSOUNDEFFECT::
   8344 3D            [ 4] 1229 PLY_AKM_PLAYSOUNDEFFECT: dec a
   8345 21 00 00      [10] 1230 PLY_AKM_PTSOUNDEFFECTTABLE: ld hl,#0
   8348 5F            [ 4] 1231     ld e,a
   8349 16 00         [ 7] 1232     ld d,#0
   834B 19            [11] 1233     add hl,de
   834C 19            [11] 1234     add hl,de
   834D 5E            [ 7] 1235     ld e,(hl)
   834E 23            [ 6] 1236     inc hl
   834F 56            [ 7] 1237     ld d,(hl)
   8350 1A            [ 7] 1238     ld a,(de)
   8351 13            [ 6] 1239     inc de
   8352 08            [ 4] 1240     ex af,af'
   8353 78            [ 4] 1241     ld a,b
   8354 21 2D 84      [10] 1242     ld hl,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
   8357 06 00         [ 7] 1243     ld b,#0
   8359 CB 21         [ 8] 1244     sla c
   835B CB 21         [ 8] 1245     sla c
   835D CB 21         [ 8] 1246     sla c
   835F 09            [11] 1247     add hl,bc
   8360 73            [ 7] 1248     ld (hl),e
   8361 23            [ 6] 1249     inc hl
   8362 72            [ 7] 1250     ld (hl),d
   8363 23            [ 6] 1251     inc hl
   8364 77            [ 7] 1252     ld (hl),a
   8365 23            [ 6] 1253     inc hl
   8366 36 00         [10] 1254     ld (hl),#0
   8368 23            [ 6] 1255     inc hl
   8369 08            [ 4] 1256     ex af,af'
   836A 77            [ 7] 1257     ld (hl),a
   836B C9            [10] 1258     ret 
   836C                    1259 _PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL::
   836C 87            [ 4] 1260 PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL: add a,a
   836D 87            [ 4] 1261     add a,a
   836E 87            [ 4] 1262     add a,a
   836F 5F            [ 4] 1263     ld e,a
   8370 16 00         [ 7] 1264     ld d,#0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 25.
Hexadecimal [16-Bits]



   8372 21 2D 84      [10] 1265     ld hl,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
   8375 19            [11] 1266     add hl,de
   8376 72            [ 7] 1267     ld (hl),d
   8377 23            [ 6] 1268     inc hl
   8378 72            [ 7] 1269     ld (hl),d
   8379 C9            [10] 1270     ret 
   837A 17            [ 4] 1271 PLY_AKM_PLAYSOUNDEFFECTSSTREAM: rla 
   837B 17            [ 4] 1272     rla 
   837C DD 21 2D 84   [14] 1273     ld ix,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
   8380 FD 21 F0 89   [14] 1274     ld iy,#PLY_AKM_TRACK3_DATA_END
   8384 4F            [ 4] 1275     ld c,a
   8385 CD A7 83      [17] 1276     call PLY_AKM_PSES_PLAY
   8388 DD 21 35 84   [14] 1277     ld ix,#PLY_AKM_CHANNEL2_SOUNDEFFECTDATA
   838C FD 21 FC 89   [14] 1278     ld iy,#PLY_AKM_TRACK2_REGISTERS
   8390 CB 39         [ 8] 1279     srl c
   8392 CD A7 83      [17] 1280     call PLY_AKM_PSES_PLAY
   8395 DD 21 3D 84   [14] 1281     ld ix,#PLY_AKM_CHANNEL3_SOUNDEFFECTDATA
   8399 FD 21 08 8A   [14] 1282     ld iy,#PLY_AKM_TRACK3_REGISTERS
   839D CB 19         [ 8] 1283     rr c
   839F CD A7 83      [17] 1284     call PLY_AKM_PSES_PLAY
   83A2 79            [ 4] 1285     ld a,c
   83A3 32 19 8A      [13] 1286     ld (PLY_AKM_MIXERREGISTER),a
   83A6 C9            [10] 1287     ret 
   83A7 DD 6E 00      [19] 1288 PLY_AKM_PSES_PLAY: ld l,+0(ix)
   83AA DD 66 01      [19] 1289     ld h,+1(ix)
   83AD 7D            [ 4] 1290     ld a,l
   83AE B4            [ 4] 1291     or h
   83AF C8            [11] 1292     ret z
   83B0 7E            [ 7] 1293 PLY_AKM_PSES_READFIRSTBYTE: ld a,(hl)
   83B1 23            [ 6] 1294     inc hl
   83B2 47            [ 4] 1295     ld b,a
   83B3 1F            [ 4] 1296     rra 
   83B4 38 21         [12] 1297     jr c,PLY_AKM_PSES_SOFTWAREORSOFTWAREANDHARDWARE
   83B6 1F            [ 4] 1298     rra 
   83B7 1F            [ 4] 1299     rra 
   83B8 AF            [ 4] 1300 PLY_AKM_PSES_S_ENDORLOOP: xor a
   83B9 DD 77 00      [19] 1301     ld +0(ix),a
   83BC DD 77 01      [19] 1302     ld +1(ix),a
   83BF C9            [10] 1303     ret 
   83C0 DD 7E 03      [19] 1304 PLY_AKM_PSES_SAVEPOINTERANDEXIT: ld a,+3(ix)
   83C3 DD BE 04      [19] 1305     cp +4(ix)
   83C6 38 0B         [12] 1306     jr c,PLY_AKM_PSES_NOTREACHED
   83C8 DD 36 03 00   [19] 1307     ld +3(ix),#0
   83CC DD                 1308     .db 221
   83CD 75                 1309     .db 117
   83CE 00                 1310     .db +0
   83CF DD                 1311     .db 221
   83D0 74                 1312     .db 116
   83D1 01                 1313     .db +1
   83D2 C9            [10] 1314     ret 
   83D3 DD 34 03      [23] 1315 PLY_AKM_PSES_NOTREACHED: inc +3(ix)
   83D6 C9            [10] 1316     ret 
   83D7 1F            [ 4] 1317 PLY_AKM_PSES_SOFTWAREORSOFTWAREANDHARDWARE: rra 
   83D8 38 0F         [12] 1318     jr c,PLY_AKM_PSES_SOFTWAREANDHARDWARE
   83DA CD 21 84      [17] 1319     call PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
Hexadecimal [16-Bits]



   83DD CB 10         [ 8] 1320     rl b
   83DF DC 03 84      [17] 1321     call c,PLY_AKM_PSES_READNOISEANDOPENNOISECHANNEL
   83E2 CB 91         [ 8] 1322     res 2,c
   83E4 CD 16 84      [17] 1323     call PLY_AKM_PSES_READSOFTWAREPERIOD
   83E7 18 D7         [12] 1324     jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
   83E9 CD F3 83      [17] 1325 PLY_AKM_PSES_SOFTWAREANDHARDWARE: call PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE
   83EC CD 16 84      [17] 1326     call PLY_AKM_PSES_READSOFTWAREPERIOD
   83EF CB 91         [ 8] 1327     res 2,c
   83F1 18 CD         [12] 1328     jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
   83F3 1F            [ 4] 1329 PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE: rra 
   83F4 E6 07         [ 7] 1330     and #7
   83F6 C6 08         [ 7] 1331     add a,#8
   83F8 32 CE 85      [13] 1332     ld (PLY_AKM_SENDPSGREGISTERR13+1),a
   83FB CD 0B 84      [17] 1333     call PLY_AKM_PSES_READHARDWAREPERIOD
   83FE 3E 10         [ 7] 1334     ld a,#16
   8400 C3 23 84      [10] 1335     jp PLY_AKM_PSES_MANAGEVOLUMEFROMA_HARD
   8403 7E            [ 7] 1336 PLY_AKM_PSES_READNOISEANDOPENNOISECHANNEL: ld a,(hl)
   8404 32 15 8A      [13] 1337     ld (PLY_AKM_NOISEREGISTER),a
   8407 23            [ 6] 1338     inc hl
   8408 CB A9         [ 8] 1339     res 5,c
   840A C9            [10] 1340     ret 
   840B 7E            [ 7] 1341 PLY_AKM_PSES_READHARDWAREPERIOD: ld a,(hl)
   840C 32 1D 8A      [13] 1342     ld (PLY_AKM_REG11),a
   840F 23            [ 6] 1343     inc hl
   8410 7E            [ 7] 1344     ld a,(hl)
   8411 32 21 8A      [13] 1345     ld (PLY_AKM_REG12),a
   8414 23            [ 6] 1346     inc hl
   8415 C9            [10] 1347     ret 
   8416 7E            [ 7] 1348 PLY_AKM_PSES_READSOFTWAREPERIOD: ld a,(hl)
   8417 FD 77 05      [19] 1349     ld +5(iy),a
   841A 23            [ 6] 1350     inc hl
   841B 7E            [ 7] 1351     ld a,(hl)
   841C FD 77 09      [19] 1352     ld +9(iy),a
   841F 23            [ 6] 1353     inc hl
   8420 C9            [10] 1354     ret 
   8421 E6 0F         [ 7] 1355 PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS: and #15
   8423 DD 96 02      [19] 1356 PLY_AKM_PSES_MANAGEVOLUMEFROMA_HARD: sub +2(ix)
   8426 30 01         [12] 1357     jr nc,PLY_AKM_PSES_MVFA_NOOVERFLOW
   8428 AF            [ 4] 1358     xor a
   8429 FD 77 01      [19] 1359 PLY_AKM_PSES_MVFA_NOOVERFLOW: ld +1(iy),a
   842C C9            [10] 1360     ret 
   842D 00 00              1361 PLY_AKM_CHANNEL1_SOUNDEFFECTDATA: .dw 0
   842F 00                 1362 PLY_AKM_CHANNEL1_SOUNDEFFECTINVERTEDVOLUME: .db 0
   8430 00                 1363 PLY_AKM_CHANNEL1_SOUNDEFFECTCURRENTSTEP: .db 0
   8431 00                 1364 PLY_AKM_CHANNEL1_SOUNDEFFECTSPEED: .db 0
   8432 00                 1365     .db 0
   8433 00                 1366     .db 0
   8434 00                 1367     .db 0
   8435 00                 1368 PLY_AKM_CHANNEL2_SOUNDEFFECTDATA: .db 0
   8436 00                 1369     .db 0
   8437 00                 1370     .db 0
   8438 00                 1371     .db 0
   8439 00                 1372     .db 0
   843A 00                 1373     .db 0
   843B 00                 1374     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 27.
Hexadecimal [16-Bits]



   843C 00                 1375     .db 0
   843D 00                 1376 PLY_AKM_CHANNEL3_SOUNDEFFECTDATA: .db 0
   843E 00                 1377     .db 0
   843F 00                 1378     .db 0
   8440 00                 1379     .db 0
   8441 00                 1380     .db 0
   8442 00                 1381     .db 0
   8443 00                 1382     .db 0
   8444 00                 1383     .db 0
   8445                    1384 _PLY_AKM_INIT::
   8445 11 59 85      [10] 1385 PLY_AKM_INIT: ld de,#PLY_AKM_READLINE+1
   8448 ED A0         [16] 1386     ldi
   844A ED A0         [16] 1387     ldi
   844C 11 2F 89      [10] 1388     ld de,#PLY_AKM_PTARPEGGIOS+1
   844F ED A0         [16] 1389     ldi
   8451 ED A0         [16] 1390     ldi
   8453 11 61 89      [10] 1391     ld de,#PLY_AKM_PTPITCHES+1
   8456 ED A0         [16] 1392     ldi
   8458 ED A0         [16] 1393     ldi
   845A 87            [ 4] 1394     add a,a
   845B 5F            [ 4] 1395     ld e,a
   845C 16 00         [ 7] 1396     ld d,#0
   845E 19            [11] 1397     add hl,de
   845F 7E            [ 7] 1398     ld a,(hl)
   8460 23            [ 6] 1399     inc hl
   8461 66            [ 7] 1400     ld h,(hl)
   8462 6F            [ 4] 1401     ld l,a
   8463 DD 21 A9 84   [14] 1402     ld ix,#PLY_AKM_INITVARS_START
   8467 3E 0D         [ 7] 1403     ld a,#13
   8469 DD 5E 00      [19] 1404 PLY_AKM_INITVARS_LOOP: ld e,+0(ix)
   846C DD 56 01      [19] 1405     ld d,+1(ix)
   846F DD 23         [10] 1406     inc ix
   8471 DD 23         [10] 1407     inc ix
   8473 ED A0         [16] 1408     ldi
   8475 3D            [ 4] 1409     dec a
   8476 20 F1         [12] 1410     jr nz,PLY_AKM_INITVARS_LOOP
   8478 32 E6 84      [13] 1411     ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
   847B EB            [ 4] 1412     ex de,hl
   847C 21 F5 84      [10] 1413     ld hl,#PLY_AKM_PTLINKER+1
   847F 73            [ 7] 1414     ld (hl),e
   8480 23            [ 6] 1415     inc hl
   8481 72            [ 7] 1416     ld (hl),d
   8482 21 84 89      [10] 1417     ld hl,#PLY_AKM_TRACK1_DATA
   8485 11 85 89      [10] 1418     ld de,#PLY_AKM_TRACK1_TRANSPOSITION
   8488 01 23 00      [10] 1419     ld bc,#35
   848B 77            [ 7] 1420     ld (hl),a
   848C ED B0         [21] 1421     ldir
   848E 3A E1 84      [13] 1422     ld a,(PLY_AKM_SPEED+1)
   8491 3D            [ 4] 1423     dec a
   8492 32 DE 84      [13] 1424     ld (PLY_AKM_TICKCOUNTER+1),a
   8495 2A 59 85      [16] 1425     ld hl,(PLY_AKM_READLINE+1)
   8498 5E            [ 7] 1426     ld e,(hl)
   8499 23            [ 6] 1427     inc hl
   849A 56            [ 7] 1428     ld d,(hl)
   849B 13            [ 6] 1429     inc de
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 28.
Hexadecimal [16-Bits]



   849C ED 53 8E 89   [20] 1430     ld (PLY_AKM_TRACK1_PTINSTRUMENT),de
   84A0 ED 53 B2 89   [20] 1431     ld (PLY_AKM_TRACK2_PTINSTRUMENT),de
   84A4 ED 53 D6 89   [20] 1432     ld (PLY_AKM_TRACK3_PTINSTRUMENT),de
   84A8 C9            [10] 1433     ret 
   84A9 5C 85              1434 PLY_AKM_INITVARS_START: .dw PLY_AKM_NOTEINDEXTABLE+1
   84AB 5D 85              1435     .dw PLY_AKM_NOTEINDEXTABLE+2
   84AD F1 84              1436     .dw PLY_AKM_LINKER+1
   84AF F2 84              1437     .dw PLY_AKM_LINKER+2
   84B1 E1 84              1438     .dw PLY_AKM_SPEED+1
   84B3 97 86              1439     .dw PLY_AKM_RT_PRIMARYINSTRUMENT+1
   84B5 93 86              1440     .dw PLY_AKM_RT_SECONDARYINSTRUMENT+1
   84B7 E1 86              1441     .dw PLY_AKM_RT_PRIMARYWAIT+1
   84B9 E5 86              1442     .dw PLY_AKM_RT_SECONDARYWAIT+1
   84BB 02 85              1443     .dw PLY_AKM_DEFAULTSTARTNOTEINTRACKS+1
   84BD 0D 85              1444     .dw PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS+1
   84BF 18 85              1445     .dw PLY_AKM_DEFAULTSTARTWAITINTRACKS+1
   84C1 43 86              1446     .dw PLY_AKM_FLAGNOTEANDEFFECTINCELL+1
   84C3                    1447 PLY_AKM_INITVARS_END:
   84C3                    1448 _PLY_AKM_STOP::
   84C3 ED 73 DD 85   [20] 1449 PLY_AKM_STOP: ld (PLY_AKM_SENDPSGREGISTEREND+1),sp
   84C7 AF            [ 4] 1450     xor a
   84C8 32 F1 89      [13] 1451     ld (PLY_AKM_TRACK1_VOLUME),a
   84CB 32 FD 89      [13] 1452     ld (PLY_AKM_TRACK2_VOLUME),a
   84CE 32 09 8A      [13] 1453     ld (PLY_AKM_TRACK3_VOLUME),a
   84D1 3E 3F         [ 7] 1454     ld a,#63
   84D3 32 19 8A      [13] 1455     ld (PLY_AKM_MIXERREGISTER),a
   84D6 C3 B0 85      [10] 1456     jp PLY_AKM_SENDPSG
   84D9                    1457 _PLY_AKM_PLAY::
   84D9 ED 73 DD 85   [20] 1458 PLY_AKM_PLAY: ld (PLY_AKM_SENDPSGREGISTEREND+1),sp
   84DD 3E 00         [ 7] 1459 PLY_AKM_TICKCOUNTER: ld a,#0
   84DF 3C            [ 4] 1460     inc a
   84E0 FE 01         [ 7] 1461 PLY_AKM_SPEED: cp #1
   84E2 C2 75 85      [10] 1462     jp nz,PLY_AKM_TICKCOUNTERMANAGED
   84E5 3E 00         [ 7] 1463 PLY_AKM_PATTERNREMAININGHEIGHT: ld a,#0
   84E7 D6 01         [ 7] 1464     sub #1
   84E9 38 05         [12] 1465     jr c,PLY_AKM_LINKER
   84EB 32 E6 84      [13] 1466     ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
   84EE 18 68         [12] 1467     jr PLY_AKM_READLINE
   84F0                    1468 PLY_AKM_LINKER:
   84F0 11 00 00      [10] 1469 PLY_AKM_TRACKINDEX: ld de,#0
   84F3 D9            [ 4] 1470     exx
   84F4 21 00 00      [10] 1471 PLY_AKM_PTLINKER: ld hl,#0
   84F7 AF            [ 4] 1472 PLY_AKM_LINKERPOSTPT: xor a
   84F8 32 84 89      [13] 1473     ld (PLY_AKM_TRACK1_DATA),a
   84FB 32 A8 89      [13] 1474     ld (PLY_AKM_TRACK1_DATA_END),a
   84FE 32 CC 89      [13] 1475     ld (PLY_AKM_TRACK2_DATA_END),a
   8501 3E 00         [ 7] 1476 PLY_AKM_DEFAULTSTARTNOTEINTRACKS: ld a,#0
   8503 32 8B 89      [13] 1477     ld (PLY_AKM_TRACK1_ESCAPENOTE),a
   8506 32 AF 89      [13] 1478     ld (PLY_AKM_TRACK2_ESCAPENOTE),a
   8509 32 D3 89      [13] 1479     ld (PLY_AKM_TRACK3_ESCAPENOTE),a
   850C 3E 00         [ 7] 1480 PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS: ld a,#0
   850E 32 8C 89      [13] 1481     ld (PLY_AKM_TRACK1_ESCAPEINSTRUMENT),a
   8511 32 B0 89      [13] 1482     ld (PLY_AKM_TRACK2_ESCAPEINSTRUMENT),a
   8514 32 D4 89      [13] 1483     ld (PLY_AKM_TRACK3_ESCAPEINSTRUMENT),a
   8517 3E 00         [ 7] 1484 PLY_AKM_DEFAULTSTARTWAITINTRACKS: ld a,#0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 29.
Hexadecimal [16-Bits]



   8519 32 8D 89      [13] 1485     ld (PLY_AKM_TRACK1_ESCAPEWAIT),a
   851C 32 B1 89      [13] 1486     ld (PLY_AKM_TRACK2_ESCAPEWAIT),a
   851F 32 D5 89      [13] 1487     ld (PLY_AKM_TRACK3_ESCAPEWAIT),a
   8522 46            [ 7] 1488     ld b,(hl)
   8523 23            [ 6] 1489     inc hl
   8524 CB 18         [ 8] 1490     rr b
   8526 30 08         [12] 1491     jr nc,PLY_AKM_LINKERAFTERSPEEDCHANGE
   8528 7E            [ 7] 1492     ld a,(hl)
   8529 23            [ 6] 1493     inc hl
   852A 7E            [ 7] 1494     ld a,(hl)
   852B 23            [ 6] 1495     inc hl
   852C 66            [ 7] 1496     ld h,(hl)
   852D 6F            [ 4] 1497     ld l,a
   852E 18 C7         [12] 1498     jr PLY_AKM_LINKERPOSTPT
   8530 CB 18         [ 8] 1499 PLY_AKM_LINKERAFTERSPEEDCHANGE: rr b
   8532 30 07         [12] 1500     jr nc,PLY_AKM_LINKERUSEPREVIOUSHEIGHT
   8534 7E            [ 7] 1501     ld a,(hl)
   8535 23            [ 6] 1502     inc hl
   8536 32 3C 85      [13] 1503     ld (PLY_AKM_LINKERUSEPREVIOUSHEIGHT+1),a
   8539 18 02         [12] 1504     jr PLY_AKM_LINKERSETREMAININGHEIGHT
   853B                    1505 PLY_AKM_LINKERUSEPREVIOUSHEIGHT:
   853B 3E 00         [ 7] 1506 PLY_AKM_LINKERPREVIOUSREMAININGHEIGHT: ld a,#0
   853D 32 E6 84      [13] 1507 PLY_AKM_LINKERSETREMAININGHEIGHT: ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
   8540 DD 21 84 89   [14] 1508     ld ix,#PLY_AKM_TRACK1_DATA
   8544 CD E0 85      [17] 1509     call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
   8547 DD 21 A8 89   [14] 1510     ld ix,#PLY_AKM_TRACK1_DATA_END
   854B CD E0 85      [17] 1511     call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
   854E DD 21 CC 89   [14] 1512     ld ix,#PLY_AKM_TRACK2_DATA_END
   8552 CD E0 85      [17] 1513     call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
   8555 22 F5 84      [16] 1514     ld (PLY_AKM_PTLINKER+1),hl
   8558                    1515 PLY_AKM_READLINE:
   8558 11 00 00      [10] 1516 PLY_AKM_PTINSTRUMENTS: ld de,#0
   855B 01 00 00      [10] 1517 PLY_AKM_NOTEINDEXTABLE: ld bc,#0
   855E D9            [ 4] 1518     exx
   855F DD 21 84 89   [14] 1519     ld ix,#PLY_AKM_TRACK1_DATA
   8563 CD 2C 86      [17] 1520     call PLY_AKM_READTRACK
   8566 DD 21 A8 89   [14] 1521     ld ix,#PLY_AKM_TRACK1_DATA_END
   856A CD 2C 86      [17] 1522     call PLY_AKM_READTRACK
   856D DD 21 CC 89   [14] 1523     ld ix,#PLY_AKM_TRACK2_DATA_END
   8571 CD 2C 86      [17] 1524     call PLY_AKM_READTRACK
   8574 AF            [ 4] 1525     xor a
   8575 32 DE 84      [13] 1526 PLY_AKM_TICKCOUNTERMANAGED: ld (PLY_AKM_TICKCOUNTER+1),a
   8578 11 28 8A      [10] 1527     ld de,#PLY_AKM_PERIODTABLE
   857B D9            [ 4] 1528     exx
   857C 0E E0         [ 7] 1529     ld c,#224
   857E DD 21 84 89   [14] 1530     ld ix,#PLY_AKM_TRACK1_DATA
   8582 CD 2C 87      [17] 1531     call PLY_AKM_MANAGEEFFECTS
   8585 FD 21 F0 89   [14] 1532     ld iy,#PLY_AKM_TRACK3_DATA_END
   8589 CD CB 87      [17] 1533     call PLY_AKM_PLAYSOUNDSTREAM
   858C CB 39         [ 8] 1534     srl c
   858E DD 21 A8 89   [14] 1535     ld ix,#PLY_AKM_TRACK1_DATA_END
   8592 CD 2C 87      [17] 1536     call PLY_AKM_MANAGEEFFECTS
   8595 FD 21 FC 89   [14] 1537     ld iy,#PLY_AKM_TRACK2_REGISTERS
   8599 CD CB 87      [17] 1538     call PLY_AKM_PLAYSOUNDSTREAM
   859C CB 19         [ 8] 1539     rr c
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 30.
Hexadecimal [16-Bits]



   859E DD 21 CC 89   [14] 1540     ld ix,#PLY_AKM_TRACK2_DATA_END
   85A2 CD 2C 87      [17] 1541     call PLY_AKM_MANAGEEFFECTS
   85A5 FD 21 08 8A   [14] 1542     ld iy,#PLY_AKM_TRACK3_REGISTERS
   85A9 CD CB 87      [17] 1543     call PLY_AKM_PLAYSOUNDSTREAM
   85AC 79            [ 4] 1544     ld a,c
   85AD CD 7A 83      [17] 1545     call PLY_AKM_PLAYSOUNDEFFECTSSTREAM
   85B0 31 F0 89      [10] 1546 PLY_AKM_SENDPSG: ld sp,#PLY_AKM_TRACK3_DATA_END
   85B3 01 80 F6      [10] 1547     ld bc,#63104
   85B6 3E C0         [ 7] 1548     ld a,#192
   85B8 11 F6 F4      [10] 1549     ld de,#62710
   85BB ED 79         [12] 1550     out (c),a
   85BD E1            [10] 1551 PLY_AKM_SENDPSGREGISTER: pop hl
   85BE 42            [ 4] 1552 PLY_AKM_SENDPSGREGISTERAFTERPOP: ld b,d
   85BF ED 69         [12] 1553     out (c),l
   85C1 43            [ 4] 1554     ld b,e
   85C2 ED                 1555     .db 237
   85C3 71                 1556     .db 113
   85C4 42            [ 4] 1557     ld b,d
   85C5 ED 61         [12] 1558     out (c),h
   85C7 43            [ 4] 1559     ld b,e
   85C8 ED 49         [12] 1560     out (c),c
   85CA ED 79         [12] 1561     out (c),a
   85CC C9            [10] 1562     ret 
   85CD                    1563 PLY_AKM_SENDPSGREGISTERR13:
   85CD 3E 00         [ 7] 1564 PLY_AKM_SETREG13: ld a,#0
   85CF FE 00         [ 7] 1565 PLY_AKM_SETREG13OLD: cp #0
   85D1 28 09         [12] 1566     jr z,PLY_AKM_SENDPSGREGISTEREND
   85D3 32 D0 85      [13] 1567     ld (PLY_AKM_SETREG13OLD+1),a
   85D6 67            [ 4] 1568     ld h,a
   85D7 2E 0D         [ 7] 1569     ld l,#13
   85D9 3E C0         [ 7] 1570     ld a,#192
   85DB C9            [10] 1571     ret 
   85DC                    1572 PLY_AKM_SENDPSGREGISTEREND:
   85DC 31 00 00      [10] 1573 PLY_AKM_SAVESP: ld sp,#0
   85DF C9            [10] 1574     ret 
   85E0 CB 18         [ 8] 1575 PLY_AKM_CHECKTRANSPOSITIONANDTRACK: rr b
   85E2 30 05         [12] 1576     jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_AFTERTRANSPOSITION
   85E4 7E            [ 7] 1577     ld a,(hl)
   85E5 DD 77 01      [19] 1578     ld +1(ix),a
   85E8 23            [ 6] 1579     inc hl
   85E9 CB 18         [ 8] 1580 PLY_AKM_CHECKTRANSPOSITIONANDTRACK_AFTERTRANSPOSITION: rr b
   85EB 30 32         [12] 1581     jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_NONEWTRACK
   85ED 7E            [ 7] 1582     ld a,(hl)
   85EE 23            [ 6] 1583     inc hl
   85EF CB 27         [ 8] 1584     sla a
   85F1 30 16         [12] 1585     jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_TRACKOFFSET
   85F3 D9            [ 4] 1586     exx
   85F4 6F            [ 4] 1587     ld l,a
   85F5 26 00         [ 7] 1588     ld h,#0
   85F7 19            [11] 1589     add hl,de
   85F8 7E            [ 7] 1590     ld a,(hl)
   85F9 DD 77 02      [19] 1591     ld +2(ix),a
   85FC DD 77 04      [19] 1592     ld +4(ix),a
   85FF 23            [ 6] 1593     inc hl
   8600 7E            [ 7] 1594     ld a,(hl)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 31.
Hexadecimal [16-Bits]



   8601 DD 77 03      [19] 1595     ld +3(ix),a
   8604 DD 77 05      [19] 1596     ld +5(ix),a
   8607 D9            [ 4] 1597     exx
   8608 C9            [10] 1598     ret 
   8609 1F            [ 4] 1599 PLY_AKM_CHECKTRANSPOSITIONANDTRACK_TRACKOFFSET: rra 
   860A 57            [ 4] 1600     ld d,a
   860B 5E            [ 7] 1601     ld e,(hl)
   860C 23            [ 6] 1602     inc hl
   860D 4D            [ 4] 1603     ld c,l
   860E 7C            [ 4] 1604     ld a,h
   860F 19            [11] 1605     add hl,de
   8610 DD                 1606     .db 221
   8611 75                 1607     .db 117
   8612 02                 1608     .db +2
   8613 DD                 1609     .db 221
   8614 74                 1610     .db 116
   8615 03                 1611     .db +3
   8616 DD                 1612     .db 221
   8617 75                 1613     .db 117
   8618 04                 1614     .db +4
   8619 DD                 1615     .db 221
   861A 74                 1616     .db 116
   861B 05                 1617     .db +5
   861C 69            [ 4] 1618     ld l,c
   861D 67            [ 4] 1619     ld h,a
   861E C9            [10] 1620     ret 
   861F DD 7E 02      [19] 1621 PLY_AKM_CHECKTRANSPOSITIONANDTRACK_NONEWTRACK: ld a,+2(ix)
   8622 DD 77 04      [19] 1622     ld +4(ix),a
   8625 DD 7E 03      [19] 1623     ld a,+3(ix)
   8628 DD 77 05      [19] 1624     ld +5(ix),a
   862B C9            [10] 1625     ret 
   862C DD 7E 00      [19] 1626 PLY_AKM_READTRACK: ld a,+0(ix)
   862F D6 01         [ 7] 1627     sub #1
   8631 38 04         [12] 1628     jr c,PLY_AKM_RT_NOEMPTYCELL
   8633 DD 77 00      [19] 1629     ld +0(ix),a
   8636 C9            [10] 1630     ret 
   8637 DD 6E 04      [19] 1631 PLY_AKM_RT_NOEMPTYCELL: ld l,+4(ix)
   863A DD 66 05      [19] 1632     ld h,+5(ix)
   863D 46            [ 7] 1633 PLY_AKM_RT_GETDATABYTE: ld b,(hl)
   863E 23            [ 6] 1634     inc hl
   863F 78            [ 4] 1635     ld a,b
   8640 E6 0F         [ 7] 1636     and #15
   8642 FE 0C         [ 7] 1637 PLY_AKM_FLAGNOTEANDEFFECTINCELL: cp #12
   8644 38 26         [12] 1638     jr c,PLY_AKM_RT_NOTEREFERENCE
   8646 D6 0C         [ 7] 1639     sub #12
   8648 28 12         [12] 1640     jr z,PLY_AKM_RT_NOTEANDEFFECTS
   864A 3D            [ 4] 1641     dec a
   864B 28 15         [12] 1642     jr z,PLY_AKM_RT_NONOTEMAYBEEFFECTS
   864D 3D            [ 4] 1643     dec a
   864E 28 05         [12] 1644     jr z,PLY_AKM_RT_NEWESCAPENOTE
   8650 DD 7E 07      [19] 1645     ld a,+7(ix)
   8653 18 1E         [12] 1646     jr PLY_AKM_RT_AFTERNOTEREAD
   8655 7E            [ 7] 1647 PLY_AKM_RT_NEWESCAPENOTE: ld a,(hl)
   8656 DD 77 07      [19] 1648     ld +7(ix),a
   8659 23            [ 6] 1649     inc hl
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 32.
Hexadecimal [16-Bits]



   865A 18 17         [12] 1650     jr PLY_AKM_RT_AFTERNOTEREAD
   865C 3D            [ 4] 1651 PLY_AKM_RT_NOTEANDEFFECTS: dec a
   865D 32 EA 86      [13] 1652     ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
   8660 18 DB         [12] 1653     jr PLY_AKM_RT_GETDATABYTE
   8662 CB 60         [ 8] 1654 PLY_AKM_RT_NONOTEMAYBEEFFECTS: bit 4,b
   8664 28 61         [12] 1655     jr z,PLY_AKM_RT_READWAITFLAGS
   8666 78            [ 4] 1656     ld a,b
   8667 32 EA 86      [13] 1657     ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
   866A 18 5B         [12] 1658     jr PLY_AKM_RT_READWAITFLAGS
   866C D9            [ 4] 1659 PLY_AKM_RT_NOTEREFERENCE: exx
   866D 6F            [ 4] 1660     ld l,a
   866E 26 00         [ 7] 1661     ld h,#0
   8670 09            [11] 1662     add hl,bc
   8671 7E            [ 7] 1663     ld a,(hl)
   8672 D9            [ 4] 1664     exx
   8673 DD 86 01      [19] 1665 PLY_AKM_RT_AFTERNOTEREAD: add a,+1(ix)
   8676 DD 77 06      [19] 1666     ld +6(ix),a
   8679 78            [ 4] 1667     ld a,b
   867A E6 30         [ 7] 1668     and #48
   867C 28 0F         [12] 1669     jr z,PLY_AKM_RT_SAMEESCAPEINSTRUMENT
   867E FE 10         [ 7] 1670     cp #16
   8680 28 14         [12] 1671     jr z,PLY_AKM_RT_PRIMARYINSTRUMENT
   8682 FE 20         [ 7] 1672     cp #32
   8684 28 0C         [12] 1673     jr z,PLY_AKM_RT_SECONDARYINSTRUMENT
   8686 7E            [ 7] 1674     ld a,(hl)
   8687 23            [ 6] 1675     inc hl
   8688 DD 77 08      [19] 1676     ld +8(ix),a
   868B 18 0B         [12] 1677     jr PLY_AKM_RT_STORECURRENTINSTRUMENT
   868D DD 7E 08      [19] 1678 PLY_AKM_RT_SAMEESCAPEINSTRUMENT: ld a,+8(ix)
   8690 18 06         [12] 1679     jr PLY_AKM_RT_STORECURRENTINSTRUMENT
   8692                    1680 PLY_AKM_RT_SECONDARYINSTRUMENT:
   8692 3E 00         [ 7] 1681 PLY_AKM_SECONDARYINSTRUMENT: ld a,#0
   8694 18 02         [12] 1682     jr PLY_AKM_RT_STORECURRENTINSTRUMENT
   8696                    1683 PLY_AKM_RT_PRIMARYINSTRUMENT:
   8696 3E 00         [ 7] 1684 PLY_AKM_PRIMARYINSTRUMENT: ld a,#0
   8698 D9            [ 4] 1685 PLY_AKM_RT_STORECURRENTINSTRUMENT: exx
   8699 87            [ 4] 1686     add a,a
   869A 6F            [ 4] 1687     ld l,a
   869B 26 00         [ 7] 1688     ld h,#0
   869D 19            [11] 1689     add hl,de
   869E 7E            [ 7] 1690     ld a,(hl)
   869F 23            [ 6] 1691     inc hl
   86A0 66            [ 7] 1692     ld h,(hl)
   86A1 6F            [ 4] 1693     ld l,a
   86A2 7E            [ 7] 1694     ld a,(hl)
   86A3 23            [ 6] 1695     inc hl
   86A4 DD 77 0D      [19] 1696     ld +13(ix),a
   86A7 DD                 1697     .db 221
   86A8 75                 1698     .db 117
   86A9 0A                 1699     .db +10
   86AA DD                 1700     .db 221
   86AB 74                 1701     .db 116
   86AC 0B                 1702     .db +11
   86AD D9            [ 4] 1703     exx
   86AE AF            [ 4] 1704     xor a
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 33.
Hexadecimal [16-Bits]



   86AF DD 77 0C      [19] 1705     ld +12(ix),a
   86B2 DD 77 0F      [19] 1706     ld +15(ix),a
   86B5 DD 77 10      [19] 1707     ld +16(ix),a
   86B8 DD 77 11      [19] 1708     ld +17(ix),a
   86BB DD 77 18      [19] 1709     ld +24(ix),a
   86BE DD 77 19      [19] 1710     ld +25(ix),a
   86C1 DD 77 1F      [19] 1711     ld +31(ix),a
   86C4 DD 77 20      [19] 1712     ld +32(ix),a
   86C7 78            [ 4] 1713 PLY_AKM_RT_READWAITFLAGS: ld a,b
   86C8 E6 C0         [ 7] 1714     and #192
   86CA 28 0F         [12] 1715     jr z,PLY_AKM_RT_SAMEESCAPEWAIT
   86CC FE 40         [ 7] 1716     cp #64
   86CE 28 10         [12] 1717     jr z,PLY_AKM_RT_PRIMARYWAIT
   86D0 FE 80         [ 7] 1718     cp #128
   86D2 28 10         [12] 1719     jr z,PLY_AKM_RT_SECONDARYWAIT
   86D4 7E            [ 7] 1720     ld a,(hl)
   86D5 23            [ 6] 1721     inc hl
   86D6 DD 77 09      [19] 1722     ld +9(ix),a
   86D9 18 0B         [12] 1723     jr PLY_AKM_RT_STORECURRENTWAIT
   86DB DD 7E 09      [19] 1724 PLY_AKM_RT_SAMEESCAPEWAIT: ld a,+9(ix)
   86DE 18 06         [12] 1725     jr PLY_AKM_RT_STORECURRENTWAIT
   86E0                    1726 PLY_AKM_RT_PRIMARYWAIT:
   86E0 3E 00         [ 7] 1727 PLY_AKM_PRIMARYWAIT: ld a,#0
   86E2 18 02         [12] 1728     jr PLY_AKM_RT_STORECURRENTWAIT
   86E4                    1729 PLY_AKM_RT_SECONDARYWAIT:
   86E4 3E 00         [ 7] 1730 PLY_AKM_SECONDARYWAIT: ld a,#0
   86E6 DD 77 00      [19] 1731 PLY_AKM_RT_STORECURRENTWAIT: ld +0(ix),a
   86E9 3E 00         [ 7] 1732 PLY_AKM_RT_READEFFECTSFLAG: ld a,#0
   86EB B7            [ 4] 1733     or a
   86EC 20 07         [12] 1734     jr nz,PLY_AKM_RT_READEFFECTS
   86EE DD                 1735 PLY_AKM_RT_AFTEREFFECTS: .db 221
   86EF 75                 1736     .db 117
   86F0 04                 1737     .db +4
   86F1 DD                 1738     .db 221
   86F2 74                 1739     .db 116
   86F3 05                 1740     .db +5
   86F4 C9            [10] 1741     ret 
   86F5 AF            [ 4] 1742 PLY_AKM_RT_READEFFECTS: xor a
   86F6 32 EA 86      [13] 1743     ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
   86F9 FD 21 F8 88   [14] 1744 PLY_AKM_RT_READEFFECT: ld iy,#PLY_AKM_EFFECTTABLE
   86FD 46            [ 7] 1745     ld b,(hl)
   86FE 78            [ 4] 1746     ld a,b
   86FF 23            [ 6] 1747     inc hl
   8700 E6 0E         [ 7] 1748     and #14
   8702 5F            [ 4] 1749     ld e,a
   8703 16 00         [ 7] 1750     ld d,#0
   8705 FD 19         [15] 1751     add iy,de
   8707 78            [ 4] 1752     ld a,b
   8708 1F            [ 4] 1753     rra 
   8709 1F            [ 4] 1754     rra 
   870A 1F            [ 4] 1755     rra 
   870B 1F            [ 4] 1756     rra 
   870C E6 0F         [ 7] 1757     and #15
   870E FD E9         [ 8] 1758     jp (iy)
   8710 CB 40         [ 8] 1759 PLY_AKM_RT_READEFFECT_RETURN: bit 0,b
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 34.
Hexadecimal [16-Bits]



   8712 20 E5         [12] 1760     jr nz,PLY_AKM_RT_READEFFECT
   8714 18 D8         [12] 1761     jr PLY_AKM_RT_AFTEREFFECTS
   8716 7E            [ 7] 1762 PLY_AKM_RT_WAITLONG: ld a,(hl)
   8717 23            [ 6] 1763     inc hl
   8718 DD 77 00      [19] 1764     ld +0(ix),a
   871B 18 08         [12] 1765     jr PLY_AKM_RT_CELLREAD
   871D 78            [ 4] 1766 PLY_AKM_RT_WAITSHORT: ld a,b
   871E 07            [ 4] 1767     rlca 
   871F 07            [ 4] 1768     rlca 
   8720 E6 03         [ 7] 1769     and #3
   8722 DD 77 00      [19] 1770     ld +0(ix),a
   8725 DD                 1771 PLY_AKM_RT_CELLREAD: .db 221
   8726 75                 1772     .db 117
   8727 04                 1773     .db +4
   8728 DD                 1774     .db 221
   8729 74                 1775     .db 116
   872A 05                 1776     .db +5
   872B C9            [10] 1777     ret 
   872C DD 7E 0F      [19] 1778 PLY_AKM_MANAGEEFFECTS: ld a,+15(ix)
   872F B7            [ 4] 1779     or a
   8730 28 28         [12] 1780     jr z,PLY_AKM_ME_PITCHUPDOWNFINISHED
   8732 DD 6E 12      [19] 1781     ld l,+18(ix)
   8735 DD 66 10      [19] 1782     ld h,+16(ix)
   8738 DD 5E 13      [19] 1783     ld e,+19(ix)
   873B DD 56 14      [19] 1784     ld d,+20(ix)
   873E DD 7E 11      [19] 1785     ld a,+17(ix)
   8741 CB 7A         [ 8] 1786     bit 7,d
   8743 20 05         [12] 1787     jr nz,PLY_AKM_ME_PITCHUPDOWN_NEGATIVESPEED
   8745 19            [11] 1788 PLY_AKM_ME_PITCHUPDOWN_POSITIVESPEED: add hl,de
   8746 CE 00         [ 7] 1789     adc a,#0
   8748 18 07         [12] 1790     jr PLY_AKM_ME_PITCHUPDOWN_SAVE
   874A CB BA         [ 8] 1791 PLY_AKM_ME_PITCHUPDOWN_NEGATIVESPEED: res 7,d
   874C B7            [ 4] 1792     or a
   874D ED 52         [15] 1793     sbc hl,de
   874F DE 00         [ 7] 1794     sbc a,#0
   8751 DD 77 11      [19] 1795 PLY_AKM_ME_PITCHUPDOWN_SAVE: ld +17(ix),a
   8754 DD                 1796     .db 221
   8755 75                 1797     .db 117
   8756 12                 1798     .db +18
   8757 DD                 1799     .db 221
   8758 74                 1800     .db 116
   8759 10                 1801     .db +16
   875A DD 7E 15      [19] 1802 PLY_AKM_ME_PITCHUPDOWNFINISHED: ld a,+21(ix)
   875D B7            [ 4] 1803     or a
   875E 28 30         [12] 1804     jr z,PLY_AKM_ME_ARPEGGIOTABLEFINISHED
   8760 DD 5E 16      [19] 1805     ld e,+22(ix)
   8763 DD 56 17      [19] 1806     ld d,+23(ix)
   8766 DD 6E 18      [19] 1807     ld l,+24(ix)
   8769 26 00         [ 7] 1808     ld h,#0
   876B 19            [11] 1809     add hl,de
   876C 7E            [ 7] 1810     ld a,(hl)
   876D CB 2F         [ 8] 1811     sra a
   876F DD 77 1B      [19] 1812     ld +27(ix),a
   8772 DD 7E 19      [19] 1813     ld a,+25(ix)
   8775 DD BE 1A      [19] 1814     cp +26(ix)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 35.
Hexadecimal [16-Bits]



   8778 38 12         [12] 1815     jr c,PLY_AKM_ME_ARPEGGIOTABLE_SPEEDNOTREACHED
   877A DD 36 19 00   [19] 1816     ld +25(ix),#0
   877E DD 34 18      [23] 1817     inc +24(ix)
   8781 23            [ 6] 1818     inc hl
   8782 7E            [ 7] 1819     ld a,(hl)
   8783 1F            [ 4] 1820     rra 
   8784 30 0A         [12] 1821     jr nc,PLY_AKM_ME_ARPEGGIOTABLEFINISHED
   8786 6F            [ 4] 1822     ld l,a
   8787 DD 77 18      [19] 1823     ld +24(ix),a
   878A 18 04         [12] 1824     jr PLY_AKM_ME_ARPEGGIOTABLEFINISHED
   878C 3C            [ 4] 1825 PLY_AKM_ME_ARPEGGIOTABLE_SPEEDNOTREACHED: inc a
   878D DD 77 19      [19] 1826     ld +25(ix),a
   8790 DD 7E 1C      [19] 1827 PLY_AKM_ME_ARPEGGIOTABLEFINISHED: ld a,+28(ix)
   8793 B7            [ 4] 1828     or a
   8794 C8            [11] 1829     ret z
   8795 DD 6E 1D      [19] 1830     ld l,+29(ix)
   8798 DD 66 1E      [19] 1831     ld h,+30(ix)
   879B DD 5E 1F      [19] 1832     ld e,+31(ix)
   879E 16 00         [ 7] 1833     ld d,#0
   87A0 19            [11] 1834     add hl,de
   87A1 7E            [ 7] 1835     ld a,(hl)
   87A2 CB 2F         [ 8] 1836     sra a
   87A4 F2 A8 87      [10] 1837     jp p,PLY_AKM_ME_PITCHTABLEENDNOTREACHED_POSITIVE
   87A7 15            [ 4] 1838     dec d
   87A8 DD 77 22      [19] 1839 PLY_AKM_ME_PITCHTABLEENDNOTREACHED_POSITIVE: ld +34(ix),a
   87AB DD                 1840     .db 221
   87AC 72                 1841     .db 114
   87AD 23                 1842     .db +35
   87AE DD 7E 20      [19] 1843     ld a,+32(ix)
   87B1 DD BE 21      [19] 1844     cp +33(ix)
   87B4 38 10         [12] 1845     jr c,PLY_AKM_ME_PITCHTABLE_SPEEDNOTREACHED
   87B6 DD 36 20 00   [19] 1846     ld +32(ix),#0
   87BA DD 34 1F      [23] 1847     inc +31(ix)
   87BD 23            [ 6] 1848     inc hl
   87BE 7E            [ 7] 1849     ld a,(hl)
   87BF 1F            [ 4] 1850     rra 
   87C0 D0            [11] 1851     ret nc
   87C1 6F            [ 4] 1852     ld l,a
   87C2 DD 77 1F      [19] 1853     ld +31(ix),a
   87C5 C9            [10] 1854     ret 
   87C6 3C            [ 4] 1855 PLY_AKM_ME_PITCHTABLE_SPEEDNOTREACHED: inc a
   87C7 DD 77 20      [19] 1856     ld +32(ix),a
   87CA C9            [10] 1857     ret 
   87CB DD 6E 0A      [19] 1858 PLY_AKM_PLAYSOUNDSTREAM: ld l,+10(ix)
   87CE DD 66 0B      [19] 1859     ld h,+11(ix)
   87D1 7E            [ 7] 1860 PLY_AKM_PSS_READFIRSTBYTE: ld a,(hl)
   87D2 47            [ 4] 1861     ld b,a
   87D3 23            [ 6] 1862     inc hl
   87D4 1F            [ 4] 1863     rra 
   87D5 38 21         [12] 1864     jr c,PLY_AKM_PSS_SOFTORSOFTANDHARD
   87D7 1F            [ 4] 1865     rra 
   87D8 38 6C         [12] 1866     jr c,PLY_AKM_PSS_SOFTWARETOHARDWARE
   87DA 1F            [ 4] 1867     rra 
   87DB 30 0C         [12] 1868     jr nc,PLY_AKM_PSS_NSNH_NOTENDOFSOUND
   87DD 7E            [ 7] 1869     ld a,(hl)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 36.
Hexadecimal [16-Bits]



   87DE 23            [ 6] 1870     inc hl
   87DF 66            [ 7] 1871     ld h,(hl)
   87E0 6F            [ 4] 1872     ld l,a
   87E1 DD                 1873     .db 221
   87E2 75                 1874     .db 117
   87E3 0A                 1875     .db +10
   87E4 DD                 1876     .db 221
   87E5 74                 1877     .db 116
   87E6 0B                 1878     .db +11
   87E7 18 E8         [12] 1879     jr PLY_AKM_PSS_READFIRSTBYTE
   87E9 CB D1         [ 8] 1880 PLY_AKM_PSS_NSNH_NOTENDOFSOUND: set 2,c
   87EB CD 86 88      [17] 1881     call PLY_AKM_PSS_SHARED_ADJUSTVOLUME
   87EE FD 77 01      [19] 1882     ld +1(iy),a
   87F1 CB 10         [ 8] 1883     rl b
   87F3 DC 8E 88      [17] 1884     call c,PLY_AKM_PSS_READNOISE
   87F6 18 28         [12] 1885     jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
   87F8 1F            [ 4] 1886 PLY_AKM_PSS_SOFTORSOFTANDHARD: rra 
   87F9 38 3C         [12] 1887     jr c,PLY_AKM_PSS_SOFTANDHARD
   87FB CD 86 88      [17] 1888     call PLY_AKM_PSS_SHARED_ADJUSTVOLUME
   87FE FD 77 01      [19] 1889     ld +1(iy),a
   8801 16 00         [ 7] 1890     ld d,#0
   8803 CB 10         [ 8] 1891     rl b
   8805 30 08         [12] 1892     jr nc,PLY_AKM_PSS_S_AFTERARPANDORNOISE
   8807 7E            [ 7] 1893     ld a,(hl)
   8808 23            [ 6] 1894     inc hl
   8809 CB 2F         [ 8] 1895     sra a
   880B 57            [ 4] 1896     ld d,a
   880C DC 8E 88      [17] 1897     call c,PLY_AKM_PSS_READNOISE
   880F 7A            [ 4] 1898 PLY_AKM_PSS_S_AFTERARPANDORNOISE: ld a,d
   8810 CD 96 88      [17] 1899     call PLY_AKM_CALCULATEPERIODFORBASENOTE
   8813 CB 10         [ 8] 1900     rl b
   8815 DC D3 88      [17] 1901     call c,PLY_AKM_READPITCHANDADDTOPERIOD
   8818 D9            [ 4] 1902     exx
   8819 FD 75 05      [19] 1903     ld +5(iy),l
   881C FD 74 09      [19] 1904     ld +9(iy),h
   881F D9            [ 4] 1905     exx
   8820 DD 7E 0C      [19] 1906 PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER: ld a,+12(ix)
   8823 DD BE 0D      [19] 1907     cp +13(ix)
   8826 30 04         [12] 1908     jr nc,PLY_AKM_PSS_S_SPEEDREACHED
   8828 DD 34 0C      [23] 1909     inc +12(ix)
   882B C9            [10] 1910     ret 
   882C DD                 1911 PLY_AKM_PSS_S_SPEEDREACHED: .db 221
   882D 75                 1912     .db 117
   882E 0A                 1913     .db +10
   882F DD                 1914     .db 221
   8830 74                 1915     .db 116
   8831 0B                 1916     .db +11
   8832 DD 36 0C 00   [19] 1917     ld +12(ix),#0
   8836 C9            [10] 1918     ret 
   8837 CD 68 88      [17] 1919 PLY_AKM_PSS_SOFTANDHARD: call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
   883A 7E            [ 7] 1920     ld a,(hl)
   883B 32 1D 8A      [13] 1921     ld (PLY_AKM_REG11),a
   883E 23            [ 6] 1922     inc hl
   883F 7E            [ 7] 1923     ld a,(hl)
   8840 32 21 8A      [13] 1924     ld (PLY_AKM_REG12),a
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 37.
Hexadecimal [16-Bits]



   8843 23            [ 6] 1925     inc hl
   8844 18 DA         [12] 1926     jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
   8846 CD 68 88      [17] 1927 PLY_AKM_PSS_SOFTWARETOHARDWARE: call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
   8849 78            [ 4] 1928     ld a,b
   884A 07            [ 4] 1929     rlca 
   884B 07            [ 4] 1930     rlca 
   884C 07            [ 4] 1931     rlca 
   884D 07            [ 4] 1932     rlca 
   884E E6 07         [ 7] 1933     and #7
   8850 D9            [ 4] 1934     exx
   8851 28 0A         [12] 1935     jr z,PLY_AKM_PSS_STH_RATIOEND
   8853 CB 3C         [ 8] 1936 PLY_AKM_PSS_STH_RATIOLOOP: srl h
   8855 CB 1D         [ 8] 1937     rr l
   8857 3D            [ 4] 1938     dec a
   8858 20 F9         [12] 1939     jr nz,PLY_AKM_PSS_STH_RATIOLOOP
   885A 30 01         [12] 1940     jr nc,PLY_AKM_PSS_STH_RATIOEND
   885C 23            [ 6] 1941     inc hl
   885D 7D            [ 4] 1942 PLY_AKM_PSS_STH_RATIOEND: ld a,l
   885E 32 1D 8A      [13] 1943     ld (PLY_AKM_REG11),a
   8861 7C            [ 4] 1944     ld a,h
   8862 32 21 8A      [13] 1945     ld (PLY_AKM_REG12),a
   8865 D9            [ 4] 1946     exx
   8866 18 B8         [12] 1947     jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
   8868 E6 02         [ 7] 1948 PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV: and #2
   886A C6 08         [ 7] 1949     add a,#8
   886C 32 CE 85      [13] 1950     ld (PLY_AKM_SENDPSGREGISTERR13+1),a
   886F FD 36 01 10   [19] 1951     ld +1(iy),#16
   8873 AF            [ 4] 1952     xor a
   8874 CB 78         [ 8] 1953     bit 7,b
   8876 28 02         [12] 1954     jr z,PLY_AKM_PSS_SHARED_RENVBAP_AFTERARPEGGIO
   8878 7E            [ 7] 1955     ld a,(hl)
   8879 23            [ 6] 1956     inc hl
   887A CD 96 88      [17] 1957 PLY_AKM_PSS_SHARED_RENVBAP_AFTERARPEGGIO: call PLY_AKM_CALCULATEPERIODFORBASENOTE
   887D D9            [ 4] 1958     exx
   887E FD 75 05      [19] 1959     ld +5(iy),l
   8881 FD 74 09      [19] 1960     ld +9(iy),h
   8884 D9            [ 4] 1961     exx
   8885 C9            [10] 1962     ret 
   8886 E6 0F         [ 7] 1963 PLY_AKM_PSS_SHARED_ADJUSTVOLUME: and #15
   8888 DD 96 0E      [19] 1964     sub +14(ix)
   888B D0            [11] 1965     ret nc
   888C AF            [ 4] 1966     xor a
   888D C9            [10] 1967     ret 
   888E 7E            [ 7] 1968 PLY_AKM_PSS_READNOISE: ld a,(hl)
   888F 23            [ 6] 1969     inc hl
   8890 32 15 8A      [13] 1970     ld (PLY_AKM_NOISEREGISTER),a
   8893 CB A9         [ 8] 1971     res 5,c
   8895 C9            [10] 1972     ret 
   8896 D9            [ 4] 1973 PLY_AKM_CALCULATEPERIODFORBASENOTE: exx
   8897 26 00         [ 7] 1974     ld h,#0
   8899 DD 86 06      [19] 1975     add a,+6(ix)
   889C DD 86 1B      [19] 1976     add a,+27(ix)
   889F 01 0C FF      [10] 1977     ld bc,#65292
   88A2 04            [ 4] 1978 PLY_AKM_FINDOCTAVE_LOOP: inc b
   88A3 91            [ 4] 1979     sub c
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 38.
Hexadecimal [16-Bits]



   88A4 30 FC         [12] 1980     jr nc,PLY_AKM_FINDOCTAVE_LOOP
   88A6 81            [ 4] 1981     add a,c
   88A7 87            [ 4] 1982     add a,a
   88A8 6F            [ 4] 1983     ld l,a
   88A9 26 00         [ 7] 1984     ld h,#0
   88AB 19            [11] 1985     add hl,de
   88AC 7E            [ 7] 1986     ld a,(hl)
   88AD 23            [ 6] 1987     inc hl
   88AE 66            [ 7] 1988     ld h,(hl)
   88AF 6F            [ 4] 1989     ld l,a
   88B0 78            [ 4] 1990     ld a,b
   88B1 B7            [ 4] 1991     or a
   88B2 28 06         [12] 1992     jr z,PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP_FINISHED
   88B4 CB 3C         [ 8] 1993 PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP: srl h
   88B6 CB 1D         [ 8] 1994     rr l
   88B8 10 FA         [13] 1995     djnz PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP
   88BA 30 01         [12] 1996 PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP_FINISHED: jr nc,PLY_AKM_FINDOCTAVE_FINISHED
   88BC 23            [ 6] 1997     inc hl
   88BD DD 7E 1C      [19] 1998 PLY_AKM_FINDOCTAVE_FINISHED: ld a,+28(ix)
   88C0 B7            [ 4] 1999     or a
   88C1 28 07         [12] 2000     jr z,PLY_AKM_CALCULATEPERIODFORBASENOTE_NOPITCHTABLE
   88C3 DD 4E 22      [19] 2001     ld c,+34(ix)
   88C6 DD 46 23      [19] 2002     ld b,+35(ix)
   88C9 09            [11] 2003     add hl,bc
   88CA DD 4E 10      [19] 2004 PLY_AKM_CALCULATEPERIODFORBASENOTE_NOPITCHTABLE: ld c,+16(ix)
   88CD DD 46 11      [19] 2005     ld b,+17(ix)
   88D0 09            [11] 2006     add hl,bc
   88D1 D9            [ 4] 2007     exx
   88D2 C9            [10] 2008     ret 
   88D3 7E            [ 7] 2009 PLY_AKM_READPITCHANDADDTOPERIOD: ld a,(hl)
   88D4 23            [ 6] 2010     inc hl
   88D5 D9            [ 4] 2011     exx
   88D6 4F            [ 4] 2012     ld c,a
   88D7 D9            [ 4] 2013     exx
   88D8 7E            [ 7] 2014     ld a,(hl)
   88D9 23            [ 6] 2015     inc hl
   88DA D9            [ 4] 2016     exx
   88DB 47            [ 4] 2017     ld b,a
   88DC 09            [11] 2018     add hl,bc
   88DD D9            [ 4] 2019     exx
   88DE C9            [10] 2020     ret 
   88DF DD 77 0E      [19] 2021 PLY_AKM_EFFECTRESETWITHVOLUME: ld +14(ix),a
   88E2 AF            [ 4] 2022     xor a
   88E3 DD 77 0F      [19] 2023     ld +15(ix),a
   88E6 DD 77 15      [19] 2024     ld +21(ix),a
   88E9 DD 77 1B      [19] 2025     ld +27(ix),a
   88EC DD 77 1C      [19] 2026     ld +28(ix),a
   88EF C3 10 87      [10] 2027     jp PLY_AKM_RT_READEFFECT_RETURN
   88F2 DD 77 0E      [19] 2028 PLY_AKM_EFFECTVOLUME: ld +14(ix),a
   88F5 C3 10 87      [10] 2029     jp PLY_AKM_RT_READEFFECT_RETURN
   88F8 18 E5         [12] 2030 PLY_AKM_EFFECTTABLE: jr PLY_AKM_EFFECTRESETWITHVOLUME
   88FA 18 F6         [12] 2031     jr PLY_AKM_EFFECTVOLUME
   88FC 18 08         [12] 2032     jr PLY_AKM_EFFECTPITCHUPDOWN
   88FE 18 21         [12] 2033     jr PLY_AKM_EFFECTARPEGGIOTABLE
   8900 18 50         [12] 2034     jr PLY_AKM_EFFECTPITCHTABLE
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 39.
Hexadecimal [16-Bits]



   8902 18 FE         [12] 2035     jr PLY_AKM_EFFECTPITCHUPDOWN-4
   8904 18 FE         [12] 2036     jr PLY_AKM_EFFECTPITCHUPDOWN-2
   8906 1F            [ 4] 2037 PLY_AKM_EFFECTPITCHUPDOWN: rra 
   8907 30 11         [12] 2038     jr nc,PLY_AKM_EFFECTPITCHUPDOWN_DEACTIVATED
   8909 DD 36 0F FF   [19] 2039     ld +15(ix),#255
   890D 7E            [ 7] 2040     ld a,(hl)
   890E 23            [ 6] 2041     inc hl
   890F DD 77 13      [19] 2042     ld +19(ix),a
   8912 7E            [ 7] 2043     ld a,(hl)
   8913 23            [ 6] 2044     inc hl
   8914 DD 77 14      [19] 2045     ld +20(ix),a
   8917 C3 10 87      [10] 2046     jp PLY_AKM_RT_READEFFECT_RETURN
   891A DD 36 0F 00   [19] 2047 PLY_AKM_EFFECTPITCHUPDOWN_DEACTIVATED: ld +15(ix),#0
   891E C3 10 87      [10] 2048     jp PLY_AKM_RT_READEFFECT_RETURN
   8921 CD 7E 89      [17] 2049 PLY_AKM_EFFECTARPEGGIOTABLE: call PLY_AKM_EFFECTREADIFESCAPE
   8924 DD 77 15      [19] 2050     ld +21(ix),a
   8927 28 23         [12] 2051     jr z,PLY_AKM_EFFECTARPEGGIOTABLE_STOP
   8929 87            [ 4] 2052     add a,a
   892A D9            [ 4] 2053     exx
   892B 6F            [ 4] 2054     ld l,a
   892C 26 00         [ 7] 2055     ld h,#0
   892E 01 00 00      [10] 2056 PLY_AKM_PTARPEGGIOS: ld bc,#0
   8931 09            [11] 2057     add hl,bc
   8932 7E            [ 7] 2058     ld a,(hl)
   8933 23            [ 6] 2059     inc hl
   8934 66            [ 7] 2060     ld h,(hl)
   8935 6F            [ 4] 2061     ld l,a
   8936 7E            [ 7] 2062     ld a,(hl)
   8937 23            [ 6] 2063     inc hl
   8938 DD 77 1A      [19] 2064     ld +26(ix),a
   893B DD                 2065     .db 221
   893C 75                 2066     .db 117
   893D 16                 2067     .db +22
   893E DD                 2068     .db 221
   893F 74                 2069     .db 116
   8940 17                 2070     .db +23
   8941 D9            [ 4] 2071     exx
   8942 AF            [ 4] 2072     xor a
   8943 DD 77 18      [19] 2073     ld +24(ix),a
   8946 DD 77 19      [19] 2074     ld +25(ix),a
   8949 C3 10 87      [10] 2075     jp PLY_AKM_RT_READEFFECT_RETURN
   894C DD 77 1B      [19] 2076 PLY_AKM_EFFECTARPEGGIOTABLE_STOP: ld +27(ix),a
   894F C3 10 87      [10] 2077     jp PLY_AKM_RT_READEFFECT_RETURN
   8952 CD 7E 89      [17] 2078 PLY_AKM_EFFECTPITCHTABLE: call PLY_AKM_EFFECTREADIFESCAPE
   8955 DD 77 1C      [19] 2079     ld +28(ix),a
   8958 CA 10 87      [10] 2080     jp z,PLY_AKM_RT_READEFFECT_RETURN
   895B 87            [ 4] 2081     add a,a
   895C D9            [ 4] 2082     exx
   895D 6F            [ 4] 2083     ld l,a
   895E 26 00         [ 7] 2084     ld h,#0
   8960 01 00 00      [10] 2085 PLY_AKM_PTPITCHES: ld bc,#0
   8963 09            [11] 2086     add hl,bc
   8964 7E            [ 7] 2087     ld a,(hl)
   8965 23            [ 6] 2088     inc hl
   8966 66            [ 7] 2089     ld h,(hl)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 40.
Hexadecimal [16-Bits]



   8967 6F            [ 4] 2090     ld l,a
   8968 7E            [ 7] 2091     ld a,(hl)
   8969 23            [ 6] 2092     inc hl
   896A DD 77 21      [19] 2093     ld +33(ix),a
   896D DD                 2094     .db 221
   896E 75                 2095     .db 117
   896F 1D                 2096     .db +29
   8970 DD                 2097     .db 221
   8971 74                 2098     .db 116
   8972 1E                 2099     .db +30
   8973 D9            [ 4] 2100     exx
   8974 AF            [ 4] 2101     xor a
   8975 DD 77 1F      [19] 2102     ld +31(ix),a
   8978 DD 77 20      [19] 2103     ld +32(ix),a
   897B C3 10 87      [10] 2104     jp PLY_AKM_RT_READEFFECT_RETURN
   897E FE 0F         [ 7] 2105 PLY_AKM_EFFECTREADIFESCAPE: cp #15
   8980 D8            [11] 2106     ret c
   8981 7E            [ 7] 2107     ld a,(hl)
   8982 23            [ 6] 2108     inc hl
   8983 C9            [10] 2109     ret 
   8984                    2110 PLY_AKM_TRACK1_DATA:
   8984 00                 2111 PLY_AKM_TRACK1_WAITEMPTYCELL: .db 0
   8985 00                 2112 PLY_AKM_TRACK1_TRANSPOSITION: .db 0
   8986 00 00              2113 PLY_AKM_TRACK1_PTSTARTTRACK: .dw 0
   8988 00 00              2114 PLY_AKM_TRACK1_PTTRACK: .dw 0
   898A 00                 2115 PLY_AKM_TRACK1_BASENOTE: .db 0
   898B 00                 2116 PLY_AKM_TRACK1_ESCAPENOTE: .db 0
   898C 00                 2117 PLY_AKM_TRACK1_ESCAPEINSTRUMENT: .db 0
   898D 00                 2118 PLY_AKM_TRACK1_ESCAPEWAIT: .db 0
   898E 00 00              2119 PLY_AKM_TRACK1_PTINSTRUMENT: .dw 0
   8990 00                 2120 PLY_AKM_TRACK1_INSTRUMENTCURRENTSTEP: .db 0
   8991 00                 2121 PLY_AKM_TRACK1_INSTRUMENTSPEED: .db 0
   8992 00                 2122 PLY_AKM_TRACK1_TRACKINVERTEDVOLUME: .db 0
   8993 00                 2123 PLY_AKM_TRACK1_ISPITCHUPDOWNUSED: .db 0
   8994 00 00              2124 PLY_AKM_TRACK1_TRACKPITCHINTEGER: .dw 0
   8996 00                 2125 PLY_AKM_TRACK1_TRACKPITCHDECIMAL: .db 0
   8997 00 00              2126 PLY_AKM_TRACK1_TRACKPITCHSPEED: .dw 0
   8999 00                 2127 PLY_AKM_TRACK1_ISARPEGGIOTABLEUSED: .db 0
   899A 00 00              2128 PLY_AKM_TRACK1_PTARPEGGIOTABLE: .dw 0
   899C 00                 2129 PLY_AKM_TRACK1_PTARPEGGIOOFFSET: .db 0
   899D 00                 2130 PLY_AKM_TRACK1_ARPEGGIOCURRENTSTEP: .db 0
   899E 00                 2131 PLY_AKM_TRACK1_ARPEGGIOORIGINALSPEED: .db 0
   899F 00                 2132 PLY_AKM_TRACK1_CURRENTARPEGGIOVALUE: .db 0
   89A0 00                 2133 PLY_AKM_TRACK1_ISPITCHTABLEUSED: .db 0
   89A1 00 00              2134 PLY_AKM_TRACK1_PTPITCHTABLE: .dw 0
   89A3 00                 2135 PLY_AKM_TRACK1_PTPITCHOFFSET: .db 0
   89A4 00                 2136 PLY_AKM_TRACK1_PITCHCURRENTSTEP: .db 0
   89A5 00                 2137 PLY_AKM_TRACK1_PITCHORIGINALSPEED: .db 0
   89A6 00 00              2138 PLY_AKM_TRACK1_CURRENTPITCHTABLEVALUE: .dw 0
   89A8                    2139 PLY_AKM_TRACK1_DATA_END:
   89A8                    2140 PLY_AKM_TRACK2_DATA:
   89A8 00                 2141 PLY_AKM_TRACK2_WAITEMPTYCELL: .db 0
   89A9 00                 2142     .db 0
   89AA 00                 2143     .db 0
   89AB 00                 2144     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 41.
Hexadecimal [16-Bits]



   89AC 00                 2145 PLY_AKM_TRACK2_PTTRACK: .db 0
   89AD 00                 2146     .db 0
   89AE 00                 2147     .db 0
   89AF 00                 2148 PLY_AKM_TRACK2_ESCAPENOTE: .db 0
   89B0 00                 2149 PLY_AKM_TRACK2_ESCAPEINSTRUMENT: .db 0
   89B1 00                 2150 PLY_AKM_TRACK2_ESCAPEWAIT: .db 0
   89B2 00                 2151 PLY_AKM_TRACK2_PTINSTRUMENT: .db 0
   89B3 00                 2152     .db 0
   89B4 00                 2153     .db 0
   89B5 00                 2154     .db 0
   89B6 00                 2155     .db 0
   89B7 00                 2156     .db 0
   89B8 00                 2157     .db 0
   89B9 00                 2158     .db 0
   89BA 00                 2159     .db 0
   89BB 00                 2160     .db 0
   89BC 00                 2161     .db 0
   89BD 00                 2162     .db 0
   89BE 00                 2163     .db 0
   89BF 00                 2164     .db 0
   89C0 00                 2165     .db 0
   89C1 00                 2166     .db 0
   89C2 00                 2167     .db 0
   89C3 00                 2168     .db 0
   89C4 00                 2169     .db 0
   89C5 00                 2170     .db 0
   89C6 00                 2171     .db 0
   89C7 00                 2172     .db 0
   89C8 00                 2173     .db 0
   89C9 00                 2174     .db 0
   89CA 00                 2175     .db 0
   89CB 00                 2176     .db 0
   89CC                    2177 PLY_AKM_TRACK2_DATA_END:
   89CC                    2178 PLY_AKM_TRACK3_DATA:
   89CC 00                 2179 PLY_AKM_TRACK3_WAITEMPTYCELL: .db 0
   89CD 00                 2180     .db 0
   89CE 00                 2181     .db 0
   89CF 00                 2182     .db 0
   89D0 00                 2183 PLY_AKM_TRACK3_PTTRACK: .db 0
   89D1 00                 2184     .db 0
   89D2 00                 2185     .db 0
   89D3 00                 2186 PLY_AKM_TRACK3_ESCAPENOTE: .db 0
   89D4 00                 2187 PLY_AKM_TRACK3_ESCAPEINSTRUMENT: .db 0
   89D5 00                 2188 PLY_AKM_TRACK3_ESCAPEWAIT: .db 0
   89D6 00                 2189 PLY_AKM_TRACK3_PTINSTRUMENT: .db 0
   89D7 00                 2190     .db 0
   89D8 00                 2191     .db 0
   89D9 00                 2192     .db 0
   89DA 00                 2193     .db 0
   89DB 00                 2194     .db 0
   89DC 00                 2195     .db 0
   89DD 00                 2196     .db 0
   89DE 00                 2197     .db 0
   89DF 00                 2198     .db 0
   89E0 00                 2199     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 42.
Hexadecimal [16-Bits]



   89E1 00                 2200     .db 0
   89E2 00                 2201     .db 0
   89E3 00                 2202     .db 0
   89E4 00                 2203     .db 0
   89E5 00                 2204     .db 0
   89E6 00                 2205     .db 0
   89E7 00                 2206     .db 0
   89E8 00                 2207     .db 0
   89E9 00                 2208     .db 0
   89EA 00                 2209     .db 0
   89EB 00                 2210     .db 0
   89EC 00                 2211     .db 0
   89ED 00                 2212     .db 0
   89EE 00                 2213     .db 0
   89EF 00                 2214     .db 0
   89F0                    2215 PLY_AKM_TRACK3_DATA_END:
   89F0                    2216 PLY_AKM_REGISTERS_RETTABLE:
   89F0 08                 2217 PLY_AKM_TRACK1_REGISTERS: .db 8
   89F1 00                 2218 PLY_AKM_TRACK1_VOLUME: .db 0
   89F2 BD 85              2219     .dw PLY_AKM_SENDPSGREGISTER
   89F4 00                 2220     .db 0
   89F5 00                 2221 PLY_AKM_TRACK1_SOFTWAREPERIODLSB: .db 0
   89F6 BD 85              2222     .dw PLY_AKM_SENDPSGREGISTER
   89F8 01                 2223     .db 1
   89F9 00                 2224 PLY_AKM_TRACK1_SOFTWAREPERIODMSB: .db 0
   89FA BD 85              2225     .dw PLY_AKM_SENDPSGREGISTER
   89FC 09                 2226 PLY_AKM_TRACK2_REGISTERS: .db 9
   89FD 00                 2227 PLY_AKM_TRACK2_VOLUME: .db 0
   89FE BD 85              2228     .dw PLY_AKM_SENDPSGREGISTER
   8A00 02                 2229     .db 2
   8A01 00                 2230 PLY_AKM_TRACK2_SOFTWAREPERIODLSB: .db 0
   8A02 BD 85              2231     .dw PLY_AKM_SENDPSGREGISTER
   8A04 03                 2232     .db 3
   8A05 00                 2233 PLY_AKM_TRACK2_SOFTWAREPERIODMSB: .db 0
   8A06 BD 85              2234     .dw PLY_AKM_SENDPSGREGISTER
   8A08 0A                 2235 PLY_AKM_TRACK3_REGISTERS: .db 10
   8A09 00                 2236 PLY_AKM_TRACK3_VOLUME: .db 0
   8A0A BD 85              2237     .dw PLY_AKM_SENDPSGREGISTER
   8A0C 04                 2238     .db 4
   8A0D 00                 2239 PLY_AKM_TRACK3_SOFTWAREPERIODLSB: .db 0
   8A0E BD 85              2240     .dw PLY_AKM_SENDPSGREGISTER
   8A10 05                 2241     .db 5
   8A11 00                 2242 PLY_AKM_TRACK3_SOFTWAREPERIODMSB: .db 0
   8A12 BD 85              2243     .dw PLY_AKM_SENDPSGREGISTER
   8A14 06                 2244     .db 6
   8A15 00                 2245 PLY_AKM_NOISEREGISTER: .db 0
   8A16 BD 85              2246     .dw PLY_AKM_SENDPSGREGISTER
   8A18 07                 2247     .db 7
   8A19 00                 2248 PLY_AKM_MIXERREGISTER: .db 0
   8A1A BD 85              2249     .dw PLY_AKM_SENDPSGREGISTER
   8A1C 0B                 2250     .db 11
   8A1D 00                 2251 PLY_AKM_REG11: .db 0
   8A1E BD 85              2252     .dw PLY_AKM_SENDPSGREGISTER
   8A20 0C                 2253     .db 12
   8A21 00                 2254 PLY_AKM_REG12: .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 43.
Hexadecimal [16-Bits]



   8A22 CD 85              2255     .dw PLY_AKM_SENDPSGREGISTERR13
   8A24 BE 85              2256     .dw PLY_AKM_SENDPSGREGISTERAFTERPOP
   8A26 DC 85              2257     .dw PLY_AKM_SENDPSGREGISTEREND
   8A28 EE 0E              2258 PLY_AKM_PERIODTABLE: .dw 3822
   8A2A 18 0E              2259     .dw 3608
   8A2C 4D 0D              2260     .dw 3405
   8A2E 8E 0C              2261     .dw 3214
   8A30 DA 0B              2262     .dw 3034
   8A32 2F 0B              2263     .dw 2863
   8A34 8F 0A              2264     .dw 2703
   8A36 F7 09              2265     .dw 2551
   8A38 68 09              2266     .dw 2408
   8A3A E1 08              2267     .dw 2273
   8A3C 61 08              2268     .dw 2145
   8A3E E9 07              2269     .dw 2025
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 44.
Hexadecimal [16-Bits]



                             22 
   8A40                      23 _PLAYER_ARKOS_INITSOUNDEFFECTS::
   8A40 C3 40 83      [10]   24 	jp PLY_AKM_INITSOUNDEFFECTS
                             25 
   8A43                      26 _PLAYER_ARKOS_PLAYSOUNDEFFECT::	
   8A43 F1            [10]   27 	pop  af          ;; AF = Return address
   8A44 E1            [10]   28 	pop  hl          ;; H Rubbish / L = Sound effect
   8A45 C1            [10]   29 	pop  bc          ;; B = Volume / C = Channel
   8A46 F5            [11]   30 	push af          ;; Save back return address in the stack to fullfill __z88dk_callee convention	
   8A47 7D            [ 4]   31 	ld   a, l        ;; A = Subsong index	
   8A48 C3 44 83      [10]   32 	jp   PLY_AKM_PLAYSOUNDEFFECT
                             33 	
   8A4B                      34 _PLAYER_ARKOS_STOPSOUNDEFFECTFROMCHANNEL::
   8A4B 7D            [ 4]   35 	ld   a, l
   8A4C C3 6C 83      [10]   36 	jp   PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL
                             37 	
   8A4F                      38 _PLAYER_ARKOS_INIT::
   8A4F F1            [10]   39 	pop  af          ;; AF = Return address
   8A50 E1            [10]   40 	pop  hl          ;; HL = Music address
   8A51 C1            [10]   41 	pop  bc          ;; B Rubbish  / C = Subsong index (>=0)
   8A52 F5            [11]   42 	push af          ;; Save back return address in the stack to fullfill __z88dk_callee convention
   8A53 79            [ 4]   43 	ld   a, c        ;; A = Subsong index	
   8A54 C3 45 84      [10]   44 	jp   PLY_AKM_INIT
                             45 	
   8A57                      46 _PLAYER_ARKOS_STOP::	
   8A57 C3 C3 84      [10]   47 	jp   PLY_AKM_STOP
                             48 	
   8A5A                      49 _PLAYER_ARKOS_PLAY::	
   8A5A C3 D9 84      [10]   50 	jp   PLY_AKM_PLAY
