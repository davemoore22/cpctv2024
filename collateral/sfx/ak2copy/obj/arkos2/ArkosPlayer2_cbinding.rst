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



                             21 .include "PlayerAkm.asm"
                     0001     1 PLY_AKM_REGISTERS_OFFSETVOLUME = .+1
                     0001     2 PLY_AKM_DATA_OFFSETTRANSPOSITION = .+1
                     0001     3 PLY_AKM_OFFSET1B = .+1
                     0001     4 PLY_AKM_STOP_SOUNDS = .+1
                     0001     5 PLY_AKM_USE_HOOKS = .+1
   41A5                       6 AHARMLESSGRENADE_START:
   41A5                       7 _AHARMLESSGRENADE_START::
   41A5 AD 41                 8 PLY_AKM_DATA_OFFSETWAITEMPTYCELL: .dw AHARMLESSGRENADE_INSTRUMENTINDEXES
                     0003     9 PLY_AKM_SOUNDEFFECTDATA_OFFSETCURRENTSTEP = .+1
   41A7                      10 PLY_AKM_SOUNDEFFECTDATA_OFFSETINVERTEDVOLUME:
   41A7                      11 PLY_AKM_OFFSET2B:
   41A7 C6 42                12 PLY_AKM_DATA_OFFSETPTSTARTTRACK: .dw AHARMLESSGRENADE_ARPEGGIOINDEXES-2
                     0005    13 PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODLSB = .+1
   41A9                      14 PLY_AKM_SOUNDEFFECTDATA_OFFSETSPEED:
   41A9 DA 42                15 PLY_AKM_DATA_OFFSETPTTRACK: .dw AHARMLESSGRENADE_PITCHINDEXES-2
                     0007    16 PLY_AKM_DATA_OFFSETESCAPENOTE = .+1
   41AB E6 42                17 PLY_AKM_DATA_OFFSETBASENOTE: .dw AHARMLESSGRENADE_SUBSONG0
                     0009    18 PLY_AKM_DATA_OFFSETESCAPEWAIT = .+1
                     0009    19 PLY_AKM_DATA_OFFSETSECONDARYINSTRUMENT = .+1
                     0009    20 PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODMSB = .+1
   41AD                      21 AHARMLESSGRENADE_INSTRUMENTINDEXES:
   41AD                      22 PLY_AKM_CHANNEL_SOUNDEFFECTDATASIZE:
   41AD D5 41                23 PLY_AKM_DATA_OFFSETESCAPEINSTRUMENT: .dw AHARMLESSGRENADE_INSTRUMENT0
   41AF DA 41                24 PLY_AKM_DATA_OFFSETPTINSTRUMENT: .dw AHARMLESSGRENADE_INSTRUMENT1
                     000D    25 PLY_AKM_DATA_OFFSETINSTRUMENTSPEED = .+1
   41B1 EC 41                26 PLY_AKM_DATA_OFFSETINSTRUMENTCURRENTSTEP: .dw AHARMLESSGRENADE_INSTRUMENT2
                     000F    27 PLY_AKM_DATA_OFFSETISPITCHUPDOWNUSED = .+1
   41B3 0A 42                28 PLY_AKM_DATA_OFFSETTRACKINVERTEDVOLUME: .dw AHARMLESSGRENADE_INSTRUMENT3
   41B5 14 42                29 PLY_AKM_DATA_OFFSETTRACKPITCHINTEGER: .dw AHARMLESSGRENADE_INSTRUMENT4
                     0013    30 PLY_AKM_DATA_OFFSETTRACKPITCHSPEED = .+1
   41B7 1C 42                31 PLY_AKM_DATA_OFFSETTRACKPITCHDECIMAL: .dw AHARMLESSGRENADE_INSTRUMENT5
                     0015    32 PLY_AKM_DATA_OFFSETISARPEGGIOTABLEUSED = .+1
   41B9 26 42                33     .dw AHARMLESSGRENADE_INSTRUMENT6
   41BB 2C 42                34 PLY_AKM_DATA_OFFSETPTARPEGGIOTABLE: .dw AHARMLESSGRENADE_INSTRUMENT7
                     0019    35 PLY_AKM_DATA_OFFSETARPEGGIOCURRENTSTEP = .+1
   41BD 3E 42                36 PLY_AKM_DATA_OFFSETPTARPEGGIOOFFSET: .dw AHARMLESSGRENADE_INSTRUMENT8
                     001B    37 PLY_AKM_DATA_OFFSETCURRENTARPEGGIOVALUE = .+1
   41BF 43 42                38 PLY_AKM_DATA_OFFSETARPEGGIOORIGINALSPEED: .dw AHARMLESSGRENADE_INSTRUMENT9
                     001D    39 PLY_AKM_DATA_OFFSETPTPITCHTABLE = .+1
   41C1 5C 42                40 PLY_AKM_DATA_OFFSETISPITCHTABLEUSED: .dw AHARMLESSGRENADE_INSTRUMENT10
                     001F    41 PLY_AKM_DATA_OFFSETPTPITCHOFFSET = .+1
   41C3 61 42                42     .dw AHARMLESSGRENADE_INSTRUMENT11
                     0021    43 PLY_AKM_DATA_OFFSETPITCHORIGINALSPEED = .+1
   41C5 6A 42                44 PLY_AKM_DATA_OFFSETPITCHCURRENTSTEP: .dw AHARMLESSGRENADE_INSTRUMENT12
   41C7 6F 42                45 PLY_AKM_DATA_OFFSETCURRENTPITCHTABLEVALUE: .dw AHARMLESSGRENADE_INSTRUMENT13
   41C9 74 42                46 PLY_AKM_TRACK1_DATA_SIZE: .dw AHARMLESSGRENADE_INSTRUMENT14
   41CB 79 42                47     .dw AHARMLESSGRENADE_INSTRUMENT15
   41CD 90 42                48     .dw AHARMLESSGRENADE_INSTRUMENT16
   41CF 9E 42                49     .dw AHARMLESSGRENADE_INSTRUMENT17
   41D1 AC 42                50     .dw AHARMLESSGRENADE_INSTRUMENT18
   41D3 BA 42                51     .dw AHARMLESSGRENADE_INSTRUMENT19
   41D5 FF                   52 AHARMLESSGRENADE_INSTRUMENT0: .db 255
   41D6 00                   53 AHARMLESSGRENADE_INSTRUMENT0LOOP: .db 0
   41D7 04                   54     .db 4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



   41D8 D6 41                55     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   41DA 01                   56 AHARMLESSGRENADE_INSTRUMENT1: .db 1
   41DB D2                   57     .db 210
   41DC 0C                   58     .db 12
   41DD B2                   59     .db 178
   41DE 0C                   60     .db 12
   41DF B2                   61     .db 178
   41E0 0C                   62     .db 12
   41E1 52                   63     .db 82
   41E2 A9                   64     .db 169
   41E3 18                   65     .db 24
   41E4 29                   66     .db 41
   41E5 A9                   67     .db 169
   41E6 18                   68     .db 24
   41E7 25                   69     .db 37
   41E8 21                   70     .db 33
   41E9 04                   71     .db 4
   41EA D6 41                72     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   41EC 00                   73 AHARMLESSGRENADE_INSTRUMENT2: .db 0
   41ED BD                   74     .db 189
   41EE 01                   75     .db 1
   41EF 02                   76     .db 2
   41F0 FD                   77     .db 253
   41F1 01                   78     .db 1
   41F2 01                   79     .db 1
   41F3 20                   80     .db 32
   41F4 00                   81     .db 0
   41F5 7D                   82     .db 125
   41F6 30                   83     .db 48
   41F7 00                   84     .db 0
   41F8 7D                   85     .db 125
   41F9 44                   86     .db 68
   41FA 00                   87     .db 0
   41FB 7D                   88     .db 125
   41FC 74                   89     .db 116
   41FD 00                   90     .db 0
   41FE 7D                   91     .db 125
   41FF E4                   92     .db 228
   4200 00                   93     .db 0
   4201 79                   94     .db 121
   4202 B4                   95     .db 180
   4203 00                   96     .db 0
   4204 75                   97     .db 117
   4205 24                   98     .db 36
   4206 01                   99     .db 1
   4207 04                  100     .db 4
   4208 D6 41               101     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   420A 00                  102 AHARMLESSGRENADE_INSTRUMENT3: .db 0
   420B F8                  103     .db 248
   420C 01                  104     .db 1
   420D D8                  105     .db 216
   420E 01                  106     .db 1
   420F B8                  107     .db 184
   4210 01                  108     .db 1
   4211 04                  109     .db 4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



   4212 D6 41               110     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   4214 00                  111 AHARMLESSGRENADE_INSTRUMENT4: .db 0
   4215 F8                  112     .db 248
   4216 04                  113     .db 4
   4217 C8                  114     .db 200
   4218 01                  115     .db 1
   4219 04                  116     .db 4
   421A D6 41               117     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   421C 00                  118 AHARMLESSGRENADE_INSTRUMENT5: .db 0
   421D F8                  119 AHARMLESSGRENADE_INSTRUMENT5LOOP: .db 248
   421E 01                  120     .db 1
   421F C8                  121     .db 200
   4220 01                  122     .db 1
   4221 B0                  123     .db 176
   4222 01                  124     .db 1
   4223 04                  125     .db 4
   4224 1D 42               126     .dw AHARMLESSGRENADE_INSTRUMENT5LOOP
   4226 03                  127 AHARMLESSGRENADE_INSTRUMENT6: .db 3
   4227 F8                  128     .db 248
   4228 01                  129     .db 1
   4229 04                  130     .db 4
   422A D6 41               131     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   422C 02                  132 AHARMLESSGRENADE_INSTRUMENT7: .db 2
   422D 3D                  133     .db 61
   422E 35                  134     .db 53
   422F 31                  135     .db 49
   4230 2D                  136     .db 45
   4231 29                  137     .db 41
   4232 25                  138     .db 37
   4233 21                  139     .db 33
   4234 1D                  140     .db 29
   4235 19                  141     .db 25
   4236 15                  142     .db 21
   4237 11                  143     .db 17
   4238 0D                  144     .db 13
   4239 09                  145     .db 9
   423A 05                  146     .db 5
   423B 04                  147     .db 4
   423C D6 41               148     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   423E 00                  149 AHARMLESSGRENADE_INSTRUMENT8: .db 0
   423F 4A                  150 AHARMLESSGRENADE_INSTRUMENT8LOOP: .db 74
   4240 04                  151     .db 4
   4241 3F 42               152     .dw AHARMLESSGRENADE_INSTRUMENT8LOOP
   4243 00                  153 AHARMLESSGRENADE_INSTRUMENT9: .db 0
   4244 F8                  154     .db 248
   4245 02                  155     .db 2
   4246 39                  156     .db 57
   4247 F5                  157     .db 245
   4248 01                  158     .db 1
   4249 01                  159     .db 1
   424A D0                  160     .db 208
   424B 00                  161     .db 0
   424C ED                  162     .db 237
   424D 01                  163     .db 1
   424E 01                  164     .db 1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



   424F 90                  165     .db 144
   4250 01                  166     .db 1
   4251 D8                  167     .db 216
   4252 01                  168     .db 1
   4253 D8                  169     .db 216
   4254 03                  170     .db 3
   4255 D0                  171     .db 208
   4256 04                  172     .db 4
   4257 C8                  173     .db 200
   4258 01                  174     .db 1
   4259 04                  175     .db 4
   425A D6 41               176     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   425C 04                  177 AHARMLESSGRENADE_INSTRUMENT10: .db 4
   425D 52                  178 AHARMLESSGRENADE_INSTRUMENT10LOOP: .db 82
   425E 04                  179     .db 4
   425F 5D 42               180     .dw AHARMLESSGRENADE_INSTRUMENT10LOOP
   4261 01                  181 AHARMLESSGRENADE_INSTRUMENT11: .db 1
   4262 C2                  182 AHARMLESSGRENADE_INSTRUMENT11LOOP: .db 194
   4263 0C                  183     .db 12
   4264 C2                  184     .db 194
   4265 0C                  185     .db 12
   4266 78                  186     .db 120
   4267 04                  187     .db 4
   4268 62 42               188     .dw AHARMLESSGRENADE_INSTRUMENT11LOOP
   426A 00                  189 AHARMLESSGRENADE_INSTRUMENT12: .db 0
   426B 3D                  190 AHARMLESSGRENADE_INSTRUMENT12LOOP: .db 61
   426C 04                  191     .db 4
   426D 6B 42               192     .dw AHARMLESSGRENADE_INSTRUMENT12LOOP
   426F 00                  193 AHARMLESSGRENADE_INSTRUMENT13: .db 0
   4270 3D                  194     .db 61
   4271 04                  195     .db 4
   4272 D6 41               196     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   4274 00                  197 AHARMLESSGRENADE_INSTRUMENT14: .db 0
   4275 3A                  198 AHARMLESSGRENADE_INSTRUMENT14LOOP: .db 58
   4276 04                  199     .db 4
   4277 75 42               200     .dw AHARMLESSGRENADE_INSTRUMENT14LOOP
   4279 01                  201 AHARMLESSGRENADE_INSTRUMENT15: .db 1
   427A 3D                  202     .db 61
   427B 79                  203 AHARMLESSGRENADE_INSTRUMENT15LOOP: .db 121
   427C FB                  204     .db 251
   427D FF                  205     .db 255
   427E 31                  206     .db 49
   427F 6D                  207     .db 109
   4280 05                  208     .db 5
   4281 00                  209     .db 0
   4282 3D                  210     .db 61
   4283 75                  211     .db 117
   4284 F9                  212     .db 249
   4285 FF                  213     .db 255
   4286 25                  214     .db 37
   4287 69                  215     .db 105
   4288 20                  216     .db 32
   4289 00                  217     .db 0
   428A 2D                  218     .db 45
   428B 31                  219     .db 49
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



   428C 39                  220     .db 57
   428D 04                  221     .db 4
   428E 7B 42               222     .dw AHARMLESSGRENADE_INSTRUMENT15LOOP
   4290 00                  223 AHARMLESSGRENADE_INSTRUMENT16: .db 0
   4291 E8                  224     .db 232
   4292 05                  225     .db 5
   4293 D8                  226     .db 216
   4294 05                  227     .db 5
   4295 D0                  228     .db 208
   4296 05                  229     .db 5
   4297 C8                  230     .db 200
   4298 05                  231     .db 5
   4299 B8                  232     .db 184
   429A 05                  233     .db 5
   429B 04                  234     .db 4
   429C D6 41               235     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   429E 00                  236 AHARMLESSGRENADE_INSTRUMENT17: .db 0
   429F E8                  237     .db 232
   42A0 09                  238     .db 9
   42A1 D8                  239     .db 216
   42A2 09                  240     .db 9
   42A3 D0                  241     .db 208
   42A4 09                  242     .db 9
   42A5 C8                  243     .db 200
   42A6 09                  244     .db 9
   42A7 B8                  245     .db 184
   42A8 09                  246     .db 9
   42A9 04                  247     .db 4
   42AA D6 41               248     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   42AC 00                  249 AHARMLESSGRENADE_INSTRUMENT18: .db 0
   42AD E8                  250     .db 232
   42AE 11                  251     .db 17
   42AF D8                  252     .db 216
   42B0 11                  253     .db 17
   42B1 D0                  254     .db 208
   42B2 11                  255     .db 17
   42B3 C8                  256     .db 200
   42B4 11                  257     .db 17
   42B5 B8                  258     .db 184
   42B6 11                  259     .db 17
   42B7 04                  260     .db 4
   42B8 D6 41               261     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
   42BA 00                  262 AHARMLESSGRENADE_INSTRUMENT19: .db 0
   42BB E8                  263     .db 232
   42BC 19                  264     .db 25
   42BD D8                  265     .db 216
   42BE 19                  266     .db 25
   42BF D0                  267     .db 208
   42C0 19                  268     .db 25
   42C1 C8                  269     .db 200
   42C2 19                  270     .db 25
   42C3 B8                  271     .db 184
   42C4 19                  272     .db 25
   42C5 04                  273     .db 4
   42C6 D6 41               274     .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



   42C8 CC 42               275 AHARMLESSGRENADE_ARPEGGIOINDEXES: .dw AHARMLESSGRENADE_ARPEGGIO1
   42CA D3 42               276     .dw AHARMLESSGRENADE_ARPEGGIO2
   42CC 00                  277 AHARMLESSGRENADE_ARPEGGIO1: .db 0
   42CD 00                  278     .db 0
   42CE 18                  279     .db 24
   42CF 12                  280     .db 18
   42D0 E8                  281     .db 232
   42D1 24                  282     .db 36
   42D2 01                  283     .db 1
   42D3 00                  284 AHARMLESSGRENADE_ARPEGGIO2: .db 0
   42D4 00                  285     .db 0
   42D5 0C                  286     .db 12
   42D6 FA                  287     .db 250
   42D7 E8                  288     .db 232
   42D8 F4                  289     .db 244
   42D9 00                  290     .db 0
   42DA 18                  291     .db 24
   42DB 01                  292     .db 1
   42DC DE 42               293 AHARMLESSGRENADE_PITCHINDEXES: .dw AHARMLESSGRENADE_PITCH1
   42DE 01                  294 AHARMLESSGRENADE_PITCH1: .db 1
   42DF 00                  295     .db 0
   42E0 00                  296     .db 0
   42E1 00                  297     .db 0
   42E2 FE                  298     .db 254
   42E3 F8                  299     .db 248
   42E4 04                  300     .db 4
   42E5 05                  301     .db 5
   42E6 AC 45               302 AHARMLESSGRENADE_SUBSONG0: .dw AHARMLESSGRENADE_SUBSONG0_NOTEINDEXES
   42E8 64 43               303     .dw AHARMLESSGRENADE_SUBSONG0_TRACKINDEXES
   42EA 06                  304     .db 6
   42EB 01                  305     .db 1
   42EC 02                  306     .db 2
   42ED 00                  307     .db 0
   42EE 01                  308     .db 1
   42EF 15                  309     .db 21
   42F0 0A                  310     .db 10
   42F1 00                  311     .db 0
   42F2 0C                  312     .db 12
   42F3 FA                  313 AHARMLESSGRENADE_SUBSONG0_LOOP: .db 250
   42F4 1F                  314     .db 31
   42F5 84                  315     .db 132
   42F6 00                  316     .db 0
   42F7 80                  317     .db 128
   42F8 00                  318     .db 0
   42F9 80                  319     .db 128
   42FA A0                  320     .db 160
   42FB 85                  321     .db 133
   42FC 85                  322     .db 133
   42FD 80                  323     .db 128
   42FE 00                  324     .db 0
   42FF 9A                  325     .db 154
   4300 00                  326     .db 0
   4301 A8                  327     .db 168
   4302 01                  328     .db 1
   4303 09                  329     .db 9
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



   4304 01                  330     .db 1
   4305 27                  331     .db 39
   4306 01                  332     .db 1
   4307 13                  333     .db 19
   4308 AA                  334     .db 170
   4309 17                  335     .db 23
   430A 88                  336     .db 136
   430B 87                  337     .db 135
   430C 89                  338     .db 137
   430D AA                  339     .db 170
   430E 07                  340     .db 7
   430F 01                  341     .db 1
   4310 8F                  342     .db 143
   4311 01                  343     .db 1
   4312 90                  344     .db 144
   4313 01                  345     .db 1
   4314 95                  346     .db 149
   4315 AA                  347     .db 170
   4316 17                  348     .db 23
   4317 88                  349     .db 136
   4318 87                  350     .db 135
   4319 89                  351     .db 137
   431A AA                  352     .db 170
   431B 07                  353     .db 7
   431C 01                  354     .db 1
   431D 90                  355     .db 144
   431E 01                  356     .db 1
   431F 97                  357     .db 151
   4320 01                  358     .db 1
   4321 A7                  359     .db 167
   4322 AA                  360     .db 170
   4323 17                  361     .db 23
   4324 88                  362     .db 136
   4325 87                  363     .db 135
   4326 89                  364     .db 137
   4327 AA                  365     .db 170
   4328 07                  366     .db 7
   4329 01                  367     .db 1
   432A 75                  368     .db 117
   432B 01                  369     .db 1
   432C 76                  370     .db 118
   432D 01                  371     .db 1
   432E 7B                  372     .db 123
   432F AA                  373     .db 170
   4330 1F                  374     .db 31
   4331 8A                  375     .db 138
   4332 8B                  376     .db 139
   4333 01                  377     .db 1
   4334 BD                  378     .db 189
   4335 80                  379     .db 128
   4336 02                  380     .db 2
   4337 0A                  381     .db 10
   4338 82                  382     .db 130
   4339 1B                  383     .db 27
   433A 01                  384     .db 1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



   433B B6                  385     .db 182
   433C AA                  386     .db 170
   433D 03                  387     .db 3
   433E 80                  388     .db 128
   433F 81                  389     .db 129
   4340 80                  390     .db 128
   4341 AA                  391     .db 170
   4342 1F                  392     .db 31
   4343 01                  393     .db 1
   4344 C7                  394     .db 199
   4345 82                  395     .db 130
   4346 83                  396     .db 131
   4347 00                  397     .db 0
   4348 08                  398     .db 8
   4349 8C                  399     .db 140
   434A 00                  400     .db 0
   434B 46                  401     .db 70
   434C 0F                  402     .db 15
   434D 02                  403     .db 2
   434E 02                  404     .db 2
   434F FE                  405     .db 254
   4350 03                  406     .db 3
   4351 00                  407     .db 0
   4352 80                  408     .db 128
   4353 02                  409     .db 2
   4354 81                  410     .db 129
   4355 00                  411     .db 0
   4356 86                  412     .db 134
   4357 50                  413     .db 80
   4358 0A                  414     .db 10
   4359 04                  415     .db 4
   435A 50                  416     .db 80
   435B 14                  417     .db 20
   435C 08                  418     .db 8
   435D 50                  419     .db 80
   435E 24                  420     .db 36
   435F 0E                  421     .db 14
   4360 01                  422     .db 1
   4361 00                  423     .db 0
   4362 F3 42               424     .dw AHARMLESSGRENADE_SUBSONG0_LOOP
   4364 6D 45               425 AHARMLESSGRENADE_SUBSONG0_TRACKINDEXES: .dw AHARMLESSGRENADE_SUBSONG0_TRACK22
   4366 70 45               426     .dw AHARMLESSGRENADE_SUBSONG0_TRACK23
   4368 17 45               427     .dw AHARMLESSGRENADE_SUBSONG0_TRACK19
   436A 56 45               428     .dw AHARMLESSGRENADE_SUBSONG0_TRACK21
   436C 7E 43               429     .dw AHARMLESSGRENADE_SUBSONG0_TRACK0
   436E 98 43               430     .dw AHARMLESSGRENADE_SUBSONG0_TRACK1
   4370 A2 45               431     .dw AHARMLESSGRENADE_SUBSONG0_TRACK25
   4372 7F 44               432     .dw AHARMLESSGRENADE_SUBSONG0_TRACK8
   4374 30 44               433     .dw AHARMLESSGRENADE_SUBSONG0_TRACK6
   4376 56 44               434     .dw AHARMLESSGRENADE_SUBSONG0_TRACK7
   4378 D3 44               435     .dw AHARMLESSGRENADE_SUBSONG0_TRACK15
   437A DE 44               436     .dw AHARMLESSGRENADE_SUBSONG0_TRACK16
   437C 77 45               437     .dw AHARMLESSGRENADE_SUBSONG0_TRACK24
   437E 92                  438 AHARMLESSGRENADE_SUBSONG0_TRACK0: .db 146
   437F 52                  439     .db 82
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



   4380 92                  440     .db 146
   4381 92                  441     .db 146
   4382 52                  442     .db 82
   4383 92                  443     .db 146
   4384 92                  444     .db 146
   4385 92                  445     .db 146
   4386 92                  446     .db 146
   4387 92                  447     .db 146
   4388 52                  448     .db 82
   4389 92                  449     .db 146
   438A 92                  450     .db 146
   438B 52                  451     .db 82
   438C 52                  452     .db 82
   438D 5A                  453     .db 90
   438E 5E                  454     .db 94
   438F 1D                  455     .db 29
   4390 5E                  456     .db 94
   4391 20                  457     .db 32
   4392 55                  458     .db 85
   4393 5E                  459     .db 94
   4394 1D                  460     .db 29
   4395 50                  461     .db 80
   4396 DA                  462     .db 218
   4397 7F                  463     .db 127
   4398 CD                  464 AHARMLESSGRENADE_SUBSONG0_TRACK1: .db 205
   4399 7F                  465     .db 127
   439A 0C                  466 AHARMLESSGRENADE_SUBSONG0_TRACK2: .db 12
   439B 60                  467     .db 96
   439C 00                  468     .db 0
   439D 0C                  469     .db 12
   439E 70                  470     .db 112
   439F 03                  471     .db 3
   43A0 32                  472     .db 50
   43A1 0C                  473     .db 12
   43A2 40                  474     .db 64
   43A3 02                  475     .db 2
   43A4 0C                  476     .db 12
   43A5 40                  477     .db 64
   43A6 32                  478     .db 50
   43A7 0C                  479     .db 12
   43A8 60                  480     .db 96
   43A9 02                  481     .db 2
   43AA 0C                  482     .db 12
   43AB 70                  483     .db 112
   43AC 04                  484     .db 4
   43AD 12                  485     .db 18
   43AE 0C                  486     .db 12
   43AF 70                  487     .db 112
   43B0 03                  488     .db 3
   43B1 22                  489     .db 34
   43B2 0C                  490     .db 12
   43B3 40                  491     .db 64
   43B4 32                  492     .db 50
   43B5 0C                  493     .db 12
   43B6 60                  494     .db 96
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



   43B7 02                  495     .db 2
   43B8 0C                  496     .db 12
   43B9 70                  497     .db 112
   43BA 05                  498     .db 5
   43BB 12                  499     .db 18
   43BC 0C                  500     .db 12
   43BD 70                  501     .db 112
   43BE 03                  502     .db 3
   43BF 22                  503     .db 34
   43C0 0C                  504     .db 12
   43C1 70                  505     .db 112
   43C2 04                  506     .db 4
   43C3 32                  507     .db 50
   43C4 0C                  508     .db 12
   43C5 60                  509     .db 96
   43C6 02                  510     .db 2
   43C7 0C                  511     .db 12
   43C8 70                  512     .db 112
   43C9 06                  513     .db 6
   43CA 32                  514     .db 50
   43CB 0C                  515     .db 12
   43CC 70                  516     .db 112
   43CD 04                  517     .db 4
   43CE 52                  518     .db 82
   43CF 0C                  519     .db 12
   43D0 70                  520     .db 112
   43D1 06                  521     .db 6
   43D2 22                  522     .db 34
   43D3 0C                  523     .db 12
   43D4 60                  524     .db 96
   43D5 02                  525     .db 2
   43D6 0C                  526     .db 12
   43D7 70                  527     .db 112
   43D8 03                  528     .db 3
   43D9 22                  529     .db 34
   43DA 0C                  530     .db 12
   43DB 70                  531     .db 112
   43DC 04                  532     .db 4
   43DD 12                  533     .db 18
   43DE 0C                  534     .db 12
   43DF 70                  535     .db 112
   43E0 03                  536     .db 3
   43E1 32                  537     .db 50
   43E2 0C                  538     .db 12
   43E3 60                  539     .db 96
   43E4 02                  540     .db 2
   43E5 0C                  541     .db 12
   43E6 70                  542     .db 112
   43E7 04                  543     .db 4
   43E8 22                  544     .db 34
   43E9 0C                  545     .db 12
   43EA 70                  546     .db 112
   43EB 05                  547     .db 5
   43EC 32                  548     .db 50
   43ED 0C                  549     .db 12
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



   43EE 70                  550     .db 112
   43EF 04                  551     .db 4
   43F0 12                  552     .db 18
   43F1 0C                  553     .db 12
   43F2 60                  554     .db 96
   43F3 02                  555     .db 2
   43F4 0C                  556     .db 12
   43F5 70                  557     .db 112
   43F6 03                  558     .db 3
   43F7 12                  559     .db 18
   43F8 0C                  560     .db 12
   43F9 70                  561     .db 112
   43FA 05                  562     .db 5
   43FB 32                  563     .db 50
   43FC 0C                  564     .db 12
   43FD 40                  565     .db 64
   43FE 42                  566     .db 66
   43FF 0C                  567     .db 12
   4400 60                  568     .db 96
   4401 02                  569     .db 2
   4402 0C                  570     .db 12
   4403 70                  571     .db 112
   4404 03                  572     .db 3
   4405 42                  573     .db 66
   4406 0C                  574     .db 12
   4407 70                  575     .db 112
   4408 04                  576     .db 4
   4409 22                  577     .db 34
   440A F0                  578     .db 240
   440B 06                  579     .db 6
   440C 7F                  580     .db 127
   440D 0C                  581 AHARMLESSGRENADE_SUBSONG0_TRACK3: .db 12
   440E FE                  582     .db 254
   440F 4F                  583     .db 79
   4410 07                  584     .db 7
   4411 07                  585     .db 7
   4412 21                  586     .db 33
   4413 18                  587     .db 24
   4414 0E                  588     .db 14
   4415 4D                  589     .db 77
   4416 0E                  590     .db 14
   4417 48                  591     .db 72
   4418 CE                  592     .db 206
   4419 4C                  593     .db 76
   441A 7F                  594     .db 127
   441B 0C                  595 AHARMLESSGRENADE_SUBSONG0_TRACK4: .db 12
   441C E0                  596     .db 224
   441D 03                  597     .db 3
   441E 00                  598     .db 0
   441F 0C                  599     .db 12
   4420 FE                  600     .db 254
   4421 4B                  601     .db 75
   4422 07                  602     .db 7
   4423 07                  603     .db 7
   4424 23                  604     .db 35
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



   4425 18                  605     .db 24
   4426 0E                  606     .db 14
   4427 47                  607     .db 71
   4428 0E                  608     .db 14
   4429 4D                  609     .db 77
   442A CE                  610     .db 206
   442B 4F                  611     .db 79
   442C 7F                  612     .db 127
   442D F2                  613 AHARMLESSGRENADE_SUBSONG0_TRACK5: .db 242
   442E 08                  614     .db 8
   442F 7F                  615     .db 127
   4430 0C                  616 AHARMLESSGRENADE_SUBSONG0_TRACK6: .db 12
   4431 45                  617     .db 69
   4432 00                  618     .db 0
   4433 9D                  619     .db 157
   4434 F4                  620     .db 244
   4435 00                  621     .db 0
   4436 20                  622     .db 32
   4437 45                  623     .db 69
   4438 9D                  624     .db 157
   4439 F4                  625     .db 244
   443A 00                  626     .db 0
   443B 20                  627     .db 32
   443C 45                  628     .db 69
   443D 5D                  629     .db 93
   443E F4                  630     .db 244
   443F 00                  631     .db 0
   4440 20                  632     .db 32
   4441 F1                  633     .db 241
   4442 00                  634     .db 0
   4443 06                  635     .db 6
   4444 72                  636     .db 114
   4445 0A                  637     .db 10
   4446 45                  638     .db 69
   4447 9D                  639     .db 157
   4448 F4                  640     .db 244
   4449 00                  641     .db 0
   444A 20                  642     .db 32
   444B 45                  643     .db 69
   444C 9D                  644     .db 157
   444D F4                  645     .db 244
   444E 00                  646     .db 0
   444F 20                  647     .db 32
   4450 45                  648     .db 69
   4451 DD                  649     .db 221
   4452 7F                  650     .db 127
   4453 F4                  651     .db 244
   4454 00                  652     .db 0
   4455 20                  653     .db 32
   4456 0C                  654 AHARMLESSGRENADE_SUBSONG0_TRACK7: .db 12
   4457 72                  655     .db 114
   4458 0C                  656     .db 12
   4459 00                  657     .db 0
   445A 9D                  658     .db 157
   445B F4                  659     .db 244
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



   445C 00                  660     .db 0
   445D 20                  661     .db 32
   445E 42                  662     .db 66
   445F 9D                  663     .db 157
   4460 F4                  664     .db 244
   4461 00                  665     .db 0
   4462 20                  666     .db 32
   4463 42                  667     .db 66
   4464 5D                  668     .db 93
   4465 F4                  669     .db 244
   4466 00                  670     .db 0
   4467 20                  671     .db 32
   4468 F1                  672     .db 241
   4469 00                  673     .db 0
   446A 06                  674     .db 6
   446B 72                  675     .db 114
   446C 0C                  676     .db 12
   446D 0C                  677     .db 12
   446E 42                  678     .db 66
   446F 02                  679     .db 2
   4470 9D                  680     .db 157
   4471 F4                  681     .db 244
   4472 00                  682     .db 0
   4473 20                  683     .db 32
   4474 42                  684     .db 66
   4475 9D                  685     .db 157
   4476 F4                  686     .db 244
   4477 00                  687     .db 0
   4478 20                  688     .db 32
   4479 42                  689     .db 66
   447A DD                  690     .db 221
   447B 7F                  691     .db 127
   447C F4                  692     .db 244
   447D 00                  693     .db 0
   447E 20                  694     .db 32
   447F 0C                  695 AHARMLESSGRENADE_SUBSONG0_TRACK8: .db 12
   4480 E0                  696     .db 224
   4481 02                  697     .db 2
   4482 00                  698     .db 0
   4483 20                  699     .db 32
   4484 A0                  700     .db 160
   4485 76                  701     .db 118
   4486 09                  702     .db 9
   4487 0C                  703     .db 12
   4488 46                  704     .db 70
   4489 12                  705     .db 18
   448A 0C                  706     .db 12
   448B 46                  707     .db 70
   448C 22                  708     .db 34
   448D 0C                  709     .db 12
   448E 46                  710     .db 70
   448F 32                  711     .db 50
   4490 0C                  712     .db 12
   4491 46                  713     .db 70
   4492 42                  714     .db 66
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



   4493 0C                  715     .db 12
   4494 46                  716     .db 70
   4495 52                  717     .db 82
   4496 0C                  718     .db 12
   4497 46                  719     .db 70
   4498 62                  720     .db 98
   4499 0C                  721     .db 12
   449A 60                  722     .db 96
   449B 02                  723     .db 2
   449C 20                  724     .db 32
   449D 20                  725     .db 32
   449E E0                  726     .db 224
   449F 7F                  727     .db 127
   44A0 8F                  728 AHARMLESSGRENADE_SUBSONG0_TRACK9: .db 143
   44A1 CA                  729     .db 202
   44A2 7F                  730     .db 127
   44A3 F3                  731 AHARMLESSGRENADE_SUBSONG0_TRACK10: .db 243
   44A4 09                  732     .db 9
   44A5 03                  733     .db 3
   44A6 A0                  734     .db 160
   44A7 43                  735     .db 67
   44A8 E0                  736     .db 224
   44A9 7F                  737     .db 127
   44AA BF                  738 AHARMLESSGRENADE_SUBSONG0_TRACK11: .db 191
   44AB 0C                  739     .db 12
   44AC CA                  740     .db 202
   44AD 7F                  741     .db 127
   44AE 8E                  742 AHARMLESSGRENADE_SUBSONG0_TRACK12: .db 142
   44AF 13                  743     .db 19
   44B0 9D                  744     .db 157
   44B1 F4                  745     .db 244
   44B2 00                  746     .db 0
   44B3 10                  747     .db 16
   44B4 CE                  748     .db 206
   44B5 10                  749     .db 16
   44B6 7F                  750     .db 127
   44B7 0C                  751 AHARMLESSGRENADE_SUBSONG0_TRACK13: .db 12
   44B8 E0                  752     .db 224
   44B9 03                  753     .db 3
   44BA 00                  754     .db 0
   44BB 60                  755     .db 96
   44BC 0C                  756     .db 12
   44BD 73                  757     .db 115
   44BE 04                  758     .db 4
   44BF 32                  759     .db 50
   44C0 0C                  760     .db 12
   44C1 73                  761     .db 115
   44C2 06                  762     .db 6
   44C3 12                  763     .db 18
   44C4 0C                  764     .db 12
   44C5 F3                  765     .db 243
   44C6 03                  766     .db 3
   44C7 7F                  767     .db 127
   44C8 22                  768     .db 34
   44C9 BE                  769 AHARMLESSGRENADE_SUBSONG0_TRACK14: .db 190
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



   44CA 13                  770     .db 19
   44CB 0C                  771     .db 12
   44CC 9D                  772     .db 157
   44CD F4                  773     .db 244
   44CE 00                  774     .db 0
   44CF 10                  775     .db 16
   44D0 CE                  776     .db 206
   44D1 10                  777     .db 16
   44D2 7F                  778     .db 127
   44D3 FE                  779 AHARMLESSGRENADE_SUBSONG0_TRACK15: .db 254
   44D4 27                  780     .db 39
   44D5 0E                  781     .db 14
   44D6 05                  782     .db 5
   44D7 C3                  783     .db 195
   44D8 09                  784     .db 9
   44D9 F7                  785     .db 247
   44DA 08                  786     .db 8
   44DB 05                  787     .db 5
   44DC C4                  788     .db 196
   44DD 7F                  789     .db 127
   44DE E0                  790 AHARMLESSGRENADE_SUBSONG0_TRACK16: .db 224
   44DF 02                  791     .db 2
   44E0 A0                  792     .db 160
   44E1 60                  793     .db 96
   44E2 F3                  794     .db 243
   44E3 09                  795     .db 9
   44E4 03                  796     .db 3
   44E5 E0                  797     .db 224
   44E6 02                  798     .db 2
   44E7 20                  799     .db 32
   44E8 20                  800     .db 32
   44E9 A0                  801     .db 160
   44EA 60                  802     .db 96
   44EB C3                  803     .db 195
   44EC 03                  804     .db 3
   44ED A0                  805     .db 160
   44EE 43                  806     .db 67
   44EF A0                  807     .db 160
   44F0 E0                  808     .db 224
   44F1 7F                  809     .db 127
   44F2 0C                  810 AHARMLESSGRENADE_SUBSONG0_TRACK17: .db 12
   44F3 B1                  811     .db 177
   44F4 0D                  812     .db 13
   44F5 40                  813     .db 64
   44F6 88                  814     .db 136
   44F7 8E                  815     .db 142
   44F8 37                  816     .db 55
   44F9 8B                  817     .db 139
   44FA 89                  818     .db 137
   44FB 0C                  819     .db 12
   44FC 81                  820     .db 129
   44FD 32                  821     .db 50
   44FE 81                  822     .db 129
   44FF 88                  823     .db 136
   4500 8E                  824     .db 142
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



   4501 36                  825     .db 54
   4502 8B                  826     .db 139
   4503 0C                  827     .db 12
   4504 89                  828     .db 137
   4505 22                  829     .db 34
   4506 81                  830     .db 129
   4507 81                  831     .db 129
   4508 88                  832     .db 136
   4509 8F                  833     .db 143
   450A C9                  834     .db 201
   450B 7F                  835     .db 127
   450C F4                  836 AHARMLESSGRENADE_SUBSONG0_TRACK18: .db 244
   450D 0B                  837     .db 11
   450E 05                  838     .db 5
   450F C0                  839     .db 192
   4510 09                  840     .db 9
   4511 CE                  841     .db 206
   4512 12                  842     .db 18
   4513 05                  843     .db 5
   4514 CE                  844     .db 206
   4515 0F                  845     .db 15
   4516 7F                  846     .db 127
   4517 60                  847 AHARMLESSGRENADE_SUBSONG0_TRACK19: .db 96
   4518 71                  848     .db 113
   4519 10                  849     .db 16
   451A 41                  850     .db 65
   451B 60                  851     .db 96
   451C 41                  852     .db 65
   451D 60                  853     .db 96
   451E 73                  854     .db 115
   451F 09                  855     .db 9
   4520 71                  856     .db 113
   4521 10                  857     .db 16
   4522 41                  858     .db 65
   4523 41                  859     .db 65
   4524 60                  860     .db 96
   4525 71                  861     .db 113
   4526 11                  862     .db 17
   4527 41                  863     .db 65
   4528 60                  864     .db 96
   4529 41                  865     .db 65
   452A 41                  866     .db 65
   452B 60                  867     .db 96
   452C 41                  868     .db 65
   452D 71                  869     .db 113
   452E 12                  870     .db 18
   452F 60                  871     .db 96
   4530 41                  872     .db 65
   4531 60                  873     .db 96
   4532 73                  874     .db 115
   4533 09                  875     .db 9
   4534 71                  876     .db 113
   4535 12                  877     .db 18
   4536 71                  878     .db 113
   4537 13                  879     .db 19
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



   4538 41                  880     .db 65
   4539 60                  881     .db 96
   453A 41                  882     .db 65
   453B 73                  883     .db 115
   453C 09                  884     .db 9
   453D 60                  885     .db 96
   453E 71                  886     .db 113
   453F 13                  887     .db 19
   4540 E0                  888     .db 224
   4541 7F                  889     .db 127
   4542 0C                  890 AHARMLESSGRENADE_SUBSONG0_TRACK20: .db 12
   4543 B1                  891     .db 177
   4544 0F                  892     .db 15
   4545 20                  893     .db 32
   4546 8D                  894     .db 141
   4547 8D                  895     .db 141
   4548 8D                  896     .db 141
   4549 8D                  897     .db 141
   454A 8D                  898     .db 141
   454B 8D                  899     .db 141
   454C 8D                  900     .db 141
   454D 8D                  901     .db 141
   454E 8D                  902     .db 141
   454F 8D                  903     .db 141
   4550 8D                  904     .db 141
   4551 8D                  905     .db 141
   4552 8D                  906     .db 141
   4553 8D                  907     .db 141
   4554 CD                  908     .db 205
   4555 7F                  909     .db 127
   4556 0C                  910 AHARMLESSGRENADE_SUBSONG0_TRACK21: .db 12
   4557 B1                  911     .db 177
   4558 07                  912     .db 7
   4559 21                  913     .db 33
   455A 16                  914     .db 22
   455B 88                  915     .db 136
   455C 8E                  916     .db 142
   455D 37                  917     .db 55
   455E 8B                  918     .db 139
   455F 89                  919     .db 137
   4560 81                  920     .db 129
   4561 81                  921     .db 129
   4562 88                  922     .db 136
   4563 8E                  923     .db 142
   4564 36                  924     .db 54
   4565 8B                  925     .db 139
   4566 89                  926     .db 137
   4567 81                  927     .db 129
   4568 81                  928     .db 129
   4569 88                  929     .db 136
   456A 8F                  930     .db 143
   456B C9                  931     .db 201
   456C 7F                  932     .db 127
   456D F1                  933 AHARMLESSGRENADE_SUBSONG0_TRACK22: .db 241
   456E 00                  934     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



   456F 7F                  935     .db 127
   4570 0C                  936 AHARMLESSGRENADE_SUBSONG0_TRACK23: .db 12
   4571 CE                  937     .db 206
   4572 3C                  938     .db 60
   4573 7F                  939     .db 127
   4574 F4                  940     .db 244
   4575 00                  941     .db 0
   4576 50                  942     .db 80
   4577 0C                  943 AHARMLESSGRENADE_SUBSONG0_TRACK24: .db 12
   4578 54                  944     .db 84
   4579 00                  945     .db 0
   457A 54                  946     .db 84
   457B 5E                  947     .db 94
   457C 1C                  948     .db 28
   457D 5F                  949     .db 95
   457E 57                  950     .db 87
   457F 5E                  951     .db 94
   4580 1F                  952     .db 31
   4581 50                  953     .db 80
   4582 50                  954     .db 80
   4583 50                  955     .db 80
   4584 50                  956     .db 80
   4585 50                  957     .db 80
   4586 50                  958     .db 80
   4587 5E                  959     .db 94
   4588 1C                  960     .db 28
   4589 50                  961     .db 80
   458A 5E                  962     .db 94
   458B 1F                  963     .db 31
   458C 50                  964     .db 80
   458D 57                  965     .db 87
   458E 57                  966     .db 87
   458F 57                  967     .db 87
   4590 57                  968     .db 87
   4591 5E                  969     .db 94
   4592 20                  970     .db 32
   4593 5E                  971     .db 94
   4594 21                  972     .db 33
   4595 54                  973     .db 84
   4596 54                  974     .db 84
   4597 54                  975     .db 84
   4598 54                  976     .db 84
   4599 54                  977     .db 84
   459A 5A                  978     .db 90
   459B 5E                  979     .db 94
   459C 19                  980     .db 25
   459D 50                  981     .db 80
   459E 52                  982     .db 82
   459F DE                  983     .db 222
   45A0 16                  984     .db 22
   45A1 7F                  985     .db 127
   45A2 0C                  986 AHARMLESSGRENADE_SUBSONG0_TRACK25: .db 12
   45A3 FE                  987     .db 254
   45A4 48                  988     .db 72
   45A5 0C                  989     .db 12
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



   45A6 7F                  990     .db 127
   45A7 51                  991     .db 81
   45A8 F5                  992     .db 245
   45A9 00                  993     .db 0
   45AA 02                  994     .db 2
   45AB 26                  995     .db 38
   45AC 18                  996 AHARMLESSGRENADE_SUBSONG0_NOTEINDEXES: .db 24
   45AD 30                  997     .db 48
   45AE 17                  998     .db 23
   45AF 24                  999     .db 36
   45B0 1B                 1000     .db 27
   45B1 23                 1001     .db 35
   45B2 28                 1002     .db 40
   45B3 1E                 1003     .db 30
   45B4 33                 1004     .db 51
   45B5 39                 1005     .db 57
   45B6 1A                 1006     .db 26
   45B7 3A                 1007     .db 58
   45B8                    1008 SOUNDEFFECTS_SOUNDEFFECTS:
   45B8 C2 45              1009 _SOUNDEFFECTS_SOUNDEFFECTS:: .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND1
   45BA D4 45              1010     .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND2
   45BC FA 45              1011     .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND3
   45BE 39 46              1012     .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND4
   45C0 4F 46              1013     .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND5
   45C2 00                 1014 SOUNDEFFECTS_SOUNDEFFECTS_SOUND1: .db 0
   45C3 BD                 1015 SOUNDEFFECTS_SOUNDEFFECTS_SOUND1_LOOP: .db 189
   45C4 01                 1016     .db 1
   45C5 5F                 1017     .db 95
   45C6 00                 1018     .db 0
   45C7 BD                 1019     .db 189
   45C8 01                 1020     .db 1
   45C9 63                 1021     .db 99
   45CA 00                 1022     .db 0
   45CB B1                 1023     .db 177
   45CC 01                 1024     .db 1
   45CD 66                 1025     .db 102
   45CE 00                 1026     .db 0
   45CF AD                 1027     .db 173
   45D0 01                 1028     .db 1
   45D1 6A                 1029     .db 106
   45D2 00                 1030     .db 0
   45D3 04                 1031     .db 4
   45D4 01                 1032 SOUNDEFFECTS_SOUNDEFFECTS_SOUND2: .db 1
   45D5 BD                 1033 SOUNDEFFECTS_SOUNDEFFECTS_SOUND2_LOOP: .db 189
   45D6 01                 1034     .db 1
   45D7 2D                 1035     .db 45
   45D8 01                 1036     .db 1
   45D9 BD                 1037     .db 189
   45DA 08                 1038     .db 8
   45DB 3F                 1039     .db 63
   45DC 01                 1040     .db 1
   45DD B9                 1041     .db 185
   45DE 02                 1042     .db 2
   45DF 92                 1043     .db 146
   45E0 01                 1044     .db 1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



   45E1 B5                 1045     .db 181
   45E2 10                 1046     .db 16
   45E3 D5                 1047     .db 213
   45E4 00                 1048     .db 0
   45E5 B1                 1049     .db 177
   45E6 02                 1050     .db 2
   45E7 E1                 1051     .db 225
   45E8 00                 1052     .db 0
   45E9 AD                 1053     .db 173
   45EA 02                 1054     .db 2
   45EB EF                 1055     .db 239
   45EC 00                 1056     .db 0
   45ED A5                 1057     .db 165
   45EE 10                 1058     .db 16
   45EF 66                 1059     .db 102
   45F0 01                 1060     .db 1
   45F1 9D                 1061     .db 157
   45F2 1F                 1062     .db 31
   45F3 77                 1063     .db 119
   45F4 00                 1064     .db 0
   45F5 99                 1065     .db 153
   45F6 07                 1066     .db 7
   45F7 50                 1067     .db 80
   45F8 00                 1068     .db 0
   45F9 04                 1069     .db 4
   45FA 01                 1070 SOUNDEFFECTS_SOUNDEFFECTS_SOUND3: .db 1
   45FB BD                 1071 SOUNDEFFECTS_SOUNDEFFECTS_SOUND3_LOOP: .db 189
   45FC 01                 1072     .db 1
   45FD 77                 1073     .db 119
   45FE 00                 1074     .db 0
   45FF 39                 1075     .db 57
   4600 3C                 1076     .db 60
   4601 00                 1077     .db 0
   4602 B5                 1078     .db 181
   4603 01                 1079     .db 1
   4604 5F                 1080     .db 95
   4605 00                 1081     .db 0
   4606 31                 1082     .db 49
   4607 2F                 1083     .db 47
   4608 00                 1084     .db 0
   4609 B9                 1085     .db 185
   460A 01                 1086     .db 1
   460B 50                 1087     .db 80
   460C 00                 1088     .db 0
   460D 3D                 1089     .db 61
   460E 28                 1090     .db 40
   460F 00                 1091     .db 0
   4610 03                 1092     .db 3
   4611 0F                 1093     .db 15
   4612 00                 1094     .db 0
   4613 DE                 1095     .db 222
   4614 01                 1096     .db 1
   4615 3D                 1097     .db 61
   4616 EF                 1098     .db 239
   4617 00                 1099     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



   4618 03                 1100     .db 3
   4619 0F                 1101     .db 15
   461A 00                 1102     .db 0
   461B DE                 1103     .db 222
   461C 01                 1104     .db 1
   461D 3D                 1105     .db 61
   461E EF                 1106     .db 239
   461F 00                 1107     .db 0
   4620 03                 1108     .db 3
   4621 0F                 1109     .db 15
   4622 00                 1110     .db 0
   4623 DE                 1111     .db 222
   4624 01                 1112     .db 1
   4625 3D                 1113     .db 61
   4626 EF                 1114     .db 239
   4627 00                 1115     .db 0
   4628 03                 1116     .db 3
   4629 1E                 1117     .db 30
   462A 00                 1118     .db 0
   462B BC                 1119     .db 188
   462C 03                 1120     .db 3
   462D 3D                 1121     .db 61
   462E EF                 1122     .db 239
   462F 00                 1123     .db 0
   4630 03                 1124     .db 3
   4631 1E                 1125     .db 30
   4632 00                 1126     .db 0
   4633 BC                 1127     .db 188
   4634 03                 1128     .db 3
   4635 3D                 1129     .db 61
   4636 EF                 1130     .db 239
   4637 00                 1131     .db 0
   4638 04                 1132     .db 4
   4639 01                 1133 SOUNDEFFECTS_SOUNDEFFECTS_SOUND4: .db 1
   463A BD                 1134 SOUNDEFFECTS_SOUNDEFFECTS_SOUND4_LOOP: .db 189
   463B 01                 1135     .db 1
   463C 77                 1136     .db 119
   463D 00                 1137     .db 0
   463E 3D                 1138     .db 61
   463F 38                 1139     .db 56
   4640 00                 1140     .db 0
   4641 BD                 1141     .db 189
   4642 01                 1142     .db 1
   4643 6A                 1143     .db 106
   4644 00                 1144     .db 0
   4645 3D                 1145     .db 61
   4646 35                 1146     .db 53
   4647 00                 1147     .db 0
   4648 3D                 1148     .db 61
   4649 64                 1149     .db 100
   464A 00                 1150     .db 0
   464B 3D                 1151     .db 61
   464C 32                 1152     .db 50
   464D 00                 1153     .db 0
   464E 04                 1154     .db 4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



   464F 01                 1155 SOUNDEFFECTS_SOUNDEFFECTS_SOUND5: .db 1
   4650 03                 1156 SOUNDEFFECTS_SOUNDEFFECTS_SOUND5_LOOP: .db 3
   4651 02                 1157     .db 2
   4652 00                 1158     .db 0
   4653 1B                 1159     .db 27
   4654 00                 1160     .db 0
   4655 03                 1161     .db 3
   4656 03                 1162     .db 3
   4657 00                 1163     .db 0
   4658 2F                 1164     .db 47
   4659 00                 1165     .db 0
   465A 03                 1166     .db 3
   465B 02                 1167     .db 2
   465C 00                 1168     .db 0
   465D 1E                 1169     .db 30
   465E 00                 1170     .db 0
   465F 03                 1171     .db 3
   4660 05                 1172     .db 5
   4661 00                 1173     .db 0
   4662 4B                 1174     .db 75
   4663 00                 1175     .db 0
   4664 03                 1176     .db 3
   4665 03                 1177     .db 3
   4666 00                 1178     .db 0
   4667 2F                 1179     .db 47
   4668 00                 1180     .db 0
   4669 03                 1181     .db 3
   466A 07                 1182     .db 7
   466B 00                 1183     .db 0
   466C 77                 1184     .db 119
   466D 00                 1185     .db 0
   466E 03                 1186     .db 3
   466F 05                 1187     .db 5
   4670 00                 1188     .db 0
   4671 4B                 1189     .db 75
   4672 00                 1190     .db 0
   4673 03                 1191     .db 3
   4674 0C                 1192     .db 12
   4675 00                 1193     .db 0
   4676 BE                 1194     .db 190
   4677 00                 1195     .db 0
   4678 03                 1196     .db 3
   4679 07                 1197     .db 7
   467A 00                 1198     .db 0
   467B 77                 1199     .db 119
   467C 00                 1200     .db 0
   467D 03                 1201     .db 3
   467E 13                 1202     .db 19
   467F 00                 1203     .db 0
   4680 2D                 1204     .db 45
   4681 01                 1205     .db 1
   4682 03                 1206     .db 3
   4683 0C                 1207     .db 12
   4684 00                 1208     .db 0
   4685 BE                 1209     .db 190
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



   4686 00                 1210     .db 0
   4687 03                 1211     .db 3
   4688 22                 1212     .db 34
   4689 00                 1213     .db 0
   468A 18                 1214     .db 24
   468B 02                 1215     .db 2
   468C 03                 1216     .db 3
   468D 32                 1217     .db 50
   468E 00                 1218     .db 0
   468F 24                 1219     .db 36
   4690 03                 1220     .db 3
   4691 04                 1221     .db 4
   4692 C3 A0 47      [10] 1222 PLY_AKM_START: jp PLY_AKM_INIT
   4695 C3 34 48      [10] 1223     jp PLY_AKM_PLAY
   4698 C3 1E 48      [10] 1224     jp PLY_AKM_INITVARS_END
   469B                    1225 _PLY_AKM_INITSOUNDEFFECTS::
   469B 22 A1 46      [16] 1226 PLY_AKM_INITSOUNDEFFECTS: ld (PLY_AKM_PTSOUNDEFFECTTABLE+1),hl
   469E C9            [10] 1227     ret 
   469F                    1228 _PLY_AKM_PLAYSOUNDEFFECT::
   469F 3D            [ 4] 1229 PLY_AKM_PLAYSOUNDEFFECT: dec a
   46A0 21 00 00      [10] 1230 PLY_AKM_PTSOUNDEFFECTTABLE: ld hl,#0
   46A3 5F            [ 4] 1231     ld e,a
   46A4 16 00         [ 7] 1232     ld d,#0
   46A6 19            [11] 1233     add hl,de
   46A7 19            [11] 1234     add hl,de
   46A8 5E            [ 7] 1235     ld e,(hl)
   46A9 23            [ 6] 1236     inc hl
   46AA 56            [ 7] 1237     ld d,(hl)
   46AB 1A            [ 7] 1238     ld a,(de)
   46AC 13            [ 6] 1239     inc de
   46AD 08            [ 4] 1240     ex af,af'
   46AE 78            [ 4] 1241     ld a,b
   46AF 21 88 47      [10] 1242     ld hl,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
   46B2 06 00         [ 7] 1243     ld b,#0
   46B4 CB 21         [ 8] 1244     sla c
   46B6 CB 21         [ 8] 1245     sla c
   46B8 CB 21         [ 8] 1246     sla c
   46BA 09            [11] 1247     add hl,bc
   46BB 73            [ 7] 1248     ld (hl),e
   46BC 23            [ 6] 1249     inc hl
   46BD 72            [ 7] 1250     ld (hl),d
   46BE 23            [ 6] 1251     inc hl
   46BF 77            [ 7] 1252     ld (hl),a
   46C0 23            [ 6] 1253     inc hl
   46C1 36 00         [10] 1254     ld (hl),#0
   46C3 23            [ 6] 1255     inc hl
   46C4 08            [ 4] 1256     ex af,af'
   46C5 77            [ 7] 1257     ld (hl),a
   46C6 C9            [10] 1258     ret 
   46C7                    1259 _PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL::
   46C7 87            [ 4] 1260 PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL: add a,a
   46C8 87            [ 4] 1261     add a,a
   46C9 87            [ 4] 1262     add a,a
   46CA 5F            [ 4] 1263     ld e,a
   46CB 16 00         [ 7] 1264     ld d,#0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 25.
