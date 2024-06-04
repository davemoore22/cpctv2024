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
   7E46                       6 AHARMLESSGRENADE_START:
   7E46                       7 _AHARMLESSGRENADE_START::
   7E46 4E 7E                 8 PLY_AKM_DATA_OFFSETWAITEMPTYCELL: .dw AHARMLESSGRENADE_INSTRUMENTINDEXES
                     0003     9 PLY_AKM_SOUNDEFFECTDATA_OFFSETCURRENTSTEP = .+1
   7E48                      10 PLY_AKM_SOUNDEFFECTDATA_OFFSETINVERTEDVOLUME:
   7E48                      11 PLY_AKM_OFFSET2B:
   7E48 67 7F                12 PLY_AKM_DATA_OFFSETPTSTARTTRACK: .dw AHARMLESSGRENADE_ARPEGGIOINDEXES-2
                     0005    13 PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODLSB = .+1
   7E4A                      14 PLY_AKM_SOUNDEFFECTDATA_OFFSETSPEED:
   7E4A 7B 7F                15 PLY_AKM_DATA_OFFSETPTTRACK: .dw AHARMLESSGRENADE_PITCHINDEXES-2
                     0007    16 PLY_AKM_DATA_OFFSETESCAPENOTE = .+1
   7E4C 87 7F                17 PLY_AKM_DATA_OFFSETBASENOTE: .dw AHARMLESSGRENADE_SUBSONG0
                     0009    18 PLY_AKM_DATA_OFFSETESCAPEWAIT = .+1
                     0009    19 PLY_AKM_DATA_OFFSETSECONDARYINSTRUMENT = .+1
                     0009    20 PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODMSB = .+1
   7E4E                      21 AHARMLESSGRENADE_INSTRUMENTINDEXES:
   7E4E                      22 PLY_AKM_CHANNEL_SOUNDEFFECTDATASIZE:
   7E4E 76 7E                23 PLY_AKM_DATA_OFFSETESCAPEINSTRUMENT: .dw AHARMLESSGRENADE_INSTRUMENT0
   7E50 7B 7E                24 PLY_AKM_DATA_OFFSETPTINSTRUMENT: .dw AHARMLESSGRENADE_INSTRUMENT1
                     000D    25 PLY_AKM_DATA_OFFSETINSTRUMENTSPEED = .+1
   7E52 8D 7E                26 PLY_AKM_DATA_OFFSETINSTRUMENTCURRENTSTEP: .dw AHARMLESSGRENADE_INSTRUMENT2
                     000F    27 PLY_AKM_DATA_OFFSETISPITCHUPDOWNUSED = .+1
   7E54 AB 7E                28 PLY_AKM_DATA_OFFSETTRACKINVERTEDVOLUME: .dw AHARMLESSGRENADE_INSTRUMENT3
   7E56 B5 7E                29 PLY_AKM_DATA_OFFSETTRACKPITCHINTEGER: .dw AHARMLESSGRENADE_INSTRUMENT4
                     0013    30 PLY_AKM_DATA_OFFSETTRACKPITCHSPEED = .+1
   7E58 BD 7E                31 PLY_AKM_DATA_OFFSETTRACKPITCHDECIMAL: .dw AHARMLESSGRENADE_INSTRUMENT5
                     0015    32 PLY_AKM_DATA_OFFSETISARPEGGIOTABLEUSED = .+1
   7E5A C7 7E                33     .dw AHARMLESSGRENADE_INSTRUMENT6
   7E5C CD 7E                34 PLY_AKM_DATA_OFFSETPTARPEGGIOTABLE: .dw AHARMLESSGRENADE_INSTRUMENT7
                     0019    35 PLY_AKM_DATA_OFFSETARPEGGIOCURRENTSTEP = .+1
   7E5E DF 7E                36 PLY_AKM_DATA_OFFSETPTARPEGGIOOFFSET: .dw AHARMLESSGRENADE_INSTRUMENT8
                     001B    37 PLY_AKM_DATA_OFFSETCURRENTARPEGGIOVALUE = .+1
   7E60 E4 7E                38 PLY_AKM_DATA_OFFSETARPEGGIOORIGINALSPEED: .dw AHARMLESSGRENADE_INSTRUMENT9
                     001D    39 PLY_AKM_DATA_OFFSETPTPITCHTABLE = .+1
   7E62 FD 7E                40 PLY_AKM_DATA_OFFSETISPITCHTABLEUSED: .dw AHARMLESSGRENADE_INSTRUMENT10
                     001F    41 PLY_AKM_DATA_OFFSETPTPITCHOFFSET = .+1
   7E64 02 7F                42     .dw AHARMLESSGRENADE_INSTRUMENT11
                     0021    43 PLY_AKM_DATA_OFFSETPITCHORIGINALSPEED = .+1
   7E66 0B 7F                44 PLY_AKM_DATA_OFFSETPITCHCURRENTSTEP: .dw AHARMLESSGRENADE_INSTRUMENT12
   7E68 10 7F                45 PLY_AKM_DATA_OFFSETCURRENTPITCHTABLEVALUE: .dw AHARMLESSGRENADE_INSTRUMENT13
   7E6A 15 7F                46 PLY_AKM_TRACK1_DATA_SIZE: .dw AHARMLESSGRENADE_INSTRUMENT14
   7E6C 1A 7F                47     .dw AHARMLESSGRENADE_INSTRUMENT15
   7E6E 31 7F                48     .dw AHARMLESSGRENADE_INSTRUMENT16
   7E70 3F 7F                49     .dw AHARMLESSGRENADE_INSTRUMENT17
   7E72 4D 7F                50     .dw AHARMLESSGRENADE_INSTRUMENT18
   7E74 5B 7F                51     .dw AHARMLESSGRENADE_INSTRUMENT19
   7E76 FF                   52 AHARMLESSGRENADE_INSTRUMENT0: .db 255
   7E77 00                   53 AHARMLESSGRENADE_INSTRUMENT0LOOP: .db 0
   7E78 04                   54     .db 4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



   7E79 77 7E                55     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7E7B 01                   56 AHARMLESSGRENADE_INSTRUMENT1: .db 1
   7E7C D2                   57     .db 210
   7E7D 0C                   58     .db 12
   7E7E B2                   59     .db 178
   7E7F 0C                   60     .db 12
   7E80 B2                   61     .db 178
   7E81 0C                   62     .db 12
   7E82 52                   63     .db 82
   7E83 A9                   64     .db 169
   7E84 18                   65     .db 24
   7E85 29                   66     .db 41
   7E86 A9                   67     .db 169
   7E87 18                   68     .db 24
   7E88 25                   69     .db 37
   7E89 21                   70     .db 33
   7E8A 04                   71     .db 4
   7E8B 77 7E                72     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7E8D 00                   73 AHARMLESSGRENADE_INSTRUMENT2: .db 0
   7E8E BD                   74     .db 189
   7E8F 01                   75     .db 1
   7E90 02                   76     .db 2
   7E91 FD                   77     .db 253
   7E92 01                   78     .db 1
   7E93 01                   79     .db 1
   7E94 20                   80     .db 32
   7E95 00                   81     .db 0
   7E96 7D                   82     .db 125
   7E97 30                   83     .db 48
   7E98 00                   84     .db 0
   7E99 7D                   85     .db 125
   7E9A 44                   86     .db 68
   7E9B 00                   87     .db 0
   7E9C 7D                   88     .db 125
   7E9D 74                   89     .db 116
   7E9E 00                   90     .db 0
   7E9F 7D                   91     .db 125
   7EA0 E4                   92     .db 228
   7EA1 00                   93     .db 0
   7EA2 79                   94     .db 121
   7EA3 B4                   95     .db 180
   7EA4 00                   96     .db 0
   7EA5 75                   97     .db 117
   7EA6 24                   98     .db 36
   7EA7 01                   99     .db 1
   7EA8 04                  100     .db 4
   7EA9 77 7E               101     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7EAB 00                  102 AHARMLESSGRENADE_INSTRUMENT3: .db 0
   7EAC F8                  103     .db 248
   7EAD 01                  104     .db 1
   7EAE D8                  105     .db 216
   7EAF 01                  106     .db 1
   7EB0 B8                  107     .db 184
   7EB1 01                  108     .db 1
   7EB2 04                  109     .db 4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



   7EB3 77 7E               110     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7EB5 00                  111 AHARMLESSGRENADE_INSTRUMENT4: .db 0
   7EB6 F8                  112     .db 248
   7EB7 04                  113     .db 4
   7EB8 C8                  114     .db 200
   7EB9 01                  115     .db 1
   7EBA 04                  116     .db 4
   7EBB 77 7E               117     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7EBD 00                  118 AHARMLESSGRENADE_INSTRUMENT5: .db 0
   7EBE F8                  119 AHARMLESSGRENADE_INSTRUMENT5LOOP: .db 248
   7EBF 01                  120     .db 1
   7EC0 C8                  121     .db 200
   7EC1 01                  122     .db 1
   7EC2 B0                  123     .db 176
   7EC3 01                  124     .db 1
   7EC4 04                  125     .db 4
   7EC5 BE 7E               126     .dw AHARMLESSGRENADE_INSTRUMENT5LOOP
   7EC7 03                  127 AHARMLESSGRENADE_INSTRUMENT6: .db 3
   7EC8 F8                  128     .db 248
   7EC9 01                  129     .db 1
   7ECA 04                  130     .db 4
   7ECB 77 7E               131     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7ECD 02                  132 AHARMLESSGRENADE_INSTRUMENT7: .db 2
   7ECE 3D                  133     .db 61
   7ECF 35                  134     .db 53
   7ED0 31                  135     .db 49
   7ED1 2D                  136     .db 45
   7ED2 29                  137     .db 41
   7ED3 25                  138     .db 37
   7ED4 21                  139     .db 33
   7ED5 1D                  140     .db 29
   7ED6 19                  141     .db 25
   7ED7 15                  142     .db 21
   7ED8 11                  143     .db 17
   7ED9 0D                  144     .db 13
   7EDA 09                  145     .db 9
   7EDB 05                  146     .db 5
   7EDC 04                  147     .db 4
   7EDD 77 7E               148     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7EDF 00                  149 AHARMLESSGRENADE_INSTRUMENT8: .db 0
   7EE0 4A                  150 AHARMLESSGRENADE_INSTRUMENT8LOOP: .db 74
   7EE1 04                  151     .db 4
   7EE2 E0 7E               152     .dw AHARMLESSGRENADE_INSTRUMENT8LOOP
   7EE4 00                  153 AHARMLESSGRENADE_INSTRUMENT9: .db 0
   7EE5 F8                  154     .db 248
   7EE6 02                  155     .db 2
   7EE7 39                  156     .db 57
   7EE8 F5                  157     .db 245
   7EE9 01                  158     .db 1
   7EEA 01                  159     .db 1
   7EEB D0                  160     .db 208
   7EEC 00                  161     .db 0
   7EED ED                  162     .db 237
   7EEE 01                  163     .db 1
   7EEF 01                  164     .db 1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



   7EF0 90                  165     .db 144
   7EF1 01                  166     .db 1
   7EF2 D8                  167     .db 216
   7EF3 01                  168     .db 1
   7EF4 D8                  169     .db 216
   7EF5 03                  170     .db 3
   7EF6 D0                  171     .db 208
   7EF7 04                  172     .db 4
   7EF8 C8                  173     .db 200
   7EF9 01                  174     .db 1
   7EFA 04                  175     .db 4
   7EFB 77 7E               176     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7EFD 04                  177 AHARMLESSGRENADE_INSTRUMENT10: .db 4
   7EFE 52                  178 AHARMLESSGRENADE_INSTRUMENT10LOOP: .db 82
   7EFF 04                  179     .db 4
   7F00 FE 7E               180     .dw AHARMLESSGRENADE_INSTRUMENT10LOOP
   7F02 01                  181 AHARMLESSGRENADE_INSTRUMENT11: .db 1
   7F03 C2                  182 AHARMLESSGRENADE_INSTRUMENT11LOOP: .db 194
   7F04 0C                  183     .db 12
   7F05 C2                  184     .db 194
   7F06 0C                  185     .db 12
   7F07 78                  186     .db 120
   7F08 04                  187     .db 4
   7F09 03 7F               188     .dw AHARMLESSGRENADE_INSTRUMENT11LOOP
   7F0B 00                  189 AHARMLESSGRENADE_INSTRUMENT12: .db 0
   7F0C 3D                  190 AHARMLESSGRENADE_INSTRUMENT12LOOP: .db 61
   7F0D 04                  191     .db 4
   7F0E 0C 7F               192     .dw AHARMLESSGRENADE_INSTRUMENT12LOOP
   7F10 00                  193 AHARMLESSGRENADE_INSTRUMENT13: .db 0
   7F11 3D                  194     .db 61
   7F12 04                  195     .db 4
   7F13 77 7E               196     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7F15 00                  197 AHARMLESSGRENADE_INSTRUMENT14: .db 0
   7F16 3A                  198 AHARMLESSGRENADE_INSTRUMENT14LOOP: .db 58
   7F17 04                  199     .db 4
   7F18 16 7F               200     .dw AHARMLESSGRENADE_INSTRUMENT14LOOP
   7F1A 01                  201 AHARMLESSGRENADE_INSTRUMENT15: .db 1
   7F1B 3D                  202     .db 61
   7F1C 79                  203 AHARMLESSGRENADE_INSTRUMENT15LOOP: .db 121
   7F1D FB                  204     .db 251
   7F1E FF                  205     .db 255
   7F1F 31                  206     .db 49
   7F20 6D                  207     .db 109
   7F21 05                  208     .db 5
   7F22 00                  209     .db 0
   7F23 3D                  210     .db 61
   7F24 75                  211     .db 117
   7F25 F9                  212     .db 249
   7F26 FF                  213     .db 255
   7F27 25                  214     .db 37
   7F28 69                  215     .db 105
   7F29 20                  216     .db 32
   7F2A 00                  217     .db 0
   7F2B 2D                  218     .db 45
   7F2C 31                  219     .db 49
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



   7F2D 39                  220     .db 57
   7F2E 04                  221     .db 4
   7F2F 1C 7F               222     .dw AHARMLESSGRENADE_INSTRUMENT15LOOP
   7F31 00                  223 AHARMLESSGRENADE_INSTRUMENT16: .db 0
   7F32 E8                  224     .db 232
   7F33 05                  225     .db 5
   7F34 D8                  226     .db 216
   7F35 05                  227     .db 5
   7F36 D0                  228     .db 208
   7F37 05                  229     .db 5
   7F38 C8                  230     .db 200
   7F39 05                  231     .db 5
   7F3A B8                  232     .db 184
   7F3B 05                  233     .db 5
   7F3C 04                  234     .db 4
   7F3D 77 7E               235     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7F3F 00                  236 AHARMLESSGRENADE_INSTRUMENT17: .db 0
   7F40 E8                  237     .db 232
   7F41 09                  238     .db 9
   7F42 D8                  239     .db 216
   7F43 09                  240     .db 9
   7F44 D0                  241     .db 208
   7F45 09                  242     .db 9
   7F46 C8                  243     .db 200
   7F47 09                  244     .db 9
   7F48 B8                  245     .db 184
   7F49 09                  246     .db 9
   7F4A 04                  247     .db 4
   7F4B 77 7E               248     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7F4D 00                  249 AHARMLESSGRENADE_INSTRUMENT18: .db 0
   7F4E E8                  250     .db 232
   7F4F 11                  251     .db 17
   7F50 D8                  252     .db 216
   7F51 11                  253     .db 17
   7F52 D0                  254     .db 208
   7F53 11                  255     .db 17
   7F54 C8                  256     .db 200
   7F55 11                  257     .db 17
   7F56 B8                  258     .db 184
   7F57 11                  259     .db 17
   7F58 04                  260     .db 4
   7F59 77 7E               261     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   7F5B 00                  262 AHARMLESSGRENADE_INSTRUMENT19: .db 0
   7F5C E8                  263     .db 232
   7F5D 19                  264     .db 25
   7F5E D8                  265     .db 216
   7F5F 19                  266     .db 25
   7F60 D0                  267     .db 208
   7F61 19                  268     .db 25
   7F62 C8                  269     .db 200
   7F63 19                  270     .db 25
   7F64 B8                  271     .db 184
   7F65 19                  272     .db 25
   7F66 04                  273     .db 4
   7F67 77 7E               274     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



   7F69 6D 7F               275 AHARMLESSGRENADE_ARPEGGIOINDEXES: .dw AHARMLESSGRENADE_ARPEGGIO1
   7F6B 74 7F               276     .dw AHARMLESSGRENADE_ARPEGGIO2
   7F6D 00                  277 AHARMLESSGRENADE_ARPEGGIO1: .db 0
   7F6E 00                  278     .db 0
   7F6F 18                  279     .db 24
   7F70 12                  280     .db 18
   7F71 E8                  281     .db 232
   7F72 24                  282     .db 36
   7F73 01                  283     .db 1
   7F74 00                  284 AHARMLESSGRENADE_ARPEGGIO2: .db 0
   7F75 00                  285     .db 0
   7F76 0C                  286     .db 12
   7F77 FA                  287     .db 250
   7F78 E8                  288     .db 232
   7F79 F4                  289     .db 244
   7F7A 00                  290     .db 0
   7F7B 18                  291     .db 24
   7F7C 01                  292     .db 1
   7F7D 7F 7F               293 AHARMLESSGRENADE_PITCHINDEXES: .dw AHARMLESSGRENADE_PITCH1
   7F7F 01                  294 AHARMLESSGRENADE_PITCH1: .db 1
   7F80 00                  295     .db 0
   7F81 00                  296     .db 0
   7F82 00                  297     .db 0
   7F83 FE                  298     .db 254
   7F84 F8                  299     .db 248
   7F85 04                  300     .db 4
   7F86 05                  301     .db 5
   7F87 4D 82               302 AHARMLESSGRENADE_SUBSONG0: .dw AHARMLESSGRENADE_SUBSONG0_NOTEINDEXES
   7F89 05 80               303     .dw AHARMLESSGRENADE_SUBSONG0_TRACKINDEXES
   7F8B 06                  304     .db 6
   7F8C 01                  305     .db 1
   7F8D 02                  306     .db 2
   7F8E 00                  307     .db 0
   7F8F 01                  308     .db 1
   7F90 15                  309     .db 21
   7F91 0A                  310     .db 10
   7F92 00                  311     .db 0
   7F93 0C                  312     .db 12
   7F94 FA                  313 AHARMLESSGRENADE_SUBSONG0_LOOP: .db 250
   7F95 1F                  314     .db 31
   7F96 84                  315     .db 132
   7F97 00                  316     .db 0
   7F98 80                  317     .db 128
   7F99 00                  318     .db 0
   7F9A 80                  319     .db 128
   7F9B A0                  320     .db 160
   7F9C 85                  321     .db 133
   7F9D 85                  322     .db 133
   7F9E 80                  323     .db 128
   7F9F 00                  324     .db 0
   7FA0 9A                  325     .db 154
   7FA1 00                  326     .db 0
   7FA2 A8                  327     .db 168
   7FA3 01                  328     .db 1
   7FA4 09                  329     .db 9
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



   7FA5 01                  330     .db 1
   7FA6 27                  331     .db 39
   7FA7 01                  332     .db 1
   7FA8 13                  333     .db 19
   7FA9 AA                  334     .db 170
   7FAA 17                  335     .db 23
   7FAB 88                  336     .db 136
   7FAC 87                  337     .db 135
   7FAD 89                  338     .db 137
   7FAE AA                  339     .db 170
   7FAF 07                  340     .db 7
   7FB0 01                  341     .db 1
   7FB1 8F                  342     .db 143
   7FB2 01                  343     .db 1
   7FB3 90                  344     .db 144
   7FB4 01                  345     .db 1
   7FB5 95                  346     .db 149
   7FB6 AA                  347     .db 170
   7FB7 17                  348     .db 23
   7FB8 88                  349     .db 136
   7FB9 87                  350     .db 135
   7FBA 89                  351     .db 137
   7FBB AA                  352     .db 170
   7FBC 07                  353     .db 7
   7FBD 01                  354     .db 1
   7FBE 90                  355     .db 144
   7FBF 01                  356     .db 1
   7FC0 97                  357     .db 151
   7FC1 01                  358     .db 1
   7FC2 A7                  359     .db 167
   7FC3 AA                  360     .db 170
   7FC4 17                  361     .db 23
   7FC5 88                  362     .db 136
   7FC6 87                  363     .db 135
   7FC7 89                  364     .db 137
   7FC8 AA                  365     .db 170
   7FC9 07                  366     .db 7
   7FCA 01                  367     .db 1
   7FCB 75                  368     .db 117
   7FCC 01                  369     .db 1
   7FCD 76                  370     .db 118
   7FCE 01                  371     .db 1
   7FCF 7B                  372     .db 123
   7FD0 AA                  373     .db 170
   7FD1 1F                  374     .db 31
   7FD2 8A                  375     .db 138
   7FD3 8B                  376     .db 139
   7FD4 01                  377     .db 1
   7FD5 BD                  378     .db 189
   7FD6 80                  379     .db 128
   7FD7 02                  380     .db 2
   7FD8 0A                  381     .db 10
   7FD9 82                  382     .db 130
   7FDA 1B                  383     .db 27
   7FDB 01                  384     .db 1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



   7FDC B6                  385     .db 182
   7FDD AA                  386     .db 170
   7FDE 03                  387     .db 3
   7FDF 80                  388     .db 128
   7FE0 81                  389     .db 129
   7FE1 80                  390     .db 128
   7FE2 AA                  391     .db 170
   7FE3 1F                  392     .db 31
   7FE4 01                  393     .db 1
   7FE5 C7                  394     .db 199
   7FE6 82                  395     .db 130
   7FE7 83                  396     .db 131
   7FE8 00                  397     .db 0
   7FE9 08                  398     .db 8
   7FEA 8C                  399     .db 140
   7FEB 00                  400     .db 0
   7FEC 46                  401     .db 70
   7FED 0F                  402     .db 15
   7FEE 02                  403     .db 2
   7FEF 02                  404     .db 2
   7FF0 FE                  405     .db 254
   7FF1 03                  406     .db 3
   7FF2 00                  407     .db 0
   7FF3 80                  408     .db 128
   7FF4 02                  409     .db 2
   7FF5 81                  410     .db 129
   7FF6 00                  411     .db 0
   7FF7 86                  412     .db 134
   7FF8 50                  413     .db 80
   7FF9 0A                  414     .db 10
   7FFA 04                  415     .db 4
   7FFB 50                  416     .db 80
   7FFC 14                  417     .db 20
   7FFD 08                  418     .db 8
   7FFE 50                  419     .db 80
   7FFF 24                  420     .db 36
   8000 0E                  421     .db 14
   8001 01                  422     .db 1
   8002 00                  423     .db 0
   8003 94 7F               424     .dw AHARMLESSGRENADE_SUBSONG0_LOOP
   8005 0E 82               425 AHARMLESSGRENADE_SUBSONG0_TRACKINDEXES: .dw AHARMLESSGRENADE_SUBSONG0_TRACK22
   8007 11 82               426     .dw AHARMLESSGRENADE_SUBSONG0_TRACK23
   8009 B8 81               427     .dw AHARMLESSGRENADE_SUBSONG0_TRACK19
   800B F7 81               428     .dw AHARMLESSGRENADE_SUBSONG0_TRACK21
   800D 1F 80               429     .dw AHARMLESSGRENADE_SUBSONG0_TRACK0
   800F 39 80               430     .dw AHARMLESSGRENADE_SUBSONG0_TRACK1
   8011 43 82               431     .dw AHARMLESSGRENADE_SUBSONG0_TRACK25
   8013 20 81               432     .dw AHARMLESSGRENADE_SUBSONG0_TRACK8
   8015 D1 80               433     .dw AHARMLESSGRENADE_SUBSONG0_TRACK6
   8017 F7 80               434     .dw AHARMLESSGRENADE_SUBSONG0_TRACK7
   8019 74 81               435     .dw AHARMLESSGRENADE_SUBSONG0_TRACK15
   801B 7F 81               436     .dw AHARMLESSGRENADE_SUBSONG0_TRACK16
   801D 18 82               437     .dw AHARMLESSGRENADE_SUBSONG0_TRACK24
   801F 92                  438 AHARMLESSGRENADE_SUBSONG0_TRACK0: .db 146
   8020 52                  439     .db 82
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



   8021 92                  440     .db 146
   8022 92                  441     .db 146
   8023 52                  442     .db 82
   8024 92                  443     .db 146
   8025 92                  444     .db 146
   8026 92                  445     .db 146
   8027 92                  446     .db 146
   8028 92                  447     .db 146
   8029 52                  448     .db 82
   802A 92                  449     .db 146
   802B 92                  450     .db 146
   802C 52                  451     .db 82
   802D 52                  452     .db 82
   802E 5A                  453     .db 90
   802F 5E                  454     .db 94
   8030 1D                  455     .db 29
   8031 5E                  456     .db 94
   8032 20                  457     .db 32
   8033 55                  458     .db 85
   8034 5E                  459     .db 94
   8035 1D                  460     .db 29
   8036 50                  461     .db 80
   8037 DA                  462     .db 218
   8038 7F                  463     .db 127
   8039 CD                  464 AHARMLESSGRENADE_SUBSONG0_TRACK1: .db 205
   803A 7F                  465     .db 127
   803B 0C                  466 AHARMLESSGRENADE_SUBSONG0_TRACK2: .db 12
   803C 60                  467     .db 96
   803D 00                  468     .db 0
   803E 0C                  469     .db 12
   803F 70                  470     .db 112
   8040 03                  471     .db 3
   8041 32                  472     .db 50
   8042 0C                  473     .db 12
   8043 40                  474     .db 64
   8044 02                  475     .db 2
   8045 0C                  476     .db 12
   8046 40                  477     .db 64
   8047 32                  478     .db 50
   8048 0C                  479     .db 12
   8049 60                  480     .db 96
   804A 02                  481     .db 2
   804B 0C                  482     .db 12
   804C 70                  483     .db 112
   804D 04                  484     .db 4
   804E 12                  485     .db 18
   804F 0C                  486     .db 12
   8050 70                  487     .db 112
   8051 03                  488     .db 3
   8052 22                  489     .db 34
   8053 0C                  490     .db 12
   8054 40                  491     .db 64
   8055 32                  492     .db 50
   8056 0C                  493     .db 12
   8057 60                  494     .db 96
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



   8058 02                  495     .db 2
   8059 0C                  496     .db 12
   805A 70                  497     .db 112
   805B 05                  498     .db 5
   805C 12                  499     .db 18
   805D 0C                  500     .db 12
   805E 70                  501     .db 112
   805F 03                  502     .db 3
   8060 22                  503     .db 34
   8061 0C                  504     .db 12
   8062 70                  505     .db 112
   8063 04                  506     .db 4
   8064 32                  507     .db 50
   8065 0C                  508     .db 12
   8066 60                  509     .db 96
   8067 02                  510     .db 2
   8068 0C                  511     .db 12
   8069 70                  512     .db 112
   806A 06                  513     .db 6
   806B 32                  514     .db 50
   806C 0C                  515     .db 12
   806D 70                  516     .db 112
   806E 04                  517     .db 4
   806F 52                  518     .db 82
   8070 0C                  519     .db 12
   8071 70                  520     .db 112
   8072 06                  521     .db 6
   8073 22                  522     .db 34
   8074 0C                  523     .db 12
   8075 60                  524     .db 96
   8076 02                  525     .db 2
   8077 0C                  526     .db 12
   8078 70                  527     .db 112
   8079 03                  528     .db 3
   807A 22                  529     .db 34
   807B 0C                  530     .db 12
   807C 70                  531     .db 112
   807D 04                  532     .db 4
   807E 12                  533     .db 18
   807F 0C                  534     .db 12
   8080 70                  535     .db 112
   8081 03                  536     .db 3
   8082 32                  537     .db 50
   8083 0C                  538     .db 12
   8084 60                  539     .db 96
   8085 02                  540     .db 2
   8086 0C                  541     .db 12
   8087 70                  542     .db 112
   8088 04                  543     .db 4
   8089 22                  544     .db 34
   808A 0C                  545     .db 12
   808B 70                  546     .db 112
   808C 05                  547     .db 5
   808D 32                  548     .db 50
   808E 0C                  549     .db 12
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



   808F 70                  550     .db 112
   8090 04                  551     .db 4
   8091 12                  552     .db 18
   8092 0C                  553     .db 12
   8093 60                  554     .db 96
   8094 02                  555     .db 2
   8095 0C                  556     .db 12
   8096 70                  557     .db 112
   8097 03                  558     .db 3
   8098 12                  559     .db 18
   8099 0C                  560     .db 12
   809A 70                  561     .db 112
   809B 05                  562     .db 5
   809C 32                  563     .db 50
   809D 0C                  564     .db 12
   809E 40                  565     .db 64
   809F 42                  566     .db 66
   80A0 0C                  567     .db 12
   80A1 60                  568     .db 96
   80A2 02                  569     .db 2
   80A3 0C                  570     .db 12
   80A4 70                  571     .db 112
   80A5 03                  572     .db 3
   80A6 42                  573     .db 66
   80A7 0C                  574     .db 12
   80A8 70                  575     .db 112
   80A9 04                  576     .db 4
   80AA 22                  577     .db 34
   80AB F0                  578     .db 240
   80AC 06                  579     .db 6
   80AD 7F                  580     .db 127
   80AE 0C                  581 AHARMLESSGRENADE_SUBSONG0_TRACK3: .db 12
   80AF FE                  582     .db 254
   80B0 4F                  583     .db 79
   80B1 07                  584     .db 7
   80B2 07                  585     .db 7
   80B3 21                  586     .db 33
   80B4 18                  587     .db 24
   80B5 0E                  588     .db 14
   80B6 4D                  589     .db 77
   80B7 0E                  590     .db 14
   80B8 48                  591     .db 72
   80B9 CE                  592     .db 206
   80BA 4C                  593     .db 76
   80BB 7F                  594     .db 127
   80BC 0C                  595 AHARMLESSGRENADE_SUBSONG0_TRACK4: .db 12
   80BD E0                  596     .db 224
   80BE 03                  597     .db 3
   80BF 00                  598     .db 0
   80C0 0C                  599     .db 12
   80C1 FE                  600     .db 254
   80C2 4B                  601     .db 75
   80C3 07                  602     .db 7
   80C4 07                  603     .db 7
   80C5 23                  604     .db 35
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



   80C6 18                  605     .db 24
   80C7 0E                  606     .db 14
   80C8 47                  607     .db 71
   80C9 0E                  608     .db 14
   80CA 4D                  609     .db 77
   80CB CE                  610     .db 206
   80CC 4F                  611     .db 79
   80CD 7F                  612     .db 127
   80CE F2                  613 AHARMLESSGRENADE_SUBSONG0_TRACK5: .db 242
   80CF 08                  614     .db 8
   80D0 7F                  615     .db 127
   80D1 0C                  616 AHARMLESSGRENADE_SUBSONG0_TRACK6: .db 12
   80D2 45                  617     .db 69
   80D3 00                  618     .db 0
   80D4 9D                  619     .db 157
   80D5 F4                  620     .db 244
   80D6 00                  621     .db 0
   80D7 20                  622     .db 32
   80D8 45                  623     .db 69
   80D9 9D                  624     .db 157
   80DA F4                  625     .db 244
   80DB 00                  626     .db 0
   80DC 20                  627     .db 32
   80DD 45                  628     .db 69
   80DE 5D                  629     .db 93
   80DF F4                  630     .db 244
   80E0 00                  631     .db 0
   80E1 20                  632     .db 32
   80E2 F1                  633     .db 241
   80E3 00                  634     .db 0
   80E4 06                  635     .db 6
   80E5 72                  636     .db 114
   80E6 0A                  637     .db 10
   80E7 45                  638     .db 69
   80E8 9D                  639     .db 157
   80E9 F4                  640     .db 244
   80EA 00                  641     .db 0
   80EB 20                  642     .db 32
   80EC 45                  643     .db 69
   80ED 9D                  644     .db 157
   80EE F4                  645     .db 244
   80EF 00                  646     .db 0
   80F0 20                  647     .db 32
   80F1 45                  648     .db 69
   80F2 DD                  649     .db 221
   80F3 7F                  650     .db 127
   80F4 F4                  651     .db 244
   80F5 00                  652     .db 0
   80F6 20                  653     .db 32
   80F7 0C                  654 AHARMLESSGRENADE_SUBSONG0_TRACK7: .db 12
   80F8 72                  655     .db 114
   80F9 0C                  656     .db 12
   80FA 00                  657     .db 0
   80FB 9D                  658     .db 157
   80FC F4                  659     .db 244
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



   80FD 00                  660     .db 0
   80FE 20                  661     .db 32
   80FF 42                  662     .db 66
   8100 9D                  663     .db 157
   8101 F4                  664     .db 244
   8102 00                  665     .db 0
   8103 20                  666     .db 32
   8104 42                  667     .db 66
   8105 5D                  668     .db 93
   8106 F4                  669     .db 244
   8107 00                  670     .db 0
   8108 20                  671     .db 32
   8109 F1                  672     .db 241
   810A 00                  673     .db 0
   810B 06                  674     .db 6
   810C 72                  675     .db 114
   810D 0C                  676     .db 12
   810E 0C                  677     .db 12
   810F 42                  678     .db 66
   8110 02                  679     .db 2
   8111 9D                  680     .db 157
   8112 F4                  681     .db 244
   8113 00                  682     .db 0
   8114 20                  683     .db 32
   8115 42                  684     .db 66
   8116 9D                  685     .db 157
   8117 F4                  686     .db 244
   8118 00                  687     .db 0
   8119 20                  688     .db 32
   811A 42                  689     .db 66
   811B DD                  690     .db 221
   811C 7F                  691     .db 127
   811D F4                  692     .db 244
   811E 00                  693     .db 0
   811F 20                  694     .db 32
   8120 0C                  695 AHARMLESSGRENADE_SUBSONG0_TRACK8: .db 12
   8121 E0                  696     .db 224
   8122 02                  697     .db 2
   8123 00                  698     .db 0
   8124 20                  699     .db 32
   8125 A0                  700     .db 160
   8126 76                  701     .db 118
   8127 09                  702     .db 9
   8128 0C                  703     .db 12
   8129 46                  704     .db 70
   812A 12                  705     .db 18
   812B 0C                  706     .db 12
   812C 46                  707     .db 70
   812D 22                  708     .db 34
   812E 0C                  709     .db 12
   812F 46                  710     .db 70
   8130 32                  711     .db 50
   8131 0C                  712     .db 12
   8132 46                  713     .db 70
   8133 42                  714     .db 66
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



   8134 0C                  715     .db 12
   8135 46                  716     .db 70
   8136 52                  717     .db 82
   8137 0C                  718     .db 12
   8138 46                  719     .db 70
   8139 62                  720     .db 98
   813A 0C                  721     .db 12
   813B 60                  722     .db 96
   813C 02                  723     .db 2
   813D 20                  724     .db 32
   813E 20                  725     .db 32
   813F E0                  726     .db 224
   8140 7F                  727     .db 127
   8141 8F                  728 AHARMLESSGRENADE_SUBSONG0_TRACK9: .db 143
   8142 CA                  729     .db 202
   8143 7F                  730     .db 127
   8144 F3                  731 AHARMLESSGRENADE_SUBSONG0_TRACK10: .db 243
   8145 09                  732     .db 9
   8146 03                  733     .db 3
   8147 A0                  734     .db 160
   8148 43                  735     .db 67
   8149 E0                  736     .db 224
   814A 7F                  737     .db 127
   814B BF                  738 AHARMLESSGRENADE_SUBSONG0_TRACK11: .db 191
   814C 0C                  739     .db 12
   814D CA                  740     .db 202
   814E 7F                  741     .db 127
   814F 8E                  742 AHARMLESSGRENADE_SUBSONG0_TRACK12: .db 142
   8150 13                  743     .db 19
   8151 9D                  744     .db 157
   8152 F4                  745     .db 244
   8153 00                  746     .db 0
   8154 10                  747     .db 16
   8155 CE                  748     .db 206
   8156 10                  749     .db 16
   8157 7F                  750     .db 127
   8158 0C                  751 AHARMLESSGRENADE_SUBSONG0_TRACK13: .db 12
   8159 E0                  752     .db 224
   815A 03                  753     .db 3
   815B 00                  754     .db 0
   815C 60                  755     .db 96
   815D 0C                  756     .db 12
   815E 73                  757     .db 115
   815F 04                  758     .db 4
   8160 32                  759     .db 50
   8161 0C                  760     .db 12
   8162 73                  761     .db 115
   8163 06                  762     .db 6
   8164 12                  763     .db 18
   8165 0C                  764     .db 12
   8166 F3                  765     .db 243
   8167 03                  766     .db 3
   8168 7F                  767     .db 127
   8169 22                  768     .db 34
   816A BE                  769 AHARMLESSGRENADE_SUBSONG0_TRACK14: .db 190
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



   816B 13                  770     .db 19
   816C 0C                  771     .db 12
   816D 9D                  772     .db 157
   816E F4                  773     .db 244
   816F 00                  774     .db 0
   8170 10                  775     .db 16
   8171 CE                  776     .db 206
   8172 10                  777     .db 16
   8173 7F                  778     .db 127
   8174 FE                  779 AHARMLESSGRENADE_SUBSONG0_TRACK15: .db 254
   8175 27                  780     .db 39
   8176 0E                  781     .db 14
   8177 05                  782     .db 5
   8178 C3                  783     .db 195
   8179 09                  784     .db 9
   817A F7                  785     .db 247
   817B 08                  786     .db 8
   817C 05                  787     .db 5
   817D C4                  788     .db 196
   817E 7F                  789     .db 127
   817F E0                  790 AHARMLESSGRENADE_SUBSONG0_TRACK16: .db 224
   8180 02                  791     .db 2
   8181 A0                  792     .db 160
   8182 60                  793     .db 96
   8183 F3                  794     .db 243
   8184 09                  795     .db 9
   8185 03                  796     .db 3
   8186 E0                  797     .db 224
   8187 02                  798     .db 2
   8188 20                  799     .db 32
   8189 20                  800     .db 32
   818A A0                  801     .db 160
   818B 60                  802     .db 96
   818C C3                  803     .db 195
   818D 03                  804     .db 3
   818E A0                  805     .db 160
   818F 43                  806     .db 67
   8190 A0                  807     .db 160
   8191 E0                  808     .db 224
   8192 7F                  809     .db 127
   8193 0C                  810 AHARMLESSGRENADE_SUBSONG0_TRACK17: .db 12
   8194 B1                  811     .db 177
   8195 0D                  812     .db 13
   8196 40                  813     .db 64
   8197 88                  814     .db 136
   8198 8E                  815     .db 142
   8199 37                  816     .db 55
   819A 8B                  817     .db 139
   819B 89                  818     .db 137
   819C 0C                  819     .db 12
   819D 81                  820     .db 129
   819E 32                  821     .db 50
   819F 81                  822     .db 129
   81A0 88                  823     .db 136
   81A1 8E                  824     .db 142
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



   81A2 36                  825     .db 54
   81A3 8B                  826     .db 139
   81A4 0C                  827     .db 12
   81A5 89                  828     .db 137
   81A6 22                  829     .db 34
   81A7 81                  830     .db 129
   81A8 81                  831     .db 129
   81A9 88                  832     .db 136
   81AA 8F                  833     .db 143
   81AB C9                  834     .db 201
   81AC 7F                  835     .db 127
   81AD F4                  836 AHARMLESSGRENADE_SUBSONG0_TRACK18: .db 244
   81AE 0B                  837     .db 11
   81AF 05                  838     .db 5
   81B0 C0                  839     .db 192
   81B1 09                  840     .db 9
   81B2 CE                  841     .db 206
   81B3 12                  842     .db 18
   81B4 05                  843     .db 5
   81B5 CE                  844     .db 206
   81B6 0F                  845     .db 15
   81B7 7F                  846     .db 127
   81B8 60                  847 AHARMLESSGRENADE_SUBSONG0_TRACK19: .db 96
   81B9 71                  848     .db 113
   81BA 10                  849     .db 16
   81BB 41                  850     .db 65
   81BC 60                  851     .db 96
   81BD 41                  852     .db 65
   81BE 60                  853     .db 96
   81BF 73                  854     .db 115
   81C0 09                  855     .db 9
   81C1 71                  856     .db 113
   81C2 10                  857     .db 16
   81C3 41                  858     .db 65
   81C4 41                  859     .db 65
   81C5 60                  860     .db 96
   81C6 71                  861     .db 113
   81C7 11                  862     .db 17
   81C8 41                  863     .db 65
   81C9 60                  864     .db 96
   81CA 41                  865     .db 65
   81CB 41                  866     .db 65
   81CC 60                  867     .db 96
   81CD 41                  868     .db 65
   81CE 71                  869     .db 113
   81CF 12                  870     .db 18
   81D0 60                  871     .db 96
   81D1 41                  872     .db 65
   81D2 60                  873     .db 96
   81D3 73                  874     .db 115
   81D4 09                  875     .db 9
   81D5 71                  876     .db 113
   81D6 12                  877     .db 18
   81D7 71                  878     .db 113
   81D8 13                  879     .db 19
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



   81D9 41                  880     .db 65
   81DA 60                  881     .db 96
   81DB 41                  882     .db 65
   81DC 73                  883     .db 115
   81DD 09                  884     .db 9
   81DE 60                  885     .db 96
   81DF 71                  886     .db 113
   81E0 13                  887     .db 19
   81E1 E0                  888     .db 224
   81E2 7F                  889     .db 127
   81E3 0C                  890 AHARMLESSGRENADE_SUBSONG0_TRACK20: .db 12
   81E4 B1                  891     .db 177
   81E5 0F                  892     .db 15
   81E6 20                  893     .db 32
   81E7 8D                  894     .db 141
   81E8 8D                  895     .db 141
   81E9 8D                  896     .db 141
   81EA 8D                  897     .db 141
   81EB 8D                  898     .db 141
   81EC 8D                  899     .db 141
   81ED 8D                  900     .db 141
   81EE 8D                  901     .db 141
   81EF 8D                  902     .db 141
   81F0 8D                  903     .db 141
   81F1 8D                  904     .db 141
   81F2 8D                  905     .db 141
   81F3 8D                  906     .db 141
   81F4 8D                  907     .db 141
   81F5 CD                  908     .db 205
   81F6 7F                  909     .db 127
   81F7 0C                  910 AHARMLESSGRENADE_SUBSONG0_TRACK21: .db 12
   81F8 B1                  911     .db 177
   81F9 07                  912     .db 7
   81FA 21                  913     .db 33
   81FB 16                  914     .db 22
   81FC 88                  915     .db 136
   81FD 8E                  916     .db 142
   81FE 37                  917     .db 55
   81FF 8B                  918     .db 139
   8200 89                  919     .db 137
   8201 81                  920     .db 129
   8202 81                  921     .db 129
   8203 88                  922     .db 136
   8204 8E                  923     .db 142
   8205 36                  924     .db 54
   8206 8B                  925     .db 139
   8207 89                  926     .db 137
   8208 81                  927     .db 129
   8209 81                  928     .db 129
   820A 88                  929     .db 136
   820B 8F                  930     .db 143
   820C C9                  931     .db 201
   820D 7F                  932     .db 127
   820E F1                  933 AHARMLESSGRENADE_SUBSONG0_TRACK22: .db 241
   820F 00                  934     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



   8210 7F                  935     .db 127
   8211 0C                  936 AHARMLESSGRENADE_SUBSONG0_TRACK23: .db 12
   8212 CE                  937     .db 206
   8213 3C                  938     .db 60
   8214 7F                  939     .db 127
   8215 F4                  940     .db 244
   8216 00                  941     .db 0
   8217 50                  942     .db 80
   8218 0C                  943 AHARMLESSGRENADE_SUBSONG0_TRACK24: .db 12
   8219 54                  944     .db 84
   821A 00                  945     .db 0
   821B 54                  946     .db 84
   821C 5E                  947     .db 94
   821D 1C                  948     .db 28
   821E 5F                  949     .db 95
   821F 57                  950     .db 87
   8220 5E                  951     .db 94
   8221 1F                  952     .db 31
   8222 50                  953     .db 80
   8223 50                  954     .db 80
   8224 50                  955     .db 80
   8225 50                  956     .db 80
   8226 50                  957     .db 80
   8227 50                  958     .db 80
   8228 5E                  959     .db 94
   8229 1C                  960     .db 28
   822A 50                  961     .db 80
   822B 5E                  962     .db 94
   822C 1F                  963     .db 31
   822D 50                  964     .db 80
   822E 57                  965     .db 87
   822F 57                  966     .db 87
   8230 57                  967     .db 87
   8231 57                  968     .db 87
   8232 5E                  969     .db 94
   8233 20                  970     .db 32
   8234 5E                  971     .db 94
   8235 21                  972     .db 33
   8236 54                  973     .db 84
   8237 54                  974     .db 84
   8238 54                  975     .db 84
   8239 54                  976     .db 84
   823A 54                  977     .db 84
   823B 5A                  978     .db 90
   823C 5E                  979     .db 94
   823D 19                  980     .db 25
   823E 50                  981     .db 80
   823F 52                  982     .db 82
   8240 DE                  983     .db 222
   8241 16                  984     .db 22
   8242 7F                  985     .db 127
   8243 0C                  986 AHARMLESSGRENADE_SUBSONG0_TRACK25: .db 12
   8244 FE                  987     .db 254
   8245 48                  988     .db 72
   8246 0C                  989     .db 12
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



   8247 7F                  990     .db 127
   8248 51                  991     .db 81
   8249 F5                  992     .db 245
   824A 00                  993     .db 0
   824B 02                  994     .db 2
   824C 26                  995     .db 38
   824D 18                  996 AHARMLESSGRENADE_SUBSONG0_NOTEINDEXES: .db 24
   824E 30                  997     .db 48
   824F 17                  998     .db 23
   8250 24                  999     .db 36
   8251 1B                 1000     .db 27
   8252 23                 1001     .db 35
   8253 28                 1002     .db 40
   8254 1E                 1003     .db 30
   8255 33                 1004     .db 51
   8256 39                 1005     .db 57
   8257 1A                 1006     .db 26
   8258 3A                 1007     .db 58
   8259                    1008 SOUNDEFFECTS_SOUNDEFFECTS:
   8259 63 82              1009 _SOUNDEFFECTS_SOUNDEFFECTS:: .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND1
   825B 75 82              1010     .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND2
   825D 9B 82              1011     .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND3
   825F DA 82              1012     .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND4
   8261 F0 82              1013     .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND5
   8263 00                 1014 SOUNDEFFECTS_SOUNDEFFECTS_SOUND1: .db 0
   8264 BD                 1015 SOUNDEFFECTS_SOUNDEFFECTS_SOUND1_LOOP: .db 189
   8265 01                 1016     .db 1
   8266 5F                 1017     .db 95
   8267 00                 1018     .db 0
   8268 BD                 1019     .db 189
   8269 01                 1020     .db 1
   826A 63                 1021     .db 99
   826B 00                 1022     .db 0
   826C B1                 1023     .db 177
   826D 01                 1024     .db 1
   826E 66                 1025     .db 102
   826F 00                 1026     .db 0
   8270 AD                 1027     .db 173
   8271 01                 1028     .db 1
   8272 6A                 1029     .db 106
   8273 00                 1030     .db 0
   8274 04                 1031     .db 4
   8275 01                 1032 SOUNDEFFECTS_SOUNDEFFECTS_SOUND2: .db 1
   8276 BD                 1033 SOUNDEFFECTS_SOUNDEFFECTS_SOUND2_LOOP: .db 189
   8277 01                 1034     .db 1
   8278 2D                 1035     .db 45
   8279 01                 1036     .db 1
   827A BD                 1037     .db 189
   827B 08                 1038     .db 8
   827C 3F                 1039     .db 63
   827D 01                 1040     .db 1
   827E B9                 1041     .db 185
   827F 02                 1042     .db 2
   8280 92                 1043     .db 146
   8281 01                 1044     .db 1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



   8282 B5                 1045     .db 181
   8283 10                 1046     .db 16
   8284 D5                 1047     .db 213
   8285 00                 1048     .db 0
   8286 B1                 1049     .db 177
   8287 02                 1050     .db 2
   8288 E1                 1051     .db 225
   8289 00                 1052     .db 0
   828A AD                 1053     .db 173
   828B 02                 1054     .db 2
   828C EF                 1055     .db 239
   828D 00                 1056     .db 0
   828E A5                 1057     .db 165
   828F 10                 1058     .db 16
   8290 66                 1059     .db 102
   8291 01                 1060     .db 1
   8292 9D                 1061     .db 157
   8293 1F                 1062     .db 31
   8294 77                 1063     .db 119
   8295 00                 1064     .db 0
   8296 99                 1065     .db 153
   8297 07                 1066     .db 7
   8298 50                 1067     .db 80
   8299 00                 1068     .db 0
   829A 04                 1069     .db 4
   829B 01                 1070 SOUNDEFFECTS_SOUNDEFFECTS_SOUND3: .db 1
   829C BD                 1071 SOUNDEFFECTS_SOUNDEFFECTS_SOUND3_LOOP: .db 189
   829D 01                 1072     .db 1
   829E 77                 1073     .db 119
   829F 00                 1074     .db 0
   82A0 39                 1075     .db 57
   82A1 3C                 1076     .db 60
   82A2 00                 1077     .db 0
   82A3 B5                 1078     .db 181
   82A4 01                 1079     .db 1
   82A5 5F                 1080     .db 95
   82A6 00                 1081     .db 0
   82A7 31                 1082     .db 49
   82A8 2F                 1083     .db 47
   82A9 00                 1084     .db 0
   82AA B9                 1085     .db 185
   82AB 01                 1086     .db 1
   82AC 50                 1087     .db 80
   82AD 00                 1088     .db 0
   82AE 3D                 1089     .db 61
   82AF 28                 1090     .db 40
   82B0 00                 1091     .db 0
   82B1 03                 1092     .db 3
   82B2 0F                 1093     .db 15
   82B3 00                 1094     .db 0
   82B4 DE                 1095     .db 222
   82B5 01                 1096     .db 1
   82B6 3D                 1097     .db 61
   82B7 EF                 1098     .db 239
   82B8 00                 1099     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



   82B9 03                 1100     .db 3
   82BA 0F                 1101     .db 15
   82BB 00                 1102     .db 0
   82BC DE                 1103     .db 222
   82BD 01                 1104     .db 1
   82BE 3D                 1105     .db 61
   82BF EF                 1106     .db 239
   82C0 00                 1107     .db 0
   82C1 03                 1108     .db 3
   82C2 0F                 1109     .db 15
   82C3 00                 1110     .db 0
   82C4 DE                 1111     .db 222
   82C5 01                 1112     .db 1
   82C6 3D                 1113     .db 61
   82C7 EF                 1114     .db 239
   82C8 00                 1115     .db 0
   82C9 03                 1116     .db 3
   82CA 1E                 1117     .db 30
   82CB 00                 1118     .db 0
   82CC BC                 1119     .db 188
   82CD 03                 1120     .db 3
   82CE 3D                 1121     .db 61
   82CF EF                 1122     .db 239
   82D0 00                 1123     .db 0
   82D1 03                 1124     .db 3
   82D2 1E                 1125     .db 30
   82D3 00                 1126     .db 0
   82D4 BC                 1127     .db 188
   82D5 03                 1128     .db 3
   82D6 3D                 1129     .db 61
   82D7 EF                 1130     .db 239
   82D8 00                 1131     .db 0
   82D9 04                 1132     .db 4
   82DA 01                 1133 SOUNDEFFECTS_SOUNDEFFECTS_SOUND4: .db 1
   82DB BD                 1134 SOUNDEFFECTS_SOUNDEFFECTS_SOUND4_LOOP: .db 189
   82DC 01                 1135     .db 1
   82DD 77                 1136     .db 119
   82DE 00                 1137     .db 0
   82DF 3D                 1138     .db 61
   82E0 38                 1139     .db 56
   82E1 00                 1140     .db 0
   82E2 BD                 1141     .db 189
   82E3 01                 1142     .db 1
   82E4 6A                 1143     .db 106
   82E5 00                 1144     .db 0
   82E6 3D                 1145     .db 61
   82E7 35                 1146     .db 53
   82E8 00                 1147     .db 0
   82E9 3D                 1148     .db 61
   82EA 64                 1149     .db 100
   82EB 00                 1150     .db 0
   82EC 3D                 1151     .db 61
   82ED 32                 1152     .db 50
   82EE 00                 1153     .db 0
   82EF 04                 1154     .db 4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



   82F0 01                 1155 SOUNDEFFECTS_SOUNDEFFECTS_SOUND5: .db 1
   82F1 03                 1156 SOUNDEFFECTS_SOUNDEFFECTS_SOUND5_LOOP: .db 3
   82F2 02                 1157     .db 2
   82F3 00                 1158     .db 0
   82F4 1B                 1159     .db 27
   82F5 00                 1160     .db 0
   82F6 03                 1161     .db 3
   82F7 03                 1162     .db 3
   82F8 00                 1163     .db 0
   82F9 2F                 1164     .db 47
   82FA 00                 1165     .db 0
   82FB 03                 1166     .db 3
   82FC 02                 1167     .db 2
   82FD 00                 1168     .db 0
   82FE 1E                 1169     .db 30
   82FF 00                 1170     .db 0
   8300 03                 1171     .db 3
   8301 05                 1172     .db 5
   8302 00                 1173     .db 0
   8303 4B                 1174     .db 75
   8304 00                 1175     .db 0
   8305 03                 1176     .db 3
   8306 03                 1177     .db 3
   8307 00                 1178     .db 0
   8308 2F                 1179     .db 47
   8309 00                 1180     .db 0
   830A 03                 1181     .db 3
   830B 07                 1182     .db 7
   830C 00                 1183     .db 0
   830D 77                 1184     .db 119
   830E 00                 1185     .db 0
   830F 03                 1186     .db 3
   8310 05                 1187     .db 5
   8311 00                 1188     .db 0
   8312 4B                 1189     .db 75
   8313 00                 1190     .db 0
   8314 03                 1191     .db 3
   8315 0C                 1192     .db 12
   8316 00                 1193     .db 0
   8317 BE                 1194     .db 190
   8318 00                 1195     .db 0
   8319 03                 1196     .db 3
   831A 07                 1197     .db 7
   831B 00                 1198     .db 0
   831C 77                 1199     .db 119
   831D 00                 1200     .db 0
   831E 03                 1201     .db 3
   831F 13                 1202     .db 19
   8320 00                 1203     .db 0
   8321 2D                 1204     .db 45
   8322 01                 1205     .db 1
   8323 03                 1206     .db 3
   8324 0C                 1207     .db 12
   8325 00                 1208     .db 0
   8326 BE                 1209     .db 190
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



   8327 00                 1210     .db 0
   8328 03                 1211     .db 3
   8329 22                 1212     .db 34
   832A 00                 1213     .db 0
   832B 18                 1214     .db 24
   832C 02                 1215     .db 2
   832D 03                 1216     .db 3
   832E 32                 1217     .db 50
   832F 00                 1218     .db 0
   8330 24                 1219     .db 36
   8331 03                 1220     .db 3
   8332 04                 1221     .db 4
   8333 C3 41 84      [10] 1222 PLY_AKM_START: jp PLY_AKM_INIT
   8336 C3 D5 84      [10] 1223     jp PLY_AKM_PLAY
   8339 C3 BF 84      [10] 1224     jp PLY_AKM_INITVARS_END
   833C                    1225 _PLY_AKM_INITSOUNDEFFECTS::
   833C 22 42 83      [16] 1226 PLY_AKM_INITSOUNDEFFECTS: ld (PLY_AKM_PTSOUNDEFFECTTABLE+1),hl
   833F C9            [10] 1227     ret 
   8340                    1228 _PLY_AKM_PLAYSOUNDEFFECT::
   8340 3D            [ 4] 1229 PLY_AKM_PLAYSOUNDEFFECT: dec a
   8341 21 00 00      [10] 1230 PLY_AKM_PTSOUNDEFFECTTABLE: ld hl,#0
   8344 5F            [ 4] 1231     ld e,a
   8345 16 00         [ 7] 1232     ld d,#0
   8347 19            [11] 1233     add hl,de
   8348 19            [11] 1234     add hl,de
   8349 5E            [ 7] 1235     ld e,(hl)
   834A 23            [ 6] 1236     inc hl
   834B 56            [ 7] 1237     ld d,(hl)
   834C 1A            [ 7] 1238     ld a,(de)
   834D 13            [ 6] 1239     inc de
   834E 08            [ 4] 1240     ex af,af'
   834F 78            [ 4] 1241     ld a,b
   8350 21 29 84      [10] 1242     ld hl,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
   8353 06 00         [ 7] 1243     ld b,#0
   8355 CB 21         [ 8] 1244     sla c
   8357 CB 21         [ 8] 1245     sla c
   8359 CB 21         [ 8] 1246     sla c
   835B 09            [11] 1247     add hl,bc
   835C 73            [ 7] 1248     ld (hl),e
   835D 23            [ 6] 1249     inc hl
   835E 72            [ 7] 1250     ld (hl),d
   835F 23            [ 6] 1251     inc hl
   8360 77            [ 7] 1252     ld (hl),a
   8361 23            [ 6] 1253     inc hl
   8362 36 00         [10] 1254     ld (hl),#0
   8364 23            [ 6] 1255     inc hl
   8365 08            [ 4] 1256     ex af,af'
   8366 77            [ 7] 1257     ld (hl),a
   8367 C9            [10] 1258     ret 
   8368                    1259 _PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL::
   8368 87            [ 4] 1260 PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL: add a,a
   8369 87            [ 4] 1261     add a,a
   836A 87            [ 4] 1262     add a,a
   836B 5F            [ 4] 1263     ld e,a
   836C 16 00         [ 7] 1264     ld d,#0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 25.