Hexadecimal [16-Bits]



   46CD 21 88 47      [10] 1265     ld hl,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
   46D0 19            [11] 1266     add hl,de
   46D1 72            [ 7] 1267     ld (hl),d
   46D2 23            [ 6] 1268     inc hl
   46D3 72            [ 7] 1269     ld (hl),d
   46D4 C9            [10] 1270     ret 
   46D5 17            [ 4] 1271 PLY_AKM_PLAYSOUNDEFFECTSSTREAM: rla 
   46D6 17            [ 4] 1272     rla 
   46D7 DD 21 88 47   [14] 1273     ld ix,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
   46DB FD 21 4B 4D   [14] 1274     ld iy,#PLY_AKM_TRACK3_DATA_END
   46DF 4F            [ 4] 1275     ld c,a
   46E0 CD 02 47      [17] 1276     call PLY_AKM_PSES_PLAY
   46E3 DD 21 90 47   [14] 1277     ld ix,#PLY_AKM_CHANNEL2_SOUNDEFFECTDATA
   46E7 FD 21 57 4D   [14] 1278     ld iy,#PLY_AKM_TRACK2_REGISTERS
   46EB CB 39         [ 8] 1279     srl c
   46ED CD 02 47      [17] 1280     call PLY_AKM_PSES_PLAY
   46F0 DD 21 98 47   [14] 1281     ld ix,#PLY_AKM_CHANNEL3_SOUNDEFFECTDATA
   46F4 FD 21 63 4D   [14] 1282     ld iy,#PLY_AKM_TRACK3_REGISTERS
   46F8 CB 19         [ 8] 1283     rr c
   46FA CD 02 47      [17] 1284     call PLY_AKM_PSES_PLAY
   46FD 79            [ 4] 1285     ld a,c
   46FE 32 74 4D      [13] 1286     ld (PLY_AKM_MIXERREGISTER),a
   4701 C9            [10] 1287     ret 
   4702 DD 6E 00      [19] 1288 PLY_AKM_PSES_PLAY: ld l,+0(ix)
   4705 DD 66 01      [19] 1289     ld h,+1(ix)
   4708 7D            [ 4] 1290     ld a,l
   4709 B4            [ 4] 1291     or h
   470A C8            [11] 1292     ret z
   470B 7E            [ 7] 1293 PLY_AKM_PSES_READFIRSTBYTE: ld a,(hl)
   470C 23            [ 6] 1294     inc hl
   470D 47            [ 4] 1295     ld b,a
   470E 1F            [ 4] 1296     rra 
   470F 38 21         [12] 1297     jr c,PLY_AKM_PSES_SOFTWAREORSOFTWAREANDHARDWARE
   4711 1F            [ 4] 1298     rra 
   4712 1F            [ 4] 1299     rra 
   4713 AF            [ 4] 1300 PLY_AKM_PSES_S_ENDORLOOP: xor a
   4714 DD 77 00      [19] 1301     ld +0(ix),a
   4717 DD 77 01      [19] 1302     ld +1(ix),a
   471A C9            [10] 1303     ret 
   471B DD 7E 03      [19] 1304 PLY_AKM_PSES_SAVEPOINTERANDEXIT: ld a,+3(ix)
   471E DD BE 04      [19] 1305     cp +4(ix)
   4721 38 0B         [12] 1306     jr c,PLY_AKM_PSES_NOTREACHED
   4723 DD 36 03 00   [19] 1307     ld +3(ix),#0
   4727 DD                 1308     .db 221
   4728 75                 1309     .db 117
   4729 00                 1310     .db +0
   472A DD                 1311     .db 221
   472B 74                 1312     .db 116
   472C 01                 1313     .db +1
   472D C9            [10] 1314     ret 
   472E DD 34 03      [23] 1315 PLY_AKM_PSES_NOTREACHED: inc +3(ix)
   4731 C9            [10] 1316     ret 
   4732 1F            [ 4] 1317 PLY_AKM_PSES_SOFTWAREORSOFTWAREANDHARDWARE: rra 
   4733 38 0F         [12] 1318     jr c,PLY_AKM_PSES_SOFTWAREANDHARDWARE
   4735 CD 7C 47      [17] 1319     call PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