Hexadecimal [16-Bits]



   836E 21 29 84      [10] 1265     ld hl,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
   8371 19            [11] 1266     add hl,de
   8372 72            [ 7] 1267     ld (hl),d
   8373 23            [ 6] 1268     inc hl
   8374 72            [ 7] 1269     ld (hl),d
   8375 C9            [10] 1270     ret 
   8376 17            [ 4] 1271 PLY_AKM_PLAYSOUNDEFFECTSSTREAM: rla 
   8377 17            [ 4] 1272     rla 
   8378 DD 21 29 84   [14] 1273     ld ix,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
   837C FD 21 EC 89   [14] 1274     ld iy,#PLY_AKM_TRACK3_DATA_END
   8380 4F            [ 4] 1275     ld c,a
   8381 CD A3 83      [17] 1276     call PLY_AKM_PSES_PLAY
   8384 DD 21 31 84   [14] 1277     ld ix,#PLY_AKM_CHANNEL2_SOUNDEFFECTDATA
   8388 FD 21 F8 89   [14] 1278     ld iy,#PLY_AKM_TRACK2_REGISTERS
   838C CB 39         [ 8] 1279     srl c
   838E CD A3 83      [17] 1280     call PLY_AKM_PSES_PLAY
   8391 DD 21 39 84   [14] 1281     ld ix,#PLY_AKM_CHANNEL3_SOUNDEFFECTDATA
   8395 FD 21 04 8A   [14] 1282     ld iy,#PLY_AKM_TRACK3_REGISTERS
   8399 CB 19         [ 8] 1283     rr c
   839B CD A3 83      [17] 1284     call PLY_AKM_PSES_PLAY
   839E 79            [ 4] 1285     ld a,c
   839F 32 15 8A      [13] 1286     ld (PLY_AKM_MIXERREGISTER),a
   83A2 C9            [10] 1287     ret 
   83A3 DD 6E 00      [19] 1288 PLY_AKM_PSES_PLAY: ld l,+0(ix)
   83A6 DD 66 01      [19] 1289     ld h,+1(ix)
   83A9 7D            [ 4] 1290     ld a,l
   83AA B4            [ 4] 1291     or h
   83AB C8            [11] 1292     ret z
   83AC 7E            [ 7] 1293 PLY_AKM_PSES_READFIRSTBYTE: ld a,(hl)
   83AD 23            [ 6] 1294     inc hl
   83AE 47            [ 4] 1295     ld b,a
   83AF 1F            [ 4] 1296     rra 
   83B0 38 21         [12] 1297     jr c,PLY_AKM_PSES_SOFTWAREORSOFTWAREANDHARDWARE
   83B2 1F            [ 4] 1298     rra 
   83B3 1F            [ 4] 1299     rra 
   83B4 AF            [ 4] 1300 PLY_AKM_PSES_S_ENDORLOOP: xor a
   83B5 DD 77 00      [19] 1301     ld +0(ix),a
   83B8 DD 77 01      [19] 1302     ld +1(ix),a
   83BB C9            [10] 1303     ret 
   83BC DD 7E 03      [19] 1304 PLY_AKM_PSES_SAVEPOINTERANDEXIT: ld a,+3(ix)
   83BF DD BE 04      [19] 1305     cp +4(ix)
   83C2 38 0B         [12] 1306     jr c,PLY_AKM_PSES_NOTREACHED
   83C4 DD 36 03 00   [19] 1307     ld +3(ix),#0
   83C8 DD                 1308     .db 221
   83C9 75                 1309     .db 117
   83CA 00                 1310     .db +0
   83CB DD                 1311     .db 221
   83CC 74                 1312     .db 116
   83CD 01                 1313     .db +1
   83CE C9            [10] 1314     ret 
   83CF DD 34 03      [23] 1315 PLY_AKM_PSES_NOTREACHED: inc +3(ix)
   83D2 C9            [10] 1316     ret 
   83D3 1F            [ 4] 1317 PLY_AKM_PSES_SOFTWAREORSOFTWAREANDHARDWARE: rra 
   83D4 38 0F         [12] 1318     jr c,PLY_AKM_PSES_SOFTWAREANDHARDWARE
   83D6 CD 1D 84      [17] 1319     call PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
Hexadecimal [16-Bits]



   83D9 CB 10         [ 8] 1320     rl b
   83DB DC FF 83      [17] 1321     call c,PLY_AKM_PSES_READNOISEANDOPENNOISECHANNEL
   83DE CB 91         [ 8] 1322     res 2,c
   83E0 CD 12 84      [17] 1323     call PLY_AKM_PSES_READSOFTWAREPERIOD
   83E3 18 D7         [12] 1324     jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
   83E5 CD EF 83      [17] 1325 PLY_AKM_PSES_SOFTWAREANDHARDWARE: call PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE
   83E8 CD 12 84      [17] 1326     call PLY_AKM_PSES_READSOFTWAREPERIOD
   83EB CB 91         [ 8] 1327     res 2,c
   83ED 18 CD         [12] 1328     jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
   83EF 1F            [ 4] 1329 PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE: rra 
   83F0 E6 07         [ 7] 1330     and #7
   83F2 C6 08         [ 7] 1331     add a,#8
   83F4 32 CA 85      [13] 1332     ld (PLY_AKM_SENDPSGREGISTERR13+1),a
   83F7 CD 07 84      [17] 1333     call PLY_AKM_PSES_READHARDWAREPERIOD
   83FA 3E 10         [ 7] 1334     ld a,#16
   83FC C3 1F 84      [10] 1335     jp PLY_AKM_PSES_MANAGEVOLUMEFROMA_HARD
   83FF 7E            [ 7] 1336 PLY_AKM_PSES_READNOISEANDOPENNOISECHANNEL: ld a,(hl)
   8400 32 11 8A      [13] 1337     ld (PLY_AKM_NOISEREGISTER),a
   8403 23            [ 6] 1338     inc hl
   8404 CB A9         [ 8] 1339     res 5,c
   8406 C9            [10] 1340     ret 
   8407 7E            [ 7] 1341 PLY_AKM_PSES_READHARDWAREPERIOD: ld a,(hl)
   8408 32 19 8A      [13] 1342     ld (PLY_AKM_REG11),a
   840B 23            [ 6] 1343     inc hl
   840C 7E            [ 7] 1344     ld a,(hl)
   840D 32 1D 8A      [13] 1345     ld (PLY_AKM_REG12),a
   8410 23            [ 6] 1346     inc hl
   8411 C9            [10] 1347     ret 
   8412 7E            [ 7] 1348 PLY_AKM_PSES_READSOFTWAREPERIOD: ld a,(hl)
   8413 FD 77 05      [19] 1349     ld +5(iy),a
   8416 23            [ 6] 1350     inc hl
   8417 7E            [ 7] 1351     ld a,(hl)
   8418 FD 77 09      [19] 1352     ld +9(iy),a
   841B 23            [ 6] 1353     inc hl
   841C C9            [10] 1354     ret 
   841D E6 0F         [ 7] 1355 PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS: and #15
   841F DD 96 02      [19] 1356 PLY_AKM_PSES_MANAGEVOLUMEFROMA_HARD: sub +2(ix)
   8422 30 01         [12] 1357     jr nc,PLY_AKM_PSES_MVFA_NOOVERFLOW
   8424 AF            [ 4] 1358     xor a
   8425 FD 77 01      [19] 1359 PLY_AKM_PSES_MVFA_NOOVERFLOW: ld +1(iy),a
   8428 C9            [10] 1360     ret 
   8429 00 00              1361 PLY_AKM_CHANNEL1_SOUNDEFFECTDATA: .dw 0
   842B 00                 1362 PLY_AKM_CHANNEL1_SOUNDEFFECTINVERTEDVOLUME: .db 0
   842C 00                 1363 PLY_AKM_CHANNEL1_SOUNDEFFECTCURRENTSTEP: .db 0
   842D 00                 1364 PLY_AKM_CHANNEL1_SOUNDEFFECTSPEED: .db 0
   842E 00                 1365     .db 0
   842F 00                 1366     .db 0
   8430 00                 1367     .db 0
   8431 00                 1368 PLY_AKM_CHANNEL2_SOUNDEFFECTDATA: .db 0
   8432 00                 1369     .db 0
   8433 00                 1370     .db 0
   8434 00                 1371     .db 0
   8435 00                 1372     .db 0
   8436 00                 1373     .db 0
   8437 00                 1374     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 27.