Hexadecimal [16-Bits]



   4738 CB 10         [ 8] 1320     rl b
   473A DC 5E 47      [17] 1321     call c,PLY_AKM_PSES_READNOISEANDOPENNOISECHANNEL
   473D CB 91         [ 8] 1322     res 2,c
   473F CD 71 47      [17] 1323     call PLY_AKM_PSES_READSOFTWAREPERIOD
   4742 18 D7         [12] 1324     jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
   4744 CD 4E 47      [17] 1325 PLY_AKM_PSES_SOFTWAREANDHARDWARE: call PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE
   4747 CD 71 47      [17] 1326     call PLY_AKM_PSES_READSOFTWAREPERIOD
   474A CB 91         [ 8] 1327     res 2,c
   474C 18 CD         [12] 1328     jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
   474E 1F            [ 4] 1329 PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE: rra 
   474F E6 07         [ 7] 1330     and #7
   4751 C6 08         [ 7] 1331     add a,#8
   4753 32 29 49      [13] 1332     ld (PLY_AKM_SENDPSGREGISTERR13+1),a
   4756 CD 66 47      [17] 1333     call PLY_AKM_PSES_READHARDWAREPERIOD
   4759 3E 10         [ 7] 1334     ld a,#16
   475B C3 7E 47      [10] 1335     jp PLY_AKM_PSES_MANAGEVOLUMEFROMA_HARD
   475E 7E            [ 7] 1336 PLY_AKM_PSES_READNOISEANDOPENNOISECHANNEL: ld a,(hl)
   475F 32 70 4D      [13] 1337     ld (PLY_AKM_NOISEREGISTER),a
   4762 23            [ 6] 1338     inc hl
   4763 CB A9         [ 8] 1339     res 5,c
   4765 C9            [10] 1340     ret 
   4766 7E            [ 7] 1341 PLY_AKM_PSES_READHARDWAREPERIOD: ld a,(hl)
   4767 32 78 4D      [13] 1342     ld (PLY_AKM_REG11),a
   476A 23            [ 6] 1343     inc hl
   476B 7E            [ 7] 1344     ld a,(hl)
   476C 32 7C 4D      [13] 1345     ld (PLY_AKM_REG12),a
   476F 23            [ 6] 1346     inc hl
   4770 C9            [10] 1347     ret 
   4771 7E            [ 7] 1348 PLY_AKM_PSES_READSOFTWAREPERIOD: ld a,(hl)
   4772 FD 77 05      [19] 1349     ld +5(iy),a
   4775 23            [ 6] 1350     inc hl
   4776 7E            [ 7] 1351     ld a,(hl)
   4777 FD 77 09      [19] 1352     ld +9(iy),a
   477A 23            [ 6] 1353     inc hl
   477B C9            [10] 1354     ret 
   477C E6 0F         [ 7] 1355 PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS: and #15
   477E DD 96 02      [19] 1356 PLY_AKM_PSES_MANAGEVOLUMEFROMA_HARD: sub +2(ix)
   4781 30 01         [12] 1357     jr nc,PLY_AKM_PSES_MVFA_NOOVERFLOW
   4783 AF            [ 4] 1358     xor a
   4784 FD 77 01      [19] 1359 PLY_AKM_PSES_MVFA_NOOVERFLOW: ld +1(iy),a
   4787 C9            [10] 1360     ret 
   4788 00 00              1361 PLY_AKM_CHANNEL1_SOUNDEFFECTDATA: .dw 0
   478A 00                 1362 PLY_AKM_CHANNEL1_SOUNDEFFECTINVERTEDVOLUME: .db 0
   478B 00                 1363 PLY_AKM_CHANNEL1_SOUNDEFFECTCURRENTSTEP: .db 0
   478C 00                 1364 PLY_AKM_CHANNEL1_SOUNDEFFECTSPEED: .db 0
   478D 00                 1365     .db 0
   478E 00                 1366     .db 0
   478F 00                 1367     .db 0
   4790 00                 1368 PLY_AKM_CHANNEL2_SOUNDEFFECTDATA: .db 0
   4791 00                 1369     .db 0
   4792 00                 1370     .db 0
   4793 00                 1371     .db 0
   4794 00                 1372     .db 0
   4795 00                 1373     .db 0
   4796 00                 1374     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 27.