Hexadecimal [16-Bits]



   8438 00                 1375     .db 0
   8439 00                 1376 PLY_AKM_CHANNEL3_SOUNDEFFECTDATA: .db 0
   843A 00                 1377     .db 0
   843B 00                 1378     .db 0
   843C 00                 1379     .db 0
   843D 00                 1380     .db 0
   843E 00                 1381     .db 0
   843F 00                 1382     .db 0
   8440 00                 1383     .db 0
   8441                    1384 _PLY_AKM_INIT::
   8441 11 55 85      [10] 1385 PLY_AKM_INIT: ld de,#PLY_AKM_READLINE+1
   8444 ED A0         [16] 1386     ldi
   8446 ED A0         [16] 1387     ldi
   8448 11 2B 89      [10] 1388     ld de,#PLY_AKM_PTARPEGGIOS+1
   844B ED A0         [16] 1389     ldi
   844D ED A0         [16] 1390     ldi
   844F 11 5D 89      [10] 1391     ld de,#PLY_AKM_PTPITCHES+1
   8452 ED A0         [16] 1392     ldi
   8454 ED A0         [16] 1393     ldi
   8456 87            [ 4] 1394     add a,a
   8457 5F            [ 4] 1395     ld e,a
   8458 16 00         [ 7] 1396     ld d,#0
   845A 19            [11] 1397     add hl,de
   845B 7E            [ 7] 1398     ld a,(hl)
   845C 23            [ 6] 1399     inc hl
   845D 66            [ 7] 1400     ld h,(hl)
   845E 6F            [ 4] 1401     ld l,a
   845F DD 21 A5 84   [14] 1402     ld ix,#PLY_AKM_INITVARS_START
   8463 3E 0D         [ 7] 1403     ld a,#13
   8465 DD 5E 00      [19] 1404 PLY_AKM_INITVARS_LOOP: ld e,+0(ix)
   8468 DD 56 01      [19] 1405     ld d,+1(ix)
   846B DD 23         [10] 1406     inc ix
   846D DD 23         [10] 1407     inc ix
   846F ED A0         [16] 1408     ldi
   8471 3D            [ 4] 1409     dec a
   8472 20 F1         [12] 1410     jr nz,PLY_AKM_INITVARS_LOOP
   8474 32 E2 84      [13] 1411     ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
   8477 EB            [ 4] 1412     ex de,hl
   8478 21 F1 84      [10] 1413     ld hl,#PLY_AKM_PTLINKER+1
   847B 73            [ 7] 1414     ld (hl),e
   847C 23            [ 6] 1415     inc hl
   847D 72            [ 7] 1416     ld (hl),d
   847E 21 80 89      [10] 1417     ld hl,#PLY_AKM_TRACK1_DATA
   8481 11 81 89      [10] 1418     ld de,#PLY_AKM_TRACK1_TRANSPOSITION
   8484 01 23 00      [10] 1419     ld bc,#35
   8487 77            [ 7] 1420     ld (hl),a
   8488 ED B0         [21] 1421     ldir
   848A 3A DD 84      [13] 1422     ld a,(PLY_AKM_SPEED+1)
   848D 3D            [ 4] 1423     dec a
   848E 32 DA 84      [13] 1424     ld (PLY_AKM_TICKCOUNTER+1),a
   8491 2A 55 85      [16] 1425     ld hl,(PLY_AKM_READLINE+1)
   8494 5E            [ 7] 1426     ld e,(hl)
   8495 23            [ 6] 1427     inc hl
   8496 56            [ 7] 1428     ld d,(hl)
   8497 13            [ 6] 1429     inc de
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 28.
Hexadecimal [16-Bits]



   8498 ED 53 8A 89   [20] 1430     ld (PLY_AKM_TRACK1_PTINSTRUMENT),de
   849C ED 53 AE 89   [20] 1431     ld (PLY_AKM_TRACK2_PTINSTRUMENT),de
   84A0 ED 53 D2 89   [20] 1432     ld (PLY_AKM_TRACK3_PTINSTRUMENT),de
   84A4 C9            [10] 1433     ret 
   84A5 58 85              1434 PLY_AKM_INITVARS_START: .dw PLY_AKM_NOTEINDEXTABLE+1
   84A7 59 85              1435     .dw PLY_AKM_NOTEINDEXTABLE+2
   84A9 ED 84              1436     .dw PLY_AKM_LINKER+1
   84AB EE 84              1437     .dw PLY_AKM_LINKER+2
   84AD DD 84              1438     .dw PLY_AKM_SPEED+1
   84AF 93 86              1439     .dw PLY_AKM_RT_PRIMARYINSTRUMENT+1
   84B1 8F 86              1440     .dw PLY_AKM_RT_SECONDARYINSTRUMENT+1
   84B3 DD 86              1441     .dw PLY_AKM_RT_PRIMARYWAIT+1
   84B5 E1 86              1442     .dw PLY_AKM_RT_SECONDARYWAIT+1
   84B7 FE 84              1443     .dw PLY_AKM_DEFAULTSTARTNOTEINTRACKS+1
   84B9 09 85              1444     .dw PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS+1
   84BB 14 85              1445     .dw PLY_AKM_DEFAULTSTARTWAITINTRACKS+1
   84BD 3F 86              1446     .dw PLY_AKM_FLAGNOTEANDEFFECTINCELL+1
   84BF                    1447 PLY_AKM_INITVARS_END:
   84BF                    1448 _PLY_AKM_STOP::
   84BF ED 73 D9 85   [20] 1449 PLY_AKM_STOP: ld (PLY_AKM_SENDPSGREGISTEREND+1),sp
   84C3 AF            [ 4] 1450     xor a
   84C4 32 ED 89      [13] 1451     ld (PLY_AKM_TRACK1_VOLUME),a
   84C7 32 F9 89      [13] 1452     ld (PLY_AKM_TRACK2_VOLUME),a
   84CA 32 05 8A      [13] 1453     ld (PLY_AKM_TRACK3_VOLUME),a
   84CD 3E 3F         [ 7] 1454     ld a,#63
   84CF 32 15 8A      [13] 1455     ld (PLY_AKM_MIXERREGISTER),a
   84D2 C3 AC 85      [10] 1456     jp PLY_AKM_SENDPSG
   84D5                    1457 _PLY_AKM_PLAY::
   84D5 ED 73 D9 85   [20] 1458 PLY_AKM_PLAY: ld (PLY_AKM_SENDPSGREGISTEREND+1),sp
   84D9 3E 00         [ 7] 1459 PLY_AKM_TICKCOUNTER: ld a,#0
   84DB 3C            [ 4] 1460     inc a
   84DC FE 01         [ 7] 1461 PLY_AKM_SPEED: cp #1
   84DE C2 71 85      [10] 1462     jp nz,PLY_AKM_TICKCOUNTERMANAGED
   84E1 3E 00         [ 7] 1463 PLY_AKM_PATTERNREMAININGHEIGHT: ld a,#0
   84E3 D6 01         [ 7] 1464     sub #1
   84E5 38 05         [12] 1465     jr c,PLY_AKM_LINKER
   84E7 32 E2 84      [13] 1466     ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
   84EA 18 68         [12] 1467     jr PLY_AKM_READLINE
   84EC                    1468 PLY_AKM_LINKER:
   84EC 11 00 00      [10] 1469 PLY_AKM_TRACKINDEX: ld de,#0
   84EF D9            [ 4] 1470     exx
   84F0 21 00 00      [10] 1471 PLY_AKM_PTLINKER: ld hl,#0
   84F3 AF            [ 4] 1472 PLY_AKM_LINKERPOSTPT: xor a
   84F4 32 80 89      [13] 1473     ld (PLY_AKM_TRACK1_DATA),a
   84F7 32 A4 89      [13] 1474     ld (PLY_AKM_TRACK1_DATA_END),a
   84FA 32 C8 89      [13] 1475     ld (PLY_AKM_TRACK2_DATA_END),a
   84FD 3E 00         [ 7] 1476 PLY_AKM_DEFAULTSTARTNOTEINTRACKS: ld a,#0
   84FF 32 87 89      [13] 1477     ld (PLY_AKM_TRACK1_ESCAPENOTE),a
   8502 32 AB 89      [13] 1478     ld (PLY_AKM_TRACK2_ESCAPENOTE),a
   8505 32 CF 89      [13] 1479     ld (PLY_AKM_TRACK3_ESCAPENOTE),a
   8508 3E 00         [ 7] 1480 PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS: ld a,#0
   850A 32 88 89      [13] 1481     ld (PLY_AKM_TRACK1_ESCAPEINSTRUMENT),a
   850D 32 AC 89      [13] 1482     ld (PLY_AKM_TRACK2_ESCAPEINSTRUMENT),a
   8510 32 D0 89      [13] 1483     ld (PLY_AKM_TRACK3_ESCAPEINSTRUMENT),a
   8513 3E 00         [ 7] 1484 PLY_AKM_DEFAULTSTARTWAITINTRACKS: ld a,#0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 29.