Hexadecimal [16-Bits]



   4797 00                 1375     .db 0
   4798 00                 1376 PLY_AKM_CHANNEL3_SOUNDEFFECTDATA: .db 0
   4799 00                 1377     .db 0
   479A 00                 1378     .db 0
   479B 00                 1379     .db 0
   479C 00                 1380     .db 0
   479D 00                 1381     .db 0
   479E 00                 1382     .db 0
   479F 00                 1383     .db 0
   47A0                    1384 _PLY_AKM_INIT::
   47A0 11 B4 48      [10] 1385 PLY_AKM_INIT: ld de,#PLY_AKM_READLINE+1
   47A3 ED A0         [16] 1386     ldi
   47A5 ED A0         [16] 1387     ldi
   47A7 11 8A 4C      [10] 1388     ld de,#PLY_AKM_PTARPEGGIOS+1
   47AA ED A0         [16] 1389     ldi
   47AC ED A0         [16] 1390     ldi
   47AE 11 BC 4C      [10] 1391     ld de,#PLY_AKM_PTPITCHES+1
   47B1 ED A0         [16] 1392     ldi
   47B3 ED A0         [16] 1393     ldi
   47B5 87            [ 4] 1394     add a,a
   47B6 5F            [ 4] 1395     ld e,a
   47B7 16 00         [ 7] 1396     ld d,#0
   47B9 19            [11] 1397     add hl,de
   47BA 7E            [ 7] 1398     ld a,(hl)
   47BB 23            [ 6] 1399     inc hl
   47BC 66            [ 7] 1400     ld h,(hl)
   47BD 6F            [ 4] 1401     ld l,a
   47BE DD 21 04 48   [14] 1402     ld ix,#PLY_AKM_INITVARS_START
   47C2 3E 0D         [ 7] 1403     ld a,#13
   47C4 DD 5E 00      [19] 1404 PLY_AKM_INITVARS_LOOP: ld e,+0(ix)
   47C7 DD 56 01      [19] 1405     ld d,+1(ix)
   47CA DD 23         [10] 1406     inc ix
   47CC DD 23         [10] 1407     inc ix
   47CE ED A0         [16] 1408     ldi
   47D0 3D            [ 4] 1409     dec a
   47D1 20 F1         [12] 1410     jr nz,PLY_AKM_INITVARS_LOOP
   47D3 32 41 48      [13] 1411     ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
   47D6 EB            [ 4] 1412     ex de,hl
   47D7 21 50 48      [10] 1413     ld hl,#PLY_AKM_PTLINKER+1
   47DA 73            [ 7] 1414     ld (hl),e
   47DB 23            [ 6] 1415     inc hl
   47DC 72            [ 7] 1416     ld (hl),d
   47DD 21 DF 4C      [10] 1417     ld hl,#PLY_AKM_TRACK1_DATA
   47E0 11 E0 4C      [10] 1418     ld de,#PLY_AKM_TRACK1_TRANSPOSITION
   47E3 01 23 00      [10] 1419     ld bc,#35
   47E6 77            [ 7] 1420     ld (hl),a
   47E7 ED B0         [21] 1421     ldir
   47E9 3A 3C 48      [13] 1422     ld a,(PLY_AKM_SPEED+1)
   47EC 3D            [ 4] 1423     dec a
   47ED 32 39 48      [13] 1424     ld (PLY_AKM_TICKCOUNTER+1),a
   47F0 2A B4 48      [16] 1425     ld hl,(PLY_AKM_READLINE+1)
   47F3 5E            [ 7] 1426     ld e,(hl)
   47F4 23            [ 6] 1427     inc hl
   47F5 56            [ 7] 1428     ld d,(hl)
   47F6 13            [ 6] 1429     inc de
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 28.
Hexadecimal [16-Bits]



   47F7 ED 53 E9 4C   [20] 1430     ld (PLY_AKM_TRACK1_PTINSTRUMENT),de
   47FB ED 53 0D 4D   [20] 1431     ld (PLY_AKM_TRACK2_PTINSTRUMENT),de
   47FF ED 53 31 4D   [20] 1432     ld (PLY_AKM_TRACK3_PTINSTRUMENT),de
   4803 C9            [10] 1433     ret 
   4804 B7 48              1434 PLY_AKM_INITVARS_START: .dw PLY_AKM_NOTEINDEXTABLE+1
   4806 B8 48              1435     .dw PLY_AKM_NOTEINDEXTABLE+2
   4808 4C 48              1436     .dw PLY_AKM_LINKER+1
   480A 4D 48              1437     .dw PLY_AKM_LINKER+2
   480C 3C 48              1438     .dw PLY_AKM_SPEED+1
   480E F2 49              1439     .dw PLY_AKM_RT_PRIMARYINSTRUMENT+1
   4810 EE 49              1440     .dw PLY_AKM_RT_SECONDARYINSTRUMENT+1
   4812 3C 4A              1441     .dw PLY_AKM_RT_PRIMARYWAIT+1
   4814 40 4A              1442     .dw PLY_AKM_RT_SECONDARYWAIT+1
   4816 5D 48              1443     .dw PLY_AKM_DEFAULTSTARTNOTEINTRACKS+1
   4818 68 48              1444     .dw PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS+1
   481A 73 48              1445     .dw PLY_AKM_DEFAULTSTARTWAITINTRACKS+1
   481C 9E 49              1446     .dw PLY_AKM_FLAGNOTEANDEFFECTINCELL+1
   481E                    1447 PLY_AKM_INITVARS_END:
   481E                    1448 _PLY_AKM_STOP::
   481E ED 73 38 49   [20] 1449 PLY_AKM_STOP: ld (PLY_AKM_SENDPSGREGISTEREND+1),sp
   4822 AF            [ 4] 1450     xor a
   4823 32 4C 4D      [13] 1451     ld (PLY_AKM_TRACK1_VOLUME),a
   4826 32 58 4D      [13] 1452     ld (PLY_AKM_TRACK2_VOLUME),a
   4829 32 64 4D      [13] 1453     ld (PLY_AKM_TRACK3_VOLUME),a
   482C 3E 3F         [ 7] 1454     ld a,#63
   482E 32 74 4D      [13] 1455     ld (PLY_AKM_MIXERREGISTER),a
   4831 C3 0B 49      [10] 1456     jp PLY_AKM_SENDPSG
   4834                    1457 _PLY_AKM_PLAY::
   4834 ED 73 38 49   [20] 1458 PLY_AKM_PLAY: ld (PLY_AKM_SENDPSGREGISTEREND+1),sp
   4838 3E 00         [ 7] 1459 PLY_AKM_TICKCOUNTER: ld a,#0
   483A 3C            [ 4] 1460     inc a
   483B FE 01         [ 7] 1461 PLY_AKM_SPEED: cp #1
   483D C2 D0 48      [10] 1462     jp nz,PLY_AKM_TICKCOUNTERMANAGED
   4840 3E 00         [ 7] 1463 PLY_AKM_PATTERNREMAININGHEIGHT: ld a,#0
   4842 D6 01         [ 7] 1464     sub #1
   4844 38 05         [12] 1465     jr c,PLY_AKM_LINKER
   4846 32 41 48      [13] 1466     ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
   4849 18 68         [12] 1467     jr PLY_AKM_READLINE
   484B                    1468 PLY_AKM_LINKER:
   484B 11 00 00      [10] 1469 PLY_AKM_TRACKINDEX: ld de,#0
   484E D9            [ 4] 1470     exx
   484F 21 00 00      [10] 1471 PLY_AKM_PTLINKER: ld hl,#0
   4852 AF            [ 4] 1472 PLY_AKM_LINKERPOSTPT: xor a
   4853 32 DF 4C      [13] 1473     ld (PLY_AKM_TRACK1_DATA),a
   4856 32 03 4D      [13] 1474     ld (PLY_AKM_TRACK1_DATA_END),a
   4859 32 27 4D      [13] 1475     ld (PLY_AKM_TRACK2_DATA_END),a
   485C 3E 00         [ 7] 1476 PLY_AKM_DEFAULTSTARTNOTEINTRACKS: ld a,#0
   485E 32 E6 4C      [13] 1477     ld (PLY_AKM_TRACK1_ESCAPENOTE),a
   4861 32 0A 4D      [13] 1478     ld (PLY_AKM_TRACK2_ESCAPENOTE),a
   4864 32 2E 4D      [13] 1479     ld (PLY_AKM_TRACK3_ESCAPENOTE),a
   4867 3E 00         [ 7] 1480 PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS: ld a,#0
   4869 32 E7 4C      [13] 1481     ld (PLY_AKM_TRACK1_ESCAPEINSTRUMENT),a
   486C 32 0B 4D      [13] 1482     ld (PLY_AKM_TRACK2_ESCAPEINSTRUMENT),a
   486F 32 2F 4D      [13] 1483     ld (PLY_AKM_TRACK3_ESCAPEINSTRUMENT),a
   4872 3E 00         [ 7] 1484 PLY_AKM_DEFAULTSTARTWAITINTRACKS: ld a,#0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 29.
Hexadecimal [16-Bits]



   4874 32 E8 4C      [13] 1485     ld (PLY_AKM_TRACK1_ESCAPEWAIT),a
   4877 32 0C 4D      [13] 1486     ld (PLY_AKM_TRACK2_ESCAPEWAIT),a
   487A 32 30 4D      [13] 1487     ld (PLY_AKM_TRACK3_ESCAPEWAIT),a
   487D 46            [ 7] 1488     ld b,(hl)
   487E 23            [ 6] 1489     inc hl
   487F CB 18         [ 8] 1490     rr b
   4881 30 08         [12] 1491     jr nc,PLY_AKM_LINKERAFTERSPEEDCHANGE
   4883 7E            [ 7] 1492     ld a,(hl)
   4884 23            [ 6] 1493     inc hl
   4885 7E            [ 7] 1494     ld a,(hl)
   4886 23            [ 6] 1495     inc hl
   4887 66            [ 7] 1496     ld h,(hl)
   4888 6F            [ 4] 1497     ld l,a
   4889 18 C7         [12] 1498     jr PLY_AKM_LINKERPOSTPT
   488B CB 18         [ 8] 1499 PLY_AKM_LINKERAFTERSPEEDCHANGE: rr b
   488D 30 07         [12] 1500     jr nc,PLY_AKM_LINKERUSEPREVIOUSHEIGHT
   488F 7E            [ 7] 1501     ld a,(hl)
   4890 23            [ 6] 1502     inc hl
   4891 32 97 48      [13] 1503     ld (PLY_AKM_LINKERUSEPREVIOUSHEIGHT+1),a
   4894 18 02         [12] 1504     jr PLY_AKM_LINKERSETREMAININGHEIGHT
   4896                    1505 PLY_AKM_LINKERUSEPREVIOUSHEIGHT:
   4896 3E 00         [ 7] 1506 PLY_AKM_LINKERPREVIOUSREMAININGHEIGHT: ld a,#0
   4898 32 41 48      [13] 1507 PLY_AKM_LINKERSETREMAININGHEIGHT: ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
   489B DD 21 DF 4C   [14] 1508     ld ix,#PLY_AKM_TRACK1_DATA
   489F CD 3B 49      [17] 1509     call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
   48A2 DD 21 03 4D   [14] 1510     ld ix,#PLY_AKM_TRACK1_DATA_END
   48A6 CD 3B 49      [17] 1511     call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
   48A9 DD 21 27 4D   [14] 1512     ld ix,#PLY_AKM_TRACK2_DATA_END
   48AD CD 3B 49      [17] 1513     call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
   48B0 22 50 48      [16] 1514     ld (PLY_AKM_PTLINKER+1),hl
   48B3                    1515 PLY_AKM_READLINE:
   48B3 11 00 00      [10] 1516 PLY_AKM_PTINSTRUMENTS: ld de,#0
   48B6 01 00 00      [10] 1517 PLY_AKM_NOTEINDEXTABLE: ld bc,#0
   48B9 D9            [ 4] 1518     exx
   48BA DD 21 DF 4C   [14] 1519     ld ix,#PLY_AKM_TRACK1_DATA
   48BE CD 87 49      [17] 1520     call PLY_AKM_READTRACK
   48C1 DD 21 03 4D   [14] 1521     ld ix,#PLY_AKM_TRACK1_DATA_END
   48C5 CD 87 49      [17] 1522     call PLY_AKM_READTRACK
   48C8 DD 21 27 4D   [14] 1523     ld ix,#PLY_AKM_TRACK2_DATA_END
   48CC CD 87 49      [17] 1524     call PLY_AKM_READTRACK
   48CF AF            [ 4] 1525     xor a
   48D0 32 39 48      [13] 1526 PLY_AKM_TICKCOUNTERMANAGED: ld (PLY_AKM_TICKCOUNTER+1),a
   48D3 11 83 4D      [10] 1527     ld de,#PLY_AKM_PERIODTABLE
   48D6 D9            [ 4] 1528     exx
   48D7 0E E0         [ 7] 1529     ld c,#224
   48D9 DD 21 DF 4C   [14] 1530     ld ix,#PLY_AKM_TRACK1_DATA
   48DD CD 87 4A      [17] 1531     call PLY_AKM_MANAGEEFFECTS
   48E0 FD 21 4B 4D   [14] 1532     ld iy,#PLY_AKM_TRACK3_DATA_END
   48E4 CD 26 4B      [17] 1533     call PLY_AKM_PLAYSOUNDSTREAM
   48E7 CB 39         [ 8] 1534     srl c
   48E9 DD 21 03 4D   [14] 1535     ld ix,#PLY_AKM_TRACK1_DATA_END
   48ED CD 87 4A      [17] 1536     call PLY_AKM_MANAGEEFFECTS
   48F0 FD 21 57 4D   [14] 1537     ld iy,#PLY_AKM_TRACK2_REGISTERS
   48F4 CD 26 4B      [17] 1538     call PLY_AKM_PLAYSOUNDSTREAM
   48F7 CB 19         [ 8] 1539     rr c
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 30.
Hexadecimal [16-Bits]



   48F9 DD 21 27 4D   [14] 1540     ld ix,#PLY_AKM_TRACK2_DATA_END
   48FD CD 87 4A      [17] 1541     call PLY_AKM_MANAGEEFFECTS
   4900 FD 21 63 4D   [14] 1542     ld iy,#PLY_AKM_TRACK3_REGISTERS
   4904 CD 26 4B      [17] 1543     call PLY_AKM_PLAYSOUNDSTREAM
   4907 79            [ 4] 1544     ld a,c
   4908 CD D5 46      [17] 1545     call PLY_AKM_PLAYSOUNDEFFECTSSTREAM
   490B 31 4B 4D      [10] 1546 PLY_AKM_SENDPSG: ld sp,#PLY_AKM_TRACK3_DATA_END
   490E 01 80 F6      [10] 1547     ld bc,#63104
   4911 3E C0         [ 7] 1548     ld a,#192
   4913 11 F6 F4      [10] 1549     ld de,#62710
   4916 ED 79         [12] 1550     out (c),a
   4918 E1            [10] 1551 PLY_AKM_SENDPSGREGISTER: pop hl
   4919 42            [ 4] 1552 PLY_AKM_SENDPSGREGISTERAFTERPOP: ld b,d
   491A ED 69         [12] 1553     out (c),l
   491C 43            [ 4] 1554     ld b,e
   491D ED                 1555     .db 237
   491E 71                 1556     .db 113
   491F 42            [ 4] 1557     ld b,d
   4920 ED 61         [12] 1558     out (c),h
   4922 43            [ 4] 1559     ld b,e
   4923 ED 49         [12] 1560     out (c),c
   4925 ED 79         [12] 1561     out (c),a
   4927 C9            [10] 1562     ret 
   4928                    1563 PLY_AKM_SENDPSGREGISTERR13:
   4928 3E 00         [ 7] 1564 PLY_AKM_SETREG13: ld a,#0
   492A FE 00         [ 7] 1565 PLY_AKM_SETREG13OLD: cp #0
   492C 28 09         [12] 1566     jr z,PLY_AKM_SENDPSGREGISTEREND
   492E 32 2B 49      [13] 1567     ld (PLY_AKM_SETREG13OLD+1),a
   4931 67            [ 4] 1568     ld h,a
   4932 2E 0D         [ 7] 1569     ld l,#13
   4934 3E C0         [ 7] 1570     ld a,#192
   4936 C9            [10] 1571     ret 
   4937                    1572 PLY_AKM_SENDPSGREGISTEREND:
   4937 31 00 00      [10] 1573 PLY_AKM_SAVESP: ld sp,#0
   493A C9            [10] 1574     ret 
   493B CB 18         [ 8] 1575 PLY_AKM_CHECKTRANSPOSITIONANDTRACK: rr b
   493D 30 05         [12] 1576     jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_AFTERTRANSPOSITION
   493F 7E            [ 7] 1577     ld a,(hl)
   4940 DD 77 01      [19] 1578     ld +1(ix),a
   4943 23            [ 6] 1579     inc hl
   4944 CB 18         [ 8] 1580 PLY_AKM_CHECKTRANSPOSITIONANDTRACK_AFTERTRANSPOSITION: rr b
   4946 30 32         [12] 1581     jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_NONEWTRACK
   4948 7E            [ 7] 1582     ld a,(hl)
   4949 23            [ 6] 1583     inc hl
   494A CB 27         [ 8] 1584     sla a
   494C 30 16         [12] 1585     jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_TRACKOFFSET
   494E D9            [ 4] 1586     exx
   494F 6F            [ 4] 1587     ld l,a
   4950 26 00         [ 7] 1588     ld h,#0
   4952 19            [11] 1589     add hl,de
   4953 7E            [ 7] 1590     ld a,(hl)
   4954 DD 77 02      [19] 1591     ld +2(ix),a
   4957 DD 77 04      [19] 1592     ld +4(ix),a
   495A 23            [ 6] 1593     inc hl
   495B 7E            [ 7] 1594     ld a,(hl)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 31.