Hexadecimal [16-Bits]



   8515 32 89 89      [13] 1485     ld (PLY_AKM_TRACK1_ESCAPEWAIT),a
   8518 32 AD 89      [13] 1486     ld (PLY_AKM_TRACK2_ESCAPEWAIT),a
   851B 32 D1 89      [13] 1487     ld (PLY_AKM_TRACK3_ESCAPEWAIT),a
   851E 46            [ 7] 1488     ld b,(hl)
   851F 23            [ 6] 1489     inc hl
   8520 CB 18         [ 8] 1490     rr b
   8522 30 08         [12] 1491     jr nc,PLY_AKM_LINKERAFTERSPEEDCHANGE
   8524 7E            [ 7] 1492     ld a,(hl)
   8525 23            [ 6] 1493     inc hl
   8526 7E            [ 7] 1494     ld a,(hl)
   8527 23            [ 6] 1495     inc hl
   8528 66            [ 7] 1496     ld h,(hl)
   8529 6F            [ 4] 1497     ld l,a
   852A 18 C7         [12] 1498     jr PLY_AKM_LINKERPOSTPT
   852C CB 18         [ 8] 1499 PLY_AKM_LINKERAFTERSPEEDCHANGE: rr b
   852E 30 07         [12] 1500     jr nc,PLY_AKM_LINKERUSEPREVIOUSHEIGHT
   8530 7E            [ 7] 1501     ld a,(hl)
   8531 23            [ 6] 1502     inc hl
   8532 32 38 85      [13] 1503     ld (PLY_AKM_LINKERUSEPREVIOUSHEIGHT+1),a
   8535 18 02         [12] 1504     jr PLY_AKM_LINKERSETREMAININGHEIGHT
   8537                    1505 PLY_AKM_LINKERUSEPREVIOUSHEIGHT:
   8537 3E 00         [ 7] 1506 PLY_AKM_LINKERPREVIOUSREMAININGHEIGHT: ld a,#0
   8539 32 E2 84      [13] 1507 PLY_AKM_LINKERSETREMAININGHEIGHT: ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
   853C DD 21 80 89   [14] 1508     ld ix,#PLY_AKM_TRACK1_DATA
   8540 CD DC 85      [17] 1509     call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
   8543 DD 21 A4 89   [14] 1510     ld ix,#PLY_AKM_TRACK1_DATA_END
   8547 CD DC 85      [17] 1511     call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
   854A DD 21 C8 89   [14] 1512     ld ix,#PLY_AKM_TRACK2_DATA_END
   854E CD DC 85      [17] 1513     call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
   8551 22 F1 84      [16] 1514     ld (PLY_AKM_PTLINKER+1),hl
   8554                    1515 PLY_AKM_READLINE:
   8554 11 00 00      [10] 1516 PLY_AKM_PTINSTRUMENTS: ld de,#0
   8557 01 00 00      [10] 1517 PLY_AKM_NOTEINDEXTABLE: ld bc,#0
   855A D9            [ 4] 1518     exx
   855B DD 21 80 89   [14] 1519     ld ix,#PLY_AKM_TRACK1_DATA
   855F CD 28 86      [17] 1520     call PLY_AKM_READTRACK
   8562 DD 21 A4 89   [14] 1521     ld ix,#PLY_AKM_TRACK1_DATA_END
   8566 CD 28 86      [17] 1522     call PLY_AKM_READTRACK
   8569 DD 21 C8 89   [14] 1523     ld ix,#PLY_AKM_TRACK2_DATA_END
   856D CD 28 86      [17] 1524     call PLY_AKM_READTRACK
   8570 AF            [ 4] 1525     xor a
   8571 32 DA 84      [13] 1526 PLY_AKM_TICKCOUNTERMANAGED: ld (PLY_AKM_TICKCOUNTER+1),a
   8574 11 24 8A      [10] 1527     ld de,#PLY_AKM_PERIODTABLE
   8577 D9            [ 4] 1528     exx
   8578 0E E0         [ 7] 1529     ld c,#224
   857A DD 21 80 89   [14] 1530     ld ix,#PLY_AKM_TRACK1_DATA
   857E CD 28 87      [17] 1531     call PLY_AKM_MANAGEEFFECTS
   8581 FD 21 EC 89   [14] 1532     ld iy,#PLY_AKM_TRACK3_DATA_END
   8585 CD C7 87      [17] 1533     call PLY_AKM_PLAYSOUNDSTREAM
   8588 CB 39         [ 8] 1534     srl c
   858A DD 21 A4 89   [14] 1535     ld ix,#PLY_AKM_TRACK1_DATA_END
   858E CD 28 87      [17] 1536     call PLY_AKM_MANAGEEFFECTS
   8591 FD 21 F8 89   [14] 1537     ld iy,#PLY_AKM_TRACK2_REGISTERS
   8595 CD C7 87      [17] 1538     call PLY_AKM_PLAYSOUNDSTREAM
   8598 CB 19         [ 8] 1539     rr c
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 30.
Hexadecimal [16-Bits]



   859A DD 21 C8 89   [14] 1540     ld ix,#PLY_AKM_TRACK2_DATA_END
   859E CD 28 87      [17] 1541     call PLY_AKM_MANAGEEFFECTS
   85A1 FD 21 04 8A   [14] 1542     ld iy,#PLY_AKM_TRACK3_REGISTERS
   85A5 CD C7 87      [17] 1543     call PLY_AKM_PLAYSOUNDSTREAM
   85A8 79            [ 4] 1544     ld a,c
   85A9 CD 76 83      [17] 1545     call PLY_AKM_PLAYSOUNDEFFECTSSTREAM
   85AC 31 EC 89      [10] 1546 PLY_AKM_SENDPSG: ld sp,#PLY_AKM_TRACK3_DATA_END
   85AF 01 80 F6      [10] 1547     ld bc,#63104
   85B2 3E C0         [ 7] 1548     ld a,#192
   85B4 11 F6 F4      [10] 1549     ld de,#62710
   85B7 ED 79         [12] 1550     out (c),a
   85B9 E1            [10] 1551 PLY_AKM_SENDPSGREGISTER: pop hl
   85BA 42            [ 4] 1552 PLY_AKM_SENDPSGREGISTERAFTERPOP: ld b,d
   85BB ED 69         [12] 1553     out (c),l
   85BD 43            [ 4] 1554     ld b,e
   85BE ED                 1555     .db 237
   85BF 71                 1556     .db 113
   85C0 42            [ 4] 1557     ld b,d
   85C1 ED 61         [12] 1558     out (c),h
   85C3 43            [ 4] 1559     ld b,e
   85C4 ED 49         [12] 1560     out (c),c
   85C6 ED 79         [12] 1561     out (c),a
   85C8 C9            [10] 1562     ret 
   85C9                    1563 PLY_AKM_SENDPSGREGISTERR13:
   85C9 3E 00         [ 7] 1564 PLY_AKM_SETREG13: ld a,#0
   85CB FE 00         [ 7] 1565 PLY_AKM_SETREG13OLD: cp #0
   85CD 28 09         [12] 1566     jr z,PLY_AKM_SENDPSGREGISTEREND
   85CF 32 CC 85      [13] 1567     ld (PLY_AKM_SETREG13OLD+1),a
   85D2 67            [ 4] 1568     ld h,a
   85D3 2E 0D         [ 7] 1569     ld l,#13
   85D5 3E C0         [ 7] 1570     ld a,#192
   85D7 C9            [10] 1571     ret 
   85D8                    1572 PLY_AKM_SENDPSGREGISTEREND:
   85D8 31 00 00      [10] 1573 PLY_AKM_SAVESP: ld sp,#0
   85DB C9            [10] 1574     ret 
   85DC CB 18         [ 8] 1575 PLY_AKM_CHECKTRANSPOSITIONANDTRACK: rr b
   85DE 30 05         [12] 1576     jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_AFTERTRANSPOSITION
   85E0 7E            [ 7] 1577     ld a,(hl)
   85E1 DD 77 01      [19] 1578     ld +1(ix),a
   85E4 23            [ 6] 1579     inc hl
   85E5 CB 18         [ 8] 1580 PLY_AKM_CHECKTRANSPOSITIONANDTRACK_AFTERTRANSPOSITION: rr b
   85E7 30 32         [12] 1581     jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_NONEWTRACK
   85E9 7E            [ 7] 1582     ld a,(hl)
   85EA 23            [ 6] 1583     inc hl
   85EB CB 27         [ 8] 1584     sla a
   85ED 30 16         [12] 1585     jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_TRACKOFFSET
   85EF D9            [ 4] 1586     exx
   85F0 6F            [ 4] 1587     ld l,a
   85F1 26 00         [ 7] 1588     ld h,#0
   85F3 19            [11] 1589     add hl,de
   85F4 7E            [ 7] 1590     ld a,(hl)
   85F5 DD 77 02      [19] 1591     ld +2(ix),a
   85F8 DD 77 04      [19] 1592     ld +4(ix),a
   85FB 23            [ 6] 1593     inc hl
   85FC 7E            [ 7] 1594     ld a,(hl)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 31.