Hexadecimal [16-Bits]



   495C DD 77 03      [19] 1595     ld +3(ix),a
   495F DD 77 05      [19] 1596     ld +5(ix),a
   4962 D9            [ 4] 1597     exx
   4963 C9            [10] 1598     ret 
   4964 1F            [ 4] 1599 PLY_AKM_CHECKTRANSPOSITIONANDTRACK_TRACKOFFSET: rra 
   4965 57            [ 4] 1600     ld d,a
   4966 5E            [ 7] 1601     ld e,(hl)
   4967 23            [ 6] 1602     inc hl
   4968 4D            [ 4] 1603     ld c,l
   4969 7C            [ 4] 1604     ld a,h
   496A 19            [11] 1605     add hl,de
   496B DD                 1606     .db 221
   496C 75                 1607     .db 117
   496D 02                 1608     .db +2
   496E DD                 1609     .db 221
   496F 74                 1610     .db 116
   4970 03                 1611     .db +3
   4971 DD                 1612     .db 221
   4972 75                 1613     .db 117
   4973 04                 1614     .db +4
   4974 DD                 1615     .db 221
   4975 74                 1616     .db 116
   4976 05                 1617     .db +5
   4977 69            [ 4] 1618     ld l,c
   4978 67            [ 4] 1619     ld h,a
   4979 C9            [10] 1620     ret 
   497A DD 7E 02      [19] 1621 PLY_AKM_CHECKTRANSPOSITIONANDTRACK_NONEWTRACK: ld a,+2(ix)
   497D DD 77 04      [19] 1622     ld +4(ix),a
   4980 DD 7E 03      [19] 1623     ld a,+3(ix)
   4983 DD 77 05      [19] 1624     ld +5(ix),a
   4986 C9            [10] 1625     ret 
   4987 DD 7E 00      [19] 1626 PLY_AKM_READTRACK: ld a,+0(ix)
   498A D6 01         [ 7] 1627     sub #1
   498C 38 04         [12] 1628     jr c,PLY_AKM_RT_NOEMPTYCELL
   498E DD 77 00      [19] 1629     ld +0(ix),a
   4991 C9            [10] 1630     ret 
   4992 DD 6E 04      [19] 1631 PLY_AKM_RT_NOEMPTYCELL: ld l,+4(ix)
   4995 DD 66 05      [19] 1632     ld h,+5(ix)
   4998 46            [ 7] 1633 PLY_AKM_RT_GETDATABYTE: ld b,(hl)
   4999 23            [ 6] 1634     inc hl
   499A 78            [ 4] 1635     ld a,b
   499B E6 0F         [ 7] 1636     and #15
   499D FE 0C         [ 7] 1637 PLY_AKM_FLAGNOTEANDEFFECTINCELL: cp #12
   499F 38 26         [12] 1638     jr c,PLY_AKM_RT_NOTEREFERENCE
   49A1 D6 0C         [ 7] 1639     sub #12
   49A3 28 12         [12] 1640     jr z,PLY_AKM_RT_NOTEANDEFFECTS
   49A5 3D            [ 4] 1641     dec a
   49A6 28 15         [12] 1642     jr z,PLY_AKM_RT_NONOTEMAYBEEFFECTS
   49A8 3D            [ 4] 1643     dec a
   49A9 28 05         [12] 1644     jr z,PLY_AKM_RT_NEWESCAPENOTE
   49AB DD 7E 07      [19] 1645     ld a,+7(ix)
   49AE 18 1E         [12] 1646     jr PLY_AKM_RT_AFTERNOTEREAD
   49B0 7E            [ 7] 1647 PLY_AKM_RT_NEWESCAPENOTE: ld a,(hl)
   49B1 DD 77 07      [19] 1648     ld +7(ix),a
   49B4 23            [ 6] 1649     inc hl
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 32.
Hexadecimal [16-Bits]



   49B5 18 17         [12] 1650     jr PLY_AKM_RT_AFTERNOTEREAD
   49B7 3D            [ 4] 1651 PLY_AKM_RT_NOTEANDEFFECTS: dec a
   49B8 32 45 4A      [13] 1652     ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
   49BB 18 DB         [12] 1653     jr PLY_AKM_RT_GETDATABYTE
   49BD CB 60         [ 8] 1654 PLY_AKM_RT_NONOTEMAYBEEFFECTS: bit 4,b
   49BF 28 61         [12] 1655     jr z,PLY_AKM_RT_READWAITFLAGS
   49C1 78            [ 4] 1656     ld a,b
   49C2 32 45 4A      [13] 1657     ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
   49C5 18 5B         [12] 1658     jr PLY_AKM_RT_READWAITFLAGS
   49C7 D9            [ 4] 1659 PLY_AKM_RT_NOTEREFERENCE: exx
   49C8 6F            [ 4] 1660     ld l,a
   49C9 26 00         [ 7] 1661     ld h,#0
   49CB 09            [11] 1662     add hl,bc
   49CC 7E            [ 7] 1663     ld a,(hl)
   49CD D9            [ 4] 1664     exx
   49CE DD 86 01      [19] 1665 PLY_AKM_RT_AFTERNOTEREAD: add a,+1(ix)
   49D1 DD 77 06      [19] 1666     ld +6(ix),a
   49D4 78            [ 4] 1667     ld a,b
   49D5 E6 30         [ 7] 1668     and #48
   49D7 28 0F         [12] 1669     jr z,PLY_AKM_RT_SAMEESCAPEINSTRUMENT
   49D9 FE 10         [ 7] 1670     cp #16
   49DB 28 14         [12] 1671     jr z,PLY_AKM_RT_PRIMARYINSTRUMENT
   49DD FE 20         [ 7] 1672     cp #32
   49DF 28 0C         [12] 1673     jr z,PLY_AKM_RT_SECONDARYINSTRUMENT
   49E1 7E            [ 7] 1674     ld a,(hl)
   49E2 23            [ 6] 1675     inc hl
   49E3 DD 77 08      [19] 1676     ld +8(ix),a
   49E6 18 0B         [12] 1677     jr PLY_AKM_RT_STORECURRENTINSTRUMENT
   49E8 DD 7E 08      [19] 1678 PLY_AKM_RT_SAMEESCAPEINSTRUMENT: ld a,+8(ix)
   49EB 18 06         [12] 1679     jr PLY_AKM_RT_STORECURRENTINSTRUMENT
   49ED                    1680 PLY_AKM_RT_SECONDARYINSTRUMENT:
   49ED 3E 00         [ 7] 1681 PLY_AKM_SECONDARYINSTRUMENT: ld a,#0
   49EF 18 02         [12] 1682     jr PLY_AKM_RT_STORECURRENTINSTRUMENT
   49F1                    1683 PLY_AKM_RT_PRIMARYINSTRUMENT:
   49F1 3E 00         [ 7] 1684 PLY_AKM_PRIMARYINSTRUMENT: ld a,#0
   49F3 D9            [ 4] 1685 PLY_AKM_RT_STORECURRENTINSTRUMENT: exx
   49F4 87            [ 4] 1686     add a,a
   49F5 6F            [ 4] 1687     ld l,a
   49F6 26 00         [ 7] 1688     ld h,#0
   49F8 19            [11] 1689     add hl,de
   49F9 7E            [ 7] 1690     ld a,(hl)
   49FA 23            [ 6] 1691     inc hl
   49FB 66            [ 7] 1692     ld h,(hl)
   49FC 6F            [ 4] 1693     ld l,a
   49FD 7E            [ 7] 1694     ld a,(hl)
   49FE 23            [ 6] 1695     inc hl
   49FF DD 77 0D      [19] 1696     ld +13(ix),a
   4A02 DD                 1697     .db 221
   4A03 75                 1698     .db 117
   4A04 0A                 1699     .db +10
   4A05 DD                 1700     .db 221
   4A06 74                 1701     .db 116
   4A07 0B                 1702     .db +11
   4A08 D9            [ 4] 1703     exx
   4A09 AF            [ 4] 1704     xor a
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 33.
Hexadecimal [16-Bits]



   4A0A DD 77 0C      [19] 1705     ld +12(ix),a
   4A0D DD 77 0F      [19] 1706     ld +15(ix),a
   4A10 DD 77 10      [19] 1707     ld +16(ix),a
   4A13 DD 77 11      [19] 1708     ld +17(ix),a
   4A16 DD 77 18      [19] 1709     ld +24(ix),a
   4A19 DD 77 19      [19] 1710     ld +25(ix),a
   4A1C DD 77 1F      [19] 1711     ld +31(ix),a
   4A1F DD 77 20      [19] 1712     ld +32(ix),a
   4A22 78            [ 4] 1713 PLY_AKM_RT_READWAITFLAGS: ld a,b
   4A23 E6 C0         [ 7] 1714     and #192
   4A25 28 0F         [12] 1715     jr z,PLY_AKM_RT_SAMEESCAPEWAIT
   4A27 FE 40         [ 7] 1716     cp #64
   4A29 28 10         [12] 1717     jr z,PLY_AKM_RT_PRIMARYWAIT
   4A2B FE 80         [ 7] 1718     cp #128
   4A2D 28 10         [12] 1719     jr z,PLY_AKM_RT_SECONDARYWAIT
   4A2F 7E            [ 7] 1720     ld a,(hl)
   4A30 23            [ 6] 1721     inc hl
   4A31 DD 77 09      [19] 1722     ld +9(ix),a
   4A34 18 0B         [12] 1723     jr PLY_AKM_RT_STORECURRENTWAIT
   4A36 DD 7E 09      [19] 1724 PLY_AKM_RT_SAMEESCAPEWAIT: ld a,+9(ix)
   4A39 18 06         [12] 1725     jr PLY_AKM_RT_STORECURRENTWAIT
   4A3B                    1726 PLY_AKM_RT_PRIMARYWAIT:
   4A3B 3E 00         [ 7] 1727 PLY_AKM_PRIMARYWAIT: ld a,#0
   4A3D 18 02         [12] 1728     jr PLY_AKM_RT_STORECURRENTWAIT
   4A3F                    1729 PLY_AKM_RT_SECONDARYWAIT:
   4A3F 3E 00         [ 7] 1730 PLY_AKM_SECONDARYWAIT: ld a,#0
   4A41 DD 77 00      [19] 1731 PLY_AKM_RT_STORECURRENTWAIT: ld +0(ix),a
   4A44 3E 00         [ 7] 1732 PLY_AKM_RT_READEFFECTSFLAG: ld a,#0
   4A46 B7            [ 4] 1733     or a
   4A47 20 07         [12] 1734     jr nz,PLY_AKM_RT_READEFFECTS
   4A49 DD                 1735 PLY_AKM_RT_AFTEREFFECTS: .db 221
   4A4A 75                 1736     .db 117
   4A4B 04                 1737     .db +4
   4A4C DD                 1738     .db 221
   4A4D 74                 1739     .db 116
   4A4E 05                 1740     .db +5
   4A4F C9            [10] 1741     ret 
   4A50 AF            [ 4] 1742 PLY_AKM_RT_READEFFECTS: xor a
   4A51 32 45 4A      [13] 1743     ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
   4A54 FD 21 53 4C   [14] 1744 PLY_AKM_RT_READEFFECT: ld iy,#PLY_AKM_EFFECTTABLE
   4A58 46            [ 7] 1745     ld b,(hl)
   4A59 78            [ 4] 1746     ld a,b
   4A5A 23            [ 6] 1747     inc hl
   4A5B E6 0E         [ 7] 1748     and #14
   4A5D 5F            [ 4] 1749     ld e,a
   4A5E 16 00         [ 7] 1750     ld d,#0
   4A60 FD 19         [15] 1751     add iy,de
   4A62 78            [ 4] 1752     ld a,b
   4A63 1F            [ 4] 1753     rra 
   4A64 1F            [ 4] 1754     rra 
   4A65 1F            [ 4] 1755     rra 
   4A66 1F            [ 4] 1756     rra 
   4A67 E6 0F         [ 7] 1757     and #15
   4A69 FD E9         [ 8] 1758     jp (iy)
   4A6B CB 40         [ 8] 1759 PLY_AKM_RT_READEFFECT_RETURN: bit 0,b
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 34.
Hexadecimal [16-Bits]



   4A6D 20 E5         [12] 1760     jr nz,PLY_AKM_RT_READEFFECT
   4A6F 18 D8         [12] 1761     jr PLY_AKM_RT_AFTEREFFECTS
   4A71 7E            [ 7] 1762 PLY_AKM_RT_WAITLONG: ld a,(hl)
   4A72 23            [ 6] 1763     inc hl
   4A73 DD 77 00      [19] 1764     ld +0(ix),a
   4A76 18 08         [12] 1765     jr PLY_AKM_RT_CELLREAD
   4A78 78            [ 4] 1766 PLY_AKM_RT_WAITSHORT: ld a,b
   4A79 07            [ 4] 1767     rlca 
   4A7A 07            [ 4] 1768     rlca 
   4A7B E6 03         [ 7] 1769     and #3
   4A7D DD 77 00      [19] 1770     ld +0(ix),a
   4A80 DD                 1771 PLY_AKM_RT_CELLREAD: .db 221
   4A81 75                 1772     .db 117
   4A82 04                 1773     .db +4
   4A83 DD                 1774     .db 221
   4A84 74                 1775     .db 116
   4A85 05                 1776     .db +5
   4A86 C9            [10] 1777     ret 
   4A87 DD 7E 0F      [19] 1778 PLY_AKM_MANAGEEFFECTS: ld a,+15(ix)
   4A8A B7            [ 4] 1779     or a
   4A8B 28 28         [12] 1780     jr z,PLY_AKM_ME_PITCHUPDOWNFINISHED
   4A8D DD 6E 12      [19] 1781     ld l,+18(ix)
   4A90 DD 66 10      [19] 1782     ld h,+16(ix)
   4A93 DD 5E 13      [19] 1783     ld e,+19(ix)
   4A96 DD 56 14      [19] 1784     ld d,+20(ix)
   4A99 DD 7E 11      [19] 1785     ld a,+17(ix)
   4A9C CB 7A         [ 8] 1786     bit 7,d
   4A9E 20 05         [12] 1787     jr nz,PLY_AKM_ME_PITCHUPDOWN_NEGATIVESPEED
   4AA0 19            [11] 1788 PLY_AKM_ME_PITCHUPDOWN_POSITIVESPEED: add hl,de
   4AA1 CE 00         [ 7] 1789     adc a,#0
   4AA3 18 07         [12] 1790     jr PLY_AKM_ME_PITCHUPDOWN_SAVE
   4AA5 CB BA         [ 8] 1791 PLY_AKM_ME_PITCHUPDOWN_NEGATIVESPEED: res 7,d
   4AA7 B7            [ 4] 1792     or a
   4AA8 ED 52         [15] 1793     sbc hl,de
   4AAA DE 00         [ 7] 1794     sbc a,#0
   4AAC DD 77 11      [19] 1795 PLY_AKM_ME_PITCHUPDOWN_SAVE: ld +17(ix),a
   4AAF DD                 1796     .db 221
   4AB0 75                 1797     .db 117
   4AB1 12                 1798     .db +18
   4AB2 DD                 1799     .db 221
   4AB3 74                 1800     .db 116
   4AB4 10                 1801     .db +16
   4AB5 DD 7E 15      [19] 1802 PLY_AKM_ME_PITCHUPDOWNFINISHED: ld a,+21(ix)
   4AB8 B7            [ 4] 1803     or a
   4AB9 28 30         [12] 1804     jr z,PLY_AKM_ME_ARPEGGIOTABLEFINISHED
   4ABB DD 5E 16      [19] 1805     ld e,+22(ix)
   4ABE DD 56 17      [19] 1806     ld d,+23(ix)
   4AC1 DD 6E 18      [19] 1807     ld l,+24(ix)
   4AC4 26 00         [ 7] 1808     ld h,#0
   4AC6 19            [11] 1809     add hl,de
   4AC7 7E            [ 7] 1810     ld a,(hl)
   4AC8 CB 2F         [ 8] 1811     sra a
   4ACA DD 77 1B      [19] 1812     ld +27(ix),a
   4ACD DD 7E 19      [19] 1813     ld a,+25(ix)
   4AD0 DD BE 1A      [19] 1814     cp +26(ix)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 35.
Hexadecimal [16-Bits]



   4AD3 38 12         [12] 1815     jr c,PLY_AKM_ME_ARPEGGIOTABLE_SPEEDNOTREACHED
   4AD5 DD 36 19 00   [19] 1816     ld +25(ix),#0
   4AD9 DD 34 18      [23] 1817     inc +24(ix)
   4ADC 23            [ 6] 1818     inc hl
   4ADD 7E            [ 7] 1819     ld a,(hl)
   4ADE 1F            [ 4] 1820     rra 
   4ADF 30 0A         [12] 1821     jr nc,PLY_AKM_ME_ARPEGGIOTABLEFINISHED
   4AE1 6F            [ 4] 1822     ld l,a
   4AE2 DD 77 18      [19] 1823     ld +24(ix),a
   4AE5 18 04         [12] 1824     jr PLY_AKM_ME_ARPEGGIOTABLEFINISHED
   4AE7 3C            [ 4] 1825 PLY_AKM_ME_ARPEGGIOTABLE_SPEEDNOTREACHED: inc a
   4AE8 DD 77 19      [19] 1826     ld +25(ix),a
   4AEB DD 7E 1C      [19] 1827 PLY_AKM_ME_ARPEGGIOTABLEFINISHED: ld a,+28(ix)
   4AEE B7            [ 4] 1828     or a
   4AEF C8            [11] 1829     ret z
   4AF0 DD 6E 1D      [19] 1830     ld l,+29(ix)
   4AF3 DD 66 1E      [19] 1831     ld h,+30(ix)
   4AF6 DD 5E 1F      [19] 1832     ld e,+31(ix)
   4AF9 16 00         [ 7] 1833     ld d,#0
   4AFB 19            [11] 1834     add hl,de
   4AFC 7E            [ 7] 1835     ld a,(hl)
   4AFD CB 2F         [ 8] 1836     sra a
   4AFF F2 03 4B      [10] 1837     jp p,PLY_AKM_ME_PITCHTABLEENDNOTREACHED_POSITIVE
   4B02 15            [ 4] 1838     dec d
   4B03 DD 77 22      [19] 1839 PLY_AKM_ME_PITCHTABLEENDNOTREACHED_POSITIVE: ld +34(ix),a
   4B06 DD                 1840     .db 221
   4B07 72                 1841     .db 114
   4B08 23                 1842     .db +35
   4B09 DD 7E 20      [19] 1843     ld a,+32(ix)
   4B0C DD BE 21      [19] 1844     cp +33(ix)
   4B0F 38 10         [12] 1845     jr c,PLY_AKM_ME_PITCHTABLE_SPEEDNOTREACHED
   4B11 DD 36 20 00   [19] 1846     ld +32(ix),#0
   4B15 DD 34 1F      [23] 1847     inc +31(ix)
   4B18 23            [ 6] 1848     inc hl
   4B19 7E            [ 7] 1849     ld a,(hl)
   4B1A 1F            [ 4] 1850     rra 
   4B1B D0            [11] 1851     ret nc
   4B1C 6F            [ 4] 1852     ld l,a
   4B1D DD 77 1F      [19] 1853     ld +31(ix),a
   4B20 C9            [10] 1854     ret 
   4B21 3C            [ 4] 1855 PLY_AKM_ME_PITCHTABLE_SPEEDNOTREACHED: inc a
   4B22 DD 77 20      [19] 1856     ld +32(ix),a
   4B25 C9            [10] 1857     ret 
   4B26 DD 6E 0A      [19] 1858 PLY_AKM_PLAYSOUNDSTREAM: ld l,+10(ix)
   4B29 DD 66 0B      [19] 1859     ld h,+11(ix)
   4B2C 7E            [ 7] 1860 PLY_AKM_PSS_READFIRSTBYTE: ld a,(hl)
   4B2D 47            [ 4] 1861     ld b,a
   4B2E 23            [ 6] 1862     inc hl
   4B2F 1F            [ 4] 1863     rra 
   4B30 38 21         [12] 1864     jr c,PLY_AKM_PSS_SOFTORSOFTANDHARD
   4B32 1F            [ 4] 1865     rra 
   4B33 38 6C         [12] 1866     jr c,PLY_AKM_PSS_SOFTWARETOHARDWARE
   4B35 1F            [ 4] 1867     rra 
   4B36 30 0C         [12] 1868     jr nc,PLY_AKM_PSS_NSNH_NOTENDOFSOUND
   4B38 7E            [ 7] 1869     ld a,(hl)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 36.
Hexadecimal [16-Bits]



   4B39 23            [ 6] 1870     inc hl
   4B3A 66            [ 7] 1871     ld h,(hl)
   4B3B 6F            [ 4] 1872     ld l,a
   4B3C DD                 1873     .db 221
   4B3D 75                 1874     .db 117
   4B3E 0A                 1875     .db +10
   4B3F DD                 1876     .db 221
   4B40 74                 1877     .db 116
   4B41 0B                 1878     .db +11
   4B42 18 E8         [12] 1879     jr PLY_AKM_PSS_READFIRSTBYTE
   4B44 CB D1         [ 8] 1880 PLY_AKM_PSS_NSNH_NOTENDOFSOUND: set 2,c
   4B46 CD E1 4B      [17] 1881     call PLY_AKM_PSS_SHARED_ADJUSTVOLUME
   4B49 FD 77 01      [19] 1882     ld +1(iy),a
   4B4C CB 10         [ 8] 1883     rl b
   4B4E DC E9 4B      [17] 1884     call c,PLY_AKM_PSS_READNOISE
   4B51 18 28         [12] 1885     jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
   4B53 1F            [ 4] 1886 PLY_AKM_PSS_SOFTORSOFTANDHARD: rra 
   4B54 38 3C         [12] 1887     jr c,PLY_AKM_PSS_SOFTANDHARD
   4B56 CD E1 4B      [17] 1888     call PLY_AKM_PSS_SHARED_ADJUSTVOLUME
   4B59 FD 77 01      [19] 1889     ld +1(iy),a
   4B5C 16 00         [ 7] 1890     ld d,#0
   4B5E CB 10         [ 8] 1891     rl b
   4B60 30 08         [12] 1892     jr nc,PLY_AKM_PSS_S_AFTERARPANDORNOISE
   4B62 7E            [ 7] 1893     ld a,(hl)
   4B63 23            [ 6] 1894     inc hl
   4B64 CB 2F         [ 8] 1895     sra a
   4B66 57            [ 4] 1896     ld d,a
   4B67 DC E9 4B      [17] 1897     call c,PLY_AKM_PSS_READNOISE
   4B6A 7A            [ 4] 1898 PLY_AKM_PSS_S_AFTERARPANDORNOISE: ld a,d
   4B6B CD F1 4B      [17] 1899     call PLY_AKM_CALCULATEPERIODFORBASENOTE
   4B6E CB 10         [ 8] 1900     rl b
   4B70 DC 2E 4C      [17] 1901     call c,PLY_AKM_READPITCHANDADDTOPERIOD
   4B73 D9            [ 4] 1902     exx
   4B74 FD 75 05      [19] 1903     ld +5(iy),l
   4B77 FD 74 09      [19] 1904     ld +9(iy),h
   4B7A D9            [ 4] 1905     exx
   4B7B DD 7E 0C      [19] 1906 PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER: ld a,+12(ix)
   4B7E DD BE 0D      [19] 1907     cp +13(ix)
   4B81 30 04         [12] 1908     jr nc,PLY_AKM_PSS_S_SPEEDREACHED
   4B83 DD 34 0C      [23] 1909     inc +12(ix)
   4B86 C9            [10] 1910     ret 
   4B87 DD                 1911 PLY_AKM_PSS_S_SPEEDREACHED: .db 221
   4B88 75                 1912     .db 117
   4B89 0A                 1913     .db +10
   4B8A DD                 1914     .db 221
   4B8B 74                 1915     .db 116
   4B8C 0B                 1916     .db +11
   4B8D DD 36 0C 00   [19] 1917     ld +12(ix),#0
   4B91 C9            [10] 1918     ret 
   4B92 CD C3 4B      [17] 1919 PLY_AKM_PSS_SOFTANDHARD: call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
   4B95 7E            [ 7] 1920     ld a,(hl)
   4B96 32 78 4D      [13] 1921     ld (PLY_AKM_REG11),a
   4B99 23            [ 6] 1922     inc hl
   4B9A 7E            [ 7] 1923     ld a,(hl)
   4B9B 32 7C 4D      [13] 1924     ld (PLY_AKM_REG12),a
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 37.
Hexadecimal [16-Bits]



   4B9E 23            [ 6] 1925     inc hl
   4B9F 18 DA         [12] 1926     jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
   4BA1 CD C3 4B      [17] 1927 PLY_AKM_PSS_SOFTWARETOHARDWARE: call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
   4BA4 78            [ 4] 1928     ld a,b
   4BA5 07            [ 4] 1929     rlca 
   4BA6 07            [ 4] 1930     rlca 
   4BA7 07            [ 4] 1931     rlca 
   4BA8 07            [ 4] 1932     rlca 
   4BA9 E6 07         [ 7] 1933     and #7
   4BAB D9            [ 4] 1934     exx
   4BAC 28 0A         [12] 1935     jr z,PLY_AKM_PSS_STH_RATIOEND
   4BAE CB 3C         [ 8] 1936 PLY_AKM_PSS_STH_RATIOLOOP: srl h
   4BB0 CB 1D         [ 8] 1937     rr l
   4BB2 3D            [ 4] 1938     dec a
   4BB3 20 F9         [12] 1939     jr nz,PLY_AKM_PSS_STH_RATIOLOOP
   4BB5 30 01         [12] 1940     jr nc,PLY_AKM_PSS_STH_RATIOEND
   4BB7 23            [ 6] 1941     inc hl
   4BB8 7D            [ 4] 1942 PLY_AKM_PSS_STH_RATIOEND: ld a,l
   4BB9 32 78 4D      [13] 1943     ld (PLY_AKM_REG11),a
   4BBC 7C            [ 4] 1944     ld a,h
   4BBD 32 7C 4D      [13] 1945     ld (PLY_AKM_REG12),a
   4BC0 D9            [ 4] 1946     exx
   4BC1 18 B8         [12] 1947     jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
   4BC3 E6 02         [ 7] 1948 PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV: and #2
   4BC5 C6 08         [ 7] 1949     add a,#8
   4BC7 32 29 49      [13] 1950     ld (PLY_AKM_SENDPSGREGISTERR13+1),a
   4BCA FD 36 01 10   [19] 1951     ld +1(iy),#16
   4BCE AF            [ 4] 1952     xor a
   4BCF CB 78         [ 8] 1953     bit 7,b
   4BD1 28 02         [12] 1954     jr z,PLY_AKM_PSS_SHARED_RENVBAP_AFTERARPEGGIO
   4BD3 7E            [ 7] 1955     ld a,(hl)
   4BD4 23            [ 6] 1956     inc hl
   4BD5 CD F1 4B      [17] 1957 PLY_AKM_PSS_SHARED_RENVBAP_AFTERARPEGGIO: call PLY_AKM_CALCULATEPERIODFORBASENOTE
   4BD8 D9            [ 4] 1958     exx
   4BD9 FD 75 05      [19] 1959     ld +5(iy),l
   4BDC FD 74 09      [19] 1960     ld +9(iy),h
   4BDF D9            [ 4] 1961     exx
   4BE0 C9            [10] 1962     ret 
   4BE1 E6 0F         [ 7] 1963 PLY_AKM_PSS_SHARED_ADJUSTVOLUME: and #15
   4BE3 DD 96 0E      [19] 1964     sub +14(ix)
   4BE6 D0            [11] 1965     ret nc
   4BE7 AF            [ 4] 1966     xor a
   4BE8 C9            [10] 1967     ret 
   4BE9 7E            [ 7] 1968 PLY_AKM_PSS_READNOISE: ld a,(hl)
   4BEA 23            [ 6] 1969     inc hl
   4BEB 32 70 4D      [13] 1970     ld (PLY_AKM_NOISEREGISTER),a
   4BEE CB A9         [ 8] 1971     res 5,c
   4BF0 C9            [10] 1972     ret 
   4BF1 D9            [ 4] 1973 PLY_AKM_CALCULATEPERIODFORBASENOTE: exx
   4BF2 26 00         [ 7] 1974     ld h,#0
   4BF4 DD 86 06      [19] 1975     add a,+6(ix)
   4BF7 DD 86 1B      [19] 1976     add a,+27(ix)
   4BFA 01 0C FF      [10] 1977     ld bc,#65292
   4BFD 04            [ 4] 1978 PLY_AKM_FINDOCTAVE_LOOP: inc b
   4BFE 91            [ 4] 1979     sub c
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 38.
Hexadecimal [16-Bits]



   4BFF 30 FC         [12] 1980     jr nc,PLY_AKM_FINDOCTAVE_LOOP
   4C01 81            [ 4] 1981     add a,c
   4C02 87            [ 4] 1982     add a,a
   4C03 6F            [ 4] 1983     ld l,a
   4C04 26 00         [ 7] 1984     ld h,#0
   4C06 19            [11] 1985     add hl,de
   4C07 7E            [ 7] 1986     ld a,(hl)
   4C08 23            [ 6] 1987     inc hl
   4C09 66            [ 7] 1988     ld h,(hl)
   4C0A 6F            [ 4] 1989     ld l,a
   4C0B 78            [ 4] 1990     ld a,b
   4C0C B7            [ 4] 1991     or a
   4C0D 28 06         [12] 1992     jr z,PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP_FINISHED
   4C0F CB 3C         [ 8] 1993 PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP: srl h
   4C11 CB 1D         [ 8] 1994     rr l
   4C13 10 FA         [13] 1995     djnz PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP
   4C15 30 01         [12] 1996 PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP_FINISHED: jr nc,PLY_AKM_FINDOCTAVE_FINISHED
   4C17 23            [ 6] 1997     inc hl
   4C18 DD 7E 1C      [19] 1998 PLY_AKM_FINDOCTAVE_FINISHED: ld a,+28(ix)
   4C1B B7            [ 4] 1999     or a
   4C1C 28 07         [12] 2000     jr z,PLY_AKM_CALCULATEPERIODFORBASENOTE_NOPITCHTABLE
   4C1E DD 4E 22      [19] 2001     ld c,+34(ix)
   4C21 DD 46 23      [19] 2002     ld b,+35(ix)
   4C24 09            [11] 2003     add hl,bc
   4C25 DD 4E 10      [19] 2004 PLY_AKM_CALCULATEPERIODFORBASENOTE_NOPITCHTABLE: ld c,+16(ix)
   4C28 DD 46 11      [19] 2005     ld b,+17(ix)
   4C2B 09            [11] 2006     add hl,bc
   4C2C D9            [ 4] 2007     exx
   4C2D C9            [10] 2008     ret 
   4C2E 7E            [ 7] 2009 PLY_AKM_READPITCHANDADDTOPERIOD: ld a,(hl)
   4C2F 23            [ 6] 2010     inc hl
   4C30 D9            [ 4] 2011     exx
   4C31 4F            [ 4] 2012     ld c,a
   4C32 D9            [ 4] 2013     exx
   4C33 7E            [ 7] 2014     ld a,(hl)
   4C34 23            [ 6] 2015     inc hl
   4C35 D9            [ 4] 2016     exx
   4C36 47            [ 4] 2017     ld b,a
   4C37 09            [11] 2018     add hl,bc
   4C38 D9            [ 4] 2019     exx
   4C39 C9            [10] 2020     ret 
   4C3A DD 77 0E      [19] 2021 PLY_AKM_EFFECTRESETWITHVOLUME: ld +14(ix),a
   4C3D AF            [ 4] 2022     xor a
   4C3E DD 77 0F      [19] 2023     ld +15(ix),a
   4C41 DD 77 15      [19] 2024     ld +21(ix),a
   4C44 DD 77 1B      [19] 2025     ld +27(ix),a
   4C47 DD 77 1C      [19] 2026     ld +28(ix),a
   4C4A C3 6B 4A      [10] 2027     jp PLY_AKM_RT_READEFFECT_RETURN
   4C4D DD 77 0E      [19] 2028 PLY_AKM_EFFECTVOLUME: ld +14(ix),a
   4C50 C3 6B 4A      [10] 2029     jp PLY_AKM_RT_READEFFECT_RETURN
   4C53 18 E5         [12] 2030 PLY_AKM_EFFECTTABLE: jr PLY_AKM_EFFECTRESETWITHVOLUME
   4C55 18 F6         [12] 2031     jr PLY_AKM_EFFECTVOLUME
   4C57 18 08         [12] 2032     jr PLY_AKM_EFFECTPITCHUPDOWN
   4C59 18 21         [12] 2033     jr PLY_AKM_EFFECTARPEGGIOTABLE
   4C5B 18 50         [12] 2034     jr PLY_AKM_EFFECTPITCHTABLE
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 39.
Hexadecimal [16-Bits]



   4C5D 18 FE         [12] 2035     jr PLY_AKM_EFFECTPITCHUPDOWN-4
   4C5F 18 FE         [12] 2036     jr PLY_AKM_EFFECTPITCHUPDOWN-2
   4C61 1F            [ 4] 2037 PLY_AKM_EFFECTPITCHUPDOWN: rra 
   4C62 30 11         [12] 2038     jr nc,PLY_AKM_EFFECTPITCHUPDOWN_DEACTIVATED
   4C64 DD 36 0F FF   [19] 2039     ld +15(ix),#255
   4C68 7E            [ 7] 2040     ld a,(hl)
   4C69 23            [ 6] 2041     inc hl
   4C6A DD 77 13      [19] 2042     ld +19(ix),a
   4C6D 7E            [ 7] 2043     ld a,(hl)
   4C6E 23            [ 6] 2044     inc hl
   4C6F DD 77 14      [19] 2045     ld +20(ix),a
   4C72 C3 6B 4A      [10] 2046     jp PLY_AKM_RT_READEFFECT_RETURN
   4C75 DD 36 0F 00   [19] 2047 PLY_AKM_EFFECTPITCHUPDOWN_DEACTIVATED: ld +15(ix),#0
   4C79 C3 6B 4A      [10] 2048     jp PLY_AKM_RT_READEFFECT_RETURN
   4C7C CD D9 4C      [17] 2049 PLY_AKM_EFFECTARPEGGIOTABLE: call PLY_AKM_EFFECTREADIFESCAPE
   4C7F DD 77 15      [19] 2050     ld +21(ix),a
   4C82 28 23         [12] 2051     jr z,PLY_AKM_EFFECTARPEGGIOTABLE_STOP
   4C84 87            [ 4] 2052     add a,a
   4C85 D9            [ 4] 2053     exx
   4C86 6F            [ 4] 2054     ld l,a
   4C87 26 00         [ 7] 2055     ld h,#0
   4C89 01 00 00      [10] 2056 PLY_AKM_PTARPEGGIOS: ld bc,#0
   4C8C 09            [11] 2057     add hl,bc
   4C8D 7E            [ 7] 2058     ld a,(hl)
   4C8E 23            [ 6] 2059     inc hl
   4C8F 66            [ 7] 2060     ld h,(hl)
   4C90 6F            [ 4] 2061     ld l,a
   4C91 7E            [ 7] 2062     ld a,(hl)
   4C92 23            [ 6] 2063     inc hl
   4C93 DD 77 1A      [19] 2064     ld +26(ix),a
   4C96 DD                 2065     .db 221
   4C97 75                 2066     .db 117
   4C98 16                 2067     .db +22
   4C99 DD                 2068     .db 221
   4C9A 74                 2069     .db 116
   4C9B 17                 2070     .db +23
   4C9C D9            [ 4] 2071     exx
   4C9D AF            [ 4] 2072     xor a
   4C9E DD 77 18      [19] 2073     ld +24(ix),a
   4CA1 DD 77 19      [19] 2074     ld +25(ix),a
   4CA4 C3 6B 4A      [10] 2075     jp PLY_AKM_RT_READEFFECT_RETURN
   4CA7 DD 77 1B      [19] 2076 PLY_AKM_EFFECTARPEGGIOTABLE_STOP: ld +27(ix),a
   4CAA C3 6B 4A      [10] 2077     jp PLY_AKM_RT_READEFFECT_RETURN
   4CAD CD D9 4C      [17] 2078 PLY_AKM_EFFECTPITCHTABLE: call PLY_AKM_EFFECTREADIFESCAPE
   4CB0 DD 77 1C      [19] 2079     ld +28(ix),a
   4CB3 CA 6B 4A      [10] 2080     jp z,PLY_AKM_RT_READEFFECT_RETURN
   4CB6 87            [ 4] 2081     add a,a
   4CB7 D9            [ 4] 2082     exx
   4CB8 6F            [ 4] 2083     ld l,a
   4CB9 26 00         [ 7] 2084     ld h,#0
   4CBB 01 00 00      [10] 2085 PLY_AKM_PTPITCHES: ld bc,#0
   4CBE 09            [11] 2086     add hl,bc
   4CBF 7E            [ 7] 2087     ld a,(hl)
   4CC0 23            [ 6] 2088     inc hl
   4CC1 66            [ 7] 2089     ld h,(hl)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 40.