Hexadecimal [16-Bits]



   85FD DD 77 03      [19] 1595     ld +3(ix),a
   8600 DD 77 05      [19] 1596     ld +5(ix),a
   8603 D9            [ 4] 1597     exx
   8604 C9            [10] 1598     ret 
   8605 1F            [ 4] 1599 PLY_AKM_CHECKTRANSPOSITIONANDTRACK_TRACKOFFSET: rra 
   8606 57            [ 4] 1600     ld d,a
   8607 5E            [ 7] 1601     ld e,(hl)
   8608 23            [ 6] 1602     inc hl
   8609 4D            [ 4] 1603     ld c,l
   860A 7C            [ 4] 1604     ld a,h
   860B 19            [11] 1605     add hl,de
   860C DD                 1606     .db 221
   860D 75                 1607     .db 117
   860E 02                 1608     .db +2
   860F DD                 1609     .db 221
   8610 74                 1610     .db 116
   8611 03                 1611     .db +3
   8612 DD                 1612     .db 221
   8613 75                 1613     .db 117
   8614 04                 1614     .db +4
   8615 DD                 1615     .db 221
   8616 74                 1616     .db 116
   8617 05                 1617     .db +5
   8618 69            [ 4] 1618     ld l,c
   8619 67            [ 4] 1619     ld h,a
   861A C9            [10] 1620     ret 
   861B DD 7E 02      [19] 1621 PLY_AKM_CHECKTRANSPOSITIONANDTRACK_NONEWTRACK: ld a,+2(ix)
   861E DD 77 04      [19] 1622     ld +4(ix),a
   8621 DD 7E 03      [19] 1623     ld a,+3(ix)
   8624 DD 77 05      [19] 1624     ld +5(ix),a
   8627 C9            [10] 1625     ret 
   8628 DD 7E 00      [19] 1626 PLY_AKM_READTRACK: ld a,+0(ix)
   862B D6 01         [ 7] 1627     sub #1
   862D 38 04         [12] 1628     jr c,PLY_AKM_RT_NOEMPTYCELL
   862F DD 77 00      [19] 1629     ld +0(ix),a
   8632 C9            [10] 1630     ret 
   8633 DD 6E 04      [19] 1631 PLY_AKM_RT_NOEMPTYCELL: ld l,+4(ix)
   8636 DD 66 05      [19] 1632     ld h,+5(ix)
   8639 46            [ 7] 1633 PLY_AKM_RT_GETDATABYTE: ld b,(hl)
   863A 23            [ 6] 1634     inc hl
   863B 78            [ 4] 1635     ld a,b
   863C E6 0F         [ 7] 1636     and #15
   863E FE 0C         [ 7] 1637 PLY_AKM_FLAGNOTEANDEFFECTINCELL: cp #12
   8640 38 26         [12] 1638     jr c,PLY_AKM_RT_NOTEREFERENCE
   8642 D6 0C         [ 7] 1639     sub #12
   8644 28 12         [12] 1640     jr z,PLY_AKM_RT_NOTEANDEFFECTS
   8646 3D            [ 4] 1641     dec a
   8647 28 15         [12] 1642     jr z,PLY_AKM_RT_NONOTEMAYBEEFFECTS
   8649 3D            [ 4] 1643     dec a
   864A 28 05         [12] 1644     jr z,PLY_AKM_RT_NEWESCAPENOTE
   864C DD 7E 07      [19] 1645     ld a,+7(ix)
   864F 18 1E         [12] 1646     jr PLY_AKM_RT_AFTERNOTEREAD
   8651 7E            [ 7] 1647 PLY_AKM_RT_NEWESCAPENOTE: ld a,(hl)
   8652 DD 77 07      [19] 1648     ld +7(ix),a
   8655 23            [ 6] 1649     inc hl
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 32.
Hexadecimal [16-Bits]



   8656 18 17         [12] 1650     jr PLY_AKM_RT_AFTERNOTEREAD
   8658 3D            [ 4] 1651 PLY_AKM_RT_NOTEANDEFFECTS: dec a
   8659 32 E6 86      [13] 1652     ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
   865C 18 DB         [12] 1653     jr PLY_AKM_RT_GETDATABYTE
   865E CB 60         [ 8] 1654 PLY_AKM_RT_NONOTEMAYBEEFFECTS: bit 4,b
   8660 28 61         [12] 1655     jr z,PLY_AKM_RT_READWAITFLAGS
   8662 78            [ 4] 1656     ld a,b
   8663 32 E6 86      [13] 1657     ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
   8666 18 5B         [12] 1658     jr PLY_AKM_RT_READWAITFLAGS
   8668 D9            [ 4] 1659 PLY_AKM_RT_NOTEREFERENCE: exx
   8669 6F            [ 4] 1660     ld l,a
   866A 26 00         [ 7] 1661     ld h,#0
   866C 09            [11] 1662     add hl,bc
   866D 7E            [ 7] 1663     ld a,(hl)
   866E D9            [ 4] 1664     exx
   866F DD 86 01      [19] 1665 PLY_AKM_RT_AFTERNOTEREAD: add a,+1(ix)
   8672 DD 77 06      [19] 1666     ld +6(ix),a
   8675 78            [ 4] 1667     ld a,b
   8676 E6 30         [ 7] 1668     and #48
   8678 28 0F         [12] 1669     jr z,PLY_AKM_RT_SAMEESCAPEINSTRUMENT
   867A FE 10         [ 7] 1670     cp #16
   867C 28 14         [12] 1671     jr z,PLY_AKM_RT_PRIMARYINSTRUMENT
   867E FE 20         [ 7] 1672     cp #32
   8680 28 0C         [12] 1673     jr z,PLY_AKM_RT_SECONDARYINSTRUMENT
   8682 7E            [ 7] 1674     ld a,(hl)
   8683 23            [ 6] 1675     inc hl
   8684 DD 77 08      [19] 1676     ld +8(ix),a
   8687 18 0B         [12] 1677     jr PLY_AKM_RT_STORECURRENTINSTRUMENT
   8689 DD 7E 08      [19] 1678 PLY_AKM_RT_SAMEESCAPEINSTRUMENT: ld a,+8(ix)
   868C 18 06         [12] 1679     jr PLY_AKM_RT_STORECURRENTINSTRUMENT
   868E                    1680 PLY_AKM_RT_SECONDARYINSTRUMENT:
   868E 3E 00         [ 7] 1681 PLY_AKM_SECONDARYINSTRUMENT: ld a,#0
   8690 18 02         [12] 1682     jr PLY_AKM_RT_STORECURRENTINSTRUMENT
   8692                    1683 PLY_AKM_RT_PRIMARYINSTRUMENT:
   8692 3E 00         [ 7] 1684 PLY_AKM_PRIMARYINSTRUMENT: ld a,#0
   8694 D9            [ 4] 1685 PLY_AKM_RT_STORECURRENTINSTRUMENT: exx
   8695 87            [ 4] 1686     add a,a
   8696 6F            [ 4] 1687     ld l,a
   8697 26 00         [ 7] 1688     ld h,#0
   8699 19            [11] 1689     add hl,de
   869A 7E            [ 7] 1690     ld a,(hl)
   869B 23            [ 6] 1691     inc hl
   869C 66            [ 7] 1692     ld h,(hl)
   869D 6F            [ 4] 1693     ld l,a
   869E 7E            [ 7] 1694     ld a,(hl)
   869F 23            [ 6] 1695     inc hl
   86A0 DD 77 0D      [19] 1696     ld +13(ix),a
   86A3 DD                 1697     .db 221
   86A4 75                 1698     .db 117
   86A5 0A                 1699     .db +10
   86A6 DD                 1700     .db 221
   86A7 74                 1701     .db 116
   86A8 0B                 1702     .db +11
   86A9 D9            [ 4] 1703     exx
   86AA AF            [ 4] 1704     xor a
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 33.
Hexadecimal [16-Bits]



   86AB DD 77 0C      [19] 1705     ld +12(ix),a
   86AE DD 77 0F      [19] 1706     ld +15(ix),a
   86B1 DD 77 10      [19] 1707     ld +16(ix),a
   86B4 DD 77 11      [19] 1708     ld +17(ix),a
   86B7 DD 77 18      [19] 1709     ld +24(ix),a
   86BA DD 77 19      [19] 1710     ld +25(ix),a
   86BD DD 77 1F      [19] 1711     ld +31(ix),a
   86C0 DD 77 20      [19] 1712     ld +32(ix),a
   86C3 78            [ 4] 1713 PLY_AKM_RT_READWAITFLAGS: ld a,b
   86C4 E6 C0         [ 7] 1714     and #192
   86C6 28 0F         [12] 1715     jr z,PLY_AKM_RT_SAMEESCAPEWAIT
   86C8 FE 40         [ 7] 1716     cp #64
   86CA 28 10         [12] 1717     jr z,PLY_AKM_RT_PRIMARYWAIT
   86CC FE 80         [ 7] 1718     cp #128
   86CE 28 10         [12] 1719     jr z,PLY_AKM_RT_SECONDARYWAIT
   86D0 7E            [ 7] 1720     ld a,(hl)
   86D1 23            [ 6] 1721     inc hl
   86D2 DD 77 09      [19] 1722     ld +9(ix),a
   86D5 18 0B         [12] 1723     jr PLY_AKM_RT_STORECURRENTWAIT
   86D7 DD 7E 09      [19] 1724 PLY_AKM_RT_SAMEESCAPEWAIT: ld a,+9(ix)
   86DA 18 06         [12] 1725     jr PLY_AKM_RT_STORECURRENTWAIT
   86DC                    1726 PLY_AKM_RT_PRIMARYWAIT:
   86DC 3E 00         [ 7] 1727 PLY_AKM_PRIMARYWAIT: ld a,#0
   86DE 18 02         [12] 1728     jr PLY_AKM_RT_STORECURRENTWAIT
   86E0                    1729 PLY_AKM_RT_SECONDARYWAIT:
   86E0 3E 00         [ 7] 1730 PLY_AKM_SECONDARYWAIT: ld a,#0
   86E2 DD 77 00      [19] 1731 PLY_AKM_RT_STORECURRENTWAIT: ld +0(ix),a
   86E5 3E 00         [ 7] 1732 PLY_AKM_RT_READEFFECTSFLAG: ld a,#0
   86E7 B7            [ 4] 1733     or a
   86E8 20 07         [12] 1734     jr nz,PLY_AKM_RT_READEFFECTS
   86EA DD                 1735 PLY_AKM_RT_AFTEREFFECTS: .db 221
   86EB 75                 1736     .db 117
   86EC 04                 1737     .db +4
   86ED DD                 1738     .db 221
   86EE 74                 1739     .db 116
   86EF 05                 1740     .db +5
   86F0 C9            [10] 1741     ret 
   86F1 AF            [ 4] 1742 PLY_AKM_RT_READEFFECTS: xor a
   86F2 32 E6 86      [13] 1743     ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
   86F5 FD 21 F4 88   [14] 1744 PLY_AKM_RT_READEFFECT: ld iy,#PLY_AKM_EFFECTTABLE
   86F9 46            [ 7] 1745     ld b,(hl)
   86FA 78            [ 4] 1746     ld a,b
   86FB 23            [ 6] 1747     inc hl
   86FC E6 0E         [ 7] 1748     and #14
   86FE 5F            [ 4] 1749     ld e,a
   86FF 16 00         [ 7] 1750     ld d,#0
   8701 FD 19         [15] 1751     add iy,de
   8703 78            [ 4] 1752     ld a,b
   8704 1F            [ 4] 1753     rra 
   8705 1F            [ 4] 1754     rra 
   8706 1F            [ 4] 1755     rra 
   8707 1F            [ 4] 1756     rra 
   8708 E6 0F         [ 7] 1757     and #15
   870A FD E9         [ 8] 1758     jp (iy)
   870C CB 40         [ 8] 1759 PLY_AKM_RT_READEFFECT_RETURN: bit 0,b
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 34.
Hexadecimal [16-Bits]



   870E 20 E5         [12] 1760     jr nz,PLY_AKM_RT_READEFFECT
   8710 18 D8         [12] 1761     jr PLY_AKM_RT_AFTEREFFECTS
   8712 7E            [ 7] 1762 PLY_AKM_RT_WAITLONG: ld a,(hl)
   8713 23            [ 6] 1763     inc hl
   8714 DD 77 00      [19] 1764     ld +0(ix),a
   8717 18 08         [12] 1765     jr PLY_AKM_RT_CELLREAD
   8719 78            [ 4] 1766 PLY_AKM_RT_WAITSHORT: ld a,b
   871A 07            [ 4] 1767     rlca 
   871B 07            [ 4] 1768     rlca 
   871C E6 03         [ 7] 1769     and #3
   871E DD 77 00      [19] 1770     ld +0(ix),a
   8721 DD                 1771 PLY_AKM_RT_CELLREAD: .db 221
   8722 75                 1772     .db 117
   8723 04                 1773     .db +4
   8724 DD                 1774     .db 221
   8725 74                 1775     .db 116
   8726 05                 1776     .db +5
   8727 C9            [10] 1777     ret 
   8728 DD 7E 0F      [19] 1778 PLY_AKM_MANAGEEFFECTS: ld a,+15(ix)
   872B B7            [ 4] 1779     or a
   872C 28 28         [12] 1780     jr z,PLY_AKM_ME_PITCHUPDOWNFINISHED
   872E DD 6E 12      [19] 1781     ld l,+18(ix)
   8731 DD 66 10      [19] 1782     ld h,+16(ix)
   8734 DD 5E 13      [19] 1783     ld e,+19(ix)
   8737 DD 56 14      [19] 1784     ld d,+20(ix)
   873A DD 7E 11      [19] 1785     ld a,+17(ix)
   873D CB 7A         [ 8] 1786     bit 7,d
   873F 20 05         [12] 1787     jr nz,PLY_AKM_ME_PITCHUPDOWN_NEGATIVESPEED
   8741 19            [11] 1788 PLY_AKM_ME_PITCHUPDOWN_POSITIVESPEED: add hl,de
   8742 CE 00         [ 7] 1789     adc a,#0
   8744 18 07         [12] 1790     jr PLY_AKM_ME_PITCHUPDOWN_SAVE
   8746 CB BA         [ 8] 1791 PLY_AKM_ME_PITCHUPDOWN_NEGATIVESPEED: res 7,d
   8748 B7            [ 4] 1792     or a
   8749 ED 52         [15] 1793     sbc hl,de
   874B DE 00         [ 7] 1794     sbc a,#0
   874D DD 77 11      [19] 1795 PLY_AKM_ME_PITCHUPDOWN_SAVE: ld +17(ix),a
   8750 DD                 1796     .db 221
   8751 75                 1797     .db 117
   8752 12                 1798     .db +18
   8753 DD                 1799     .db 221
   8754 74                 1800     .db 116
   8755 10                 1801     .db +16
   8756 DD 7E 15      [19] 1802 PLY_AKM_ME_PITCHUPDOWNFINISHED: ld a,+21(ix)
   8759 B7            [ 4] 1803     or a
   875A 28 30         [12] 1804     jr z,PLY_AKM_ME_ARPEGGIOTABLEFINISHED
   875C DD 5E 16      [19] 1805     ld e,+22(ix)
   875F DD 56 17      [19] 1806     ld d,+23(ix)
   8762 DD 6E 18      [19] 1807     ld l,+24(ix)
   8765 26 00         [ 7] 1808     ld h,#0
   8767 19            [11] 1809     add hl,de
   8768 7E            [ 7] 1810     ld a,(hl)
   8769 CB 2F         [ 8] 1811     sra a
   876B DD 77 1B      [19] 1812     ld +27(ix),a
   876E DD 7E 19      [19] 1813     ld a,+25(ix)
   8771 DD BE 1A      [19] 1814     cp +26(ix)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 35.