Hexadecimal [16-Bits]



   4CC2 6F            [ 4] 2090     ld l,a
   4CC3 7E            [ 7] 2091     ld a,(hl)
   4CC4 23            [ 6] 2092     inc hl
   4CC5 DD 77 21      [19] 2093     ld +33(ix),a
   4CC8 DD                 2094     .db 221
   4CC9 75                 2095     .db 117
   4CCA 1D                 2096     .db +29
   4CCB DD                 2097     .db 221
   4CCC 74                 2098     .db 116
   4CCD 1E                 2099     .db +30
   4CCE D9            [ 4] 2100     exx
   4CCF AF            [ 4] 2101     xor a
   4CD0 DD 77 1F      [19] 2102     ld +31(ix),a
   4CD3 DD 77 20      [19] 2103     ld +32(ix),a
   4CD6 C3 6B 4A      [10] 2104     jp PLY_AKM_RT_READEFFECT_RETURN
   4CD9 FE 0F         [ 7] 2105 PLY_AKM_EFFECTREADIFESCAPE: cp #15
   4CDB D8            [11] 2106     ret c
   4CDC 7E            [ 7] 2107     ld a,(hl)
   4CDD 23            [ 6] 2108     inc hl
   4CDE C9            [10] 2109     ret 
   4CDF                    2110 PLY_AKM_TRACK1_DATA:
   4CDF 00                 2111 PLY_AKM_TRACK1_WAITEMPTYCELL: .db 0
   4CE0 00                 2112 PLY_AKM_TRACK1_TRANSPOSITION: .db 0
   4CE1 00 00              2113 PLY_AKM_TRACK1_PTSTARTTRACK: .dw 0
   4CE3 00 00              2114 PLY_AKM_TRACK1_PTTRACK: .dw 0
   4CE5 00                 2115 PLY_AKM_TRACK1_BASENOTE: .db 0
   4CE6 00                 2116 PLY_AKM_TRACK1_ESCAPENOTE: .db 0
   4CE7 00                 2117 PLY_AKM_TRACK1_ESCAPEINSTRUMENT: .db 0
   4CE8 00                 2118 PLY_AKM_TRACK1_ESCAPEWAIT: .db 0
   4CE9 00 00              2119 PLY_AKM_TRACK1_PTINSTRUMENT: .dw 0
   4CEB 00                 2120 PLY_AKM_TRACK1_INSTRUMENTCURRENTSTEP: .db 0
   4CEC 00                 2121 PLY_AKM_TRACK1_INSTRUMENTSPEED: .db 0
   4CED 00                 2122 PLY_AKM_TRACK1_TRACKINVERTEDVOLUME: .db 0
   4CEE 00                 2123 PLY_AKM_TRACK1_ISPITCHUPDOWNUSED: .db 0
   4CEF 00 00              2124 PLY_AKM_TRACK1_TRACKPITCHINTEGER: .dw 0
   4CF1 00                 2125 PLY_AKM_TRACK1_TRACKPITCHDECIMAL: .db 0
   4CF2 00 00              2126 PLY_AKM_TRACK1_TRACKPITCHSPEED: .dw 0
   4CF4 00                 2127 PLY_AKM_TRACK1_ISARPEGGIOTABLEUSED: .db 0
   4CF5 00 00              2128 PLY_AKM_TRACK1_PTARPEGGIOTABLE: .dw 0
   4CF7 00                 2129 PLY_AKM_TRACK1_PTARPEGGIOOFFSET: .db 0
   4CF8 00                 2130 PLY_AKM_TRACK1_ARPEGGIOCURRENTSTEP: .db 0
   4CF9 00                 2131 PLY_AKM_TRACK1_ARPEGGIOORIGINALSPEED: .db 0
   4CFA 00                 2132 PLY_AKM_TRACK1_CURRENTARPEGGIOVALUE: .db 0
   4CFB 00                 2133 PLY_AKM_TRACK1_ISPITCHTABLEUSED: .db 0
   4CFC 00 00              2134 PLY_AKM_TRACK1_PTPITCHTABLE: .dw 0
   4CFE 00                 2135 PLY_AKM_TRACK1_PTPITCHOFFSET: .db 0
   4CFF 00                 2136 PLY_AKM_TRACK1_PITCHCURRENTSTEP: .db 0
   4D00 00                 2137 PLY_AKM_TRACK1_PITCHORIGINALSPEED: .db 0
   4D01 00 00              2138 PLY_AKM_TRACK1_CURRENTPITCHTABLEVALUE: .dw 0
   4D03                    2139 PLY_AKM_TRACK1_DATA_END:
   4D03                    2140 PLY_AKM_TRACK2_DATA:
   4D03 00                 2141 PLY_AKM_TRACK2_WAITEMPTYCELL: .db 0
   4D04 00                 2142     .db 0
   4D05 00                 2143     .db 0
   4D06 00                 2144     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 41.
Hexadecimal [16-Bits]



   4D07 00                 2145 PLY_AKM_TRACK2_PTTRACK: .db 0
   4D08 00                 2146     .db 0
   4D09 00                 2147     .db 0
   4D0A 00                 2148 PLY_AKM_TRACK2_ESCAPENOTE: .db 0
   4D0B 00                 2149 PLY_AKM_TRACK2_ESCAPEINSTRUMENT: .db 0
   4D0C 00                 2150 PLY_AKM_TRACK2_ESCAPEWAIT: .db 0
   4D0D 00                 2151 PLY_AKM_TRACK2_PTINSTRUMENT: .db 0
   4D0E 00                 2152     .db 0
   4D0F 00                 2153     .db 0
   4D10 00                 2154     .db 0
   4D11 00                 2155     .db 0
   4D12 00                 2156     .db 0
   4D13 00                 2157     .db 0
   4D14 00                 2158     .db 0
   4D15 00                 2159     .db 0
   4D16 00                 2160     .db 0
   4D17 00                 2161     .db 0
   4D18 00                 2162     .db 0
   4D19 00                 2163     .db 0
   4D1A 00                 2164     .db 0
   4D1B 00                 2165     .db 0
   4D1C 00                 2166     .db 0
   4D1D 00                 2167     .db 0
   4D1E 00                 2168     .db 0
   4D1F 00                 2169     .db 0
   4D20 00                 2170     .db 0
   4D21 00                 2171     .db 0
   4D22 00                 2172     .db 0
   4D23 00                 2173     .db 0
   4D24 00                 2174     .db 0
   4D25 00                 2175     .db 0
   4D26 00                 2176     .db 0
   4D27                    2177 PLY_AKM_TRACK2_DATA_END:
   4D27                    2178 PLY_AKM_TRACK3_DATA:
   4D27 00                 2179 PLY_AKM_TRACK3_WAITEMPTYCELL: .db 0
   4D28 00                 2180     .db 0
   4D29 00                 2181     .db 0
   4D2A 00                 2182     .db 0
   4D2B 00                 2183 PLY_AKM_TRACK3_PTTRACK: .db 0
   4D2C 00                 2184     .db 0
   4D2D 00                 2185     .db 0
   4D2E 00                 2186 PLY_AKM_TRACK3_ESCAPENOTE: .db 0
   4D2F 00                 2187 PLY_AKM_TRACK3_ESCAPEINSTRUMENT: .db 0
   4D30 00                 2188 PLY_AKM_TRACK3_ESCAPEWAIT: .db 0
   4D31 00                 2189 PLY_AKM_TRACK3_PTINSTRUMENT: .db 0
   4D32 00                 2190     .db 0
   4D33 00                 2191     .db 0
   4D34 00                 2192     .db 0
   4D35 00                 2193     .db 0
   4D36 00                 2194     .db 0
   4D37 00                 2195     .db 0
   4D38 00                 2196     .db 0
   4D39 00                 2197     .db 0
   4D3A 00                 2198     .db 0
   4D3B 00                 2199     .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 42.
Hexadecimal [16-Bits]



   4D3C 00                 2200     .db 0
   4D3D 00                 2201     .db 0
   4D3E 00                 2202     .db 0
   4D3F 00                 2203     .db 0
   4D40 00                 2204     .db 0
   4D41 00                 2205     .db 0
   4D42 00                 2206     .db 0
   4D43 00                 2207     .db 0
   4D44 00                 2208     .db 0
   4D45 00                 2209     .db 0
   4D46 00                 2210     .db 0
   4D47 00                 2211     .db 0
   4D48 00                 2212     .db 0
   4D49 00                 2213     .db 0
   4D4A 00                 2214     .db 0
   4D4B                    2215 PLY_AKM_TRACK3_DATA_END:
   4D4B                    2216 PLY_AKM_REGISTERS_RETTABLE:
   4D4B 08                 2217 PLY_AKM_TRACK1_REGISTERS: .db 8
   4D4C 00                 2218 PLY_AKM_TRACK1_VOLUME: .db 0
   4D4D 18 49              2219     .dw PLY_AKM_SENDPSGREGISTER
   4D4F 00                 2220     .db 0
   4D50 00                 2221 PLY_AKM_TRACK1_SOFTWAREPERIODLSB: .db 0
   4D51 18 49              2222     .dw PLY_AKM_SENDPSGREGISTER
   4D53 01                 2223     .db 1
   4D54 00                 2224 PLY_AKM_TRACK1_SOFTWAREPERIODMSB: .db 0
   4D55 18 49              2225     .dw PLY_AKM_SENDPSGREGISTER
   4D57 09                 2226 PLY_AKM_TRACK2_REGISTERS: .db 9
   4D58 00                 2227 PLY_AKM_TRACK2_VOLUME: .db 0
   4D59 18 49              2228     .dw PLY_AKM_SENDPSGREGISTER
   4D5B 02                 2229     .db 2
   4D5C 00                 2230 PLY_AKM_TRACK2_SOFTWAREPERIODLSB: .db 0
   4D5D 18 49              2231     .dw PLY_AKM_SENDPSGREGISTER
   4D5F 03                 2232     .db 3
   4D60 00                 2233 PLY_AKM_TRACK2_SOFTWAREPERIODMSB: .db 0
   4D61 18 49              2234     .dw PLY_AKM_SENDPSGREGISTER
   4D63 0A                 2235 PLY_AKM_TRACK3_REGISTERS: .db 10
   4D64 00                 2236 PLY_AKM_TRACK3_VOLUME: .db 0
   4D65 18 49              2237     .dw PLY_AKM_SENDPSGREGISTER
   4D67 04                 2238     .db 4
   4D68 00                 2239 PLY_AKM_TRACK3_SOFTWAREPERIODLSB: .db 0
   4D69 18 49              2240     .dw PLY_AKM_SENDPSGREGISTER
   4D6B 05                 2241     .db 5
   4D6C 00                 2242 PLY_AKM_TRACK3_SOFTWAREPERIODMSB: .db 0
   4D6D 18 49              2243     .dw PLY_AKM_SENDPSGREGISTER
   4D6F 06                 2244     .db 6
   4D70 00                 2245 PLY_AKM_NOISEREGISTER: .db 0
   4D71 18 49              2246     .dw PLY_AKM_SENDPSGREGISTER
   4D73 07                 2247     .db 7
   4D74 00                 2248 PLY_AKM_MIXERREGISTER: .db 0
   4D75 18 49              2249     .dw PLY_AKM_SENDPSGREGISTER
   4D77 0B                 2250     .db 11
   4D78 00                 2251 PLY_AKM_REG11: .db 0
   4D79 18 49              2252     .dw PLY_AKM_SENDPSGREGISTER
   4D7B 0C                 2253     .db 12
   4D7C 00                 2254 PLY_AKM_REG12: .db 0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 43.
Hexadecimal [16-Bits]



   4D7D 28 49              2255     .dw PLY_AKM_SENDPSGREGISTERR13
   4D7F 19 49              2256     .dw PLY_AKM_SENDPSGREGISTERAFTERPOP
   4D81 37 49              2257     .dw PLY_AKM_SENDPSGREGISTEREND
   4D83 EE 0E              2258 PLY_AKM_PERIODTABLE: .dw 3822
   4D85 18 0E              2259     .dw 3608
   4D87 4D 0D              2260     .dw 3405
   4D89 8E 0C              2261     .dw 3214
   4D8B DA 0B              2262     .dw 3034
   4D8D 2F 0B              2263     .dw 2863
   4D8F 8F 0A              2264     .dw 2703
   4D91 F7 09              2265     .dw 2551
   4D93 68 09              2266     .dw 2408
   4D95 E1 08              2267     .dw 2273
   4D97 61 08              2268     .dw 2145
   4D99 E9 07              2269     .dw 2025
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 44.
Hexadecimal [16-Bits]



                             22 
   4D9B                      23 _PLAYER_ARKOS_INITSOUNDEFFECTS::
   4D9B C3 9B 46      [10]   24 	jp PLY_AKM_INITSOUNDEFFECTS
                             25 
   4D9E                      26 _PLAYER_ARKOS_PLAYSOUNDEFFECT::	
   4D9E F1            [10]   27 	pop  af          ;; AF = Return address
   4D9F E1            [10]   28 	pop  hl          ;; H Rubbish / L = Sound effect
   4DA0 C1            [10]   29 	pop  bc          ;; B = Volume / C = Channel
   4DA1 F5            [11]   30 	push af          ;; Save back return address in the stack to fullfill __z88dk_callee convention	
   4DA2 7D            [ 4]   31 	ld   a, l        ;; A = Subsong index	
   4DA3 C3 9F 46      [10]   32 	jp   PLY_AKM_PLAYSOUNDEFFECT
                             33 	
   4DA6                      34 _PLAYER_ARKOS_STOPSOUNDEFFECTFROMCHANNEL::
   4DA6 7D            [ 4]   35 	ld   a, l
   4DA7 C3 C7 46      [10]   36 	jp   PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL
                             37 	
   4DAA                      38 _PLAYER_ARKOS_INIT::
   4DAA F1            [10]   39 	pop  af          ;; AF = Return address
   4DAB E1            [10]   40 	pop  hl          ;; HL = Music address
   4DAC C1            [10]   41 	pop  bc          ;; B Rubbish  / C = Subsong index (>=0)
   4DAD F5            [11]   42 	push af          ;; Save back return address in the stack to fullfill __z88dk_callee convention
   4DAE 79            [ 4]   43 	ld   a, c        ;; A = Subsong index	
   4DAF C3 A0 47      [10]   44 	jp   PLY_AKM_INIT
                             45 	
   4DB2                      46 _PLAYER_ARKOS_STOP::	
   4DB2 C3 1E 48      [10]   47 	jp   PLY_AKM_STOP
                             48 	
   4DB5                      49 _PLAYER_ARKOS_PLAY::	
   4DB5 C3 34 48      [10]   50 	jp   PLY_AKM_PLAY