Hexadecimal [16-Bits]



   8774 38 12         [12] 1815     jr c,PLY_AKM_ME_ARPEGGIOTABLE_SPEEDNOTREACHED
   8776 DD 36 19 00   [19] 1816     ld +25(ix),#0
   877A DD 34 18      [23] 1817     inc +24(ix)
   877D 23            [ 6] 1818     inc hl
   877E 7E            [ 7] 1819     ld a,(hl)
   877F 1F            [ 4] 1820     rra 
   8780 30 0A         [12] 1821     jr nc,PLY_AKM_ME_ARPEGGIOTABLEFINISHED
   8782 6F            [ 4] 1822     ld l,a
   8783 DD 77 18      [19] 1823     ld +24(ix),a
   8786 18 04         [12] 1824     jr PLY_AKM_ME_ARPEGGIOTABLEFINISHED
   8788 3C            [ 4] 1825 PLY_AKM_ME_ARPEGGIOTABLE_SPEEDNOTREACHED: inc a
   8789 DD 77 19      [19] 1826     ld +25(ix),a
   878C DD 7E 1C      [19] 1827 PLY_AKM_ME_ARPEGGIOTABLEFINISHED: ld a,+28(ix)
   878F B7            [ 4] 1828     or a
   8790 C8            [11] 1829     ret z
   8791 DD 6E 1D      [19] 1830     ld l,+29(ix)
   8794 DD 66 1E      [19] 1831     ld h,+30(ix)
   8797 DD 5E 1F      [19] 1832     ld e,+31(ix)
   879A 16 00         [ 7] 1833     ld d,#0
   879C 19            [11] 1834     add hl,de
   879D 7E            [ 7] 1835     ld a,(hl)
   879E CB 2F         [ 8] 1836     sra a
   87A0 F2 A4 87      [10] 1837     jp p,PLY_AKM_ME_PITCHTABLEENDNOTREACHED_POSITIVE
   87A3 15            [ 4] 1838     dec d
   87A4 DD 77 22      [19] 1839 PLY_AKM_ME_PITCHTABLEENDNOTREACHED_POSITIVE: ld +34(ix),a
   87A7 DD                 1840     .db 221
   87A8 72                 1841     .db 114
   87A9 23                 1842     .db +35
   87AA DD 7E 20      [19] 1843     ld a,+32(ix)
   87AD DD BE 21      [19] 1844     cp +33(ix)
   87B0 38 10         [12] 1845     jr c,PLY_AKM_ME_PITCHTABLE_SPEEDNOTREACHED
   87B2 DD 36 20 00   [19] 1846     ld +32(ix),#0
   87B6 DD 34 1F      [23] 1847     inc +31(ix)
   87B9 23            [ 6] 1848     inc hl
   87BA 7E            [ 7] 1849     ld a,(hl)
   87BB 1F            [ 4] 1850     rra 
   87BC D0            [11] 1851     ret nc
   87BD 6F            [ 4] 1852     ld l,a
   87BE DD 77 1F      [19] 1853     ld +31(ix),a
   87C1 C9            [10] 1854     ret 
   87C2 3C            [ 4] 1855 PLY_AKM_ME_PITCHTABLE_SPEEDNOTREACHED: inc a
   87C3 DD 77 20      [19] 1856     ld +32(ix),a
   87C6 C9            [10] 1857     ret 
   87C7 DD 6E 0A      [19] 1858 PLY_AKM_PLAYSOUNDSTREAM: ld l,+10(ix)
   87CA DD 66 0B      [19] 1859     ld h,+11(ix)
   87CD 7E            [ 7] 1860 PLY_AKM_PSS_READFIRSTBYTE: ld a,(hl)
   87CE 47            [ 4] 1861     ld b,a
   87CF 23            [ 6] 1862     inc hl
   87D0 1F            [ 4] 1863     rra 
   87D1 38 21         [12] 1864     jr c,PLY_AKM_PSS_SOFTORSOFTANDHARD
   87D3 1F            [ 4] 1865     rra 
   87D4 38 6C         [12] 1866     jr c,PLY_AKM_PSS_SOFTWARETOHARDWARE
   87D6 1F            [ 4] 1867     rra 
   87D7 30 0C         [12] 1868     jr nc,PLY_AKM_PSS_NSNH_NOTENDOFSOUND
   87D9 7E            [ 7] 1869     ld a,(hl)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 36.
Hexadecimal [16-Bits]



   87DA 23            [ 6] 1870     inc hl
   87DB 66            [ 7] 1871     ld h,(hl)
   87DC 6F            [ 4] 1872     ld l,a
   87DD DD                 1873     .db 221
   87DE 75                 1874     .db 117
   87DF 0A                 1875     .db +10
   87E0 DD                 1876     .db 221
   87E1 74                 1877     .db 116
   87E2 0B                 1878     .db +11
   87E3 18 E8         [12] 1879     jr PLY_AKM_PSS_READFIRSTBYTE
   87E5 CB D1         [ 8] 1880 PLY_AKM_PSS_NSNH_NOTENDOFSOUND: set 2,c
   87E7 CD 82 88      [17] 1881     call PLY_AKM_PSS_SHARED_ADJUSTVOLUME
   87EA FD 77 01      [19] 1882     ld +1(iy),a
   87ED CB 10         [ 8] 1883     rl b
   87EF DC 8A 88      [17] 1884     call c,PLY_AKM_PSS_READNOISE
   87F2 18 28         [12] 1885     jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
   87F4 1F            [ 4] 1886 PLY_AKM_PSS_SOFTORSOFTANDHARD: rra 
   87F5 38 3C         [12] 1887     jr c,PLY_AKM_PSS_SOFTANDHARD
   87F7 CD 82 88      [17] 1888     call PLY_AKM_PSS_SHARED_ADJUSTVOLUME
   87FA FD 77 01      [19] 1889     ld +1(iy),a
   87FD 16 00         [ 7] 1890     ld d,#0
   87FF CB 10         [ 8] 1891     rl b
   8801 30 08         [12] 1892     jr nc,PLY_AKM_PSS_S_AFTERARPANDORNOISE
   8803 7E            [ 7] 1893     ld a,(hl)
   8804 23            [ 6] 1894     inc hl
   8805 CB 2F         [ 8] 1895     sra a
   8807 57            [ 4] 1896     ld d,a
   8808 DC 8A 88      [17] 1897     call c,PLY_AKM_PSS_READNOISE
   880B 7A            [ 4] 1898 PLY_AKM_PSS_S_AFTERARPANDORNOISE: ld a,d
   880C CD 92 88      [17] 1899     call PLY_AKM_CALCULATEPERIODFORBASENOTE
   880F CB 10         [ 8] 1900     rl b
   8811 DC CF 88      [17] 1901     call c,PLY_AKM_READPITCHANDADDTOPERIOD
   8814 D9            [ 4] 1902     exx
   8815 FD 75 05      [19] 1903     ld +5(iy),l
   8818 FD 74 09      [19] 1904     ld +9(iy),h
   881B D9            [ 4] 1905     exx
   881C DD 7E 0C      [19] 1906 PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER: ld a,+12(ix)
   881F DD BE 0D      [19] 1907     cp +13(ix)
   8822 30 04         [12] 1908     jr nc,PLY_AKM_PSS_S_SPEEDREACHED
   8824 DD 34 0C      [23] 1909     inc +12(ix)
   8827 C9            [10] 1910     ret 
   8828 DD                 1911 PLY_AKM_PSS_S_SPEEDREACHED: .db 221
   8829 75                 1912     .db 117
   882A 0A                 1913     .db +10
   882B DD                 1914     .db 221
   882C 74                 1915     .db 116
   882D 0B                 1916     .db +11
   882E DD 36 0C 00   [19] 1917     ld +12(ix),#0
   8832 C9            [10] 1918     ret 
   8833 CD 64 88      [17] 1919 PLY_AKM_PSS_SOFTANDHARD: call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
   8836 7E            [ 7] 1920     ld a,(hl)
   8837 32 19 8A      [13] 1921     ld (PLY_AKM_REG11),a
   883A 23            [ 6] 1922     inc hl
   883B 7E            [ 7] 1923     ld a,(hl)
   883C 32 1D 8A      [13] 1924     ld (PLY_AKM_REG12),a
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 37.
Hexadecimal [16-Bits]



   883F 23            [ 6] 1925     inc hl
   8840 18 DA         [12] 1926     jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
   8842 CD 64 88      [17] 1927 PLY_AKM_PSS_SOFTWARETOHARDWARE: call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
   8845 78            [ 4] 1928     ld a,b
   8846 07            [ 4] 1929     rlca 
   8847 07            [ 4] 1930     rlca 
   8848 07            [ 4] 1931     rlca 
   8849 07            [ 4] 1932     rlca 
   884A E6 07         [ 7] 1933     and #7
   884C D9            [ 4] 1934     exx
   884D 28 0A         [12] 1935     jr z,PLY_AKM_PSS_STH_RATIOEND
   884F CB 3C         [ 8] 1936 PLY_AKM_PSS_STH_RATIOLOOP: srl h
   8851 CB 1D         [ 8] 1937     rr l
   8853 3D            [ 4] 1938     dec a
   8854 20 F9         [12] 1939     jr nz,PLY_AKM_PSS_STH_RATIOLOOP
   8856 30 01         [12] 1940     jr nc,PLY_AKM_PSS_STH_RATIOEND
   8858 23            [ 6] 1941     inc hl
   8859 7D            [ 4] 1942 PLY_AKM_PSS_STH_RATIOEND: ld a,l
   885A 32 19 8A      [13] 1943     ld (PLY_AKM_REG11),a
   885D 7C            [ 4] 1944     ld a,h
   885E 32 1D 8A      [13] 1945     ld (PLY_AKM_REG12),a
   8861 D9            [ 4] 1946     exx
   8862 18 B8         [12] 1947     jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
   8864 E6 02         [ 7] 1948 PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV: and #2
   8866 C6 08         [ 7] 1949     add a,#8
   8868 32 CA 85      [13] 1950     ld (PLY_AKM_SENDPSGREGISTERR13+1),a
   886B FD 36 01 10   [19] 1951     ld +1(iy),#16
   886F AF            [ 4] 1952     xor a
   8870 CB 78         [ 8] 1953     bit 7,b
   8872 28 02         [12] 1954     jr z,PLY_AKM_PSS_SHARED_RENVBAP_AFTERARPEGGIO
   8874 7E            [ 7] 1955     ld a,(hl)
   8875 23            [ 6] 1956     inc hl
   8876 CD 92 88      [17] 1957 PLY_AKM_PSS_SHARED_RENVBAP_AFTERARPEGGIO: call PLY_AKM_CALCULATEPERIODFORBASENOTE
   8879 D9            [ 4] 1958     exx
   887A FD 75 05      [19] 1959     ld +5(iy),l
   887D FD 74 09      [19] 1960     ld +9(iy),h
   8880 D9            [ 4] 1961     exx
   8881 C9            [10] 1962     ret 
   8882 E6 0F         [ 7] 1963 PLY_AKM_PSS_SHARED_ADJUSTVOLUME: and #15
   8884 DD 96 0E      [19] 1964     sub +14(ix)
   8887 D0            [11] 1965     ret nc
   8888 AF            [ 4] 1966     xor a
   8889 C9            [10] 1967     ret 
   888A 7E            [ 7] 1968 PLY_AKM_PSS_READNOISE: ld a,(hl)
   888B 23            [ 6] 1969     inc hl
   888C 32 11 8A      [13] 1970     ld (PLY_AKM_NOISEREGISTER),a
   888F CB A9         [ 8] 1971     res 5,c
   8891 C9            [10] 1972     ret 
   8892 D9            [ 4] 1973 PLY_AKM_CALCULATEPERIODFORBASENOTE: exx
   8893 26 00         [ 7] 1974     ld h,#0
   8895 DD 86 06      [19] 1975     add a,+6(ix)
   8898 DD 86 1B      [19] 1976     add a,+27(ix)
   889B 01 0C FF      [10] 1977     ld bc,#65292
   889E 04            [ 4] 1978 PLY_AKM_FINDOCTAVE_LOOP: inc b
   889F 91            [ 4] 1979     sub c
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 38.
Hexadecimal [16-Bits]



   88A0 30 FC         [12] 1980     jr nc,PLY_AKM_FINDOCTAVE_LOOP
   88A2 81            [ 4] 1981     add a,c
   88A3 87            [ 4] 1982     add a,a
   88A4 6F            [ 4] 1983     ld l,a
   88A5 26 00         [ 7] 1984     ld h,#0
   88A7 19            [11] 1985     add hl,de
   88A8 7E            [ 7] 1986     ld a,(hl)
   88A9 23            [ 6] 1987     inc hl
   88AA 66            [ 7] 1988     ld h,(hl)
   88AB 6F            [ 4] 1989     ld l,a
   88AC 78            [ 4] 1990     ld a,b
   88AD B7            [ 4] 1991     or a
   88AE 28 06         [12] 1992     jr z,PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP_FINISHED
   88B0 CB 3C         [ 8] 1993 PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP: srl h
   88B2 CB 1D         [ 8] 1994     rr l
   88B4 10 FA         [13] 1995     djnz PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP
   88B6 30 01         [12] 1996 PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP_FINISHED: jr nc,PLY_AKM_FINDOCTAVE_FINISHED
   88B8 23            [ 6] 1997     inc hl
   88B9 DD 7E 1C      [19] 1998 PLY_AKM_FINDOCTAVE_FINISHED: ld a,+28(ix)
   88BC B7            [ 4] 1999     or a
   88BD 28 07         [12] 2000     jr z,PLY_AKM_CALCULATEPERIODFORBASENOTE_NOPITCHTABLE
   88BF DD 4E 22      [19] 2001     ld c,+34(ix)
   88C2 DD 46 23      [19] 2002     ld b,+35(ix)
   88C5 09            [11] 2003     add hl,bc
   88C6 DD 4E 10      [19] 2004 PLY_AKM_CALCULATEPERIODFORBASENOTE_NOPITCHTABLE: ld c,+16(ix)
   88C9 DD 46 11      [19] 2005     ld b,+17(ix)
   88CC 09            [11] 2006     add hl,bc
   88CD D9            [ 4] 2007     exx
   88CE C9            [10] 2008     ret 
   88CF 7E            [ 7] 2009 PLY_AKM_READPITCHANDADDTOPERIOD: ld a,(hl)
   88D0 23            [ 6] 2010     inc hl
   88D1 D9            [ 4] 2011     exx
   88D2 4F            [ 4] 2012     ld c,a
   88D3 D9            [ 4] 2013     exx
   88D4 7E            [ 7] 2014     ld a,(hl)
   88D5 23            [ 6] 2015     inc hl
   88D6 D9            [ 4] 2016     exx
   88D7 47            [ 4] 2017     ld b,a
   88D8 09            [11] 2018     add hl,bc
   88D9 D9            [ 4] 2019     exx
   88DA C9            [10] 2020     ret 
   88DB DD 77 0E      [19] 2021 PLY_AKM_EFFECTRESETWITHVOLUME: ld +14(ix),a
   88DE AF            [ 4] 2022     xor a
   88DF DD 77 0F      [19] 2023     ld +15(ix),a
   88E2 DD 77 15      [19] 2024     ld +21(ix),a
   88E5 DD 77 1B      [19] 2025     ld +27(ix),a
   88E8 DD 77 1C      [19] 2026     ld +28(ix),a
   88EB C3 0C 87      [10] 2027     jp PLY_AKM_RT_READEFFECT_RETURN
   88EE DD 77 0E      [19] 2028 PLY_AKM_EFFECTVOLUME: ld +14(ix),a
   88F1 C3 0C 87      [10] 2029     jp PLY_AKM_RT_READEFFECT_RETURN
   88F4 18 E5         [12] 2030 PLY_AKM_EFFECTTABLE: jr PLY_AKM_EFFECTRESETWITHVOLUME
   88F6 18 F6         [12] 2031     jr PLY_AKM_EFFECTVOLUME
   88F8 18 08         [12] 2032     jr PLY_AKM_EFFECTPITCHUPDOWN
   88FA 18 21         [12] 2033     jr PLY_AKM_EFFECTARPEGGIOTABLE
   88FC 18 50         [12] 2034     jr PLY_AKM_EFFECTPITCHTABLE
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 39.
Hexadecimal [16-Bits]



   88FE 18 FE         [12] 2035     jr PLY_AKM_EFFECTPITCHUPDOWN-4
   8900 18 FE         [12] 2036     jr PLY_AKM_EFFECTPITCHUPDOWN-2
   8902 1F            [ 4] 2037 PLY_AKM_EFFECTPITCHUPDOWN: rra 
   8903 30 11         [12] 2038     jr nc,PLY_AKM_EFFECTPITCHUPDOWN_DEACTIVATED
   8905 DD 36 0F FF   [19] 2039     ld +15(ix),#255
   8909 7E            [ 7] 2040     ld a,(hl)
   890A 23            [ 6] 2041     inc hl
   890B DD 77 13      [19] 2042     ld +19(ix),a
   890E 7E            [ 7] 2043     ld a,(hl)
   890F 23            [ 6] 2044     inc hl
   8910 DD 77 14      [19] 2045     ld +20(ix),a
   8913 C3 0C 87      [10] 2046     jp PLY_AKM_RT_READEFFECT_RETURN
   8916 DD 36 0F 00   [19] 2047 PLY_AKM_EFFECTPITCHUPDOWN_DEACTIVATED: ld +15(ix),#0
   891A C3 0C 87      [10] 2048     jp PLY_AKM_RT_READEFFECT_RETURN
   891D CD 7A 89      [17] 2049 PLY_AKM_EFFECTARPEGGIOTABLE: call PLY_AKM_EFFECTREADIFESCAPE
   8920 DD 77 15      [19] 2050     ld +21(ix),a
   8923 28 23         [12] 2051     jr z,PLY_AKM_EFFECTARPEGGIOTABLE_STOP
   8925 87            [ 4] 2052     add a,a
   8926 D9            [ 4] 2053     exx
   8927 6F            [ 4] 2054     ld l,a
   8928 26 00         [ 7] 2055     ld h,#0
   892A 01 00 00      [10] 2056 PLY_AKM_PTARPEGGIOS: ld bc,#0
   892D 09            [11] 2057     add hl,bc
   892E 7E            [ 7] 2058     ld a,(hl)
   892F 23            [ 6] 2059     inc hl
   8930 66            [ 7] 2060     ld h,(hl)
   8931 6F            [ 4] 2061     ld l,a
   8932 7E            [ 7] 2062     ld a,(hl)
   8933 23            [ 6] 2063     inc hl
   8934 DD 77 1A      [19] 2064     ld +26(ix),a
   8937 DD                 2065     .db 221
   8938 75                 2066     .db 117
   8939 16                 2067     .db +22
   893A DD                 2068     .db 221
   893B 74                 2069     .db 116
   893C 17                 2070     .db +23
   893D D9            [ 4] 2071     exx
   893E AF            [ 4] 2072     xor a
   893F DD 77 18      [19] 2073     ld +24(ix),a
   8942 DD 77 19      [19] 2074     ld +25(ix),a
   8945 C3 0C 87      [10] 2075     jp PLY_AKM_RT_READEFFECT_RETURN
   8948 DD 77 1B      [19] 2076 PLY_AKM_EFFECTARPEGGIOTABLE_STOP: ld +27(ix),a
   894B C3 0C 87      [10] 2077     jp PLY_AKM_RT_READEFFECT_RETURN
   894E CD 7A 89      [17] 2078 PLY_AKM_EFFECTPITCHTABLE: call PLY_AKM_EFFECTREADIFESCAPE
   8951 DD 77 1C      [19] 2079     ld +28(ix),a
   8954 CA 0C 87      [10] 2080     jp z,PLY_AKM_RT_READEFFECT_RETURN
   8957 87            [ 4] 2081     add a,a
   8958 D9            [ 4] 2082     exx
   8959 6F            [ 4] 2083     ld l,a
   895A 26 00         [ 7] 2084     ld h,#0
   895C 01 00 00      [10] 2085 PLY_AKM_PTPITCHES: ld bc,#0
   895F 09            [11] 2086     add hl,bc
   8960 7E            [ 7] 2087     ld a,(hl)
   8961 23            [ 6] 2088     inc hl
   8962 66            [ 7] 2089     ld h,(hl)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 40.
Hexadecimal [16-Bits]



   8963 6F            [ 4] 2090     ld l,a
   8964 7E            [ 7] 2091     ld a,(hl)
   8965 23            [ 6] 2092     inc hl
   8966 DD 77 21      [19] 2093     ld +33(ix),a
   8969 DD                 2094     .db 221
   896A 75                 2095     .db 117
   896B 1D                 2096     .db +29
   896C DD                 2097     .db 221
   896D 74                 2098     .db 116
   896E 1E                 2099     .db +30
   896F D9            [ 4] 2100     exx
   8970 AF            [ 4] 2101     xor a
   8971 DD 77 1F      [19] 2102     ld +31(ix),a
   8974 DD 77 20      [19] 2103     ld +32(ix),a
   8977 C3 0C 87      [10] 2104     jp PLY_AKM_RT_READEFFECT_RETURN
   897A FE 0F         [ 7] 2105 PLY_AKM_EFFECTREADIFESCAPE: cp #15
   897C D8            [11] 2106     ret c
   897D 7E            [ 7] 2107     ld a,(hl)
   897E 23            [ 6] 2108     inc hl
   897F C9            [10] 2109     ret 
   8980                    2110 PLY_AKM_TRACK1_DATA:
   8980 00                 2111 PLY_AKM_TRACK1_WAITEMPTYCELL: .db 0
   8981 00                 2112 PLY_AKM_TRACK1_TRANSPOSITION: .db 0
   8982 00 00              2113 PLY_AKM_TRACK1_PTSTARTTRACK: .dw 0
   8984 00 00              2114 PLY_AKM_TRACK1_PTTRACK: .dw 0
   8986 00                 2115 PLY_AKM_TRACK1_BASENOTE: .db 0
   8987 00                 2116 PLY_AKM_TRACK1_ESCAPENOTE: .db 0
   8988 00                 2117 PLY_AKM_TRACK1_ESCAPEINSTRUMENT: .db 0
   8989 00                 2118 PLY_AKM_TRACK1_ESCAPEWAIT: .db 0
   898A 00 00              2119 PLY_AKM_TRACK1_PTINSTRUMENT: .dw 0
   898C 00                 2120 PLY_AKM_TRACK1_INSTRUMENTCURRENTSTEP: .db 0
   898D 00                 2121 PLY_AKM_TRACK1_INSTRUMENTSPEED: .db 0
   898E 00                 2122 PLY_AKM_TRACK1_TRACKINVERTEDVOLUME: .db 0
   898F 00                 2123 PLY_AKM_TRACK1_ISPITCHUPDOWNUSED: .db 0
   8990 00 00              2124 PLY_AKM_TRACK1_TRACKPITCHINTEGER: .dw 0
   8992 00                 2125 PLY_AKM_TRACK1_TRACKPITCHDECIMAL: .db 0
   8993 00 00              2126 PLY_AKM_TRACK1_TRACKPITCHSPEED: .dw 0
   8995 00                 2127 PLY_AKM_TRACK1_ISARPEGGIOTABLEUSED: .db 0
   8996 00 00              2128 PLY_AKM_TRACK1_PTARPEGGIOTABLE: .dw 0
   8998 00                 2129 PLY_AKM_TRACK1_PTARPEGGIOOFFSET: .db 0
   8999 00                 2130 PLY_AKM_TRACK1_ARPEGGIOCURRENTSTEP: .db 0
   899A 00                 2131 PLY_AKM_TRACK1_ARPEGGIOORIGINALSPEED: .db 0
   899B 00                 2132 PLY_AKM_TRACK1_CURRENTARPEGGIOVALUE: .db 0
   899C 00                 2133 PLY_AKM_TRACK1_ISPITCHTABLEUSED: .db 0
   899D 00 00              2134 PLY_AKM_TRACK1_PTPITCHTABLE: .dw 0
   899F 00                 2135 PLY_AKM_TRACK1_PTPITCHOFFSET: .db 0
   89A0 00                 2136 PLY_AKM_TRACK1_PITCHCURRENTSTEP: .db 0
   89A1 00                 2137 PLY_AKM_TRACK1_PITCHORIGINALSPEED: .db 0
   89A2 00 00              2138 PLY_AKM_TRACK1_CURRENTPITCHTABLEVALUE: .dw 0
   89A4                    2139 PLY_AKM_TRACK1_DATA_END:
   89A4                    2140 PLY_AKM_TRACK2_DATA:
   89A4 00                 2141 PLY_AKM_TRACK2_WAITEMPTYCELL: .db 0
   89A5 00                 2142     .db 0
   89A6 00                 2143     .db 0
   89A7 00                 2144     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 41.
Hexadecimal [16-Bits]



   89A8 00                 2145 PLY_AKM_TRACK2_PTTRACK: .db 0
   89A9 00                 2146     .db 0
   89AA 00                 2147     .db 0
   89AB 00                 2148 PLY_AKM_TRACK2_ESCAPENOTE: .db 0
   89AC 00                 2149 PLY_AKM_TRACK2_ESCAPEINSTRUMENT: .db 0
   89AD 00                 2150 PLY_AKM_TRACK2_ESCAPEWAIT: .db 0
   89AE 00                 2151 PLY_AKM_TRACK2_PTINSTRUMENT: .db 0
   89AF 00                 2152     .db 0
   89B0 00                 2153     .db 0
   89B1 00                 2154     .db 0
   89B2 00                 2155     .db 0
   89B3 00                 2156     .db 0
   89B4 00                 2157     .db 0
   89B5 00                 2158     .db 0
   89B6 00                 2159     .db 0
   89B7 00                 2160     .db 0
   89B8 00                 2161     .db 0
   89B9 00                 2162     .db 0
   89BA 00                 2163     .db 0
   89BB 00                 2164     .db 0
   89BC 00                 2165     .db 0
   89BD 00                 2166     .db 0
   89BE 00                 2167     .db 0
   89BF 00                 2168     .db 0
   89C0 00                 2169     .db 0
   89C1 00                 2170     .db 0
   89C2 00                 2171     .db 0
   89C3 00                 2172     .db 0
   89C4 00                 2173     .db 0
   89C5 00                 2174     .db 0
   89C6 00                 2175     .db 0
   89C7 00                 2176     .db 0
   89C8                    2177 PLY_AKM_TRACK2_DATA_END:
   89C8                    2178 PLY_AKM_TRACK3_DATA:
   89C8 00                 2179 PLY_AKM_TRACK3_WAITEMPTYCELL: .db 0
   89C9 00                 2180     .db 0
   89CA 00                 2181     .db 0
   89CB 00                 2182     .db 0
   89CC 00                 2183 PLY_AKM_TRACK3_PTTRACK: .db 0
   89CD 00                 2184     .db 0
   89CE 00                 2185     .db 0
   89CF 00                 2186 PLY_AKM_TRACK3_ESCAPENOTE: .db 0
   89D0 00                 2187 PLY_AKM_TRACK3_ESCAPEINSTRUMENT: .db 0
   89D1 00                 2188 PLY_AKM_TRACK3_ESCAPEWAIT: .db 0
   89D2 00                 2189 PLY_AKM_TRACK3_PTINSTRUMENT: .db 0
   89D3 00                 2190     .db 0
   89D4 00                 2191     .db 0
   89D5 00                 2192     .db 0
   89D6 00                 2193     .db 0
   89D7 00                 2194     .db 0
   89D8 00                 2195     .db 0
   89D9 00                 2196     .db 0
   89DA 00                 2197     .db 0
   89DB 00                 2198     .db 0
   89DC 00                 2199     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 42.
Hexadecimal [16-Bits]



   89DD 00                 2200     .db 0
   89DE 00                 2201     .db 0
   89DF 00                 2202     .db 0
   89E0 00                 2203     .db 0
   89E1 00                 2204     .db 0
   89E2 00                 2205     .db 0
   89E3 00                 2206     .db 0
   89E4 00                 2207     .db 0
   89E5 00                 2208     .db 0
   89E6 00                 2209     .db 0
   89E7 00                 2210     .db 0
   89E8 00                 2211     .db 0
   89E9 00                 2212     .db 0
   89EA 00                 2213     .db 0
   89EB 00                 2214     .db 0
   89EC                    2215 PLY_AKM_TRACK3_DATA_END:
   89EC                    2216 PLY_AKM_REGISTERS_RETTABLE:
   89EC 08                 2217 PLY_AKM_TRACK1_REGISTERS: .db 8
   89ED 00                 2218 PLY_AKM_TRACK1_VOLUME: .db 0
   89EE B9 85              2219     .dw PLY_AKM_SENDPSGREGISTER
   89F0 00                 2220     .db 0
   89F1 00                 2221 PLY_AKM_TRACK1_SOFTWAREPERIODLSB: .db 0
   89F2 B9 85              2222     .dw PLY_AKM_SENDPSGREGISTER
   89F4 01                 2223     .db 1
   89F5 00                 2224 PLY_AKM_TRACK1_SOFTWAREPERIODMSB: .db 0
   89F6 B9 85              2225     .dw PLY_AKM_SENDPSGREGISTER
   89F8 09                 2226 PLY_AKM_TRACK2_REGISTERS: .db 9
   89F9 00                 2227 PLY_AKM_TRACK2_VOLUME: .db 0
   89FA B9 85              2228     .dw PLY_AKM_SENDPSGREGISTER
   89FC 02                 2229     .db 2
   89FD 00                 2230 PLY_AKM_TRACK2_SOFTWAREPERIODLSB: .db 0
   89FE B9 85              2231     .dw PLY_AKM_SENDPSGREGISTER
   8A00 03                 2232     .db 3
   8A01 00                 2233 PLY_AKM_TRACK2_SOFTWAREPERIODMSB: .db 0
   8A02 B9 85              2234     .dw PLY_AKM_SENDPSGREGISTER
   8A04 0A                 2235 PLY_AKM_TRACK3_REGISTERS: .db 10
   8A05 00                 2236 PLY_AKM_TRACK3_VOLUME: .db 0
   8A06 B9 85              2237     .dw PLY_AKM_SENDPSGREGISTER
   8A08 04                 2238     .db 4
   8A09 00                 2239 PLY_AKM_TRACK3_SOFTWAREPERIODLSB: .db 0
   8A0A B9 85              2240     .dw PLY_AKM_SENDPSGREGISTER
   8A0C 05                 2241     .db 5
   8A0D 00                 2242 PLY_AKM_TRACK3_SOFTWAREPERIODMSB: .db 0
   8A0E B9 85              2243     .dw PLY_AKM_SENDPSGREGISTER
   8A10 06                 2244     .db 6
   8A11 00                 2245 PLY_AKM_NOISEREGISTER: .db 0
   8A12 B9 85              2246     .dw PLY_AKM_SENDPSGREGISTER
   8A14 07                 2247     .db 7
   8A15 00                 2248 PLY_AKM_MIXERREGISTER: .db 0
   8A16 B9 85              2249     .dw PLY_AKM_SENDPSGREGISTER
   8A18 0B                 2250     .db 11
   8A19 00                 2251 PLY_AKM_REG11: .db 0
   8A1A B9 85              2252     .dw PLY_AKM_SENDPSGREGISTER
   8A1C 0C                 2253     .db 12
   8A1D 00                 2254 PLY_AKM_REG12: .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 43.
Hexadecimal [16-Bits]



   8A1E C9 85              2255     .dw PLY_AKM_SENDPSGREGISTERR13
   8A20 BA 85              2256     .dw PLY_AKM_SENDPSGREGISTERAFTERPOP
   8A22 D8 85              2257     .dw PLY_AKM_SENDPSGREGISTEREND
   8A24 EE 0E              2258 PLY_AKM_PERIODTABLE: .dw 3822
   8A26 18 0E              2259     .dw 3608
   8A28 4D 0D              2260     .dw 3405
   8A2A 8E 0C              2261     .dw 3214
   8A2C DA 0B              2262     .dw 3034
   8A2E 2F 0B              2263     .dw 2863
   8A30 8F 0A              2264     .dw 2703
   8A32 F7 09              2265     .dw 2551
   8A34 68 09              2266     .dw 2408
   8A36 E1 08              2267     .dw 2273
   8A38 61 08              2268     .dw 2145
   8A3A E9 07              2269     .dw 2025
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 44.
Hexadecimal [16-Bits]



                             22 
   8A3C                      23 _PLAYER_ARKOS_INITSOUNDEFFECTS::
   8A3C C3 3C 83      [10]   24 	jp PLY_AKM_INITSOUNDEFFECTS
                             25 
   8A3F                      26 _PLAYER_ARKOS_PLAYSOUNDEFFECT::	
   8A3F F1            [10]   27 	pop  af          ;; AF = Return address
   8A40 E1            [10]   28 	pop  hl          ;; H Rubbish / L = Sound effect
   8A41 C1            [10]   29 	pop  bc          ;; B = Volume / C = Channel
   8A42 F5            [11]   30 	push af          ;; Save back return address in the stack to fullfill __z88dk_callee convention	
   8A43 7D            [ 4]   31 	ld   a, l        ;; A = Subsong index	
   8A44 C3 40 83      [10]   32 	jp   PLY_AKM_PLAYSOUNDEFFECT
                             33 	
   8A47                      34 _PLAYER_ARKOS_STOPSOUNDEFFECTFROMCHANNEL::
   8A47 7D            [ 4]   35 	ld   a, l
   8A48 C3 68 83      [10]   36 	jp   PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL
                             37 	
   8A4B                      38 _PLAYER_ARKOS_INIT::
   8A4B F1            [10]   39 	pop  af          ;; AF = Return address
   8A4C E1            [10]   40 	pop  hl          ;; HL = Music address
   8A4D C1            [10]   41 	pop  bc          ;; B Rubbish  / C = Subsong index (>=0)
   8A4E F5            [11]   42 	push af          ;; Save back return address in the stack to fullfill __z88dk_callee convention
   8A4F 79            [ 4]   43 	ld   a, c        ;; A = Subsong index	
   8A50 C3 41 84      [10]   44 	jp   PLY_AKM_INIT
                             45 	
   8A53                      46 _PLAYER_ARKOS_STOP::	
   8A53 C3 BF 84      [10]   47 	jp   PLY_AKM_STOP
                             48 	
   8A56                      49 _PLAYER_ARKOS_PLAY::	
   8A56 C3 D5 84      [10]   50 	jp   PLY_AKM_PLAY
