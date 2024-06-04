                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module tiles
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _enemies_h_11
                             12 	.globl _enemies_h_10
                             13 	.globl _enemies_h_09
                             14 	.globl _enemies_h_08
                             15 	.globl _enemies_h_07
                             16 	.globl _enemies_h_06
                             17 	.globl _enemies_h_05
                             18 	.globl _enemies_h_04
                             19 	.globl _enemies_h_03
                             20 	.globl _enemies_h_02
                             21 	.globl _enemies_h_01
                             22 	.globl _enemies_h_00
                             23 	.globl _enemies_v_11
                             24 	.globl _enemies_v_10
                             25 	.globl _enemies_v_09
                             26 	.globl _enemies_v_08
                             27 	.globl _enemies_v_07
                             28 	.globl _enemies_v_06
                             29 	.globl _enemies_v_05
                             30 	.globl _enemies_v_04
                             31 	.globl _enemies_v_03
                             32 	.globl _enemies_v_02
                             33 	.globl _enemies_v_01
                             34 	.globl _enemies_v_00
                             35 	.globl _enemies_h_ts
                             36 	.globl _enemies_v_ts
                             37 	.globl _explode_4
                             38 	.globl _explode_3
                             39 	.globl _explode_2
                             40 	.globl _explode_1
                             41 	.globl _explode_0
                             42 	.globl _explode_ts
                             43 	.globl _gui_8
                             44 	.globl _gui_7
                             45 	.globl _gui_6
                             46 	.globl _gui_5
                             47 	.globl _gui_4
                             48 	.globl _gui_3
                             49 	.globl _gui_2
                             50 	.globl _gui_1
                             51 	.globl _gui_0
                             52 	.globl _gui_ts
                             53 	.globl _player_08
                             54 	.globl _player_07
                             55 	.globl _player_06
                             56 	.globl _player_05
                             57 	.globl _player_04
                             58 	.globl _player_03
                             59 	.globl _player_02
                             60 	.globl _player_01
                             61 	.globl _player_00
                             62 	.globl _player_ts
                             63 	.globl _grid_fg_13
                             64 	.globl _grid_fg_12
                             65 	.globl _grid_fg_11
                             66 	.globl _grid_fg_10
                             67 	.globl _grid_fg_09
                             68 	.globl _grid_fg_08
                             69 	.globl _grid_fg_07
                             70 	.globl _grid_fg_06
                             71 	.globl _grid_fg_05
                             72 	.globl _grid_fg_04
                             73 	.globl _grid_fg_03
                             74 	.globl _grid_fg_02
                             75 	.globl _grid_fg_01
                             76 	.globl _grid_fg_00
                             77 	.globl _grid_fg_ts
                             78 	.globl _grid_bg_06
                             79 	.globl _grid_bg_05
                             80 	.globl _grid_bg_04
                             81 	.globl _grid_bg_03
                             82 	.globl _grid_bg_02
                             83 	.globl _grid_bg_01
                             84 	.globl _grid_bg_00
                             85 	.globl _grid_bg_ts
                             86 ;--------------------------------------------------------
                             87 ; special function registers
                             88 ;--------------------------------------------------------
                             89 ;--------------------------------------------------------
                             90 ; ram data
                             91 ;--------------------------------------------------------
                             92 	.area _DATA
                             93 ;--------------------------------------------------------
                             94 ; ram data
                             95 ;--------------------------------------------------------
                             96 	.area _INITIALIZED
                             97 ;--------------------------------------------------------
                             98 ; absolute external ram data
                             99 ;--------------------------------------------------------
                            100 	.area _DABS (ABS)
                            101 ;--------------------------------------------------------
                            102 ; global & static initialisations
                            103 ;--------------------------------------------------------
                            104 	.area _HOME
                            105 	.area _GSINIT
                            106 	.area _GSFINAL
                            107 	.area _GSINIT
                            108 ;--------------------------------------------------------
                            109 ; Home
                            110 ;--------------------------------------------------------
                            111 	.area _HOME
                            112 	.area _HOME
                            113 ;--------------------------------------------------------
                            114 ; code
                            115 ;--------------------------------------------------------
                            116 	.area _CODE
                            117 	.area _CODE
   6D14                     118 _grid_bg_ts:
   6D14 22 6D               119 	.dw _grid_bg_00
   6D16 40 6D               120 	.dw _grid_bg_01
   6D18 5E 6D               121 	.dw _grid_bg_02
   6D1A 7C 6D               122 	.dw _grid_bg_03
   6D1C 9A 6D               123 	.dw _grid_bg_04
   6D1E B8 6D               124 	.dw _grid_bg_05
   6D20 D6 6D               125 	.dw _grid_bg_06
   6D22                     126 _grid_bg_00:
   6D22 00                  127 	.db #0x00	; 0
   6D23 00                  128 	.db #0x00	; 0
   6D24 00                  129 	.db #0x00	; 0
   6D25 00                  130 	.db #0x00	; 0
   6D26 00                  131 	.db #0x00	; 0
   6D27 00                  132 	.db #0x00	; 0
   6D28 00                  133 	.db #0x00	; 0
   6D29 00                  134 	.db #0x00	; 0
   6D2A 00                  135 	.db #0x00	; 0
   6D2B 00                  136 	.db #0x00	; 0
   6D2C 00                  137 	.db #0x00	; 0
   6D2D 00                  138 	.db #0x00	; 0
   6D2E 00                  139 	.db #0x00	; 0
   6D2F 00                  140 	.db #0x00	; 0
   6D30 00                  141 	.db #0x00	; 0
   6D31 00                  142 	.db #0x00	; 0
   6D32 00                  143 	.db #0x00	; 0
   6D33 00                  144 	.db #0x00	; 0
   6D34 00                  145 	.db #0x00	; 0
   6D35 00                  146 	.db #0x00	; 0
   6D36 00                  147 	.db #0x00	; 0
   6D37 00                  148 	.db #0x00	; 0
   6D38 00                  149 	.db #0x00	; 0
   6D39 00                  150 	.db #0x00	; 0
   6D3A 00                  151 	.db #0x00	; 0
   6D3B 00                  152 	.db #0x00	; 0
   6D3C 00                  153 	.db #0x00	; 0
   6D3D 00                  154 	.db #0x00	; 0
   6D3E 00                  155 	.db #0x00	; 0
   6D3F 00                  156 	.db #0x00	; 0
   6D40                     157 _grid_bg_01:
   6D40 00                  158 	.db #0x00	; 0
   6D41 20                  159 	.db #0x20	; 32
   6D42 00                  160 	.db #0x00	; 0
   6D43 00                  161 	.db #0x00	; 0
   6D44 20                  162 	.db #0x20	; 32
   6D45 00                  163 	.db #0x00	; 0
   6D46 00                  164 	.db #0x00	; 0
   6D47 20                  165 	.db #0x20	; 32
   6D48 00                  166 	.db #0x00	; 0
   6D49 00                  167 	.db #0x00	; 0
   6D4A 20                  168 	.db #0x20	; 32
   6D4B 00                  169 	.db #0x00	; 0
   6D4C 30                  170 	.db #0x30	; 48	'0'
   6D4D 30                  171 	.db #0x30	; 48	'0'
   6D4E 30                  172 	.db #0x30	; 48	'0'
   6D4F 30                  173 	.db #0x30	; 48	'0'
   6D50 30                  174 	.db #0x30	; 48	'0'
   6D51 30                  175 	.db #0x30	; 48	'0'
   6D52 00                  176 	.db #0x00	; 0
   6D53 20                  177 	.db #0x20	; 32
   6D54 00                  178 	.db #0x00	; 0
   6D55 00                  179 	.db #0x00	; 0
   6D56 20                  180 	.db #0x20	; 32
   6D57 00                  181 	.db #0x00	; 0
   6D58 00                  182 	.db #0x00	; 0
   6D59 20                  183 	.db #0x20	; 32
   6D5A 00                  184 	.db #0x00	; 0
   6D5B 00                  185 	.db #0x00	; 0
   6D5C 20                  186 	.db #0x20	; 32
   6D5D 00                  187 	.db #0x00	; 0
   6D5E                     188 _grid_bg_02:
   6D5E 00                  189 	.db #0x00	; 0
   6D5F 24                  190 	.db #0x24	; 36
   6D60 00                  191 	.db #0x00	; 0
   6D61 00                  192 	.db #0x00	; 0
   6D62 24                  193 	.db #0x24	; 36
   6D63 00                  194 	.db #0x00	; 0
   6D64 00                  195 	.db #0x00	; 0
   6D65 24                  196 	.db #0x24	; 36
   6D66 00                  197 	.db #0x00	; 0
   6D67 00                  198 	.db #0x00	; 0
   6D68 24                  199 	.db #0x24	; 36
   6D69 00                  200 	.db #0x00	; 0
   6D6A 30                  201 	.db #0x30	; 48	'0'
   6D6B 30                  202 	.db #0x30	; 48	'0'
   6D6C 30                  203 	.db #0x30	; 48	'0'
   6D6D 30                  204 	.db #0x30	; 48	'0'
   6D6E 30                  205 	.db #0x30	; 48	'0'
   6D6F 30                  206 	.db #0x30	; 48	'0'
   6D70 0C                  207 	.db #0x0c	; 12
   6D71 24                  208 	.db #0x24	; 36
   6D72 0C                  209 	.db #0x0c	; 12
   6D73 0C                  210 	.db #0x0c	; 12
   6D74 24                  211 	.db #0x24	; 36
   6D75 0C                  212 	.db #0x0c	; 12
   6D76 00                  213 	.db #0x00	; 0
   6D77 24                  214 	.db #0x24	; 36
   6D78 00                  215 	.db #0x00	; 0
   6D79 00                  216 	.db #0x00	; 0
   6D7A 24                  217 	.db #0x24	; 36
   6D7B 00                  218 	.db #0x00	; 0
   6D7C                     219 _grid_bg_03:
   6D7C 00                  220 	.db #0x00	; 0
   6D7D 80                  221 	.db #0x80	; 128
   6D7E 00                  222 	.db #0x00	; 0
   6D7F 00                  223 	.db #0x00	; 0
   6D80 80                  224 	.db #0x80	; 128
   6D81 00                  225 	.db #0x00	; 0
   6D82 00                  226 	.db #0x00	; 0
   6D83 80                  227 	.db #0x80	; 128
   6D84 00                  228 	.db #0x00	; 0
   6D85 00                  229 	.db #0x00	; 0
   6D86 80                  230 	.db #0x80	; 128
   6D87 00                  231 	.db #0x00	; 0
   6D88 C0                  232 	.db #0xc0	; 192
   6D89 C0                  233 	.db #0xc0	; 192
   6D8A C0                  234 	.db #0xc0	; 192
   6D8B C0                  235 	.db #0xc0	; 192
   6D8C C0                  236 	.db #0xc0	; 192
   6D8D C0                  237 	.db #0xc0	; 192
   6D8E 00                  238 	.db #0x00	; 0
   6D8F 80                  239 	.db #0x80	; 128
   6D90 00                  240 	.db #0x00	; 0
   6D91 00                  241 	.db #0x00	; 0
   6D92 80                  242 	.db #0x80	; 128
   6D93 00                  243 	.db #0x00	; 0
   6D94 00                  244 	.db #0x00	; 0
   6D95 80                  245 	.db #0x80	; 128
   6D96 00                  246 	.db #0x00	; 0
   6D97 00                  247 	.db #0x00	; 0
   6D98 80                  248 	.db #0x80	; 128
   6D99 00                  249 	.db #0x00	; 0
   6D9A                     250 _grid_bg_04:
   6D9A 00                  251 	.db #0x00	; 0
   6D9B C4                  252 	.db #0xc4	; 196
   6D9C 00                  253 	.db #0x00	; 0
   6D9D 00                  254 	.db #0x00	; 0
   6D9E C4                  255 	.db #0xc4	; 196
   6D9F 00                  256 	.db #0x00	; 0
   6DA0 00                  257 	.db #0x00	; 0
   6DA1 C4                  258 	.db #0xc4	; 196
   6DA2 00                  259 	.db #0x00	; 0
   6DA3 00                  260 	.db #0x00	; 0
   6DA4 C4                  261 	.db #0xc4	; 196
   6DA5 00                  262 	.db #0x00	; 0
   6DA6 C0                  263 	.db #0xc0	; 192
   6DA7 C0                  264 	.db #0xc0	; 192
   6DA8 C0                  265 	.db #0xc0	; 192
   6DA9 C0                  266 	.db #0xc0	; 192
   6DAA C0                  267 	.db #0xc0	; 192
   6DAB C0                  268 	.db #0xc0	; 192
   6DAC CC                  269 	.db #0xcc	; 204
   6DAD C4                  270 	.db #0xc4	; 196
   6DAE CC                  271 	.db #0xcc	; 204
   6DAF CC                  272 	.db #0xcc	; 204
   6DB0 C4                  273 	.db #0xc4	; 196
   6DB1 CC                  274 	.db #0xcc	; 204
   6DB2 00                  275 	.db #0x00	; 0
   6DB3 C4                  276 	.db #0xc4	; 196
   6DB4 00                  277 	.db #0x00	; 0
   6DB5 00                  278 	.db #0x00	; 0
   6DB6 C4                  279 	.db #0xc4	; 196
   6DB7 00                  280 	.db #0x00	; 0
   6DB8                     281 _grid_bg_05:
   6DB8 00                  282 	.db #0x00	; 0
   6DB9 A0                  283 	.db #0xa0	; 160
   6DBA 00                  284 	.db #0x00	; 0
   6DBB 00                  285 	.db #0x00	; 0
   6DBC A0                  286 	.db #0xa0	; 160
   6DBD 00                  287 	.db #0x00	; 0
   6DBE 00                  288 	.db #0x00	; 0
   6DBF A0                  289 	.db #0xa0	; 160
   6DC0 00                  290 	.db #0x00	; 0
   6DC1 00                  291 	.db #0x00	; 0
   6DC2 A0                  292 	.db #0xa0	; 160
   6DC3 00                  293 	.db #0x00	; 0
   6DC4 F0                  294 	.db #0xf0	; 240
   6DC5 F0                  295 	.db #0xf0	; 240
   6DC6 F0                  296 	.db #0xf0	; 240
   6DC7 F0                  297 	.db #0xf0	; 240
   6DC8 F0                  298 	.db #0xf0	; 240
   6DC9 F0                  299 	.db #0xf0	; 240
   6DCA 00                  300 	.db #0x00	; 0
   6DCB A0                  301 	.db #0xa0	; 160
   6DCC 00                  302 	.db #0x00	; 0
   6DCD 00                  303 	.db #0x00	; 0
   6DCE A0                  304 	.db #0xa0	; 160
   6DCF 00                  305 	.db #0x00	; 0
   6DD0 00                  306 	.db #0x00	; 0
   6DD1 A0                  307 	.db #0xa0	; 160
   6DD2 00                  308 	.db #0x00	; 0
   6DD3 00                  309 	.db #0x00	; 0
   6DD4 A0                  310 	.db #0xa0	; 160
   6DD5 00                  311 	.db #0x00	; 0
   6DD6                     312 _grid_bg_06:
   6DD6 00                  313 	.db #0x00	; 0
   6DD7 E5                  314 	.db #0xe5	; 229
   6DD8 00                  315 	.db #0x00	; 0
   6DD9 00                  316 	.db #0x00	; 0
   6DDA E5                  317 	.db #0xe5	; 229
   6DDB 00                  318 	.db #0x00	; 0
   6DDC 00                  319 	.db #0x00	; 0
   6DDD E5                  320 	.db #0xe5	; 229
   6DDE 00                  321 	.db #0x00	; 0
   6DDF 00                  322 	.db #0x00	; 0
   6DE0 E5                  323 	.db #0xe5	; 229
   6DE1 00                  324 	.db #0x00	; 0
   6DE2 F0                  325 	.db #0xf0	; 240
   6DE3 F0                  326 	.db #0xf0	; 240
   6DE4 F0                  327 	.db #0xf0	; 240
   6DE5 F0                  328 	.db #0xf0	; 240
   6DE6 F0                  329 	.db #0xf0	; 240
   6DE7 F0                  330 	.db #0xf0	; 240
   6DE8 CF                  331 	.db #0xcf	; 207
   6DE9 E5                  332 	.db #0xe5	; 229
   6DEA CF                  333 	.db #0xcf	; 207
   6DEB CF                  334 	.db #0xcf	; 207
   6DEC E5                  335 	.db #0xe5	; 229
   6DED CF                  336 	.db #0xcf	; 207
   6DEE 00                  337 	.db #0x00	; 0
   6DEF E5                  338 	.db #0xe5	; 229
   6DF0 00                  339 	.db #0x00	; 0
   6DF1 00                  340 	.db #0x00	; 0
   6DF2 E5                  341 	.db #0xe5	; 229
   6DF3 00                  342 	.db #0x00	; 0
   6DF4                     343 _grid_fg_ts:
   6DF4 10 6E               344 	.dw _grid_fg_00
   6DF6 4C 6E               345 	.dw _grid_fg_01
   6DF8 88 6E               346 	.dw _grid_fg_02
   6DFA C4 6E               347 	.dw _grid_fg_03
   6DFC 00 6F               348 	.dw _grid_fg_04
   6DFE 3C 6F               349 	.dw _grid_fg_05
   6E00 78 6F               350 	.dw _grid_fg_06
   6E02 B4 6F               351 	.dw _grid_fg_07
   6E04 F0 6F               352 	.dw _grid_fg_08
   6E06 2C 70               353 	.dw _grid_fg_09
   6E08 68 70               354 	.dw _grid_fg_10
   6E0A A4 70               355 	.dw _grid_fg_11
   6E0C E0 70               356 	.dw _grid_fg_12
   6E0E 1C 71               357 	.dw _grid_fg_13
   6E10                     358 _grid_fg_00:
   6E10 FF                  359 	.db #0xff	; 255
   6E11 00                  360 	.db #0x00	; 0
   6E12 FF                  361 	.db #0xff	; 255
   6E13 00                  362 	.db #0x00	; 0
   6E14 FF                  363 	.db #0xff	; 255
   6E15 00                  364 	.db #0x00	; 0
   6E16 FF                  365 	.db #0xff	; 255
   6E17 00                  366 	.db #0x00	; 0
   6E18 FF                  367 	.db #0xff	; 255
   6E19 00                  368 	.db #0x00	; 0
   6E1A FF                  369 	.db #0xff	; 255
   6E1B 00                  370 	.db #0x00	; 0
   6E1C FF                  371 	.db #0xff	; 255
   6E1D 00                  372 	.db #0x00	; 0
   6E1E FF                  373 	.db #0xff	; 255
   6E1F 00                  374 	.db #0x00	; 0
   6E20 FF                  375 	.db #0xff	; 255
   6E21 00                  376 	.db #0x00	; 0
   6E22 FF                  377 	.db #0xff	; 255
   6E23 00                  378 	.db #0x00	; 0
   6E24 FF                  379 	.db #0xff	; 255
   6E25 00                  380 	.db #0x00	; 0
   6E26 FF                  381 	.db #0xff	; 255
   6E27 00                  382 	.db #0x00	; 0
   6E28 FF                  383 	.db #0xff	; 255
   6E29 00                  384 	.db #0x00	; 0
   6E2A FF                  385 	.db #0xff	; 255
   6E2B 00                  386 	.db #0x00	; 0
   6E2C FF                  387 	.db #0xff	; 255
   6E2D 00                  388 	.db #0x00	; 0
   6E2E FF                  389 	.db #0xff	; 255
   6E2F 00                  390 	.db #0x00	; 0
   6E30 FF                  391 	.db #0xff	; 255
   6E31 00                  392 	.db #0x00	; 0
   6E32 FF                  393 	.db #0xff	; 255
   6E33 00                  394 	.db #0x00	; 0
   6E34 FF                  395 	.db #0xff	; 255
   6E35 00                  396 	.db #0x00	; 0
   6E36 FF                  397 	.db #0xff	; 255
   6E37 00                  398 	.db #0x00	; 0
   6E38 FF                  399 	.db #0xff	; 255
   6E39 00                  400 	.db #0x00	; 0
   6E3A FF                  401 	.db #0xff	; 255
   6E3B 00                  402 	.db #0x00	; 0
   6E3C FF                  403 	.db #0xff	; 255
   6E3D 00                  404 	.db #0x00	; 0
   6E3E FF                  405 	.db #0xff	; 255
   6E3F 00                  406 	.db #0x00	; 0
   6E40 FF                  407 	.db #0xff	; 255
   6E41 00                  408 	.db #0x00	; 0
   6E42 FF                  409 	.db #0xff	; 255
   6E43 00                  410 	.db #0x00	; 0
   6E44 FF                  411 	.db #0xff	; 255
   6E45 00                  412 	.db #0x00	; 0
   6E46 FF                  413 	.db #0xff	; 255
   6E47 00                  414 	.db #0x00	; 0
   6E48 FF                  415 	.db #0xff	; 255
   6E49 00                  416 	.db #0x00	; 0
   6E4A FF                  417 	.db #0xff	; 255
   6E4B 00                  418 	.db #0x00	; 0
   6E4C                     419 _grid_fg_01:
   6E4C FF                  420 	.db #0xff	; 255
   6E4D 00                  421 	.db #0x00	; 0
   6E4E 55                  422 	.db #0x55	; 85	'U'
   6E4F 80                  423 	.db #0x80	; 128
   6E50 FF                  424 	.db #0xff	; 255
   6E51 00                  425 	.db #0x00	; 0
   6E52 FF                  426 	.db #0xff	; 255
   6E53 00                  427 	.db #0x00	; 0
   6E54 55                  428 	.db #0x55	; 85	'U'
   6E55 80                  429 	.db #0x80	; 128
   6E56 FF                  430 	.db #0xff	; 255
   6E57 00                  431 	.db #0x00	; 0
   6E58 AA                  432 	.db #0xaa	; 170
   6E59 40                  433 	.db #0x40	; 64
   6E5A 00                  434 	.db #0x00	; 0
   6E5B 68                  435 	.db #0x68	; 104	'h'
   6E5C FF                  436 	.db #0xff	; 255
   6E5D 00                  437 	.db #0x00	; 0
   6E5E AA                  438 	.db #0xaa	; 170
   6E5F 40                  439 	.db #0x40	; 64
   6E60 00                  440 	.db #0x00	; 0
   6E61 68                  441 	.db #0x68	; 104	'h'
   6E62 FF                  442 	.db #0xff	; 255
   6E63 00                  443 	.db #0x00	; 0
   6E64 00                  444 	.db #0x00	; 0
   6E65 94                  445 	.db #0x94	; 148
   6E66 00                  446 	.db #0x00	; 0
   6E67 BE                  447 	.db #0xbe	; 190
   6E68 55                  448 	.db #0x55	; 85	'U'
   6E69 80                  449 	.db #0x80	; 128
   6E6A 00                  450 	.db #0x00	; 0
   6E6B 94                  451 	.db #0x94	; 148
   6E6C 00                  452 	.db #0x00	; 0
   6E6D BE                  453 	.db #0xbe	; 190
   6E6E 55                  454 	.db #0x55	; 85	'U'
   6E6F 80                  455 	.db #0x80	; 128
   6E70 AA                  456 	.db #0xaa	; 170
   6E71 40                  457 	.db #0x40	; 64
   6E72 00                  458 	.db #0x00	; 0
   6E73 68                  459 	.db #0x68	; 104	'h'
   6E74 FF                  460 	.db #0xff	; 255
   6E75 00                  461 	.db #0x00	; 0
   6E76 AA                  462 	.db #0xaa	; 170
   6E77 40                  463 	.db #0x40	; 64
   6E78 00                  464 	.db #0x00	; 0
   6E79 68                  465 	.db #0x68	; 104	'h'
   6E7A FF                  466 	.db #0xff	; 255
   6E7B 00                  467 	.db #0x00	; 0
   6E7C FF                  468 	.db #0xff	; 255
   6E7D 00                  469 	.db #0x00	; 0
   6E7E 55                  470 	.db #0x55	; 85	'U'
   6E7F 80                  471 	.db #0x80	; 128
   6E80 FF                  472 	.db #0xff	; 255
   6E81 00                  473 	.db #0x00	; 0
   6E82 FF                  474 	.db #0xff	; 255
   6E83 00                  475 	.db #0x00	; 0
   6E84 55                  476 	.db #0x55	; 85	'U'
   6E85 80                  477 	.db #0x80	; 128
   6E86 FF                  478 	.db #0xff	; 255
   6E87 00                  479 	.db #0x00	; 0
   6E88                     480 _grid_fg_02:
   6E88 FF                  481 	.db #0xff	; 255
   6E89 00                  482 	.db #0x00	; 0
   6E8A 55                  483 	.db #0x55	; 85	'U'
   6E8B 88                  484 	.db #0x88	; 136
   6E8C FF                  485 	.db #0xff	; 255
   6E8D 00                  486 	.db #0x00	; 0
   6E8E FF                  487 	.db #0xff	; 255
   6E8F 00                  488 	.db #0x00	; 0
   6E90 55                  489 	.db #0x55	; 85	'U'
   6E91 88                  490 	.db #0x88	; 136
   6E92 FF                  491 	.db #0xff	; 255
   6E93 00                  492 	.db #0x00	; 0
   6E94 AA                  493 	.db #0xaa	; 170
   6E95 44                  494 	.db #0x44	; 68	'D'
   6E96 00                  495 	.db #0x00	; 0
   6E97 4E                  496 	.db #0x4e	; 78	'N'
   6E98 FF                  497 	.db #0xff	; 255
   6E99 00                  498 	.db #0x00	; 0
   6E9A AA                  499 	.db #0xaa	; 170
   6E9B 44                  500 	.db #0x44	; 68	'D'
   6E9C 00                  501 	.db #0x00	; 0
   6E9D 4E                  502 	.db #0x4e	; 78	'N'
   6E9E FF                  503 	.db #0xff	; 255
   6E9F 00                  504 	.db #0x00	; 0
   6EA0 00                  505 	.db #0x00	; 0
   6EA1 8D                  506 	.db #0x8d	; 141
   6EA2 00                  507 	.db #0x00	; 0
   6EA3 AF                  508 	.db #0xaf	; 175
   6EA4 55                  509 	.db #0x55	; 85	'U'
   6EA5 88                  510 	.db #0x88	; 136
   6EA6 00                  511 	.db #0x00	; 0
   6EA7 8D                  512 	.db #0x8d	; 141
   6EA8 00                  513 	.db #0x00	; 0
   6EA9 AF                  514 	.db #0xaf	; 175
   6EAA 55                  515 	.db #0x55	; 85	'U'
   6EAB 88                  516 	.db #0x88	; 136
   6EAC AA                  517 	.db #0xaa	; 170
   6EAD 44                  518 	.db #0x44	; 68	'D'
   6EAE 00                  519 	.db #0x00	; 0
   6EAF 4E                  520 	.db #0x4e	; 78	'N'
   6EB0 FF                  521 	.db #0xff	; 255
   6EB1 00                  522 	.db #0x00	; 0
   6EB2 AA                  523 	.db #0xaa	; 170
   6EB3 44                  524 	.db #0x44	; 68	'D'
   6EB4 00                  525 	.db #0x00	; 0
   6EB5 4E                  526 	.db #0x4e	; 78	'N'
   6EB6 FF                  527 	.db #0xff	; 255
   6EB7 00                  528 	.db #0x00	; 0
   6EB8 FF                  529 	.db #0xff	; 255
   6EB9 00                  530 	.db #0x00	; 0
   6EBA 55                  531 	.db #0x55	; 85	'U'
   6EBB 88                  532 	.db #0x88	; 136
   6EBC FF                  533 	.db #0xff	; 255
   6EBD 00                  534 	.db #0x00	; 0
   6EBE FF                  535 	.db #0xff	; 255
   6EBF 00                  536 	.db #0x00	; 0
   6EC0 55                  537 	.db #0x55	; 85	'U'
   6EC1 88                  538 	.db #0x88	; 136
   6EC2 FF                  539 	.db #0xff	; 255
   6EC3 00                  540 	.db #0x00	; 0
   6EC4                     541 _grid_fg_03:
   6EC4 FF                  542 	.db #0xff	; 255
   6EC5 00                  543 	.db #0x00	; 0
   6EC6 55                  544 	.db #0x55	; 85	'U'
   6EC7 A0                  545 	.db #0xa0	; 160
   6EC8 FF                  546 	.db #0xff	; 255
   6EC9 00                  547 	.db #0x00	; 0
   6ECA FF                  548 	.db #0xff	; 255
   6ECB 00                  549 	.db #0x00	; 0
   6ECC 55                  550 	.db #0x55	; 85	'U'
   6ECD A0                  551 	.db #0xa0	; 160
   6ECE FF                  552 	.db #0xff	; 255
   6ECF 00                  553 	.db #0x00	; 0
   6ED0 AA                  554 	.db #0xaa	; 170
   6ED1 50                  555 	.db #0x50	; 80	'P'
   6ED2 00                  556 	.db #0x00	; 0
   6ED3 DA                  557 	.db #0xda	; 218
   6ED4 FF                  558 	.db #0xff	; 255
   6ED5 00                  559 	.db #0x00	; 0
   6ED6 AA                  560 	.db #0xaa	; 170
   6ED7 50                  561 	.db #0x50	; 80	'P'
   6ED8 00                  562 	.db #0x00	; 0
   6ED9 DA                  563 	.db #0xda	; 218
   6EDA FF                  564 	.db #0xff	; 255
   6EDB 00                  565 	.db #0x00	; 0
   6EDC 00                  566 	.db #0x00	; 0
   6EDD E5                  567 	.db #0xe5	; 229
   6EDE 00                  568 	.db #0x00	; 0
   6EDF EF                  569 	.db #0xef	; 239
   6EE0 55                  570 	.db #0x55	; 85	'U'
   6EE1 A0                  571 	.db #0xa0	; 160
   6EE2 00                  572 	.db #0x00	; 0
   6EE3 E5                  573 	.db #0xe5	; 229
   6EE4 00                  574 	.db #0x00	; 0
   6EE5 EF                  575 	.db #0xef	; 239
   6EE6 55                  576 	.db #0x55	; 85	'U'
   6EE7 A0                  577 	.db #0xa0	; 160
   6EE8 AA                  578 	.db #0xaa	; 170
   6EE9 50                  579 	.db #0x50	; 80	'P'
   6EEA 00                  580 	.db #0x00	; 0
   6EEB DA                  581 	.db #0xda	; 218
   6EEC FF                  582 	.db #0xff	; 255
   6EED 00                  583 	.db #0x00	; 0
   6EEE AA                  584 	.db #0xaa	; 170
   6EEF 50                  585 	.db #0x50	; 80	'P'
   6EF0 00                  586 	.db #0x00	; 0
   6EF1 DA                  587 	.db #0xda	; 218
   6EF2 FF                  588 	.db #0xff	; 255
   6EF3 00                  589 	.db #0x00	; 0
   6EF4 FF                  590 	.db #0xff	; 255
   6EF5 00                  591 	.db #0x00	; 0
   6EF6 55                  592 	.db #0x55	; 85	'U'
   6EF7 A0                  593 	.db #0xa0	; 160
   6EF8 FF                  594 	.db #0xff	; 255
   6EF9 00                  595 	.db #0x00	; 0
   6EFA FF                  596 	.db #0xff	; 255
   6EFB 00                  597 	.db #0x00	; 0
   6EFC 55                  598 	.db #0x55	; 85	'U'
   6EFD A0                  599 	.db #0xa0	; 160
   6EFE FF                  600 	.db #0xff	; 255
   6EFF 00                  601 	.db #0x00	; 0
   6F00                     602 _grid_fg_04:
   6F00 FF                  603 	.db #0xff	; 255
   6F01 00                  604 	.db #0x00	; 0
   6F02 55                  605 	.db #0x55	; 85	'U'
   6F03 20                  606 	.db #0x20	; 32
   6F04 FF                  607 	.db #0xff	; 255
   6F05 00                  608 	.db #0x00	; 0
   6F06 FF                  609 	.db #0xff	; 255
   6F07 00                  610 	.db #0x00	; 0
   6F08 55                  611 	.db #0x55	; 85	'U'
   6F09 20                  612 	.db #0x20	; 32
   6F0A FF                  613 	.db #0xff	; 255
   6F0B 00                  614 	.db #0x00	; 0
   6F0C AA                  615 	.db #0xaa	; 170
   6F0D 10                  616 	.db #0x10	; 16
   6F0E 00                  617 	.db #0x00	; 0
   6F0F 92                  618 	.db #0x92	; 146
   6F10 FF                  619 	.db #0xff	; 255
   6F11 00                  620 	.db #0x00	; 0
   6F12 AA                  621 	.db #0xaa	; 170
   6F13 10                  622 	.db #0x10	; 16
   6F14 00                  623 	.db #0x00	; 0
   6F15 92                  624 	.db #0x92	; 146
   6F16 FF                  625 	.db #0xff	; 255
   6F17 00                  626 	.db #0x00	; 0
   6F18 00                  627 	.db #0x00	; 0
   6F19 61                  628 	.db #0x61	; 97	'a'
   6F1A 00                  629 	.db #0x00	; 0
   6F1B EB                  630 	.db #0xeb	; 235
   6F1C 55                  631 	.db #0x55	; 85	'U'
   6F1D 20                  632 	.db #0x20	; 32
   6F1E 00                  633 	.db #0x00	; 0
   6F1F 61                  634 	.db #0x61	; 97	'a'
   6F20 00                  635 	.db #0x00	; 0
   6F21 EB                  636 	.db #0xeb	; 235
   6F22 55                  637 	.db #0x55	; 85	'U'
   6F23 20                  638 	.db #0x20	; 32
   6F24 AA                  639 	.db #0xaa	; 170
   6F25 10                  640 	.db #0x10	; 16
   6F26 00                  641 	.db #0x00	; 0
   6F27 92                  642 	.db #0x92	; 146
   6F28 FF                  643 	.db #0xff	; 255
   6F29 00                  644 	.db #0x00	; 0
   6F2A AA                  645 	.db #0xaa	; 170
   6F2B 10                  646 	.db #0x10	; 16
   6F2C 00                  647 	.db #0x00	; 0
   6F2D 92                  648 	.db #0x92	; 146
   6F2E FF                  649 	.db #0xff	; 255
   6F2F 00                  650 	.db #0x00	; 0
   6F30 FF                  651 	.db #0xff	; 255
   6F31 00                  652 	.db #0x00	; 0
   6F32 55                  653 	.db #0x55	; 85	'U'
   6F33 20                  654 	.db #0x20	; 32
   6F34 FF                  655 	.db #0xff	; 255
   6F35 00                  656 	.db #0x00	; 0
   6F36 FF                  657 	.db #0xff	; 255
   6F37 00                  658 	.db #0x00	; 0
   6F38 55                  659 	.db #0x55	; 85	'U'
   6F39 20                  660 	.db #0x20	; 32
   6F3A FF                  661 	.db #0xff	; 255
   6F3B 00                  662 	.db #0x00	; 0
   6F3C                     663 _grid_fg_05:
   6F3C FF                  664 	.db #0xff	; 255
   6F3D 00                  665 	.db #0x00	; 0
   6F3E 55                  666 	.db #0x55	; 85	'U'
   6F3F 82                  667 	.db #0x82	; 130
   6F40 FF                  668 	.db #0xff	; 255
   6F41 00                  669 	.db #0x00	; 0
   6F42 FF                  670 	.db #0xff	; 255
   6F43 00                  671 	.db #0x00	; 0
   6F44 55                  672 	.db #0x55	; 85	'U'
   6F45 82                  673 	.db #0x82	; 130
   6F46 FF                  674 	.db #0xff	; 255
   6F47 00                  675 	.db #0x00	; 0
   6F48 AA                  676 	.db #0xaa	; 170
   6F49 41                  677 	.db #0x41	; 65	'A'
   6F4A 00                  678 	.db #0x00	; 0
   6F4B E3                  679 	.db #0xe3	; 227
   6F4C FF                  680 	.db #0xff	; 255
   6F4D 00                  681 	.db #0x00	; 0
   6F4E AA                  682 	.db #0xaa	; 170
   6F4F 41                  683 	.db #0x41	; 65	'A'
   6F50 00                  684 	.db #0x00	; 0
   6F51 E3                  685 	.db #0xe3	; 227
   6F52 FF                  686 	.db #0xff	; 255
   6F53 00                  687 	.db #0x00	; 0
   6F54 00                  688 	.db #0x00	; 0
   6F55 D3                  689 	.db #0xd3	; 211
   6F56 00                  690 	.db #0x00	; 0
   6F57 FB                  691 	.db #0xfb	; 251
   6F58 55                  692 	.db #0x55	; 85	'U'
   6F59 82                  693 	.db #0x82	; 130
   6F5A 00                  694 	.db #0x00	; 0
   6F5B D3                  695 	.db #0xd3	; 211
   6F5C 00                  696 	.db #0x00	; 0
   6F5D FB                  697 	.db #0xfb	; 251
   6F5E 55                  698 	.db #0x55	; 85	'U'
   6F5F 82                  699 	.db #0x82	; 130
   6F60 AA                  700 	.db #0xaa	; 170
   6F61 41                  701 	.db #0x41	; 65	'A'
   6F62 00                  702 	.db #0x00	; 0
   6F63 E3                  703 	.db #0xe3	; 227
   6F64 FF                  704 	.db #0xff	; 255
   6F65 00                  705 	.db #0x00	; 0
   6F66 AA                  706 	.db #0xaa	; 170
   6F67 41                  707 	.db #0x41	; 65	'A'
   6F68 00                  708 	.db #0x00	; 0
   6F69 E3                  709 	.db #0xe3	; 227
   6F6A FF                  710 	.db #0xff	; 255
   6F6B 00                  711 	.db #0x00	; 0
   6F6C FF                  712 	.db #0xff	; 255
   6F6D 00                  713 	.db #0x00	; 0
   6F6E 55                  714 	.db #0x55	; 85	'U'
   6F6F 82                  715 	.db #0x82	; 130
   6F70 FF                  716 	.db #0xff	; 255
   6F71 00                  717 	.db #0x00	; 0
   6F72 FF                  718 	.db #0xff	; 255
   6F73 00                  719 	.db #0x00	; 0
   6F74 55                  720 	.db #0x55	; 85	'U'
   6F75 82                  721 	.db #0x82	; 130
   6F76 FF                  722 	.db #0xff	; 255
   6F77 00                  723 	.db #0x00	; 0
   6F78                     724 _grid_fg_06:
   6F78 FF                  725 	.db #0xff	; 255
   6F79 00                  726 	.db #0x00	; 0
   6F7A AA                  727 	.db #0xaa	; 170
   6F7B 11                  728 	.db #0x11	; 17
   6F7C FF                  729 	.db #0xff	; 255
   6F7D 00                  730 	.db #0x00	; 0
   6F7E FF                  731 	.db #0xff	; 255
   6F7F 00                  732 	.db #0x00	; 0
   6F80 AA                  733 	.db #0xaa	; 170
   6F81 11                  734 	.db #0x11	; 17
   6F82 FF                  735 	.db #0xff	; 255
   6F83 00                  736 	.db #0x00	; 0
   6F84 55                  737 	.db #0x55	; 85	'U'
   6F85 22                  738 	.db #0x22	; 34
   6F86 00                  739 	.db #0x00	; 0
   6F87 62                  740 	.db #0x62	; 98	'b'
   6F88 55                  741 	.db #0x55	; 85	'U'
   6F89 22                  742 	.db #0x22	; 34
   6F8A 55                  743 	.db #0x55	; 85	'U'
   6F8B 22                  744 	.db #0x22	; 34
   6F8C 00                  745 	.db #0x00	; 0
   6F8D 62                  746 	.db #0x62	; 98	'b'
   6F8E 55                  747 	.db #0x55	; 85	'U'
   6F8F 22                  748 	.db #0x22	; 34
   6F90 00                  749 	.db #0x00	; 0
   6F91 91                  750 	.db #0x91	; 145
   6F92 55                  751 	.db #0x55	; 85	'U'
   6F93 80                  752 	.db #0x80	; 128
   6F94 55                  753 	.db #0x55	; 85	'U'
   6F95 80                  754 	.db #0x80	; 128
   6F96 00                  755 	.db #0x00	; 0
   6F97 91                  756 	.db #0x91	; 145
   6F98 55                  757 	.db #0x55	; 85	'U'
   6F99 80                  758 	.db #0x80	; 128
   6F9A 55                  759 	.db #0x55	; 85	'U'
   6F9B 80                  760 	.db #0x80	; 128
   6F9C AA                  761 	.db #0xaa	; 170
   6F9D 40                  762 	.db #0x40	; 64
   6F9E FF                  763 	.db #0xff	; 255
   6F9F 00                  764 	.db #0x00	; 0
   6FA0 FF                  765 	.db #0xff	; 255
   6FA1 00                  766 	.db #0x00	; 0
   6FA2 AA                  767 	.db #0xaa	; 170
   6FA3 40                  768 	.db #0x40	; 64
   6FA4 FF                  769 	.db #0xff	; 255
   6FA5 00                  770 	.db #0x00	; 0
   6FA6 FF                  771 	.db #0xff	; 255
   6FA7 00                  772 	.db #0x00	; 0
   6FA8 FF                  773 	.db #0xff	; 255
   6FA9 00                  774 	.db #0x00	; 0
   6FAA FF                  775 	.db #0xff	; 255
   6FAB 00                  776 	.db #0x00	; 0
   6FAC FF                  777 	.db #0xff	; 255
   6FAD 00                  778 	.db #0x00	; 0
   6FAE FF                  779 	.db #0xff	; 255
   6FAF 00                  780 	.db #0x00	; 0
   6FB0 FF                  781 	.db #0xff	; 255
   6FB1 00                  782 	.db #0x00	; 0
   6FB2 FF                  783 	.db #0xff	; 255
   6FB3 00                  784 	.db #0x00	; 0
   6FB4                     785 _grid_fg_07:
   6FB4 FF                  786 	.db #0xff	; 255
   6FB5 00                  787 	.db #0x00	; 0
   6FB6 AA                  788 	.db #0xaa	; 170
   6FB7 55                  789 	.db #0x55	; 85	'U'
   6FB8 FF                  790 	.db #0xff	; 255
   6FB9 00                  791 	.db #0x00	; 0
   6FBA FF                  792 	.db #0xff	; 255
   6FBB 00                  793 	.db #0x00	; 0
   6FBC AA                  794 	.db #0xaa	; 170
   6FBD 55                  795 	.db #0x55	; 85	'U'
   6FBE FF                  796 	.db #0xff	; 255
   6FBF 00                  797 	.db #0x00	; 0
   6FC0 55                  798 	.db #0x55	; 85	'U'
   6FC1 AA                  799 	.db #0xaa	; 170
   6FC2 00                  800 	.db #0x00	; 0
   6FC3 BE                  801 	.db #0xbe	; 190
   6FC4 55                  802 	.db #0x55	; 85	'U'
   6FC5 AA                  803 	.db #0xaa	; 170
   6FC6 55                  804 	.db #0x55	; 85	'U'
   6FC7 AA                  805 	.db #0xaa	; 170
   6FC8 00                  806 	.db #0x00	; 0
   6FC9 BE                  807 	.db #0xbe	; 190
   6FCA 55                  808 	.db #0x55	; 85	'U'
   6FCB AA                  809 	.db #0xaa	; 170
   6FCC 00                  810 	.db #0x00	; 0
   6FCD 7D                  811 	.db #0x7d	; 125
   6FCE 55                  812 	.db #0x55	; 85	'U'
   6FCF 28                  813 	.db #0x28	; 40
   6FD0 55                  814 	.db #0x55	; 85	'U'
   6FD1 28                  815 	.db #0x28	; 40
   6FD2 00                  816 	.db #0x00	; 0
   6FD3 7D                  817 	.db #0x7d	; 125
   6FD4 55                  818 	.db #0x55	; 85	'U'
   6FD5 28                  819 	.db #0x28	; 40
   6FD6 55                  820 	.db #0x55	; 85	'U'
   6FD7 28                  821 	.db #0x28	; 40
   6FD8 AA                  822 	.db #0xaa	; 170
   6FD9 14                  823 	.db #0x14	; 20
   6FDA FF                  824 	.db #0xff	; 255
   6FDB 00                  825 	.db #0x00	; 0
   6FDC FF                  826 	.db #0xff	; 255
   6FDD 00                  827 	.db #0x00	; 0
   6FDE AA                  828 	.db #0xaa	; 170
   6FDF 14                  829 	.db #0x14	; 20
   6FE0 FF                  830 	.db #0xff	; 255
   6FE1 00                  831 	.db #0x00	; 0
   6FE2 FF                  832 	.db #0xff	; 255
   6FE3 00                  833 	.db #0x00	; 0
   6FE4 FF                  834 	.db #0xff	; 255
   6FE5 00                  835 	.db #0x00	; 0
   6FE6 FF                  836 	.db #0xff	; 255
   6FE7 00                  837 	.db #0x00	; 0
   6FE8 FF                  838 	.db #0xff	; 255
   6FE9 00                  839 	.db #0x00	; 0
   6FEA FF                  840 	.db #0xff	; 255
   6FEB 00                  841 	.db #0x00	; 0
   6FEC FF                  842 	.db #0xff	; 255
   6FED 00                  843 	.db #0x00	; 0
   6FEE FF                  844 	.db #0xff	; 255
   6FEF 00                  845 	.db #0x00	; 0
   6FF0                     846 _grid_fg_08:
   6FF0 FF                  847 	.db #0xff	; 255
   6FF1 00                  848 	.db #0x00	; 0
   6FF2 00                  849 	.db #0x00	; 0
   6FF3 91                  850 	.db #0x91	; 145
   6FF4 FF                  851 	.db #0xff	; 255
   6FF5 00                  852 	.db #0x00	; 0
   6FF6 FF                  853 	.db #0xff	; 255
   6FF7 00                  854 	.db #0x00	; 0
   6FF8 00                  855 	.db #0x00	; 0
   6FF9 91                  856 	.db #0x91	; 145
   6FFA FF                  857 	.db #0xff	; 255
   6FFB 00                  858 	.db #0x00	; 0
   6FFC AA                  859 	.db #0xaa	; 170
   6FFD 40                  860 	.db #0x40	; 64
   6FFE 55                  861 	.db #0x55	; 85	'U'
   6FFF 22                  862 	.db #0x22	; 34
   7000 FF                  863 	.db #0xff	; 255
   7001 00                  864 	.db #0x00	; 0
   7002 AA                  865 	.db #0xaa	; 170
   7003 40                  866 	.db #0x40	; 64
   7004 55                  867 	.db #0x55	; 85	'U'
   7005 22                  868 	.db #0x22	; 34
   7006 FF                  869 	.db #0xff	; 255
   7007 00                  870 	.db #0x00	; 0
   7008 FF                  871 	.db #0xff	; 255
   7009 00                  872 	.db #0x00	; 0
   700A 00                  873 	.db #0x00	; 0
   700B 91                  874 	.db #0x91	; 145
   700C FF                  875 	.db #0xff	; 255
   700D 00                  876 	.db #0x00	; 0
   700E FF                  877 	.db #0xff	; 255
   700F 00                  878 	.db #0x00	; 0
   7010 00                  879 	.db #0x00	; 0
   7011 91                  880 	.db #0x91	; 145
   7012 FF                  881 	.db #0xff	; 255
   7013 00                  882 	.db #0x00	; 0
   7014 FF                  883 	.db #0xff	; 255
   7015 00                  884 	.db #0x00	; 0
   7016 AA                  885 	.db #0xaa	; 170
   7017 40                  886 	.db #0x40	; 64
   7018 55                  887 	.db #0x55	; 85	'U'
   7019 22                  888 	.db #0x22	; 34
   701A FF                  889 	.db #0xff	; 255
   701B 00                  890 	.db #0x00	; 0
   701C AA                  891 	.db #0xaa	; 170
   701D 40                  892 	.db #0x40	; 64
   701E 55                  893 	.db #0x55	; 85	'U'
   701F 22                  894 	.db #0x22	; 34
   7020 FF                  895 	.db #0xff	; 255
   7021 00                  896 	.db #0x00	; 0
   7022 00                  897 	.db #0x00	; 0
   7023 91                  898 	.db #0x91	; 145
   7024 FF                  899 	.db #0xff	; 255
   7025 00                  900 	.db #0x00	; 0
   7026 FF                  901 	.db #0xff	; 255
   7027 00                  902 	.db #0x00	; 0
   7028 00                  903 	.db #0x00	; 0
   7029 91                  904 	.db #0x91	; 145
   702A FF                  905 	.db #0xff	; 255
   702B 00                  906 	.db #0x00	; 0
   702C                     907 _grid_fg_09:
   702C FF                  908 	.db #0xff	; 255
   702D 00                  909 	.db #0x00	; 0
   702E 00                  910 	.db #0x00	; 0
   702F 7D                  911 	.db #0x7d	; 125
   7030 FF                  912 	.db #0xff	; 255
   7031 00                  913 	.db #0x00	; 0
   7032 FF                  914 	.db #0xff	; 255
   7033 00                  915 	.db #0x00	; 0
   7034 00                  916 	.db #0x00	; 0
   7035 7D                  917 	.db #0x7d	; 125
   7036 FF                  918 	.db #0xff	; 255
   7037 00                  919 	.db #0x00	; 0
   7038 AA                  920 	.db #0xaa	; 170
   7039 14                  921 	.db #0x14	; 20
   703A 55                  922 	.db #0x55	; 85	'U'
   703B AA                  923 	.db #0xaa	; 170
   703C FF                  924 	.db #0xff	; 255
   703D 00                  925 	.db #0x00	; 0
   703E AA                  926 	.db #0xaa	; 170
   703F 14                  927 	.db #0x14	; 20
   7040 55                  928 	.db #0x55	; 85	'U'
   7041 AA                  929 	.db #0xaa	; 170
   7042 FF                  930 	.db #0xff	; 255
   7043 00                  931 	.db #0x00	; 0
   7044 FF                  932 	.db #0xff	; 255
   7045 00                  933 	.db #0x00	; 0
   7046 00                  934 	.db #0x00	; 0
   7047 7D                  935 	.db #0x7d	; 125
   7048 FF                  936 	.db #0xff	; 255
   7049 00                  937 	.db #0x00	; 0
   704A FF                  938 	.db #0xff	; 255
   704B 00                  939 	.db #0x00	; 0
   704C 00                  940 	.db #0x00	; 0
   704D 7D                  941 	.db #0x7d	; 125
   704E FF                  942 	.db #0xff	; 255
   704F 00                  943 	.db #0x00	; 0
   7050 FF                  944 	.db #0xff	; 255
   7051 00                  945 	.db #0x00	; 0
   7052 AA                  946 	.db #0xaa	; 170
   7053 14                  947 	.db #0x14	; 20
   7054 55                  948 	.db #0x55	; 85	'U'
   7055 AA                  949 	.db #0xaa	; 170
   7056 FF                  950 	.db #0xff	; 255
   7057 00                  951 	.db #0x00	; 0
   7058 AA                  952 	.db #0xaa	; 170
   7059 14                  953 	.db #0x14	; 20
   705A 55                  954 	.db #0x55	; 85	'U'
   705B AA                  955 	.db #0xaa	; 170
   705C FF                  956 	.db #0xff	; 255
   705D 00                  957 	.db #0x00	; 0
   705E 00                  958 	.db #0x00	; 0
   705F 7D                  959 	.db #0x7d	; 125
   7060 FF                  960 	.db #0xff	; 255
   7061 00                  961 	.db #0x00	; 0
   7062 FF                  962 	.db #0xff	; 255
   7063 00                  963 	.db #0x00	; 0
   7064 00                  964 	.db #0x00	; 0
   7065 7D                  965 	.db #0x7d	; 125
   7066 FF                  966 	.db #0xff	; 255
   7067 00                  967 	.db #0x00	; 0
   7068                     968 _grid_fg_10:
   7068 FF                  969 	.db #0xff	; 255
   7069 00                  970 	.db #0x00	; 0
   706A AA                  971 	.db #0xaa	; 170
   706B 51                  972 	.db #0x51	; 81	'Q'
   706C FF                  973 	.db #0xff	; 255
   706D 00                  974 	.db #0x00	; 0
   706E FF                  975 	.db #0xff	; 255
   706F 00                  976 	.db #0x00	; 0
   7070 AA                  977 	.db #0xaa	; 170
   7071 51                  978 	.db #0x51	; 81	'Q'
   7072 FF                  979 	.db #0xff	; 255
   7073 00                  980 	.db #0x00	; 0
   7074 55                  981 	.db #0x55	; 85	'U'
   7075 A2                  982 	.db #0xa2	; 162
   7076 00                  983 	.db #0x00	; 0
   7077 E3                  984 	.db #0xe3	; 227
   7078 55                  985 	.db #0x55	; 85	'U'
   7079 A2                  986 	.db #0xa2	; 162
   707A 55                  987 	.db #0x55	; 85	'U'
   707B A2                  988 	.db #0xa2	; 162
   707C 00                  989 	.db #0x00	; 0
   707D E3                  990 	.db #0xe3	; 227
   707E 55                  991 	.db #0x55	; 85	'U'
   707F A2                  992 	.db #0xa2	; 162
   7080 00                  993 	.db #0x00	; 0
   7081 D3                  994 	.db #0xd3	; 211
   7082 55                  995 	.db #0x55	; 85	'U'
   7083 82                  996 	.db #0x82	; 130
   7084 55                  997 	.db #0x55	; 85	'U'
   7085 82                  998 	.db #0x82	; 130
   7086 00                  999 	.db #0x00	; 0
   7087 D3                 1000 	.db #0xd3	; 211
   7088 55                 1001 	.db #0x55	; 85	'U'
   7089 82                 1002 	.db #0x82	; 130
   708A 55                 1003 	.db #0x55	; 85	'U'
   708B 82                 1004 	.db #0x82	; 130
   708C AA                 1005 	.db #0xaa	; 170
   708D 41                 1006 	.db #0x41	; 65	'A'
   708E FF                 1007 	.db #0xff	; 255
   708F 00                 1008 	.db #0x00	; 0
   7090 FF                 1009 	.db #0xff	; 255
   7091 00                 1010 	.db #0x00	; 0
   7092 AA                 1011 	.db #0xaa	; 170
   7093 41                 1012 	.db #0x41	; 65	'A'
   7094 FF                 1013 	.db #0xff	; 255
   7095 00                 1014 	.db #0x00	; 0
   7096 FF                 1015 	.db #0xff	; 255
   7097 00                 1016 	.db #0x00	; 0
   7098 FF                 1017 	.db #0xff	; 255
   7099 00                 1018 	.db #0x00	; 0
   709A FF                 1019 	.db #0xff	; 255
   709B 00                 1020 	.db #0x00	; 0
   709C FF                 1021 	.db #0xff	; 255
   709D 00                 1022 	.db #0x00	; 0
   709E FF                 1023 	.db #0xff	; 255
   709F 00                 1024 	.db #0x00	; 0
   70A0 FF                 1025 	.db #0xff	; 255
   70A1 00                 1026 	.db #0x00	; 0
   70A2 FF                 1027 	.db #0xff	; 255
   70A3 00                 1028 	.db #0x00	; 0
   70A4                    1029 _grid_fg_11:
   70A4 FF                 1030 	.db #0xff	; 255
   70A5 00                 1031 	.db #0x00	; 0
   70A6 AA                 1032 	.db #0xaa	; 170
   70A7 55                 1033 	.db #0x55	; 85	'U'
   70A8 FF                 1034 	.db #0xff	; 255
   70A9 00                 1035 	.db #0x00	; 0
   70AA FF                 1036 	.db #0xff	; 255
   70AB 00                 1037 	.db #0x00	; 0
   70AC AA                 1038 	.db #0xaa	; 170
   70AD 55                 1039 	.db #0x55	; 85	'U'
   70AE FF                 1040 	.db #0xff	; 255
   70AF 00                 1041 	.db #0x00	; 0
   70B0 55                 1042 	.db #0x55	; 85	'U'
   70B1 AA                 1043 	.db #0xaa	; 170
   70B2 00                 1044 	.db #0x00	; 0
   70B3 BF                 1045 	.db #0xbf	; 191
   70B4 55                 1046 	.db #0x55	; 85	'U'
   70B5 AA                 1047 	.db #0xaa	; 170
   70B6 55                 1048 	.db #0x55	; 85	'U'
   70B7 AA                 1049 	.db #0xaa	; 170
   70B8 00                 1050 	.db #0x00	; 0
   70B9 BF                 1051 	.db #0xbf	; 191
   70BA 55                 1052 	.db #0x55	; 85	'U'
   70BB AA                 1053 	.db #0xaa	; 170
   70BC 00                 1054 	.db #0x00	; 0
   70BD 7F                 1055 	.db #0x7f	; 127
   70BE 55                 1056 	.db #0x55	; 85	'U'
   70BF 2A                 1057 	.db #0x2a	; 42
   70C0 55                 1058 	.db #0x55	; 85	'U'
   70C1 2A                 1059 	.db #0x2a	; 42
   70C2 00                 1060 	.db #0x00	; 0
   70C3 7F                 1061 	.db #0x7f	; 127
   70C4 55                 1062 	.db #0x55	; 85	'U'
   70C5 2A                 1063 	.db #0x2a	; 42
   70C6 55                 1064 	.db #0x55	; 85	'U'
   70C7 2A                 1065 	.db #0x2a	; 42
   70C8 AA                 1066 	.db #0xaa	; 170
   70C9 15                 1067 	.db #0x15	; 21
   70CA FF                 1068 	.db #0xff	; 255
   70CB 00                 1069 	.db #0x00	; 0
   70CC FF                 1070 	.db #0xff	; 255
   70CD 00                 1071 	.db #0x00	; 0
   70CE AA                 1072 	.db #0xaa	; 170
   70CF 15                 1073 	.db #0x15	; 21
   70D0 FF                 1074 	.db #0xff	; 255
   70D1 00                 1075 	.db #0x00	; 0
   70D2 FF                 1076 	.db #0xff	; 255
   70D3 00                 1077 	.db #0x00	; 0
   70D4 FF                 1078 	.db #0xff	; 255
   70D5 00                 1079 	.db #0x00	; 0
   70D6 FF                 1080 	.db #0xff	; 255
   70D7 00                 1081 	.db #0x00	; 0
   70D8 FF                 1082 	.db #0xff	; 255
   70D9 00                 1083 	.db #0x00	; 0
   70DA FF                 1084 	.db #0xff	; 255
   70DB 00                 1085 	.db #0x00	; 0
   70DC FF                 1086 	.db #0xff	; 255
   70DD 00                 1087 	.db #0x00	; 0
   70DE FF                 1088 	.db #0xff	; 255
   70DF 00                 1089 	.db #0x00	; 0
   70E0                    1090 _grid_fg_12:
   70E0 FF                 1091 	.db #0xff	; 255
   70E1 00                 1092 	.db #0x00	; 0
   70E2 00                 1093 	.db #0x00	; 0
   70E3 D3                 1094 	.db #0xd3	; 211
   70E4 FF                 1095 	.db #0xff	; 255
   70E5 00                 1096 	.db #0x00	; 0
   70E6 FF                 1097 	.db #0xff	; 255
   70E7 00                 1098 	.db #0x00	; 0
   70E8 00                 1099 	.db #0x00	; 0
   70E9 D3                 1100 	.db #0xd3	; 211
   70EA FF                 1101 	.db #0xff	; 255
   70EB 00                 1102 	.db #0x00	; 0
   70EC AA                 1103 	.db #0xaa	; 170
   70ED 41                 1104 	.db #0x41	; 65	'A'
   70EE 55                 1105 	.db #0x55	; 85	'U'
   70EF A2                 1106 	.db #0xa2	; 162
   70F0 FF                 1107 	.db #0xff	; 255
   70F1 00                 1108 	.db #0x00	; 0
   70F2 AA                 1109 	.db #0xaa	; 170
   70F3 41                 1110 	.db #0x41	; 65	'A'
   70F4 55                 1111 	.db #0x55	; 85	'U'
   70F5 A2                 1112 	.db #0xa2	; 162
   70F6 FF                 1113 	.db #0xff	; 255
   70F7 00                 1114 	.db #0x00	; 0
   70F8 FF                 1115 	.db #0xff	; 255
   70F9 00                 1116 	.db #0x00	; 0
   70FA 00                 1117 	.db #0x00	; 0
   70FB D3                 1118 	.db #0xd3	; 211
   70FC FF                 1119 	.db #0xff	; 255
   70FD 00                 1120 	.db #0x00	; 0
   70FE FF                 1121 	.db #0xff	; 255
   70FF 00                 1122 	.db #0x00	; 0
   7100 00                 1123 	.db #0x00	; 0
   7101 D3                 1124 	.db #0xd3	; 211
   7102 FF                 1125 	.db #0xff	; 255
   7103 00                 1126 	.db #0x00	; 0
   7104 FF                 1127 	.db #0xff	; 255
   7105 00                 1128 	.db #0x00	; 0
   7106 AA                 1129 	.db #0xaa	; 170
   7107 41                 1130 	.db #0x41	; 65	'A'
   7108 55                 1131 	.db #0x55	; 85	'U'
   7109 A2                 1132 	.db #0xa2	; 162
   710A FF                 1133 	.db #0xff	; 255
   710B 00                 1134 	.db #0x00	; 0
   710C AA                 1135 	.db #0xaa	; 170
   710D 41                 1136 	.db #0x41	; 65	'A'
   710E 55                 1137 	.db #0x55	; 85	'U'
   710F A2                 1138 	.db #0xa2	; 162
   7110 FF                 1139 	.db #0xff	; 255
   7111 00                 1140 	.db #0x00	; 0
   7112 00                 1141 	.db #0x00	; 0
   7113 D3                 1142 	.db #0xd3	; 211
   7114 FF                 1143 	.db #0xff	; 255
   7115 00                 1144 	.db #0x00	; 0
   7116 FF                 1145 	.db #0xff	; 255
   7117 00                 1146 	.db #0x00	; 0
   7118 00                 1147 	.db #0x00	; 0
   7119 D3                 1148 	.db #0xd3	; 211
   711A FF                 1149 	.db #0xff	; 255
   711B 00                 1150 	.db #0x00	; 0
   711C                    1151 _grid_fg_13:
   711C FF                 1152 	.db #0xff	; 255
   711D 00                 1153 	.db #0x00	; 0
   711E 00                 1154 	.db #0x00	; 0
   711F 7F                 1155 	.db #0x7f	; 127
   7120 FF                 1156 	.db #0xff	; 255
   7121 00                 1157 	.db #0x00	; 0
   7122 FF                 1158 	.db #0xff	; 255
   7123 00                 1159 	.db #0x00	; 0
   7124 00                 1160 	.db #0x00	; 0
   7125 7F                 1161 	.db #0x7f	; 127
   7126 FF                 1162 	.db #0xff	; 255
   7127 00                 1163 	.db #0x00	; 0
   7128 AA                 1164 	.db #0xaa	; 170
   7129 15                 1165 	.db #0x15	; 21
   712A 55                 1166 	.db #0x55	; 85	'U'
   712B AA                 1167 	.db #0xaa	; 170
   712C FF                 1168 	.db #0xff	; 255
   712D 00                 1169 	.db #0x00	; 0
   712E AA                 1170 	.db #0xaa	; 170
   712F 15                 1171 	.db #0x15	; 21
   7130 55                 1172 	.db #0x55	; 85	'U'
   7131 AA                 1173 	.db #0xaa	; 170
   7132 FF                 1174 	.db #0xff	; 255
   7133 00                 1175 	.db #0x00	; 0
   7134 FF                 1176 	.db #0xff	; 255
   7135 00                 1177 	.db #0x00	; 0
   7136 00                 1178 	.db #0x00	; 0
   7137 7F                 1179 	.db #0x7f	; 127
   7138 FF                 1180 	.db #0xff	; 255
   7139 00                 1181 	.db #0x00	; 0
   713A FF                 1182 	.db #0xff	; 255
   713B 00                 1183 	.db #0x00	; 0
   713C 00                 1184 	.db #0x00	; 0
   713D 7F                 1185 	.db #0x7f	; 127
   713E FF                 1186 	.db #0xff	; 255
   713F 00                 1187 	.db #0x00	; 0
   7140 FF                 1188 	.db #0xff	; 255
   7141 00                 1189 	.db #0x00	; 0
   7142 AA                 1190 	.db #0xaa	; 170
   7143 15                 1191 	.db #0x15	; 21
   7144 55                 1192 	.db #0x55	; 85	'U'
   7145 AA                 1193 	.db #0xaa	; 170
   7146 FF                 1194 	.db #0xff	; 255
   7147 00                 1195 	.db #0x00	; 0
   7148 AA                 1196 	.db #0xaa	; 170
   7149 15                 1197 	.db #0x15	; 21
   714A 55                 1198 	.db #0x55	; 85	'U'
   714B AA                 1199 	.db #0xaa	; 170
   714C FF                 1200 	.db #0xff	; 255
   714D 00                 1201 	.db #0x00	; 0
   714E 00                 1202 	.db #0x00	; 0
   714F 7F                 1203 	.db #0x7f	; 127
   7150 FF                 1204 	.db #0xff	; 255
   7151 00                 1205 	.db #0x00	; 0
   7152 FF                 1206 	.db #0xff	; 255
   7153 00                 1207 	.db #0x00	; 0
   7154 00                 1208 	.db #0x00	; 0
   7155 7F                 1209 	.db #0x7f	; 127
   7156 FF                 1210 	.db #0xff	; 255
   7157 00                 1211 	.db #0x00	; 0
   7158                    1212 _player_ts:
   7158 6A 71              1213 	.dw _player_00
   715A 32 72              1214 	.dw _player_01
   715C FA 72              1215 	.dw _player_02
   715E C2 73              1216 	.dw _player_03
   7160 8A 74              1217 	.dw _player_04
   7162 52 75              1218 	.dw _player_05
   7164 1A 76              1219 	.dw _player_06
   7166 E2 76              1220 	.dw _player_07
   7168 AA 77              1221 	.dw _player_08
   716A                    1222 _player_00:
   716A 00                 1223 	.db #0x00	; 0
   716B 00                 1224 	.db #0x00	; 0
   716C 00                 1225 	.db #0x00	; 0
   716D 00                 1226 	.db #0x00	; 0
   716E 00                 1227 	.db #0x00	; 0
   716F 00                 1228 	.db #0x00	; 0
   7170 00                 1229 	.db #0x00	; 0
   7171 00                 1230 	.db #0x00	; 0
   7172 00                 1231 	.db #0x00	; 0
   7173 00                 1232 	.db #0x00	; 0
   7174 00                 1233 	.db #0x00	; 0
   7175 00                 1234 	.db #0x00	; 0
   7176 00                 1235 	.db #0x00	; 0
   7177 00                 1236 	.db #0x00	; 0
   7178 00                 1237 	.db #0x00	; 0
   7179 00                 1238 	.db #0x00	; 0
   717A 00                 1239 	.db #0x00	; 0
   717B 00                 1240 	.db #0x00	; 0
   717C 00                 1241 	.db #0x00	; 0
   717D 00                 1242 	.db #0x00	; 0
   717E 00                 1243 	.db #0x00	; 0
   717F 00                 1244 	.db #0x00	; 0
   7180 00                 1245 	.db #0x00	; 0
   7181 00                 1246 	.db #0x00	; 0
   7182 00                 1247 	.db #0x00	; 0
   7183 00                 1248 	.db #0x00	; 0
   7184 00                 1249 	.db #0x00	; 0
   7185 00                 1250 	.db #0x00	; 0
   7186 00                 1251 	.db #0x00	; 0
   7187 00                 1252 	.db #0x00	; 0
   7188 00                 1253 	.db #0x00	; 0
   7189 00                 1254 	.db #0x00	; 0
   718A 00                 1255 	.db #0x00	; 0
   718B 00                 1256 	.db #0x00	; 0
   718C 00                 1257 	.db #0x00	; 0
   718D 00                 1258 	.db #0x00	; 0
   718E 00                 1259 	.db #0x00	; 0
   718F 00                 1260 	.db #0x00	; 0
   7190 00                 1261 	.db #0x00	; 0
   7191 00                 1262 	.db #0x00	; 0
   7192 00                 1263 	.db #0x00	; 0
   7193 00                 1264 	.db #0x00	; 0
   7194 00                 1265 	.db #0x00	; 0
   7195 00                 1266 	.db #0x00	; 0
   7196 00                 1267 	.db #0x00	; 0
   7197 00                 1268 	.db #0x00	; 0
   7198 00                 1269 	.db #0x00	; 0
   7199 00                 1270 	.db #0x00	; 0
   719A 00                 1271 	.db #0x00	; 0
   719B 00                 1272 	.db #0x00	; 0
   719C 00                 1273 	.db #0x00	; 0
   719D 00                 1274 	.db #0x00	; 0
   719E 00                 1275 	.db #0x00	; 0
   719F 00                 1276 	.db #0x00	; 0
   71A0 00                 1277 	.db #0x00	; 0
   71A1 00                 1278 	.db #0x00	; 0
   71A2 00                 1279 	.db #0x00	; 0
   71A3 00                 1280 	.db #0x00	; 0
   71A4 00                 1281 	.db #0x00	; 0
   71A5 00                 1282 	.db #0x00	; 0
   71A6 00                 1283 	.db #0x00	; 0
   71A7 00                 1284 	.db #0x00	; 0
   71A8 00                 1285 	.db #0x00	; 0
   71A9 00                 1286 	.db #0x00	; 0
   71AA 00                 1287 	.db #0x00	; 0
   71AB 00                 1288 	.db #0x00	; 0
   71AC 00                 1289 	.db #0x00	; 0
   71AD 00                 1290 	.db #0x00	; 0
   71AE 00                 1291 	.db #0x00	; 0
   71AF 00                 1292 	.db #0x00	; 0
   71B0 00                 1293 	.db #0x00	; 0
   71B1 00                 1294 	.db #0x00	; 0
   71B2 00                 1295 	.db #0x00	; 0
   71B3 00                 1296 	.db #0x00	; 0
   71B4 00                 1297 	.db #0x00	; 0
   71B5 00                 1298 	.db #0x00	; 0
   71B6 00                 1299 	.db #0x00	; 0
   71B7 00                 1300 	.db #0x00	; 0
   71B8 00                 1301 	.db #0x00	; 0
   71B9 00                 1302 	.db #0x00	; 0
   71BA 00                 1303 	.db #0x00	; 0
   71BB 00                 1304 	.db #0x00	; 0
   71BC 00                 1305 	.db #0x00	; 0
   71BD 00                 1306 	.db #0x00	; 0
   71BE 00                 1307 	.db #0x00	; 0
   71BF 00                 1308 	.db #0x00	; 0
   71C0 00                 1309 	.db #0x00	; 0
   71C1 00                 1310 	.db #0x00	; 0
   71C2 00                 1311 	.db #0x00	; 0
   71C3 00                 1312 	.db #0x00	; 0
   71C4 00                 1313 	.db #0x00	; 0
   71C5 00                 1314 	.db #0x00	; 0
   71C6 00                 1315 	.db #0x00	; 0
   71C7 00                 1316 	.db #0x00	; 0
   71C8 00                 1317 	.db #0x00	; 0
   71C9 00                 1318 	.db #0x00	; 0
   71CA 00                 1319 	.db #0x00	; 0
   71CB 00                 1320 	.db #0x00	; 0
   71CC 00                 1321 	.db #0x00	; 0
   71CD 00                 1322 	.db #0x00	; 0
   71CE 00                 1323 	.db #0x00	; 0
   71CF 00                 1324 	.db #0x00	; 0
   71D0 00                 1325 	.db #0x00	; 0
   71D1 00                 1326 	.db #0x00	; 0
   71D2 00                 1327 	.db #0x00	; 0
   71D3 00                 1328 	.db #0x00	; 0
   71D4 00                 1329 	.db #0x00	; 0
   71D5 00                 1330 	.db #0x00	; 0
   71D6 00                 1331 	.db #0x00	; 0
   71D7 00                 1332 	.db #0x00	; 0
   71D8 00                 1333 	.db #0x00	; 0
   71D9 00                 1334 	.db #0x00	; 0
   71DA 00                 1335 	.db #0x00	; 0
   71DB 00                 1336 	.db #0x00	; 0
   71DC 00                 1337 	.db #0x00	; 0
   71DD 00                 1338 	.db #0x00	; 0
   71DE 00                 1339 	.db #0x00	; 0
   71DF 00                 1340 	.db #0x00	; 0
   71E0 00                 1341 	.db #0x00	; 0
   71E1 00                 1342 	.db #0x00	; 0
   71E2 00                 1343 	.db #0x00	; 0
   71E3 00                 1344 	.db #0x00	; 0
   71E4 00                 1345 	.db #0x00	; 0
   71E5 00                 1346 	.db #0x00	; 0
   71E6 00                 1347 	.db #0x00	; 0
   71E7 00                 1348 	.db #0x00	; 0
   71E8 00                 1349 	.db #0x00	; 0
   71E9 00                 1350 	.db #0x00	; 0
   71EA 00                 1351 	.db #0x00	; 0
   71EB 00                 1352 	.db #0x00	; 0
   71EC 00                 1353 	.db #0x00	; 0
   71ED 00                 1354 	.db #0x00	; 0
   71EE 00                 1355 	.db #0x00	; 0
   71EF 00                 1356 	.db #0x00	; 0
   71F0 00                 1357 	.db #0x00	; 0
   71F1 00                 1358 	.db #0x00	; 0
   71F2 00                 1359 	.db #0x00	; 0
   71F3 00                 1360 	.db #0x00	; 0
   71F4 00                 1361 	.db #0x00	; 0
   71F5 00                 1362 	.db #0x00	; 0
   71F6 00                 1363 	.db #0x00	; 0
   71F7 00                 1364 	.db #0x00	; 0
   71F8 00                 1365 	.db #0x00	; 0
   71F9 00                 1366 	.db #0x00	; 0
   71FA 00                 1367 	.db #0x00	; 0
   71FB 00                 1368 	.db #0x00	; 0
   71FC 00                 1369 	.db #0x00	; 0
   71FD 00                 1370 	.db #0x00	; 0
   71FE 00                 1371 	.db #0x00	; 0
   71FF 00                 1372 	.db #0x00	; 0
   7200 00                 1373 	.db #0x00	; 0
   7201 00                 1374 	.db #0x00	; 0
   7202 00                 1375 	.db #0x00	; 0
   7203 00                 1376 	.db #0x00	; 0
   7204 00                 1377 	.db #0x00	; 0
   7205 00                 1378 	.db #0x00	; 0
   7206 00                 1379 	.db #0x00	; 0
   7207 00                 1380 	.db #0x00	; 0
   7208 00                 1381 	.db #0x00	; 0
   7209 00                 1382 	.db #0x00	; 0
   720A 00                 1383 	.db #0x00	; 0
   720B 00                 1384 	.db #0x00	; 0
   720C 00                 1385 	.db #0x00	; 0
   720D 00                 1386 	.db #0x00	; 0
   720E 00                 1387 	.db #0x00	; 0
   720F 00                 1388 	.db #0x00	; 0
   7210 00                 1389 	.db #0x00	; 0
   7211 00                 1390 	.db #0x00	; 0
   7212 00                 1391 	.db #0x00	; 0
   7213 00                 1392 	.db #0x00	; 0
   7214 00                 1393 	.db #0x00	; 0
   7215 00                 1394 	.db #0x00	; 0
   7216 00                 1395 	.db #0x00	; 0
   7217 00                 1396 	.db #0x00	; 0
   7218 00                 1397 	.db #0x00	; 0
   7219 00                 1398 	.db #0x00	; 0
   721A 00                 1399 	.db #0x00	; 0
   721B 00                 1400 	.db #0x00	; 0
   721C 00                 1401 	.db #0x00	; 0
   721D 00                 1402 	.db #0x00	; 0
   721E 00                 1403 	.db #0x00	; 0
   721F 00                 1404 	.db #0x00	; 0
   7220 00                 1405 	.db #0x00	; 0
   7221 00                 1406 	.db #0x00	; 0
   7222 00                 1407 	.db #0x00	; 0
   7223 00                 1408 	.db #0x00	; 0
   7224 00                 1409 	.db #0x00	; 0
   7225 00                 1410 	.db #0x00	; 0
   7226 00                 1411 	.db #0x00	; 0
   7227 00                 1412 	.db #0x00	; 0
   7228 00                 1413 	.db #0x00	; 0
   7229 00                 1414 	.db #0x00	; 0
   722A 00                 1415 	.db #0x00	; 0
   722B 00                 1416 	.db #0x00	; 0
   722C 00                 1417 	.db #0x00	; 0
   722D 00                 1418 	.db #0x00	; 0
   722E 00                 1419 	.db #0x00	; 0
   722F 00                 1420 	.db #0x00	; 0
   7230 00                 1421 	.db #0x00	; 0
   7231 00                 1422 	.db #0x00	; 0
   7232                    1423 _player_01:
   7232 FF                 1424 	.db #0xff	; 255
   7233 00                 1425 	.db #0x00	; 0
   7234 FF                 1426 	.db #0xff	; 255
   7235 00                 1427 	.db #0x00	; 0
   7236 FF                 1428 	.db #0xff	; 255
   7237 00                 1429 	.db #0x00	; 0
   7238 FF                 1430 	.db #0xff	; 255
   7239 00                 1431 	.db #0x00	; 0
   723A FF                 1432 	.db #0xff	; 255
   723B 00                 1433 	.db #0x00	; 0
   723C FF                 1434 	.db #0xff	; 255
   723D 00                 1435 	.db #0x00	; 0
   723E FF                 1436 	.db #0xff	; 255
   723F 00                 1437 	.db #0x00	; 0
   7240 FF                 1438 	.db #0xff	; 255
   7241 00                 1439 	.db #0x00	; 0
   7242 FF                 1440 	.db #0xff	; 255
   7243 00                 1441 	.db #0x00	; 0
   7244 FF                 1442 	.db #0xff	; 255
   7245 00                 1443 	.db #0x00	; 0
   7246 FF                 1444 	.db #0xff	; 255
   7247 00                 1445 	.db #0x00	; 0
   7248 FF                 1446 	.db #0xff	; 255
   7249 00                 1447 	.db #0x00	; 0
   724A FF                 1448 	.db #0xff	; 255
   724B 00                 1449 	.db #0x00	; 0
   724C FF                 1450 	.db #0xff	; 255
   724D 00                 1451 	.db #0x00	; 0
   724E FF                 1452 	.db #0xff	; 255
   724F 00                 1453 	.db #0x00	; 0
   7250 FF                 1454 	.db #0xff	; 255
   7251 00                 1455 	.db #0x00	; 0
   7252 FF                 1456 	.db #0xff	; 255
   7253 00                 1457 	.db #0x00	; 0
   7254 FF                 1458 	.db #0xff	; 255
   7255 00                 1459 	.db #0x00	; 0
   7256 FF                 1460 	.db #0xff	; 255
   7257 00                 1461 	.db #0x00	; 0
   7258 FF                 1462 	.db #0xff	; 255
   7259 00                 1463 	.db #0x00	; 0
   725A FF                 1464 	.db #0xff	; 255
   725B 00                 1465 	.db #0x00	; 0
   725C 00                 1466 	.db #0x00	; 0
   725D 33                 1467 	.db #0x33	; 51	'3'
   725E 00                 1468 	.db #0x00	; 0
   725F 33                 1469 	.db #0x33	; 51	'3'
   7260 FF                 1470 	.db #0xff	; 255
   7261 00                 1471 	.db #0x00	; 0
   7262 FF                 1472 	.db #0xff	; 255
   7263 00                 1473 	.db #0x00	; 0
   7264 FF                 1474 	.db #0xff	; 255
   7265 00                 1475 	.db #0x00	; 0
   7266 00                 1476 	.db #0x00	; 0
   7267 33                 1477 	.db #0x33	; 51	'3'
   7268 00                 1478 	.db #0x00	; 0
   7269 33                 1479 	.db #0x33	; 51	'3'
   726A FF                 1480 	.db #0xff	; 255
   726B 00                 1481 	.db #0x00	; 0
   726C FF                 1482 	.db #0xff	; 255
   726D 00                 1483 	.db #0x00	; 0
   726E AA                 1484 	.db #0xaa	; 170
   726F 11                 1485 	.db #0x11	; 17
   7270 00                 1486 	.db #0x00	; 0
   7271 BB                 1487 	.db #0xbb	; 187
   7272 55                 1488 	.db #0x55	; 85	'U'
   7273 22                 1489 	.db #0x22	; 34
   7274 FF                 1490 	.db #0xff	; 255
   7275 00                 1491 	.db #0x00	; 0
   7276 FF                 1492 	.db #0xff	; 255
   7277 00                 1493 	.db #0x00	; 0
   7278 AA                 1494 	.db #0xaa	; 170
   7279 11                 1495 	.db #0x11	; 17
   727A 00                 1496 	.db #0x00	; 0
   727B BB                 1497 	.db #0xbb	; 187
   727C 55                 1498 	.db #0x55	; 85	'U'
   727D 22                 1499 	.db #0x22	; 34
   727E FF                 1500 	.db #0xff	; 255
   727F 00                 1501 	.db #0x00	; 0
   7280 FF                 1502 	.db #0xff	; 255
   7281 00                 1503 	.db #0x00	; 0
   7282 00                 1504 	.db #0x00	; 0
   7283 33                 1505 	.db #0x33	; 51	'3'
   7284 00                 1506 	.db #0x00	; 0
   7285 33                 1507 	.db #0x33	; 51	'3'
   7286 55                 1508 	.db #0x55	; 85	'U'
   7287 28                 1509 	.db #0x28	; 40
   7288 FF                 1510 	.db #0xff	; 255
   7289 00                 1511 	.db #0x00	; 0
   728A FF                 1512 	.db #0xff	; 255
   728B 00                 1513 	.db #0x00	; 0
   728C 00                 1514 	.db #0x00	; 0
   728D 33                 1515 	.db #0x33	; 51	'3'
   728E 00                 1516 	.db #0x00	; 0
   728F 33                 1517 	.db #0x33	; 51	'3'
   7290 55                 1518 	.db #0x55	; 85	'U'
   7291 28                 1519 	.db #0x28	; 40
   7292 FF                 1520 	.db #0xff	; 255
   7293 00                 1521 	.db #0x00	; 0
   7294 FF                 1522 	.db #0xff	; 255
   7295 00                 1523 	.db #0x00	; 0
   7296 AA                 1524 	.db #0xaa	; 170
   7297 11                 1525 	.db #0x11	; 17
   7298 00                 1526 	.db #0x00	; 0
   7299 BB                 1527 	.db #0xbb	; 187
   729A 55                 1528 	.db #0x55	; 85	'U'
   729B 22                 1529 	.db #0x22	; 34
   729C FF                 1530 	.db #0xff	; 255
   729D 00                 1531 	.db #0x00	; 0
   729E FF                 1532 	.db #0xff	; 255
   729F 00                 1533 	.db #0x00	; 0
   72A0 AA                 1534 	.db #0xaa	; 170
   72A1 11                 1535 	.db #0x11	; 17
   72A2 00                 1536 	.db #0x00	; 0
   72A3 BB                 1537 	.db #0xbb	; 187
   72A4 55                 1538 	.db #0x55	; 85	'U'
   72A5 22                 1539 	.db #0x22	; 34
   72A6 FF                 1540 	.db #0xff	; 255
   72A7 00                 1541 	.db #0x00	; 0
   72A8 FF                 1542 	.db #0xff	; 255
   72A9 00                 1543 	.db #0x00	; 0
   72AA FF                 1544 	.db #0xff	; 255
   72AB 00                 1545 	.db #0x00	; 0
   72AC 00                 1546 	.db #0x00	; 0
   72AD 33                 1547 	.db #0x33	; 51	'3'
   72AE 00                 1548 	.db #0x00	; 0
   72AF 33                 1549 	.db #0x33	; 51	'3'
   72B0 FF                 1550 	.db #0xff	; 255
   72B1 00                 1551 	.db #0x00	; 0
   72B2 FF                 1552 	.db #0xff	; 255
   72B3 00                 1553 	.db #0x00	; 0
   72B4 FF                 1554 	.db #0xff	; 255
   72B5 00                 1555 	.db #0x00	; 0
   72B6 00                 1556 	.db #0x00	; 0
   72B7 33                 1557 	.db #0x33	; 51	'3'
   72B8 00                 1558 	.db #0x00	; 0
   72B9 33                 1559 	.db #0x33	; 51	'3'
   72BA FF                 1560 	.db #0xff	; 255
   72BB 00                 1561 	.db #0x00	; 0
   72BC FF                 1562 	.db #0xff	; 255
   72BD 00                 1563 	.db #0x00	; 0
   72BE FF                 1564 	.db #0xff	; 255
   72BF 00                 1565 	.db #0x00	; 0
   72C0 FF                 1566 	.db #0xff	; 255
   72C1 00                 1567 	.db #0x00	; 0
   72C2 FF                 1568 	.db #0xff	; 255
   72C3 00                 1569 	.db #0x00	; 0
   72C4 FF                 1570 	.db #0xff	; 255
   72C5 00                 1571 	.db #0x00	; 0
   72C6 FF                 1572 	.db #0xff	; 255
   72C7 00                 1573 	.db #0x00	; 0
   72C8 FF                 1574 	.db #0xff	; 255
   72C9 00                 1575 	.db #0x00	; 0
   72CA FF                 1576 	.db #0xff	; 255
   72CB 00                 1577 	.db #0x00	; 0
   72CC FF                 1578 	.db #0xff	; 255
   72CD 00                 1579 	.db #0x00	; 0
   72CE FF                 1580 	.db #0xff	; 255
   72CF 00                 1581 	.db #0x00	; 0
   72D0 FF                 1582 	.db #0xff	; 255
   72D1 00                 1583 	.db #0x00	; 0
   72D2 FF                 1584 	.db #0xff	; 255
   72D3 00                 1585 	.db #0x00	; 0
   72D4 FF                 1586 	.db #0xff	; 255
   72D5 00                 1587 	.db #0x00	; 0
   72D6 FF                 1588 	.db #0xff	; 255
   72D7 00                 1589 	.db #0x00	; 0
   72D8 FF                 1590 	.db #0xff	; 255
   72D9 00                 1591 	.db #0x00	; 0
   72DA FF                 1592 	.db #0xff	; 255
   72DB 00                 1593 	.db #0x00	; 0
   72DC FF                 1594 	.db #0xff	; 255
   72DD 00                 1595 	.db #0x00	; 0
   72DE FF                 1596 	.db #0xff	; 255
   72DF 00                 1597 	.db #0x00	; 0
   72E0 FF                 1598 	.db #0xff	; 255
   72E1 00                 1599 	.db #0x00	; 0
   72E2 FF                 1600 	.db #0xff	; 255
   72E3 00                 1601 	.db #0x00	; 0
   72E4 FF                 1602 	.db #0xff	; 255
   72E5 00                 1603 	.db #0x00	; 0
   72E6 FF                 1604 	.db #0xff	; 255
   72E7 00                 1605 	.db #0x00	; 0
   72E8 FF                 1606 	.db #0xff	; 255
   72E9 00                 1607 	.db #0x00	; 0
   72EA FF                 1608 	.db #0xff	; 255
   72EB 00                 1609 	.db #0x00	; 0
   72EC FF                 1610 	.db #0xff	; 255
   72ED 00                 1611 	.db #0x00	; 0
   72EE FF                 1612 	.db #0xff	; 255
   72EF 00                 1613 	.db #0x00	; 0
   72F0 FF                 1614 	.db #0xff	; 255
   72F1 00                 1615 	.db #0x00	; 0
   72F2 FF                 1616 	.db #0xff	; 255
   72F3 00                 1617 	.db #0x00	; 0
   72F4 FF                 1618 	.db #0xff	; 255
   72F5 00                 1619 	.db #0x00	; 0
   72F6 FF                 1620 	.db #0xff	; 255
   72F7 00                 1621 	.db #0x00	; 0
   72F8 FF                 1622 	.db #0xff	; 255
   72F9 00                 1623 	.db #0x00	; 0
   72FA                    1624 _player_02:
   72FA FF                 1625 	.db #0xff	; 255
   72FB 00                 1626 	.db #0x00	; 0
   72FC FF                 1627 	.db #0xff	; 255
   72FD 00                 1628 	.db #0x00	; 0
   72FE FF                 1629 	.db #0xff	; 255
   72FF 00                 1630 	.db #0x00	; 0
   7300 FF                 1631 	.db #0xff	; 255
   7301 00                 1632 	.db #0x00	; 0
   7302 FF                 1633 	.db #0xff	; 255
   7303 00                 1634 	.db #0x00	; 0
   7304 FF                 1635 	.db #0xff	; 255
   7305 00                 1636 	.db #0x00	; 0
   7306 FF                 1637 	.db #0xff	; 255
   7307 00                 1638 	.db #0x00	; 0
   7308 FF                 1639 	.db #0xff	; 255
   7309 00                 1640 	.db #0x00	; 0
   730A FF                 1641 	.db #0xff	; 255
   730B 00                 1642 	.db #0x00	; 0
   730C FF                 1643 	.db #0xff	; 255
   730D 00                 1644 	.db #0x00	; 0
   730E FF                 1645 	.db #0xff	; 255
   730F 00                 1646 	.db #0x00	; 0
   7310 FF                 1647 	.db #0xff	; 255
   7311 00                 1648 	.db #0x00	; 0
   7312 FF                 1649 	.db #0xff	; 255
   7313 00                 1650 	.db #0x00	; 0
   7314 FF                 1651 	.db #0xff	; 255
   7315 00                 1652 	.db #0x00	; 0
   7316 FF                 1653 	.db #0xff	; 255
   7317 00                 1654 	.db #0x00	; 0
   7318 FF                 1655 	.db #0xff	; 255
   7319 00                 1656 	.db #0x00	; 0
   731A FF                 1657 	.db #0xff	; 255
   731B 00                 1658 	.db #0x00	; 0
   731C FF                 1659 	.db #0xff	; 255
   731D 00                 1660 	.db #0x00	; 0
   731E FF                 1661 	.db #0xff	; 255
   731F 00                 1662 	.db #0x00	; 0
   7320 FF                 1663 	.db #0xff	; 255
   7321 00                 1664 	.db #0x00	; 0
   7322 FF                 1665 	.db #0xff	; 255
   7323 00                 1666 	.db #0x00	; 0
   7324 AA                 1667 	.db #0xaa	; 170
   7325 11                 1668 	.db #0x11	; 17
   7326 00                 1669 	.db #0x00	; 0
   7327 33                 1670 	.db #0x33	; 51	'3'
   7328 55                 1671 	.db #0x55	; 85	'U'
   7329 22                 1672 	.db #0x22	; 34
   732A FF                 1673 	.db #0xff	; 255
   732B 00                 1674 	.db #0x00	; 0
   732C FF                 1675 	.db #0xff	; 255
   732D 00                 1676 	.db #0x00	; 0
   732E AA                 1677 	.db #0xaa	; 170
   732F 11                 1678 	.db #0x11	; 17
   7330 00                 1679 	.db #0x00	; 0
   7331 33                 1680 	.db #0x33	; 51	'3'
   7332 55                 1681 	.db #0x55	; 85	'U'
   7333 22                 1682 	.db #0x22	; 34
   7334 FF                 1683 	.db #0xff	; 255
   7335 00                 1684 	.db #0x00	; 0
   7336 FF                 1685 	.db #0xff	; 255
   7337 00                 1686 	.db #0x00	; 0
   7338 FF                 1687 	.db #0xff	; 255
   7339 00                 1688 	.db #0x00	; 0
   733A 00                 1689 	.db #0x00	; 0
   733B 33                 1690 	.db #0x33	; 51	'3'
   733C 00                 1691 	.db #0x00	; 0
   733D BB                 1692 	.db #0xbb	; 187
   733E FF                 1693 	.db #0xff	; 255
   733F 00                 1694 	.db #0x00	; 0
   7340 FF                 1695 	.db #0xff	; 255
   7341 00                 1696 	.db #0x00	; 0
   7342 FF                 1697 	.db #0xff	; 255
   7343 00                 1698 	.db #0x00	; 0
   7344 00                 1699 	.db #0x00	; 0
   7345 33                 1700 	.db #0x33	; 51	'3'
   7346 00                 1701 	.db #0x00	; 0
   7347 BB                 1702 	.db #0xbb	; 187
   7348 FF                 1703 	.db #0xff	; 255
   7349 00                 1704 	.db #0x00	; 0
   734A FF                 1705 	.db #0xff	; 255
   734B 00                 1706 	.db #0x00	; 0
   734C FF                 1707 	.db #0xff	; 255
   734D 00                 1708 	.db #0x00	; 0
   734E 00                 1709 	.db #0x00	; 0
   734F 39                 1710 	.db #0x39	; 57	'9'
   7350 00                 1711 	.db #0x00	; 0
   7351 33                 1712 	.db #0x33	; 51	'3'
   7352 55                 1713 	.db #0x55	; 85	'U'
   7353 22                 1714 	.db #0x22	; 34
   7354 FF                 1715 	.db #0xff	; 255
   7355 00                 1716 	.db #0x00	; 0
   7356 FF                 1717 	.db #0xff	; 255
   7357 00                 1718 	.db #0x00	; 0
   7358 00                 1719 	.db #0x00	; 0
   7359 39                 1720 	.db #0x39	; 57	'9'
   735A 00                 1721 	.db #0x00	; 0
   735B 33                 1722 	.db #0x33	; 51	'3'
   735C 55                 1723 	.db #0x55	; 85	'U'
   735D 22                 1724 	.db #0x22	; 34
   735E FF                 1725 	.db #0xff	; 255
   735F 00                 1726 	.db #0x00	; 0
   7360 FF                 1727 	.db #0xff	; 255
   7361 00                 1728 	.db #0x00	; 0
   7362 00                 1729 	.db #0x00	; 0
   7363 33                 1730 	.db #0x33	; 51	'3'
   7364 00                 1731 	.db #0x00	; 0
   7365 BB                 1732 	.db #0xbb	; 187
   7366 FF                 1733 	.db #0xff	; 255
   7367 00                 1734 	.db #0x00	; 0
   7368 FF                 1735 	.db #0xff	; 255
   7369 00                 1736 	.db #0x00	; 0
   736A FF                 1737 	.db #0xff	; 255
   736B 00                 1738 	.db #0x00	; 0
   736C 00                 1739 	.db #0x00	; 0
   736D 33                 1740 	.db #0x33	; 51	'3'
   736E 00                 1741 	.db #0x00	; 0
   736F BB                 1742 	.db #0xbb	; 187
   7370 FF                 1743 	.db #0xff	; 255
   7371 00                 1744 	.db #0x00	; 0
   7372 FF                 1745 	.db #0xff	; 255
   7373 00                 1746 	.db #0x00	; 0
   7374 AA                 1747 	.db #0xaa	; 170
   7375 11                 1748 	.db #0x11	; 17
   7376 00                 1749 	.db #0x00	; 0
   7377 33                 1750 	.db #0x33	; 51	'3'
   7378 55                 1751 	.db #0x55	; 85	'U'
   7379 22                 1752 	.db #0x22	; 34
   737A FF                 1753 	.db #0xff	; 255
   737B 00                 1754 	.db #0x00	; 0
   737C FF                 1755 	.db #0xff	; 255
   737D 00                 1756 	.db #0x00	; 0
   737E AA                 1757 	.db #0xaa	; 170
   737F 11                 1758 	.db #0x11	; 17
   7380 00                 1759 	.db #0x00	; 0
   7381 33                 1760 	.db #0x33	; 51	'3'
   7382 55                 1761 	.db #0x55	; 85	'U'
   7383 22                 1762 	.db #0x22	; 34
   7384 FF                 1763 	.db #0xff	; 255
   7385 00                 1764 	.db #0x00	; 0
   7386 FF                 1765 	.db #0xff	; 255
   7387 00                 1766 	.db #0x00	; 0
   7388 FF                 1767 	.db #0xff	; 255
   7389 00                 1768 	.db #0x00	; 0
   738A FF                 1769 	.db #0xff	; 255
   738B 00                 1770 	.db #0x00	; 0
   738C FF                 1771 	.db #0xff	; 255
   738D 00                 1772 	.db #0x00	; 0
   738E FF                 1773 	.db #0xff	; 255
   738F 00                 1774 	.db #0x00	; 0
   7390 FF                 1775 	.db #0xff	; 255
   7391 00                 1776 	.db #0x00	; 0
   7392 FF                 1777 	.db #0xff	; 255
   7393 00                 1778 	.db #0x00	; 0
   7394 FF                 1779 	.db #0xff	; 255
   7395 00                 1780 	.db #0x00	; 0
   7396 FF                 1781 	.db #0xff	; 255
   7397 00                 1782 	.db #0x00	; 0
   7398 FF                 1783 	.db #0xff	; 255
   7399 00                 1784 	.db #0x00	; 0
   739A FF                 1785 	.db #0xff	; 255
   739B 00                 1786 	.db #0x00	; 0
   739C FF                 1787 	.db #0xff	; 255
   739D 00                 1788 	.db #0x00	; 0
   739E FF                 1789 	.db #0xff	; 255
   739F 00                 1790 	.db #0x00	; 0
   73A0 FF                 1791 	.db #0xff	; 255
   73A1 00                 1792 	.db #0x00	; 0
   73A2 FF                 1793 	.db #0xff	; 255
   73A3 00                 1794 	.db #0x00	; 0
   73A4 FF                 1795 	.db #0xff	; 255
   73A5 00                 1796 	.db #0x00	; 0
   73A6 FF                 1797 	.db #0xff	; 255
   73A7 00                 1798 	.db #0x00	; 0
   73A8 FF                 1799 	.db #0xff	; 255
   73A9 00                 1800 	.db #0x00	; 0
   73AA FF                 1801 	.db #0xff	; 255
   73AB 00                 1802 	.db #0x00	; 0
   73AC FF                 1803 	.db #0xff	; 255
   73AD 00                 1804 	.db #0x00	; 0
   73AE FF                 1805 	.db #0xff	; 255
   73AF 00                 1806 	.db #0x00	; 0
   73B0 FF                 1807 	.db #0xff	; 255
   73B1 00                 1808 	.db #0x00	; 0
   73B2 FF                 1809 	.db #0xff	; 255
   73B3 00                 1810 	.db #0x00	; 0
   73B4 FF                 1811 	.db #0xff	; 255
   73B5 00                 1812 	.db #0x00	; 0
   73B6 FF                 1813 	.db #0xff	; 255
   73B7 00                 1814 	.db #0x00	; 0
   73B8 FF                 1815 	.db #0xff	; 255
   73B9 00                 1816 	.db #0x00	; 0
   73BA FF                 1817 	.db #0xff	; 255
   73BB 00                 1818 	.db #0x00	; 0
   73BC FF                 1819 	.db #0xff	; 255
   73BD 00                 1820 	.db #0x00	; 0
   73BE FF                 1821 	.db #0xff	; 255
   73BF 00                 1822 	.db #0x00	; 0
   73C0 FF                 1823 	.db #0xff	; 255
   73C1 00                 1824 	.db #0x00	; 0
   73C2                    1825 _player_03:
   73C2 FF                 1826 	.db #0xff	; 255
   73C3 00                 1827 	.db #0x00	; 0
   73C4 FF                 1828 	.db #0xff	; 255
   73C5 00                 1829 	.db #0x00	; 0
   73C6 55                 1830 	.db #0x55	; 85	'U'
   73C7 22                 1831 	.db #0x22	; 34
   73C8 FF                 1832 	.db #0xff	; 255
   73C9 00                 1833 	.db #0x00	; 0
   73CA FF                 1834 	.db #0xff	; 255
   73CB 00                 1835 	.db #0x00	; 0
   73CC FF                 1836 	.db #0xff	; 255
   73CD 00                 1837 	.db #0x00	; 0
   73CE FF                 1838 	.db #0xff	; 255
   73CF 00                 1839 	.db #0x00	; 0
   73D0 55                 1840 	.db #0x55	; 85	'U'
   73D1 22                 1841 	.db #0x22	; 34
   73D2 FF                 1842 	.db #0xff	; 255
   73D3 00                 1843 	.db #0x00	; 0
   73D4 FF                 1844 	.db #0xff	; 255
   73D5 00                 1845 	.db #0x00	; 0
   73D6 FF                 1846 	.db #0xff	; 255
   73D7 00                 1847 	.db #0x00	; 0
   73D8 AA                 1848 	.db #0xaa	; 170
   73D9 11                 1849 	.db #0x11	; 17
   73DA 00                 1850 	.db #0x00	; 0
   73DB 33                 1851 	.db #0x33	; 51	'3'
   73DC FF                 1852 	.db #0xff	; 255
   73DD 00                 1853 	.db #0x00	; 0
   73DE FF                 1854 	.db #0xff	; 255
   73DF 00                 1855 	.db #0x00	; 0
   73E0 FF                 1856 	.db #0xff	; 255
   73E1 00                 1857 	.db #0x00	; 0
   73E2 AA                 1858 	.db #0xaa	; 170
   73E3 11                 1859 	.db #0x11	; 17
   73E4 00                 1860 	.db #0x00	; 0
   73E5 33                 1861 	.db #0x33	; 51	'3'
   73E6 FF                 1862 	.db #0xff	; 255
   73E7 00                 1863 	.db #0x00	; 0
   73E8 FF                 1864 	.db #0xff	; 255
   73E9 00                 1865 	.db #0x00	; 0
   73EA FF                 1866 	.db #0xff	; 255
   73EB 00                 1867 	.db #0x00	; 0
   73EC 00                 1868 	.db #0x00	; 0
   73ED 77                 1869 	.db #0x77	; 119	'w'
   73EE 00                 1870 	.db #0x00	; 0
   73EF 77                 1871 	.db #0x77	; 119	'w'
   73F0 55                 1872 	.db #0x55	; 85	'U'
   73F1 22                 1873 	.db #0x22	; 34
   73F2 FF                 1874 	.db #0xff	; 255
   73F3 00                 1875 	.db #0x00	; 0
   73F4 FF                 1876 	.db #0xff	; 255
   73F5 00                 1877 	.db #0x00	; 0
   73F6 00                 1878 	.db #0x00	; 0
   73F7 77                 1879 	.db #0x77	; 119	'w'
   73F8 00                 1880 	.db #0x00	; 0
   73F9 77                 1881 	.db #0x77	; 119	'w'
   73FA 55                 1882 	.db #0x55	; 85	'U'
   73FB 22                 1883 	.db #0x22	; 34
   73FC FF                 1884 	.db #0xff	; 255
   73FD 00                 1885 	.db #0x00	; 0
   73FE FF                 1886 	.db #0xff	; 255
   73FF 00                 1887 	.db #0x00	; 0
   7400 00                 1888 	.db #0x00	; 0
   7401 33                 1889 	.db #0x33	; 51	'3'
   7402 00                 1890 	.db #0x00	; 0
   7403 33                 1891 	.db #0x33	; 51	'3'
   7404 55                 1892 	.db #0x55	; 85	'U'
   7405 22                 1893 	.db #0x22	; 34
   7406 FF                 1894 	.db #0xff	; 255
   7407 00                 1895 	.db #0x00	; 0
   7408 FF                 1896 	.db #0xff	; 255
   7409 00                 1897 	.db #0x00	; 0
   740A 00                 1898 	.db #0x00	; 0
   740B 33                 1899 	.db #0x33	; 51	'3'
   740C 00                 1900 	.db #0x00	; 0
   740D 33                 1901 	.db #0x33	; 51	'3'
   740E 55                 1902 	.db #0x55	; 85	'U'
   740F 22                 1903 	.db #0x22	; 34
   7410 FF                 1904 	.db #0xff	; 255
   7411 00                 1905 	.db #0x00	; 0
   7412 FF                 1906 	.db #0xff	; 255
   7413 00                 1907 	.db #0x00	; 0
   7414 00                 1908 	.db #0x00	; 0
   7415 33                 1909 	.db #0x33	; 51	'3'
   7416 00                 1910 	.db #0x00	; 0
   7417 39                 1911 	.db #0x39	; 57	'9'
   7418 55                 1912 	.db #0x55	; 85	'U'
   7419 22                 1913 	.db #0x22	; 34
   741A FF                 1914 	.db #0xff	; 255
   741B 00                 1915 	.db #0x00	; 0
   741C FF                 1916 	.db #0xff	; 255
   741D 00                 1917 	.db #0x00	; 0
   741E 00                 1918 	.db #0x00	; 0
   741F 33                 1919 	.db #0x33	; 51	'3'
   7420 00                 1920 	.db #0x00	; 0
   7421 39                 1921 	.db #0x39	; 57	'9'
   7422 55                 1922 	.db #0x55	; 85	'U'
   7423 22                 1923 	.db #0x22	; 34
   7424 FF                 1924 	.db #0xff	; 255
   7425 00                 1925 	.db #0x00	; 0
   7426 FF                 1926 	.db #0xff	; 255
   7427 00                 1927 	.db #0x00	; 0
   7428 55                 1928 	.db #0x55	; 85	'U'
   7429 22                 1929 	.db #0x22	; 34
   742A FF                 1930 	.db #0xff	; 255
   742B 00                 1931 	.db #0x00	; 0
   742C 55                 1932 	.db #0x55	; 85	'U'
   742D 22                 1933 	.db #0x22	; 34
   742E FF                 1934 	.db #0xff	; 255
   742F 00                 1935 	.db #0x00	; 0
   7430 FF                 1936 	.db #0xff	; 255
   7431 00                 1937 	.db #0x00	; 0
   7432 55                 1938 	.db #0x55	; 85	'U'
   7433 22                 1939 	.db #0x22	; 34
   7434 FF                 1940 	.db #0xff	; 255
   7435 00                 1941 	.db #0x00	; 0
   7436 55                 1942 	.db #0x55	; 85	'U'
   7437 22                 1943 	.db #0x22	; 34
   7438 FF                 1944 	.db #0xff	; 255
   7439 00                 1945 	.db #0x00	; 0
   743A FF                 1946 	.db #0xff	; 255
   743B 00                 1947 	.db #0x00	; 0
   743C FF                 1948 	.db #0xff	; 255
   743D 00                 1949 	.db #0x00	; 0
   743E FF                 1950 	.db #0xff	; 255
   743F 00                 1951 	.db #0x00	; 0
   7440 FF                 1952 	.db #0xff	; 255
   7441 00                 1953 	.db #0x00	; 0
   7442 FF                 1954 	.db #0xff	; 255
   7443 00                 1955 	.db #0x00	; 0
   7444 FF                 1956 	.db #0xff	; 255
   7445 00                 1957 	.db #0x00	; 0
   7446 FF                 1958 	.db #0xff	; 255
   7447 00                 1959 	.db #0x00	; 0
   7448 FF                 1960 	.db #0xff	; 255
   7449 00                 1961 	.db #0x00	; 0
   744A FF                 1962 	.db #0xff	; 255
   744B 00                 1963 	.db #0x00	; 0
   744C FF                 1964 	.db #0xff	; 255
   744D 00                 1965 	.db #0x00	; 0
   744E FF                 1966 	.db #0xff	; 255
   744F 00                 1967 	.db #0x00	; 0
   7450 FF                 1968 	.db #0xff	; 255
   7451 00                 1969 	.db #0x00	; 0
   7452 FF                 1970 	.db #0xff	; 255
   7453 00                 1971 	.db #0x00	; 0
   7454 FF                 1972 	.db #0xff	; 255
   7455 00                 1973 	.db #0x00	; 0
   7456 FF                 1974 	.db #0xff	; 255
   7457 00                 1975 	.db #0x00	; 0
   7458 FF                 1976 	.db #0xff	; 255
   7459 00                 1977 	.db #0x00	; 0
   745A FF                 1978 	.db #0xff	; 255
   745B 00                 1979 	.db #0x00	; 0
   745C FF                 1980 	.db #0xff	; 255
   745D 00                 1981 	.db #0x00	; 0
   745E FF                 1982 	.db #0xff	; 255
   745F 00                 1983 	.db #0x00	; 0
   7460 FF                 1984 	.db #0xff	; 255
   7461 00                 1985 	.db #0x00	; 0
   7462 FF                 1986 	.db #0xff	; 255
   7463 00                 1987 	.db #0x00	; 0
   7464 FF                 1988 	.db #0xff	; 255
   7465 00                 1989 	.db #0x00	; 0
   7466 FF                 1990 	.db #0xff	; 255
   7467 00                 1991 	.db #0x00	; 0
   7468 FF                 1992 	.db #0xff	; 255
   7469 00                 1993 	.db #0x00	; 0
   746A FF                 1994 	.db #0xff	; 255
   746B 00                 1995 	.db #0x00	; 0
   746C FF                 1996 	.db #0xff	; 255
   746D 00                 1997 	.db #0x00	; 0
   746E FF                 1998 	.db #0xff	; 255
   746F 00                 1999 	.db #0x00	; 0
   7470 FF                 2000 	.db #0xff	; 255
   7471 00                 2001 	.db #0x00	; 0
   7472 FF                 2002 	.db #0xff	; 255
   7473 00                 2003 	.db #0x00	; 0
   7474 FF                 2004 	.db #0xff	; 255
   7475 00                 2005 	.db #0x00	; 0
   7476 FF                 2006 	.db #0xff	; 255
   7477 00                 2007 	.db #0x00	; 0
   7478 FF                 2008 	.db #0xff	; 255
   7479 00                 2009 	.db #0x00	; 0
   747A FF                 2010 	.db #0xff	; 255
   747B 00                 2011 	.db #0x00	; 0
   747C FF                 2012 	.db #0xff	; 255
   747D 00                 2013 	.db #0x00	; 0
   747E FF                 2014 	.db #0xff	; 255
   747F 00                 2015 	.db #0x00	; 0
   7480 FF                 2016 	.db #0xff	; 255
   7481 00                 2017 	.db #0x00	; 0
   7482 FF                 2018 	.db #0xff	; 255
   7483 00                 2019 	.db #0x00	; 0
   7484 FF                 2020 	.db #0xff	; 255
   7485 00                 2021 	.db #0x00	; 0
   7486 FF                 2022 	.db #0xff	; 255
   7487 00                 2023 	.db #0x00	; 0
   7488 FF                 2024 	.db #0xff	; 255
   7489 00                 2025 	.db #0x00	; 0
   748A                    2026 _player_04:
   748A FF                 2027 	.db #0xff	; 255
   748B 00                 2028 	.db #0x00	; 0
   748C FF                 2029 	.db #0xff	; 255
   748D 00                 2030 	.db #0x00	; 0
   748E FF                 2031 	.db #0xff	; 255
   748F 00                 2032 	.db #0x00	; 0
   7490 FF                 2033 	.db #0xff	; 255
   7491 00                 2034 	.db #0x00	; 0
   7492 FF                 2035 	.db #0xff	; 255
   7493 00                 2036 	.db #0x00	; 0
   7494 FF                 2037 	.db #0xff	; 255
   7495 00                 2038 	.db #0x00	; 0
   7496 FF                 2039 	.db #0xff	; 255
   7497 00                 2040 	.db #0x00	; 0
   7498 FF                 2041 	.db #0xff	; 255
   7499 00                 2042 	.db #0x00	; 0
   749A FF                 2043 	.db #0xff	; 255
   749B 00                 2044 	.db #0x00	; 0
   749C FF                 2045 	.db #0xff	; 255
   749D 00                 2046 	.db #0x00	; 0
   749E FF                 2047 	.db #0xff	; 255
   749F 00                 2048 	.db #0x00	; 0
   74A0 FF                 2049 	.db #0xff	; 255
   74A1 00                 2050 	.db #0x00	; 0
   74A2 FF                 2051 	.db #0xff	; 255
   74A3 00                 2052 	.db #0x00	; 0
   74A4 FF                 2053 	.db #0xff	; 255
   74A5 00                 2054 	.db #0x00	; 0
   74A6 FF                 2055 	.db #0xff	; 255
   74A7 00                 2056 	.db #0x00	; 0
   74A8 FF                 2057 	.db #0xff	; 255
   74A9 00                 2058 	.db #0x00	; 0
   74AA FF                 2059 	.db #0xff	; 255
   74AB 00                 2060 	.db #0x00	; 0
   74AC FF                 2061 	.db #0xff	; 255
   74AD 00                 2062 	.db #0x00	; 0
   74AE FF                 2063 	.db #0xff	; 255
   74AF 00                 2064 	.db #0x00	; 0
   74B0 FF                 2065 	.db #0xff	; 255
   74B1 00                 2066 	.db #0x00	; 0
   74B2 FF                 2067 	.db #0xff	; 255
   74B3 00                 2068 	.db #0x00	; 0
   74B4 FF                 2069 	.db #0xff	; 255
   74B5 00                 2070 	.db #0x00	; 0
   74B6 FF                 2071 	.db #0xff	; 255
   74B7 00                 2072 	.db #0x00	; 0
   74B8 FF                 2073 	.db #0xff	; 255
   74B9 00                 2074 	.db #0x00	; 0
   74BA FF                 2075 	.db #0xff	; 255
   74BB 00                 2076 	.db #0x00	; 0
   74BC FF                 2077 	.db #0xff	; 255
   74BD 00                 2078 	.db #0x00	; 0
   74BE FF                 2079 	.db #0xff	; 255
   74BF 00                 2080 	.db #0x00	; 0
   74C0 FF                 2081 	.db #0xff	; 255
   74C1 00                 2082 	.db #0x00	; 0
   74C2 FF                 2083 	.db #0xff	; 255
   74C3 00                 2084 	.db #0x00	; 0
   74C4 FF                 2085 	.db #0xff	; 255
   74C5 00                 2086 	.db #0x00	; 0
   74C6 FF                 2087 	.db #0xff	; 255
   74C7 00                 2088 	.db #0x00	; 0
   74C8 55                 2089 	.db #0x55	; 85	'U'
   74C9 22                 2090 	.db #0x22	; 34
   74CA FF                 2091 	.db #0xff	; 255
   74CB 00                 2092 	.db #0x00	; 0
   74CC 55                 2093 	.db #0x55	; 85	'U'
   74CD 22                 2094 	.db #0x22	; 34
   74CE FF                 2095 	.db #0xff	; 255
   74CF 00                 2096 	.db #0x00	; 0
   74D0 FF                 2097 	.db #0xff	; 255
   74D1 00                 2098 	.db #0x00	; 0
   74D2 55                 2099 	.db #0x55	; 85	'U'
   74D3 22                 2100 	.db #0x22	; 34
   74D4 FF                 2101 	.db #0xff	; 255
   74D5 00                 2102 	.db #0x00	; 0
   74D6 55                 2103 	.db #0x55	; 85	'U'
   74D7 22                 2104 	.db #0x22	; 34
   74D8 FF                 2105 	.db #0xff	; 255
   74D9 00                 2106 	.db #0x00	; 0
   74DA FF                 2107 	.db #0xff	; 255
   74DB 00                 2108 	.db #0x00	; 0
   74DC 00                 2109 	.db #0x00	; 0
   74DD 33                 2110 	.db #0x33	; 51	'3'
   74DE 00                 2111 	.db #0x00	; 0
   74DF 39                 2112 	.db #0x39	; 57	'9'
   74E0 55                 2113 	.db #0x55	; 85	'U'
   74E1 22                 2114 	.db #0x22	; 34
   74E2 FF                 2115 	.db #0xff	; 255
   74E3 00                 2116 	.db #0x00	; 0
   74E4 FF                 2117 	.db #0xff	; 255
   74E5 00                 2118 	.db #0x00	; 0
   74E6 00                 2119 	.db #0x00	; 0
   74E7 33                 2120 	.db #0x33	; 51	'3'
   74E8 00                 2121 	.db #0x00	; 0
   74E9 39                 2122 	.db #0x39	; 57	'9'
   74EA 55                 2123 	.db #0x55	; 85	'U'
   74EB 22                 2124 	.db #0x22	; 34
   74EC FF                 2125 	.db #0xff	; 255
   74ED 00                 2126 	.db #0x00	; 0
   74EE FF                 2127 	.db #0xff	; 255
   74EF 00                 2128 	.db #0x00	; 0
   74F0 00                 2129 	.db #0x00	; 0
   74F1 33                 2130 	.db #0x33	; 51	'3'
   74F2 00                 2131 	.db #0x00	; 0
   74F3 33                 2132 	.db #0x33	; 51	'3'
   74F4 55                 2133 	.db #0x55	; 85	'U'
   74F5 22                 2134 	.db #0x22	; 34
   74F6 FF                 2135 	.db #0xff	; 255
   74F7 00                 2136 	.db #0x00	; 0
   74F8 FF                 2137 	.db #0xff	; 255
   74F9 00                 2138 	.db #0x00	; 0
   74FA 00                 2139 	.db #0x00	; 0
   74FB 33                 2140 	.db #0x33	; 51	'3'
   74FC 00                 2141 	.db #0x00	; 0
   74FD 33                 2142 	.db #0x33	; 51	'3'
   74FE 55                 2143 	.db #0x55	; 85	'U'
   74FF 22                 2144 	.db #0x22	; 34
   7500 FF                 2145 	.db #0xff	; 255
   7501 00                 2146 	.db #0x00	; 0
   7502 FF                 2147 	.db #0xff	; 255
   7503 00                 2148 	.db #0x00	; 0
   7504 00                 2149 	.db #0x00	; 0
   7505 77                 2150 	.db #0x77	; 119	'w'
   7506 00                 2151 	.db #0x00	; 0
   7507 77                 2152 	.db #0x77	; 119	'w'
   7508 55                 2153 	.db #0x55	; 85	'U'
   7509 22                 2154 	.db #0x22	; 34
   750A FF                 2155 	.db #0xff	; 255
   750B 00                 2156 	.db #0x00	; 0
   750C FF                 2157 	.db #0xff	; 255
   750D 00                 2158 	.db #0x00	; 0
   750E 00                 2159 	.db #0x00	; 0
   750F 77                 2160 	.db #0x77	; 119	'w'
   7510 00                 2161 	.db #0x00	; 0
   7511 77                 2162 	.db #0x77	; 119	'w'
   7512 55                 2163 	.db #0x55	; 85	'U'
   7513 22                 2164 	.db #0x22	; 34
   7514 FF                 2165 	.db #0xff	; 255
   7515 00                 2166 	.db #0x00	; 0
   7516 FF                 2167 	.db #0xff	; 255
   7517 00                 2168 	.db #0x00	; 0
   7518 AA                 2169 	.db #0xaa	; 170
   7519 11                 2170 	.db #0x11	; 17
   751A 00                 2171 	.db #0x00	; 0
   751B 33                 2172 	.db #0x33	; 51	'3'
   751C FF                 2173 	.db #0xff	; 255
   751D 00                 2174 	.db #0x00	; 0
   751E FF                 2175 	.db #0xff	; 255
   751F 00                 2176 	.db #0x00	; 0
   7520 FF                 2177 	.db #0xff	; 255
   7521 00                 2178 	.db #0x00	; 0
   7522 AA                 2179 	.db #0xaa	; 170
   7523 11                 2180 	.db #0x11	; 17
   7524 00                 2181 	.db #0x00	; 0
   7525 33                 2182 	.db #0x33	; 51	'3'
   7526 FF                 2183 	.db #0xff	; 255
   7527 00                 2184 	.db #0x00	; 0
   7528 FF                 2185 	.db #0xff	; 255
   7529 00                 2186 	.db #0x00	; 0
   752A FF                 2187 	.db #0xff	; 255
   752B 00                 2188 	.db #0x00	; 0
   752C FF                 2189 	.db #0xff	; 255
   752D 00                 2190 	.db #0x00	; 0
   752E 55                 2191 	.db #0x55	; 85	'U'
   752F 22                 2192 	.db #0x22	; 34
   7530 FF                 2193 	.db #0xff	; 255
   7531 00                 2194 	.db #0x00	; 0
   7532 FF                 2195 	.db #0xff	; 255
   7533 00                 2196 	.db #0x00	; 0
   7534 FF                 2197 	.db #0xff	; 255
   7535 00                 2198 	.db #0x00	; 0
   7536 FF                 2199 	.db #0xff	; 255
   7537 00                 2200 	.db #0x00	; 0
   7538 55                 2201 	.db #0x55	; 85	'U'
   7539 22                 2202 	.db #0x22	; 34
   753A FF                 2203 	.db #0xff	; 255
   753B 00                 2204 	.db #0x00	; 0
   753C FF                 2205 	.db #0xff	; 255
   753D 00                 2206 	.db #0x00	; 0
   753E FF                 2207 	.db #0xff	; 255
   753F 00                 2208 	.db #0x00	; 0
   7540 FF                 2209 	.db #0xff	; 255
   7541 00                 2210 	.db #0x00	; 0
   7542 FF                 2211 	.db #0xff	; 255
   7543 00                 2212 	.db #0x00	; 0
   7544 FF                 2213 	.db #0xff	; 255
   7545 00                 2214 	.db #0x00	; 0
   7546 FF                 2215 	.db #0xff	; 255
   7547 00                 2216 	.db #0x00	; 0
   7548 FF                 2217 	.db #0xff	; 255
   7549 00                 2218 	.db #0x00	; 0
   754A FF                 2219 	.db #0xff	; 255
   754B 00                 2220 	.db #0x00	; 0
   754C FF                 2221 	.db #0xff	; 255
   754D 00                 2222 	.db #0x00	; 0
   754E FF                 2223 	.db #0xff	; 255
   754F 00                 2224 	.db #0x00	; 0
   7550 FF                 2225 	.db #0xff	; 255
   7551 00                 2226 	.db #0x00	; 0
   7552                    2227 _player_05:
   7552 FF                 2228 	.db #0xff	; 255
   7553 00                 2229 	.db #0x00	; 0
   7554 FF                 2230 	.db #0xff	; 255
   7555 00                 2231 	.db #0x00	; 0
   7556 FF                 2232 	.db #0xff	; 255
   7557 00                 2233 	.db #0x00	; 0
   7558 FF                 2234 	.db #0xff	; 255
   7559 00                 2235 	.db #0x00	; 0
   755A FF                 2236 	.db #0xff	; 255
   755B 00                 2237 	.db #0x00	; 0
   755C FF                 2238 	.db #0xff	; 255
   755D 00                 2239 	.db #0x00	; 0
   755E FF                 2240 	.db #0xff	; 255
   755F 00                 2241 	.db #0x00	; 0
   7560 FF                 2242 	.db #0xff	; 255
   7561 00                 2243 	.db #0x00	; 0
   7562 FF                 2244 	.db #0xff	; 255
   7563 00                 2245 	.db #0x00	; 0
   7564 FF                 2246 	.db #0xff	; 255
   7565 00                 2247 	.db #0x00	; 0
   7566 FF                 2248 	.db #0xff	; 255
   7567 00                 2249 	.db #0x00	; 0
   7568 FF                 2250 	.db #0xff	; 255
   7569 00                 2251 	.db #0x00	; 0
   756A FF                 2252 	.db #0xff	; 255
   756B 00                 2253 	.db #0x00	; 0
   756C FF                 2254 	.db #0xff	; 255
   756D 00                 2255 	.db #0x00	; 0
   756E FF                 2256 	.db #0xff	; 255
   756F 00                 2257 	.db #0x00	; 0
   7570 FF                 2258 	.db #0xff	; 255
   7571 00                 2259 	.db #0x00	; 0
   7572 FF                 2260 	.db #0xff	; 255
   7573 00                 2261 	.db #0x00	; 0
   7574 FF                 2262 	.db #0xff	; 255
   7575 00                 2263 	.db #0x00	; 0
   7576 FF                 2264 	.db #0xff	; 255
   7577 00                 2265 	.db #0x00	; 0
   7578 FF                 2266 	.db #0xff	; 255
   7579 00                 2267 	.db #0x00	; 0
   757A FF                 2268 	.db #0xff	; 255
   757B 00                 2269 	.db #0x00	; 0
   757C 00                 2270 	.db #0x00	; 0
   757D 33                 2271 	.db #0x33	; 51	'3'
   757E 00                 2272 	.db #0x00	; 0
   757F 33                 2273 	.db #0x33	; 51	'3'
   7580 FF                 2274 	.db #0xff	; 255
   7581 00                 2275 	.db #0x00	; 0
   7582 FF                 2276 	.db #0xff	; 255
   7583 00                 2277 	.db #0x00	; 0
   7584 FF                 2278 	.db #0xff	; 255
   7585 00                 2279 	.db #0x00	; 0
   7586 00                 2280 	.db #0x00	; 0
   7587 33                 2281 	.db #0x33	; 51	'3'
   7588 00                 2282 	.db #0x00	; 0
   7589 33                 2283 	.db #0x33	; 51	'3'
   758A FF                 2284 	.db #0xff	; 255
   758B 00                 2285 	.db #0x00	; 0
   758C FF                 2286 	.db #0xff	; 255
   758D 00                 2287 	.db #0x00	; 0
   758E AA                 2288 	.db #0xaa	; 170
   758F 11                 2289 	.db #0x11	; 17
   7590 00                 2290 	.db #0x00	; 0
   7591 BB                 2291 	.db #0xbb	; 187
   7592 55                 2292 	.db #0x55	; 85	'U'
   7593 22                 2293 	.db #0x22	; 34
   7594 00                 2294 	.db #0x00	; 0
   7595 E3                 2295 	.db #0xe3	; 227
   7596 FF                 2296 	.db #0xff	; 255
   7597 00                 2297 	.db #0x00	; 0
   7598 AA                 2298 	.db #0xaa	; 170
   7599 11                 2299 	.db #0x11	; 17
   759A 00                 2300 	.db #0x00	; 0
   759B BB                 2301 	.db #0xbb	; 187
   759C 55                 2302 	.db #0x55	; 85	'U'
   759D 22                 2303 	.db #0x22	; 34
   759E 00                 2304 	.db #0x00	; 0
   759F E3                 2305 	.db #0xe3	; 227
   75A0 FF                 2306 	.db #0xff	; 255
   75A1 00                 2307 	.db #0x00	; 0
   75A2 00                 2308 	.db #0x00	; 0
   75A3 33                 2309 	.db #0x33	; 51	'3'
   75A4 00                 2310 	.db #0x00	; 0
   75A5 33                 2311 	.db #0x33	; 51	'3'
   75A6 00                 2312 	.db #0x00	; 0
   75A7 7D                 2313 	.db #0x7d	; 125
   75A8 00                 2314 	.db #0x00	; 0
   75A9 FB                 2315 	.db #0xfb	; 251
   75AA 55                 2316 	.db #0x55	; 85	'U'
   75AB 82                 2317 	.db #0x82	; 130
   75AC 00                 2318 	.db #0x00	; 0
   75AD 33                 2319 	.db #0x33	; 51	'3'
   75AE 00                 2320 	.db #0x00	; 0
   75AF 33                 2321 	.db #0x33	; 51	'3'
   75B0 00                 2322 	.db #0x00	; 0
   75B1 7D                 2323 	.db #0x7d	; 125
   75B2 00                 2324 	.db #0x00	; 0
   75B3 FB                 2325 	.db #0xfb	; 251
   75B4 55                 2326 	.db #0x55	; 85	'U'
   75B5 82                 2327 	.db #0x82	; 130
   75B6 AA                 2328 	.db #0xaa	; 170
   75B7 11                 2329 	.db #0x11	; 17
   75B8 00                 2330 	.db #0x00	; 0
   75B9 BB                 2331 	.db #0xbb	; 187
   75BA 55                 2332 	.db #0x55	; 85	'U'
   75BB 22                 2333 	.db #0x22	; 34
   75BC 00                 2334 	.db #0x00	; 0
   75BD E3                 2335 	.db #0xe3	; 227
   75BE FF                 2336 	.db #0xff	; 255
   75BF 00                 2337 	.db #0x00	; 0
   75C0 AA                 2338 	.db #0xaa	; 170
   75C1 11                 2339 	.db #0x11	; 17
   75C2 00                 2340 	.db #0x00	; 0
   75C3 BB                 2341 	.db #0xbb	; 187
   75C4 55                 2342 	.db #0x55	; 85	'U'
   75C5 22                 2343 	.db #0x22	; 34
   75C6 00                 2344 	.db #0x00	; 0
   75C7 E3                 2345 	.db #0xe3	; 227
   75C8 FF                 2346 	.db #0xff	; 255
   75C9 00                 2347 	.db #0x00	; 0
   75CA FF                 2348 	.db #0xff	; 255
   75CB 00                 2349 	.db #0x00	; 0
   75CC 00                 2350 	.db #0x00	; 0
   75CD 33                 2351 	.db #0x33	; 51	'3'
   75CE 00                 2352 	.db #0x00	; 0
   75CF 33                 2353 	.db #0x33	; 51	'3'
   75D0 FF                 2354 	.db #0xff	; 255
   75D1 00                 2355 	.db #0x00	; 0
   75D2 FF                 2356 	.db #0xff	; 255
   75D3 00                 2357 	.db #0x00	; 0
   75D4 FF                 2358 	.db #0xff	; 255
   75D5 00                 2359 	.db #0x00	; 0
   75D6 00                 2360 	.db #0x00	; 0
   75D7 33                 2361 	.db #0x33	; 51	'3'
   75D8 00                 2362 	.db #0x00	; 0
   75D9 33                 2363 	.db #0x33	; 51	'3'
   75DA FF                 2364 	.db #0xff	; 255
   75DB 00                 2365 	.db #0x00	; 0
   75DC FF                 2366 	.db #0xff	; 255
   75DD 00                 2367 	.db #0x00	; 0
   75DE FF                 2368 	.db #0xff	; 255
   75DF 00                 2369 	.db #0x00	; 0
   75E0 FF                 2370 	.db #0xff	; 255
   75E1 00                 2371 	.db #0x00	; 0
   75E2 FF                 2372 	.db #0xff	; 255
   75E3 00                 2373 	.db #0x00	; 0
   75E4 FF                 2374 	.db #0xff	; 255
   75E5 00                 2375 	.db #0x00	; 0
   75E6 FF                 2376 	.db #0xff	; 255
   75E7 00                 2377 	.db #0x00	; 0
   75E8 FF                 2378 	.db #0xff	; 255
   75E9 00                 2379 	.db #0x00	; 0
   75EA FF                 2380 	.db #0xff	; 255
   75EB 00                 2381 	.db #0x00	; 0
   75EC FF                 2382 	.db #0xff	; 255
   75ED 00                 2383 	.db #0x00	; 0
   75EE FF                 2384 	.db #0xff	; 255
   75EF 00                 2385 	.db #0x00	; 0
   75F0 FF                 2386 	.db #0xff	; 255
   75F1 00                 2387 	.db #0x00	; 0
   75F2 FF                 2388 	.db #0xff	; 255
   75F3 00                 2389 	.db #0x00	; 0
   75F4 FF                 2390 	.db #0xff	; 255
   75F5 00                 2391 	.db #0x00	; 0
   75F6 FF                 2392 	.db #0xff	; 255
   75F7 00                 2393 	.db #0x00	; 0
   75F8 FF                 2394 	.db #0xff	; 255
   75F9 00                 2395 	.db #0x00	; 0
   75FA FF                 2396 	.db #0xff	; 255
   75FB 00                 2397 	.db #0x00	; 0
   75FC FF                 2398 	.db #0xff	; 255
   75FD 00                 2399 	.db #0x00	; 0
   75FE FF                 2400 	.db #0xff	; 255
   75FF 00                 2401 	.db #0x00	; 0
   7600 FF                 2402 	.db #0xff	; 255
   7601 00                 2403 	.db #0x00	; 0
   7602 FF                 2404 	.db #0xff	; 255
   7603 00                 2405 	.db #0x00	; 0
   7604 FF                 2406 	.db #0xff	; 255
   7605 00                 2407 	.db #0x00	; 0
   7606 FF                 2408 	.db #0xff	; 255
   7607 00                 2409 	.db #0x00	; 0
   7608 FF                 2410 	.db #0xff	; 255
   7609 00                 2411 	.db #0x00	; 0
   760A FF                 2412 	.db #0xff	; 255
   760B 00                 2413 	.db #0x00	; 0
   760C FF                 2414 	.db #0xff	; 255
   760D 00                 2415 	.db #0x00	; 0
   760E FF                 2416 	.db #0xff	; 255
   760F 00                 2417 	.db #0x00	; 0
   7610 FF                 2418 	.db #0xff	; 255
   7611 00                 2419 	.db #0x00	; 0
   7612 FF                 2420 	.db #0xff	; 255
   7613 00                 2421 	.db #0x00	; 0
   7614 FF                 2422 	.db #0xff	; 255
   7615 00                 2423 	.db #0x00	; 0
   7616 FF                 2424 	.db #0xff	; 255
   7617 00                 2425 	.db #0x00	; 0
   7618 FF                 2426 	.db #0xff	; 255
   7619 00                 2427 	.db #0x00	; 0
   761A                    2428 _player_06:
   761A FF                 2429 	.db #0xff	; 255
   761B 00                 2430 	.db #0x00	; 0
   761C FF                 2431 	.db #0xff	; 255
   761D 00                 2432 	.db #0x00	; 0
   761E FF                 2433 	.db #0xff	; 255
   761F 00                 2434 	.db #0x00	; 0
   7620 FF                 2435 	.db #0xff	; 255
   7621 00                 2436 	.db #0x00	; 0
   7622 FF                 2437 	.db #0xff	; 255
   7623 00                 2438 	.db #0x00	; 0
   7624 FF                 2439 	.db #0xff	; 255
   7625 00                 2440 	.db #0x00	; 0
   7626 FF                 2441 	.db #0xff	; 255
   7627 00                 2442 	.db #0x00	; 0
   7628 FF                 2443 	.db #0xff	; 255
   7629 00                 2444 	.db #0x00	; 0
   762A FF                 2445 	.db #0xff	; 255
   762B 00                 2446 	.db #0x00	; 0
   762C FF                 2447 	.db #0xff	; 255
   762D 00                 2448 	.db #0x00	; 0
   762E FF                 2449 	.db #0xff	; 255
   762F 00                 2450 	.db #0x00	; 0
   7630 FF                 2451 	.db #0xff	; 255
   7631 00                 2452 	.db #0x00	; 0
   7632 FF                 2453 	.db #0xff	; 255
   7633 00                 2454 	.db #0x00	; 0
   7634 FF                 2455 	.db #0xff	; 255
   7635 00                 2456 	.db #0x00	; 0
   7636 FF                 2457 	.db #0xff	; 255
   7637 00                 2458 	.db #0x00	; 0
   7638 FF                 2459 	.db #0xff	; 255
   7639 00                 2460 	.db #0x00	; 0
   763A FF                 2461 	.db #0xff	; 255
   763B 00                 2462 	.db #0x00	; 0
   763C FF                 2463 	.db #0xff	; 255
   763D 00                 2464 	.db #0x00	; 0
   763E FF                 2465 	.db #0xff	; 255
   763F 00                 2466 	.db #0x00	; 0
   7640 FF                 2467 	.db #0xff	; 255
   7641 00                 2468 	.db #0x00	; 0
   7642 FF                 2469 	.db #0xff	; 255
   7643 00                 2470 	.db #0x00	; 0
   7644 AA                 2471 	.db #0xaa	; 170
   7645 11                 2472 	.db #0x11	; 17
   7646 00                 2473 	.db #0x00	; 0
   7647 33                 2474 	.db #0x33	; 51	'3'
   7648 55                 2475 	.db #0x55	; 85	'U'
   7649 22                 2476 	.db #0x22	; 34
   764A FF                 2477 	.db #0xff	; 255
   764B 00                 2478 	.db #0x00	; 0
   764C FF                 2479 	.db #0xff	; 255
   764D 00                 2480 	.db #0x00	; 0
   764E AA                 2481 	.db #0xaa	; 170
   764F 11                 2482 	.db #0x11	; 17
   7650 00                 2483 	.db #0x00	; 0
   7651 33                 2484 	.db #0x33	; 51	'3'
   7652 55                 2485 	.db #0x55	; 85	'U'
   7653 22                 2486 	.db #0x22	; 34
   7654 FF                 2487 	.db #0xff	; 255
   7655 00                 2488 	.db #0x00	; 0
   7656 AA                 2489 	.db #0xaa	; 170
   7657 41                 2490 	.db #0x41	; 65	'A'
   7658 55                 2491 	.db #0x55	; 85	'U'
   7659 A2                 2492 	.db #0xa2	; 162
   765A 00                 2493 	.db #0x00	; 0
   765B 33                 2494 	.db #0x33	; 51	'3'
   765C 00                 2495 	.db #0x00	; 0
   765D BB                 2496 	.db #0xbb	; 187
   765E FF                 2497 	.db #0xff	; 255
   765F 00                 2498 	.db #0x00	; 0
   7660 AA                 2499 	.db #0xaa	; 170
   7661 41                 2500 	.db #0x41	; 65	'A'
   7662 55                 2501 	.db #0x55	; 85	'U'
   7663 A2                 2502 	.db #0xa2	; 162
   7664 00                 2503 	.db #0x00	; 0
   7665 33                 2504 	.db #0x33	; 51	'3'
   7666 00                 2505 	.db #0x00	; 0
   7667 BB                 2506 	.db #0xbb	; 187
   7668 FF                 2507 	.db #0xff	; 255
   7669 00                 2508 	.db #0x00	; 0
   766A 00                 2509 	.db #0x00	; 0
   766B D3                 2510 	.db #0xd3	; 211
   766C 00                 2511 	.db #0x00	; 0
   766D FF                 2512 	.db #0xff	; 255
   766E 00                 2513 	.db #0x00	; 0
   766F 39                 2514 	.db #0x39	; 57	'9'
   7670 00                 2515 	.db #0x00	; 0
   7671 33                 2516 	.db #0x33	; 51	'3'
   7672 55                 2517 	.db #0x55	; 85	'U'
   7673 22                 2518 	.db #0x22	; 34
   7674 00                 2519 	.db #0x00	; 0
   7675 D3                 2520 	.db #0xd3	; 211
   7676 00                 2521 	.db #0x00	; 0
   7677 FF                 2522 	.db #0xff	; 255
   7678 00                 2523 	.db #0x00	; 0
   7679 39                 2524 	.db #0x39	; 57	'9'
   767A 00                 2525 	.db #0x00	; 0
   767B 33                 2526 	.db #0x33	; 51	'3'
   767C 55                 2527 	.db #0x55	; 85	'U'
   767D 22                 2528 	.db #0x22	; 34
   767E AA                 2529 	.db #0xaa	; 170
   767F 41                 2530 	.db #0x41	; 65	'A'
   7680 55                 2531 	.db #0x55	; 85	'U'
   7681 A2                 2532 	.db #0xa2	; 162
   7682 00                 2533 	.db #0x00	; 0
   7683 33                 2534 	.db #0x33	; 51	'3'
   7684 00                 2535 	.db #0x00	; 0
   7685 BB                 2536 	.db #0xbb	; 187
   7686 FF                 2537 	.db #0xff	; 255
   7687 00                 2538 	.db #0x00	; 0
   7688 AA                 2539 	.db #0xaa	; 170
   7689 41                 2540 	.db #0x41	; 65	'A'
   768A 55                 2541 	.db #0x55	; 85	'U'
   768B A2                 2542 	.db #0xa2	; 162
   768C 00                 2543 	.db #0x00	; 0
   768D 33                 2544 	.db #0x33	; 51	'3'
   768E 00                 2545 	.db #0x00	; 0
   768F BB                 2546 	.db #0xbb	; 187
   7690 FF                 2547 	.db #0xff	; 255
   7691 00                 2548 	.db #0x00	; 0
   7692 FF                 2549 	.db #0xff	; 255
   7693 00                 2550 	.db #0x00	; 0
   7694 AA                 2551 	.db #0xaa	; 170
   7695 11                 2552 	.db #0x11	; 17
   7696 00                 2553 	.db #0x00	; 0
   7697 33                 2554 	.db #0x33	; 51	'3'
   7698 55                 2555 	.db #0x55	; 85	'U'
   7699 22                 2556 	.db #0x22	; 34
   769A FF                 2557 	.db #0xff	; 255
   769B 00                 2558 	.db #0x00	; 0
   769C FF                 2559 	.db #0xff	; 255
   769D 00                 2560 	.db #0x00	; 0
   769E AA                 2561 	.db #0xaa	; 170
   769F 11                 2562 	.db #0x11	; 17
   76A0 00                 2563 	.db #0x00	; 0
   76A1 33                 2564 	.db #0x33	; 51	'3'
   76A2 55                 2565 	.db #0x55	; 85	'U'
   76A3 22                 2566 	.db #0x22	; 34
   76A4 FF                 2567 	.db #0xff	; 255
   76A5 00                 2568 	.db #0x00	; 0
   76A6 FF                 2569 	.db #0xff	; 255
   76A7 00                 2570 	.db #0x00	; 0
   76A8 FF                 2571 	.db #0xff	; 255
   76A9 00                 2572 	.db #0x00	; 0
   76AA FF                 2573 	.db #0xff	; 255
   76AB 00                 2574 	.db #0x00	; 0
   76AC FF                 2575 	.db #0xff	; 255
   76AD 00                 2576 	.db #0x00	; 0
   76AE FF                 2577 	.db #0xff	; 255
   76AF 00                 2578 	.db #0x00	; 0
   76B0 FF                 2579 	.db #0xff	; 255
   76B1 00                 2580 	.db #0x00	; 0
   76B2 FF                 2581 	.db #0xff	; 255
   76B3 00                 2582 	.db #0x00	; 0
   76B4 FF                 2583 	.db #0xff	; 255
   76B5 00                 2584 	.db #0x00	; 0
   76B6 FF                 2585 	.db #0xff	; 255
   76B7 00                 2586 	.db #0x00	; 0
   76B8 FF                 2587 	.db #0xff	; 255
   76B9 00                 2588 	.db #0x00	; 0
   76BA FF                 2589 	.db #0xff	; 255
   76BB 00                 2590 	.db #0x00	; 0
   76BC FF                 2591 	.db #0xff	; 255
   76BD 00                 2592 	.db #0x00	; 0
   76BE FF                 2593 	.db #0xff	; 255
   76BF 00                 2594 	.db #0x00	; 0
   76C0 FF                 2595 	.db #0xff	; 255
   76C1 00                 2596 	.db #0x00	; 0
   76C2 FF                 2597 	.db #0xff	; 255
   76C3 00                 2598 	.db #0x00	; 0
   76C4 FF                 2599 	.db #0xff	; 255
   76C5 00                 2600 	.db #0x00	; 0
   76C6 FF                 2601 	.db #0xff	; 255
   76C7 00                 2602 	.db #0x00	; 0
   76C8 FF                 2603 	.db #0xff	; 255
   76C9 00                 2604 	.db #0x00	; 0
   76CA FF                 2605 	.db #0xff	; 255
   76CB 00                 2606 	.db #0x00	; 0
   76CC FF                 2607 	.db #0xff	; 255
   76CD 00                 2608 	.db #0x00	; 0
   76CE FF                 2609 	.db #0xff	; 255
   76CF 00                 2610 	.db #0x00	; 0
   76D0 FF                 2611 	.db #0xff	; 255
   76D1 00                 2612 	.db #0x00	; 0
   76D2 FF                 2613 	.db #0xff	; 255
   76D3 00                 2614 	.db #0x00	; 0
   76D4 FF                 2615 	.db #0xff	; 255
   76D5 00                 2616 	.db #0x00	; 0
   76D6 FF                 2617 	.db #0xff	; 255
   76D7 00                 2618 	.db #0x00	; 0
   76D8 FF                 2619 	.db #0xff	; 255
   76D9 00                 2620 	.db #0x00	; 0
   76DA FF                 2621 	.db #0xff	; 255
   76DB 00                 2622 	.db #0x00	; 0
   76DC FF                 2623 	.db #0xff	; 255
   76DD 00                 2624 	.db #0x00	; 0
   76DE FF                 2625 	.db #0xff	; 255
   76DF 00                 2626 	.db #0x00	; 0
   76E0 FF                 2627 	.db #0xff	; 255
   76E1 00                 2628 	.db #0x00	; 0
   76E2                    2629 _player_07:
   76E2 FF                 2630 	.db #0xff	; 255
   76E3 00                 2631 	.db #0x00	; 0
   76E4 FF                 2632 	.db #0xff	; 255
   76E5 00                 2633 	.db #0x00	; 0
   76E6 55                 2634 	.db #0x55	; 85	'U'
   76E7 22                 2635 	.db #0x22	; 34
   76E8 FF                 2636 	.db #0xff	; 255
   76E9 00                 2637 	.db #0x00	; 0
   76EA FF                 2638 	.db #0xff	; 255
   76EB 00                 2639 	.db #0x00	; 0
   76EC FF                 2640 	.db #0xff	; 255
   76ED 00                 2641 	.db #0x00	; 0
   76EE FF                 2642 	.db #0xff	; 255
   76EF 00                 2643 	.db #0x00	; 0
   76F0 55                 2644 	.db #0x55	; 85	'U'
   76F1 22                 2645 	.db #0x22	; 34
   76F2 FF                 2646 	.db #0xff	; 255
   76F3 00                 2647 	.db #0x00	; 0
   76F4 FF                 2648 	.db #0xff	; 255
   76F5 00                 2649 	.db #0x00	; 0
   76F6 FF                 2650 	.db #0xff	; 255
   76F7 00                 2651 	.db #0x00	; 0
   76F8 AA                 2652 	.db #0xaa	; 170
   76F9 11                 2653 	.db #0x11	; 17
   76FA 00                 2654 	.db #0x00	; 0
   76FB 33                 2655 	.db #0x33	; 51	'3'
   76FC FF                 2656 	.db #0xff	; 255
   76FD 00                 2657 	.db #0x00	; 0
   76FE FF                 2658 	.db #0xff	; 255
   76FF 00                 2659 	.db #0x00	; 0
   7700 FF                 2660 	.db #0xff	; 255
   7701 00                 2661 	.db #0x00	; 0
   7702 AA                 2662 	.db #0xaa	; 170
   7703 11                 2663 	.db #0x11	; 17
   7704 00                 2664 	.db #0x00	; 0
   7705 33                 2665 	.db #0x33	; 51	'3'
   7706 FF                 2666 	.db #0xff	; 255
   7707 00                 2667 	.db #0x00	; 0
   7708 FF                 2668 	.db #0xff	; 255
   7709 00                 2669 	.db #0x00	; 0
   770A FF                 2670 	.db #0xff	; 255
   770B 00                 2671 	.db #0x00	; 0
   770C 00                 2672 	.db #0x00	; 0
   770D 77                 2673 	.db #0x77	; 119	'w'
   770E 00                 2674 	.db #0x00	; 0
   770F 77                 2675 	.db #0x77	; 119	'w'
   7710 55                 2676 	.db #0x55	; 85	'U'
   7711 22                 2677 	.db #0x22	; 34
   7712 FF                 2678 	.db #0xff	; 255
   7713 00                 2679 	.db #0x00	; 0
   7714 FF                 2680 	.db #0xff	; 255
   7715 00                 2681 	.db #0x00	; 0
   7716 00                 2682 	.db #0x00	; 0
   7717 77                 2683 	.db #0x77	; 119	'w'
   7718 00                 2684 	.db #0x00	; 0
   7719 77                 2685 	.db #0x77	; 119	'w'
   771A 55                 2686 	.db #0x55	; 85	'U'
   771B 22                 2687 	.db #0x22	; 34
   771C FF                 2688 	.db #0xff	; 255
   771D 00                 2689 	.db #0x00	; 0
   771E FF                 2690 	.db #0xff	; 255
   771F 00                 2691 	.db #0x00	; 0
   7720 00                 2692 	.db #0x00	; 0
   7721 33                 2693 	.db #0x33	; 51	'3'
   7722 00                 2694 	.db #0x00	; 0
   7723 33                 2695 	.db #0x33	; 51	'3'
   7724 55                 2696 	.db #0x55	; 85	'U'
   7725 22                 2697 	.db #0x22	; 34
   7726 FF                 2698 	.db #0xff	; 255
   7727 00                 2699 	.db #0x00	; 0
   7728 FF                 2700 	.db #0xff	; 255
   7729 00                 2701 	.db #0x00	; 0
   772A 00                 2702 	.db #0x00	; 0
   772B 33                 2703 	.db #0x33	; 51	'3'
   772C 00                 2704 	.db #0x00	; 0
   772D 33                 2705 	.db #0x33	; 51	'3'
   772E 55                 2706 	.db #0x55	; 85	'U'
   772F 22                 2707 	.db #0x22	; 34
   7730 FF                 2708 	.db #0xff	; 255
   7731 00                 2709 	.db #0x00	; 0
   7732 FF                 2710 	.db #0xff	; 255
   7733 00                 2711 	.db #0x00	; 0
   7734 00                 2712 	.db #0x00	; 0
   7735 33                 2713 	.db #0x33	; 51	'3'
   7736 00                 2714 	.db #0x00	; 0
   7737 39                 2715 	.db #0x39	; 57	'9'
   7738 55                 2716 	.db #0x55	; 85	'U'
   7739 22                 2717 	.db #0x22	; 34
   773A FF                 2718 	.db #0xff	; 255
   773B 00                 2719 	.db #0x00	; 0
   773C FF                 2720 	.db #0xff	; 255
   773D 00                 2721 	.db #0x00	; 0
   773E 00                 2722 	.db #0x00	; 0
   773F 33                 2723 	.db #0x33	; 51	'3'
   7740 00                 2724 	.db #0x00	; 0
   7741 39                 2725 	.db #0x39	; 57	'9'
   7742 55                 2726 	.db #0x55	; 85	'U'
   7743 22                 2727 	.db #0x22	; 34
   7744 FF                 2728 	.db #0xff	; 255
   7745 00                 2729 	.db #0x00	; 0
   7746 FF                 2730 	.db #0xff	; 255
   7747 00                 2731 	.db #0x00	; 0
   7748 55                 2732 	.db #0x55	; 85	'U'
   7749 22                 2733 	.db #0x22	; 34
   774A 55                 2734 	.db #0x55	; 85	'U'
   774B AA                 2735 	.db #0xaa	; 170
   774C 55                 2736 	.db #0x55	; 85	'U'
   774D 22                 2737 	.db #0x22	; 34
   774E FF                 2738 	.db #0xff	; 255
   774F 00                 2739 	.db #0x00	; 0
   7750 FF                 2740 	.db #0xff	; 255
   7751 00                 2741 	.db #0x00	; 0
   7752 55                 2742 	.db #0x55	; 85	'U'
   7753 22                 2743 	.db #0x22	; 34
   7754 55                 2744 	.db #0x55	; 85	'U'
   7755 AA                 2745 	.db #0xaa	; 170
   7756 55                 2746 	.db #0x55	; 85	'U'
   7757 22                 2747 	.db #0x22	; 34
   7758 FF                 2748 	.db #0xff	; 255
   7759 00                 2749 	.db #0x00	; 0
   775A FF                 2750 	.db #0xff	; 255
   775B 00                 2751 	.db #0x00	; 0
   775C AA                 2752 	.db #0xaa	; 170
   775D 51                 2753 	.db #0x51	; 81	'Q'
   775E 00                 2754 	.db #0x00	; 0
   775F FB                 2755 	.db #0xfb	; 251
   7760 FF                 2756 	.db #0xff	; 255
   7761 00                 2757 	.db #0x00	; 0
   7762 FF                 2758 	.db #0xff	; 255
   7763 00                 2759 	.db #0x00	; 0
   7764 FF                 2760 	.db #0xff	; 255
   7765 00                 2761 	.db #0x00	; 0
   7766 AA                 2762 	.db #0xaa	; 170
   7767 51                 2763 	.db #0x51	; 81	'Q'
   7768 00                 2764 	.db #0x00	; 0
   7769 FB                 2765 	.db #0xfb	; 251
   776A FF                 2766 	.db #0xff	; 255
   776B 00                 2767 	.db #0x00	; 0
   776C FF                 2768 	.db #0xff	; 255
   776D 00                 2769 	.db #0x00	; 0
   776E FF                 2770 	.db #0xff	; 255
   776F 00                 2771 	.db #0x00	; 0
   7770 AA                 2772 	.db #0xaa	; 170
   7771 41                 2773 	.db #0x41	; 65	'A'
   7772 00                 2774 	.db #0x00	; 0
   7773 E3                 2775 	.db #0xe3	; 227
   7774 FF                 2776 	.db #0xff	; 255
   7775 00                 2777 	.db #0x00	; 0
   7776 FF                 2778 	.db #0xff	; 255
   7777 00                 2779 	.db #0x00	; 0
   7778 FF                 2780 	.db #0xff	; 255
   7779 00                 2781 	.db #0x00	; 0
   777A AA                 2782 	.db #0xaa	; 170
   777B 41                 2783 	.db #0x41	; 65	'A'
   777C 00                 2784 	.db #0x00	; 0
   777D E3                 2785 	.db #0xe3	; 227
   777E FF                 2786 	.db #0xff	; 255
   777F 00                 2787 	.db #0x00	; 0
   7780 FF                 2788 	.db #0xff	; 255
   7781 00                 2789 	.db #0x00	; 0
   7782 FF                 2790 	.db #0xff	; 255
   7783 00                 2791 	.db #0x00	; 0
   7784 FF                 2792 	.db #0xff	; 255
   7785 00                 2793 	.db #0x00	; 0
   7786 55                 2794 	.db #0x55	; 85	'U'
   7787 82                 2795 	.db #0x82	; 130
   7788 FF                 2796 	.db #0xff	; 255
   7789 00                 2797 	.db #0x00	; 0
   778A FF                 2798 	.db #0xff	; 255
   778B 00                 2799 	.db #0x00	; 0
   778C FF                 2800 	.db #0xff	; 255
   778D 00                 2801 	.db #0x00	; 0
   778E FF                 2802 	.db #0xff	; 255
   778F 00                 2803 	.db #0x00	; 0
   7790 55                 2804 	.db #0x55	; 85	'U'
   7791 82                 2805 	.db #0x82	; 130
   7792 FF                 2806 	.db #0xff	; 255
   7793 00                 2807 	.db #0x00	; 0
   7794 FF                 2808 	.db #0xff	; 255
   7795 00                 2809 	.db #0x00	; 0
   7796 FF                 2810 	.db #0xff	; 255
   7797 00                 2811 	.db #0x00	; 0
   7798 FF                 2812 	.db #0xff	; 255
   7799 00                 2813 	.db #0x00	; 0
   779A FF                 2814 	.db #0xff	; 255
   779B 00                 2815 	.db #0x00	; 0
   779C FF                 2816 	.db #0xff	; 255
   779D 00                 2817 	.db #0x00	; 0
   779E FF                 2818 	.db #0xff	; 255
   779F 00                 2819 	.db #0x00	; 0
   77A0 FF                 2820 	.db #0xff	; 255
   77A1 00                 2821 	.db #0x00	; 0
   77A2 FF                 2822 	.db #0xff	; 255
   77A3 00                 2823 	.db #0x00	; 0
   77A4 FF                 2824 	.db #0xff	; 255
   77A5 00                 2825 	.db #0x00	; 0
   77A6 FF                 2826 	.db #0xff	; 255
   77A7 00                 2827 	.db #0x00	; 0
   77A8 FF                 2828 	.db #0xff	; 255
   77A9 00                 2829 	.db #0x00	; 0
   77AA                    2830 _player_08:
   77AA FF                 2831 	.db #0xff	; 255
   77AB 00                 2832 	.db #0x00	; 0
   77AC FF                 2833 	.db #0xff	; 255
   77AD 00                 2834 	.db #0x00	; 0
   77AE 55                 2835 	.db #0x55	; 85	'U'
   77AF 82                 2836 	.db #0x82	; 130
   77B0 FF                 2837 	.db #0xff	; 255
   77B1 00                 2838 	.db #0x00	; 0
   77B2 FF                 2839 	.db #0xff	; 255
   77B3 00                 2840 	.db #0x00	; 0
   77B4 FF                 2841 	.db #0xff	; 255
   77B5 00                 2842 	.db #0x00	; 0
   77B6 FF                 2843 	.db #0xff	; 255
   77B7 00                 2844 	.db #0x00	; 0
   77B8 55                 2845 	.db #0x55	; 85	'U'
   77B9 82                 2846 	.db #0x82	; 130
   77BA FF                 2847 	.db #0xff	; 255
   77BB 00                 2848 	.db #0x00	; 0
   77BC FF                 2849 	.db #0xff	; 255
   77BD 00                 2850 	.db #0x00	; 0
   77BE FF                 2851 	.db #0xff	; 255
   77BF 00                 2852 	.db #0x00	; 0
   77C0 AA                 2853 	.db #0xaa	; 170
   77C1 41                 2854 	.db #0x41	; 65	'A'
   77C2 00                 2855 	.db #0x00	; 0
   77C3 E3                 2856 	.db #0xe3	; 227
   77C4 FF                 2857 	.db #0xff	; 255
   77C5 00                 2858 	.db #0x00	; 0
   77C6 FF                 2859 	.db #0xff	; 255
   77C7 00                 2860 	.db #0x00	; 0
   77C8 FF                 2861 	.db #0xff	; 255
   77C9 00                 2862 	.db #0x00	; 0
   77CA AA                 2863 	.db #0xaa	; 170
   77CB 41                 2864 	.db #0x41	; 65	'A'
   77CC 00                 2865 	.db #0x00	; 0
   77CD E3                 2866 	.db #0xe3	; 227
   77CE FF                 2867 	.db #0xff	; 255
   77CF 00                 2868 	.db #0x00	; 0
   77D0 FF                 2869 	.db #0xff	; 255
   77D1 00                 2870 	.db #0x00	; 0
   77D2 FF                 2871 	.db #0xff	; 255
   77D3 00                 2872 	.db #0x00	; 0
   77D4 AA                 2873 	.db #0xaa	; 170
   77D5 51                 2874 	.db #0x51	; 81	'Q'
   77D6 00                 2875 	.db #0x00	; 0
   77D7 FB                 2876 	.db #0xfb	; 251
   77D8 FF                 2877 	.db #0xff	; 255
   77D9 00                 2878 	.db #0x00	; 0
   77DA FF                 2879 	.db #0xff	; 255
   77DB 00                 2880 	.db #0x00	; 0
   77DC FF                 2881 	.db #0xff	; 255
   77DD 00                 2882 	.db #0x00	; 0
   77DE AA                 2883 	.db #0xaa	; 170
   77DF 51                 2884 	.db #0x51	; 81	'Q'
   77E0 00                 2885 	.db #0x00	; 0
   77E1 FB                 2886 	.db #0xfb	; 251
   77E2 FF                 2887 	.db #0xff	; 255
   77E3 00                 2888 	.db #0x00	; 0
   77E4 FF                 2889 	.db #0xff	; 255
   77E5 00                 2890 	.db #0x00	; 0
   77E6 FF                 2891 	.db #0xff	; 255
   77E7 00                 2892 	.db #0x00	; 0
   77E8 55                 2893 	.db #0x55	; 85	'U'
   77E9 22                 2894 	.db #0x22	; 34
   77EA 55                 2895 	.db #0x55	; 85	'U'
   77EB AA                 2896 	.db #0xaa	; 170
   77EC 55                 2897 	.db #0x55	; 85	'U'
   77ED 22                 2898 	.db #0x22	; 34
   77EE FF                 2899 	.db #0xff	; 255
   77EF 00                 2900 	.db #0x00	; 0
   77F0 FF                 2901 	.db #0xff	; 255
   77F1 00                 2902 	.db #0x00	; 0
   77F2 55                 2903 	.db #0x55	; 85	'U'
   77F3 22                 2904 	.db #0x22	; 34
   77F4 55                 2905 	.db #0x55	; 85	'U'
   77F5 AA                 2906 	.db #0xaa	; 170
   77F6 55                 2907 	.db #0x55	; 85	'U'
   77F7 22                 2908 	.db #0x22	; 34
   77F8 FF                 2909 	.db #0xff	; 255
   77F9 00                 2910 	.db #0x00	; 0
   77FA FF                 2911 	.db #0xff	; 255
   77FB 00                 2912 	.db #0x00	; 0
   77FC 00                 2913 	.db #0x00	; 0
   77FD 33                 2914 	.db #0x33	; 51	'3'
   77FE 00                 2915 	.db #0x00	; 0
   77FF 39                 2916 	.db #0x39	; 57	'9'
   7800 55                 2917 	.db #0x55	; 85	'U'
   7801 22                 2918 	.db #0x22	; 34
   7802 FF                 2919 	.db #0xff	; 255
   7803 00                 2920 	.db #0x00	; 0
   7804 FF                 2921 	.db #0xff	; 255
   7805 00                 2922 	.db #0x00	; 0
   7806 00                 2923 	.db #0x00	; 0
   7807 33                 2924 	.db #0x33	; 51	'3'
   7808 00                 2925 	.db #0x00	; 0
   7809 39                 2926 	.db #0x39	; 57	'9'
   780A 55                 2927 	.db #0x55	; 85	'U'
   780B 22                 2928 	.db #0x22	; 34
   780C FF                 2929 	.db #0xff	; 255
   780D 00                 2930 	.db #0x00	; 0
   780E FF                 2931 	.db #0xff	; 255
   780F 00                 2932 	.db #0x00	; 0
   7810 00                 2933 	.db #0x00	; 0
   7811 33                 2934 	.db #0x33	; 51	'3'
   7812 00                 2935 	.db #0x00	; 0
   7813 33                 2936 	.db #0x33	; 51	'3'
   7814 55                 2937 	.db #0x55	; 85	'U'
   7815 22                 2938 	.db #0x22	; 34
   7816 FF                 2939 	.db #0xff	; 255
   7817 00                 2940 	.db #0x00	; 0
   7818 FF                 2941 	.db #0xff	; 255
   7819 00                 2942 	.db #0x00	; 0
   781A 00                 2943 	.db #0x00	; 0
   781B 33                 2944 	.db #0x33	; 51	'3'
   781C 00                 2945 	.db #0x00	; 0
   781D 33                 2946 	.db #0x33	; 51	'3'
   781E 55                 2947 	.db #0x55	; 85	'U'
   781F 22                 2948 	.db #0x22	; 34
   7820 FF                 2949 	.db #0xff	; 255
   7821 00                 2950 	.db #0x00	; 0
   7822 FF                 2951 	.db #0xff	; 255
   7823 00                 2952 	.db #0x00	; 0
   7824 00                 2953 	.db #0x00	; 0
   7825 77                 2954 	.db #0x77	; 119	'w'
   7826 00                 2955 	.db #0x00	; 0
   7827 77                 2956 	.db #0x77	; 119	'w'
   7828 55                 2957 	.db #0x55	; 85	'U'
   7829 22                 2958 	.db #0x22	; 34
   782A FF                 2959 	.db #0xff	; 255
   782B 00                 2960 	.db #0x00	; 0
   782C FF                 2961 	.db #0xff	; 255
   782D 00                 2962 	.db #0x00	; 0
   782E 00                 2963 	.db #0x00	; 0
   782F 77                 2964 	.db #0x77	; 119	'w'
   7830 00                 2965 	.db #0x00	; 0
   7831 77                 2966 	.db #0x77	; 119	'w'
   7832 55                 2967 	.db #0x55	; 85	'U'
   7833 22                 2968 	.db #0x22	; 34
   7834 FF                 2969 	.db #0xff	; 255
   7835 00                 2970 	.db #0x00	; 0
   7836 FF                 2971 	.db #0xff	; 255
   7837 00                 2972 	.db #0x00	; 0
   7838 AA                 2973 	.db #0xaa	; 170
   7839 11                 2974 	.db #0x11	; 17
   783A 00                 2975 	.db #0x00	; 0
   783B 33                 2976 	.db #0x33	; 51	'3'
   783C FF                 2977 	.db #0xff	; 255
   783D 00                 2978 	.db #0x00	; 0
   783E FF                 2979 	.db #0xff	; 255
   783F 00                 2980 	.db #0x00	; 0
   7840 FF                 2981 	.db #0xff	; 255
   7841 00                 2982 	.db #0x00	; 0
   7842 AA                 2983 	.db #0xaa	; 170
   7843 11                 2984 	.db #0x11	; 17
   7844 00                 2985 	.db #0x00	; 0
   7845 33                 2986 	.db #0x33	; 51	'3'
   7846 FF                 2987 	.db #0xff	; 255
   7847 00                 2988 	.db #0x00	; 0
   7848 FF                 2989 	.db #0xff	; 255
   7849 00                 2990 	.db #0x00	; 0
   784A FF                 2991 	.db #0xff	; 255
   784B 00                 2992 	.db #0x00	; 0
   784C FF                 2993 	.db #0xff	; 255
   784D 00                 2994 	.db #0x00	; 0
   784E 55                 2995 	.db #0x55	; 85	'U'
   784F 22                 2996 	.db #0x22	; 34
   7850 FF                 2997 	.db #0xff	; 255
   7851 00                 2998 	.db #0x00	; 0
   7852 FF                 2999 	.db #0xff	; 255
   7853 00                 3000 	.db #0x00	; 0
   7854 FF                 3001 	.db #0xff	; 255
   7855 00                 3002 	.db #0x00	; 0
   7856 FF                 3003 	.db #0xff	; 255
   7857 00                 3004 	.db #0x00	; 0
   7858 FF                 3005 	.db #0xff	; 255
   7859 00                 3006 	.db #0x00	; 0
   785A FF                 3007 	.db #0xff	; 255
   785B 00                 3008 	.db #0x00	; 0
   785C FF                 3009 	.db #0xff	; 255
   785D 00                 3010 	.db #0x00	; 0
   785E FF                 3011 	.db #0xff	; 255
   785F 00                 3012 	.db #0x00	; 0
   7860 FF                 3013 	.db #0xff	; 255
   7861 00                 3014 	.db #0x00	; 0
   7862 FF                 3015 	.db #0xff	; 255
   7863 00                 3016 	.db #0x00	; 0
   7864 FF                 3017 	.db #0xff	; 255
   7865 00                 3018 	.db #0x00	; 0
   7866 FF                 3019 	.db #0xff	; 255
   7867 00                 3020 	.db #0x00	; 0
   7868 FF                 3021 	.db #0xff	; 255
   7869 00                 3022 	.db #0x00	; 0
   786A FF                 3023 	.db #0xff	; 255
   786B 00                 3024 	.db #0x00	; 0
   786C FF                 3025 	.db #0xff	; 255
   786D 00                 3026 	.db #0x00	; 0
   786E FF                 3027 	.db #0xff	; 255
   786F 00                 3028 	.db #0x00	; 0
   7870 FF                 3029 	.db #0xff	; 255
   7871 00                 3030 	.db #0x00	; 0
   7872                    3031 _gui_ts:
   7872 84 78              3032 	.dw _gui_0
   7874 C0 78              3033 	.dw _gui_1
   7876 FC 78              3034 	.dw _gui_2
   7878 38 79              3035 	.dw _gui_3
   787A 74 79              3036 	.dw _gui_4
   787C B0 79              3037 	.dw _gui_5
   787E EC 79              3038 	.dw _gui_6
   7880 28 7A              3039 	.dw _gui_7
   7882 64 7A              3040 	.dw _gui_8
   7884                    3041 _gui_0:
   7884 FF                 3042 	.db #0xff	; 255
   7885 00                 3043 	.db #0x00	; 0
   7886 FF                 3044 	.db #0xff	; 255
   7887 00                 3045 	.db #0x00	; 0
   7888 FF                 3046 	.db #0xff	; 255
   7889 00                 3047 	.db #0x00	; 0
   788A FF                 3048 	.db #0xff	; 255
   788B 00                 3049 	.db #0x00	; 0
   788C FF                 3050 	.db #0xff	; 255
   788D 00                 3051 	.db #0x00	; 0
   788E FF                 3052 	.db #0xff	; 255
   788F 00                 3053 	.db #0x00	; 0
   7890 FF                 3054 	.db #0xff	; 255
   7891 00                 3055 	.db #0x00	; 0
   7892 FF                 3056 	.db #0xff	; 255
   7893 00                 3057 	.db #0x00	; 0
   7894 FF                 3058 	.db #0xff	; 255
   7895 00                 3059 	.db #0x00	; 0
   7896 FF                 3060 	.db #0xff	; 255
   7897 00                 3061 	.db #0x00	; 0
   7898 FF                 3062 	.db #0xff	; 255
   7899 00                 3063 	.db #0x00	; 0
   789A FF                 3064 	.db #0xff	; 255
   789B 00                 3065 	.db #0x00	; 0
   789C FF                 3066 	.db #0xff	; 255
   789D 00                 3067 	.db #0x00	; 0
   789E FF                 3068 	.db #0xff	; 255
   789F 00                 3069 	.db #0x00	; 0
   78A0 FF                 3070 	.db #0xff	; 255
   78A1 00                 3071 	.db #0x00	; 0
   78A2 FF                 3072 	.db #0xff	; 255
   78A3 00                 3073 	.db #0x00	; 0
   78A4 FF                 3074 	.db #0xff	; 255
   78A5 00                 3075 	.db #0x00	; 0
   78A6 FF                 3076 	.db #0xff	; 255
   78A7 00                 3077 	.db #0x00	; 0
   78A8 FF                 3078 	.db #0xff	; 255
   78A9 00                 3079 	.db #0x00	; 0
   78AA FF                 3080 	.db #0xff	; 255
   78AB 00                 3081 	.db #0x00	; 0
   78AC FF                 3082 	.db #0xff	; 255
   78AD 00                 3083 	.db #0x00	; 0
   78AE FF                 3084 	.db #0xff	; 255
   78AF 00                 3085 	.db #0x00	; 0
   78B0 FF                 3086 	.db #0xff	; 255
   78B1 00                 3087 	.db #0x00	; 0
   78B2 FF                 3088 	.db #0xff	; 255
   78B3 00                 3089 	.db #0x00	; 0
   78B4 FF                 3090 	.db #0xff	; 255
   78B5 00                 3091 	.db #0x00	; 0
   78B6 FF                 3092 	.db #0xff	; 255
   78B7 00                 3093 	.db #0x00	; 0
   78B8 FF                 3094 	.db #0xff	; 255
   78B9 00                 3095 	.db #0x00	; 0
   78BA FF                 3096 	.db #0xff	; 255
   78BB 00                 3097 	.db #0x00	; 0
   78BC FF                 3098 	.db #0xff	; 255
   78BD 00                 3099 	.db #0x00	; 0
   78BE FF                 3100 	.db #0xff	; 255
   78BF 00                 3101 	.db #0x00	; 0
   78C0                    3102 _gui_1:
   78C0 FF                 3103 	.db #0xff	; 255
   78C1 00                 3104 	.db #0x00	; 0
   78C2 FF                 3105 	.db #0xff	; 255
   78C3 00                 3106 	.db #0x00	; 0
   78C4 FF                 3107 	.db #0xff	; 255
   78C5 00                 3108 	.db #0x00	; 0
   78C6 FF                 3109 	.db #0xff	; 255
   78C7 00                 3110 	.db #0x00	; 0
   78C8 FF                 3111 	.db #0xff	; 255
   78C9 00                 3112 	.db #0x00	; 0
   78CA FF                 3113 	.db #0xff	; 255
   78CB 00                 3114 	.db #0x00	; 0
   78CC FF                 3115 	.db #0xff	; 255
   78CD 00                 3116 	.db #0x00	; 0
   78CE 00                 3117 	.db #0x00	; 0
   78CF 0F                 3118 	.db #0x0f	; 15
   78D0 00                 3119 	.db #0x00	; 0
   78D1 0F                 3120 	.db #0x0f	; 15
   78D2 FF                 3121 	.db #0xff	; 255
   78D3 00                 3122 	.db #0x00	; 0
   78D4 00                 3123 	.db #0x00	; 0
   78D5 0F                 3124 	.db #0x0f	; 15
   78D6 00                 3125 	.db #0x00	; 0
   78D7 0F                 3126 	.db #0x0f	; 15
   78D8 FF                 3127 	.db #0xff	; 255
   78D9 00                 3128 	.db #0x00	; 0
   78DA 00                 3129 	.db #0x00	; 0
   78DB 4E                 3130 	.db #0x4e	; 78	'N'
   78DC 00                 3131 	.db #0x00	; 0
   78DD CC                 3132 	.db #0xcc	; 204
   78DE FF                 3133 	.db #0xff	; 255
   78DF 00                 3134 	.db #0x00	; 0
   78E0 00                 3135 	.db #0x00	; 0
   78E1 4E                 3136 	.db #0x4e	; 78	'N'
   78E2 00                 3137 	.db #0x00	; 0
   78E3 CC                 3138 	.db #0xcc	; 204
   78E4 FF                 3139 	.db #0xff	; 255
   78E5 00                 3140 	.db #0x00	; 0
   78E6 00                 3141 	.db #0x00	; 0
   78E7 4E                 3142 	.db #0x4e	; 78	'N'
   78E8 FF                 3143 	.db #0xff	; 255
   78E9 00                 3144 	.db #0x00	; 0
   78EA FF                 3145 	.db #0xff	; 255
   78EB 00                 3146 	.db #0x00	; 0
   78EC 00                 3147 	.db #0x00	; 0
   78ED 4E                 3148 	.db #0x4e	; 78	'N'
   78EE FF                 3149 	.db #0xff	; 255
   78EF 00                 3150 	.db #0x00	; 0
   78F0 FF                 3151 	.db #0xff	; 255
   78F1 00                 3152 	.db #0x00	; 0
   78F2 00                 3153 	.db #0x00	; 0
   78F3 4E                 3154 	.db #0x4e	; 78	'N'
   78F4 FF                 3155 	.db #0xff	; 255
   78F5 00                 3156 	.db #0x00	; 0
   78F6 FF                 3157 	.db #0xff	; 255
   78F7 00                 3158 	.db #0x00	; 0
   78F8 00                 3159 	.db #0x00	; 0
   78F9 4E                 3160 	.db #0x4e	; 78	'N'
   78FA FF                 3161 	.db #0xff	; 255
   78FB 00                 3162 	.db #0x00	; 0
   78FC                    3163 _gui_2:
   78FC FF                 3164 	.db #0xff	; 255
   78FD 00                 3165 	.db #0x00	; 0
   78FE FF                 3166 	.db #0xff	; 255
   78FF 00                 3167 	.db #0x00	; 0
   7900 FF                 3168 	.db #0xff	; 255
   7901 00                 3169 	.db #0x00	; 0
   7902 FF                 3170 	.db #0xff	; 255
   7903 00                 3171 	.db #0x00	; 0
   7904 FF                 3172 	.db #0xff	; 255
   7905 00                 3173 	.db #0x00	; 0
   7906 FF                 3174 	.db #0xff	; 255
   7907 00                 3175 	.db #0x00	; 0
   7908 00                 3176 	.db #0x00	; 0
   7909 0F                 3177 	.db #0x0f	; 15
   790A 00                 3178 	.db #0x00	; 0
   790B 0F                 3179 	.db #0x0f	; 15
   790C 00                 3180 	.db #0x00	; 0
   790D 0F                 3181 	.db #0x0f	; 15
   790E 00                 3182 	.db #0x00	; 0
   790F 0F                 3183 	.db #0x0f	; 15
   7910 00                 3184 	.db #0x00	; 0
   7911 0F                 3185 	.db #0x0f	; 15
   7912 00                 3186 	.db #0x00	; 0
   7913 0F                 3187 	.db #0x0f	; 15
   7914 00                 3188 	.db #0x00	; 0
   7915 CC                 3189 	.db #0xcc	; 204
   7916 00                 3190 	.db #0x00	; 0
   7917 CC                 3191 	.db #0xcc	; 204
   7918 00                 3192 	.db #0x00	; 0
   7919 CC                 3193 	.db #0xcc	; 204
   791A 00                 3194 	.db #0x00	; 0
   791B CC                 3195 	.db #0xcc	; 204
   791C 00                 3196 	.db #0x00	; 0
   791D CC                 3197 	.db #0xcc	; 204
   791E 00                 3198 	.db #0x00	; 0
   791F CC                 3199 	.db #0xcc	; 204
   7920 FF                 3200 	.db #0xff	; 255
   7921 00                 3201 	.db #0x00	; 0
   7922 FF                 3202 	.db #0xff	; 255
   7923 00                 3203 	.db #0x00	; 0
   7924 FF                 3204 	.db #0xff	; 255
   7925 00                 3205 	.db #0x00	; 0
   7926 FF                 3206 	.db #0xff	; 255
   7927 00                 3207 	.db #0x00	; 0
   7928 FF                 3208 	.db #0xff	; 255
   7929 00                 3209 	.db #0x00	; 0
   792A FF                 3210 	.db #0xff	; 255
   792B 00                 3211 	.db #0x00	; 0
   792C FF                 3212 	.db #0xff	; 255
   792D 00                 3213 	.db #0x00	; 0
   792E FF                 3214 	.db #0xff	; 255
   792F 00                 3215 	.db #0x00	; 0
   7930 FF                 3216 	.db #0xff	; 255
   7931 00                 3217 	.db #0x00	; 0
   7932 FF                 3218 	.db #0xff	; 255
   7933 00                 3219 	.db #0x00	; 0
   7934 FF                 3220 	.db #0xff	; 255
   7935 00                 3221 	.db #0x00	; 0
   7936 FF                 3222 	.db #0xff	; 255
   7937 00                 3223 	.db #0x00	; 0
   7938                    3224 _gui_3:
   7938 FF                 3225 	.db #0xff	; 255
   7939 00                 3226 	.db #0x00	; 0
   793A FF                 3227 	.db #0xff	; 255
   793B 00                 3228 	.db #0x00	; 0
   793C FF                 3229 	.db #0xff	; 255
   793D 00                 3230 	.db #0x00	; 0
   793E FF                 3231 	.db #0xff	; 255
   793F 00                 3232 	.db #0x00	; 0
   7940 FF                 3233 	.db #0xff	; 255
   7941 00                 3234 	.db #0x00	; 0
   7942 FF                 3235 	.db #0xff	; 255
   7943 00                 3236 	.db #0x00	; 0
   7944 00                 3237 	.db #0x00	; 0
   7945 0F                 3238 	.db #0x0f	; 15
   7946 00                 3239 	.db #0x00	; 0
   7947 0F                 3240 	.db #0x0f	; 15
   7948 FF                 3241 	.db #0xff	; 255
   7949 00                 3242 	.db #0x00	; 0
   794A 00                 3243 	.db #0x00	; 0
   794B 0F                 3244 	.db #0x0f	; 15
   794C 00                 3245 	.db #0x00	; 0
   794D 0F                 3246 	.db #0x0f	; 15
   794E FF                 3247 	.db #0xff	; 255
   794F 00                 3248 	.db #0x00	; 0
   7950 00                 3249 	.db #0x00	; 0
   7951 CC                 3250 	.db #0xcc	; 204
   7952 00                 3251 	.db #0x00	; 0
   7953 8D                 3252 	.db #0x8d	; 141
   7954 55                 3253 	.db #0x55	; 85	'U'
   7955 88                 3254 	.db #0x88	; 136
   7956 00                 3255 	.db #0x00	; 0
   7957 CC                 3256 	.db #0xcc	; 204
   7958 00                 3257 	.db #0x00	; 0
   7959 8D                 3258 	.db #0x8d	; 141
   795A 55                 3259 	.db #0x55	; 85	'U'
   795B 88                 3260 	.db #0x88	; 136
   795C FF                 3261 	.db #0xff	; 255
   795D 00                 3262 	.db #0x00	; 0
   795E AA                 3263 	.db #0xaa	; 170
   795F 05                 3264 	.db #0x05	; 5
   7960 55                 3265 	.db #0x55	; 85	'U'
   7961 88                 3266 	.db #0x88	; 136
   7962 FF                 3267 	.db #0xff	; 255
   7963 00                 3268 	.db #0x00	; 0
   7964 AA                 3269 	.db #0xaa	; 170
   7965 05                 3270 	.db #0x05	; 5
   7966 55                 3271 	.db #0x55	; 85	'U'
   7967 88                 3272 	.db #0x88	; 136
   7968 FF                 3273 	.db #0xff	; 255
   7969 00                 3274 	.db #0x00	; 0
   796A AA                 3275 	.db #0xaa	; 170
   796B 05                 3276 	.db #0x05	; 5
   796C 55                 3277 	.db #0x55	; 85	'U'
   796D 88                 3278 	.db #0x88	; 136
   796E FF                 3279 	.db #0xff	; 255
   796F 00                 3280 	.db #0x00	; 0
   7970 AA                 3281 	.db #0xaa	; 170
   7971 05                 3282 	.db #0x05	; 5
   7972 55                 3283 	.db #0x55	; 85	'U'
   7973 88                 3284 	.db #0x88	; 136
   7974                    3285 _gui_4:
   7974 FF                 3286 	.db #0xff	; 255
   7975 00                 3287 	.db #0x00	; 0
   7976 00                 3288 	.db #0x00	; 0
   7977 4E                 3289 	.db #0x4e	; 78	'N'
   7978 FF                 3290 	.db #0xff	; 255
   7979 00                 3291 	.db #0x00	; 0
   797A FF                 3292 	.db #0xff	; 255
   797B 00                 3293 	.db #0x00	; 0
   797C 00                 3294 	.db #0x00	; 0
   797D 4E                 3295 	.db #0x4e	; 78	'N'
   797E FF                 3296 	.db #0xff	; 255
   797F 00                 3297 	.db #0x00	; 0
   7980 FF                 3298 	.db #0xff	; 255
   7981 00                 3299 	.db #0x00	; 0
   7982 00                 3300 	.db #0x00	; 0
   7983 4E                 3301 	.db #0x4e	; 78	'N'
   7984 FF                 3302 	.db #0xff	; 255
   7985 00                 3303 	.db #0x00	; 0
   7986 FF                 3304 	.db #0xff	; 255
   7987 00                 3305 	.db #0x00	; 0
   7988 00                 3306 	.db #0x00	; 0
   7989 4E                 3307 	.db #0x4e	; 78	'N'
   798A FF                 3308 	.db #0xff	; 255
   798B 00                 3309 	.db #0x00	; 0
   798C FF                 3310 	.db #0xff	; 255
   798D 00                 3311 	.db #0x00	; 0
   798E 00                 3312 	.db #0x00	; 0
   798F 4E                 3313 	.db #0x4e	; 78	'N'
   7990 FF                 3314 	.db #0xff	; 255
   7991 00                 3315 	.db #0x00	; 0
   7992 FF                 3316 	.db #0xff	; 255
   7993 00                 3317 	.db #0x00	; 0
   7994 00                 3318 	.db #0x00	; 0
   7995 4E                 3319 	.db #0x4e	; 78	'N'
   7996 FF                 3320 	.db #0xff	; 255
   7997 00                 3321 	.db #0x00	; 0
   7998 FF                 3322 	.db #0xff	; 255
   7999 00                 3323 	.db #0x00	; 0
   799A 00                 3324 	.db #0x00	; 0
   799B 4E                 3325 	.db #0x4e	; 78	'N'
   799C FF                 3326 	.db #0xff	; 255
   799D 00                 3327 	.db #0x00	; 0
   799E FF                 3328 	.db #0xff	; 255
   799F 00                 3329 	.db #0x00	; 0
   79A0 00                 3330 	.db #0x00	; 0
   79A1 4E                 3331 	.db #0x4e	; 78	'N'
   79A2 FF                 3332 	.db #0xff	; 255
   79A3 00                 3333 	.db #0x00	; 0
   79A4 FF                 3334 	.db #0xff	; 255
   79A5 00                 3335 	.db #0x00	; 0
   79A6 00                 3336 	.db #0x00	; 0
   79A7 4E                 3337 	.db #0x4e	; 78	'N'
   79A8 FF                 3338 	.db #0xff	; 255
   79A9 00                 3339 	.db #0x00	; 0
   79AA FF                 3340 	.db #0xff	; 255
   79AB 00                 3341 	.db #0x00	; 0
   79AC 00                 3342 	.db #0x00	; 0
   79AD 4E                 3343 	.db #0x4e	; 78	'N'
   79AE FF                 3344 	.db #0xff	; 255
   79AF 00                 3345 	.db #0x00	; 0
   79B0                    3346 _gui_5:
   79B0 FF                 3347 	.db #0xff	; 255
   79B1 00                 3348 	.db #0x00	; 0
   79B2 AA                 3349 	.db #0xaa	; 170
   79B3 05                 3350 	.db #0x05	; 5
   79B4 55                 3351 	.db #0x55	; 85	'U'
   79B5 88                 3352 	.db #0x88	; 136
   79B6 FF                 3353 	.db #0xff	; 255
   79B7 00                 3354 	.db #0x00	; 0
   79B8 AA                 3355 	.db #0xaa	; 170
   79B9 05                 3356 	.db #0x05	; 5
   79BA 55                 3357 	.db #0x55	; 85	'U'
   79BB 88                 3358 	.db #0x88	; 136
   79BC FF                 3359 	.db #0xff	; 255
   79BD 00                 3360 	.db #0x00	; 0
   79BE AA                 3361 	.db #0xaa	; 170
   79BF 05                 3362 	.db #0x05	; 5
   79C0 55                 3363 	.db #0x55	; 85	'U'
   79C1 88                 3364 	.db #0x88	; 136
   79C2 FF                 3365 	.db #0xff	; 255
   79C3 00                 3366 	.db #0x00	; 0
   79C4 AA                 3367 	.db #0xaa	; 170
   79C5 05                 3368 	.db #0x05	; 5
   79C6 55                 3369 	.db #0x55	; 85	'U'
   79C7 88                 3370 	.db #0x88	; 136
   79C8 FF                 3371 	.db #0xff	; 255
   79C9 00                 3372 	.db #0x00	; 0
   79CA AA                 3373 	.db #0xaa	; 170
   79CB 05                 3374 	.db #0x05	; 5
   79CC 55                 3375 	.db #0x55	; 85	'U'
   79CD 88                 3376 	.db #0x88	; 136
   79CE FF                 3377 	.db #0xff	; 255
   79CF 00                 3378 	.db #0x00	; 0
   79D0 AA                 3379 	.db #0xaa	; 170
   79D1 05                 3380 	.db #0x05	; 5
   79D2 55                 3381 	.db #0x55	; 85	'U'
   79D3 88                 3382 	.db #0x88	; 136
   79D4 FF                 3383 	.db #0xff	; 255
   79D5 00                 3384 	.db #0x00	; 0
   79D6 AA                 3385 	.db #0xaa	; 170
   79D7 05                 3386 	.db #0x05	; 5
   79D8 55                 3387 	.db #0x55	; 85	'U'
   79D9 88                 3388 	.db #0x88	; 136
   79DA FF                 3389 	.db #0xff	; 255
   79DB 00                 3390 	.db #0x00	; 0
   79DC AA                 3391 	.db #0xaa	; 170
   79DD 05                 3392 	.db #0x05	; 5
   79DE 55                 3393 	.db #0x55	; 85	'U'
   79DF 88                 3394 	.db #0x88	; 136
   79E0 FF                 3395 	.db #0xff	; 255
   79E1 00                 3396 	.db #0x00	; 0
   79E2 AA                 3397 	.db #0xaa	; 170
   79E3 05                 3398 	.db #0x05	; 5
   79E4 55                 3399 	.db #0x55	; 85	'U'
   79E5 88                 3400 	.db #0x88	; 136
   79E6 FF                 3401 	.db #0xff	; 255
   79E7 00                 3402 	.db #0x00	; 0
   79E8 AA                 3403 	.db #0xaa	; 170
   79E9 05                 3404 	.db #0x05	; 5
   79EA 55                 3405 	.db #0x55	; 85	'U'
   79EB 88                 3406 	.db #0x88	; 136
   79EC                    3407 _gui_6:
   79EC FF                 3408 	.db #0xff	; 255
   79ED 00                 3409 	.db #0x00	; 0
   79EE 00                 3410 	.db #0x00	; 0
   79EF 4E                 3411 	.db #0x4e	; 78	'N'
   79F0 FF                 3412 	.db #0xff	; 255
   79F1 00                 3413 	.db #0x00	; 0
   79F2 FF                 3414 	.db #0xff	; 255
   79F3 00                 3415 	.db #0x00	; 0
   79F4 00                 3416 	.db #0x00	; 0
   79F5 4E                 3417 	.db #0x4e	; 78	'N'
   79F6 FF                 3418 	.db #0xff	; 255
   79F7 00                 3419 	.db #0x00	; 0
   79F8 FF                 3420 	.db #0xff	; 255
   79F9 00                 3421 	.db #0x00	; 0
   79FA 00                 3422 	.db #0x00	; 0
   79FB 4E                 3423 	.db #0x4e	; 78	'N'
   79FC FF                 3424 	.db #0xff	; 255
   79FD 00                 3425 	.db #0x00	; 0
   79FE FF                 3426 	.db #0xff	; 255
   79FF 00                 3427 	.db #0x00	; 0
   7A00 00                 3428 	.db #0x00	; 0
   7A01 4E                 3429 	.db #0x4e	; 78	'N'
   7A02 FF                 3430 	.db #0xff	; 255
   7A03 00                 3431 	.db #0x00	; 0
   7A04 FF                 3432 	.db #0xff	; 255
   7A05 00                 3433 	.db #0x00	; 0
   7A06 00                 3434 	.db #0x00	; 0
   7A07 4E                 3435 	.db #0x4e	; 78	'N'
   7A08 FF                 3436 	.db #0xff	; 255
   7A09 00                 3437 	.db #0x00	; 0
   7A0A FF                 3438 	.db #0xff	; 255
   7A0B 00                 3439 	.db #0x00	; 0
   7A0C 00                 3440 	.db #0x00	; 0
   7A0D 4E                 3441 	.db #0x4e	; 78	'N'
   7A0E FF                 3442 	.db #0xff	; 255
   7A0F 00                 3443 	.db #0x00	; 0
   7A10 FF                 3444 	.db #0xff	; 255
   7A11 00                 3445 	.db #0x00	; 0
   7A12 00                 3446 	.db #0x00	; 0
   7A13 0F                 3447 	.db #0x0f	; 15
   7A14 00                 3448 	.db #0x00	; 0
   7A15 0F                 3449 	.db #0x0f	; 15
   7A16 FF                 3450 	.db #0xff	; 255
   7A17 00                 3451 	.db #0x00	; 0
   7A18 00                 3452 	.db #0x00	; 0
   7A19 0F                 3453 	.db #0x0f	; 15
   7A1A 00                 3454 	.db #0x00	; 0
   7A1B 0F                 3455 	.db #0x0f	; 15
   7A1C FF                 3456 	.db #0xff	; 255
   7A1D 00                 3457 	.db #0x00	; 0
   7A1E AA                 3458 	.db #0xaa	; 170
   7A1F 44                 3459 	.db #0x44	; 68	'D'
   7A20 00                 3460 	.db #0x00	; 0
   7A21 CC                 3461 	.db #0xcc	; 204
   7A22 FF                 3462 	.db #0xff	; 255
   7A23 00                 3463 	.db #0x00	; 0
   7A24 AA                 3464 	.db #0xaa	; 170
   7A25 44                 3465 	.db #0x44	; 68	'D'
   7A26 00                 3466 	.db #0x00	; 0
   7A27 CC                 3467 	.db #0xcc	; 204
   7A28                    3468 _gui_7:
   7A28 FF                 3469 	.db #0xff	; 255
   7A29 00                 3470 	.db #0x00	; 0
   7A2A FF                 3471 	.db #0xff	; 255
   7A2B 00                 3472 	.db #0x00	; 0
   7A2C FF                 3473 	.db #0xff	; 255
   7A2D 00                 3474 	.db #0x00	; 0
   7A2E FF                 3475 	.db #0xff	; 255
   7A2F 00                 3476 	.db #0x00	; 0
   7A30 FF                 3477 	.db #0xff	; 255
   7A31 00                 3478 	.db #0x00	; 0
   7A32 FF                 3479 	.db #0xff	; 255
   7A33 00                 3480 	.db #0x00	; 0
   7A34 FF                 3481 	.db #0xff	; 255
   7A35 00                 3482 	.db #0x00	; 0
   7A36 FF                 3483 	.db #0xff	; 255
   7A37 00                 3484 	.db #0x00	; 0
   7A38 FF                 3485 	.db #0xff	; 255
   7A39 00                 3486 	.db #0x00	; 0
   7A3A FF                 3487 	.db #0xff	; 255
   7A3B 00                 3488 	.db #0x00	; 0
   7A3C FF                 3489 	.db #0xff	; 255
   7A3D 00                 3490 	.db #0x00	; 0
   7A3E FF                 3491 	.db #0xff	; 255
   7A3F 00                 3492 	.db #0x00	; 0
   7A40 FF                 3493 	.db #0xff	; 255
   7A41 00                 3494 	.db #0x00	; 0
   7A42 FF                 3495 	.db #0xff	; 255
   7A43 00                 3496 	.db #0x00	; 0
   7A44 FF                 3497 	.db #0xff	; 255
   7A45 00                 3498 	.db #0x00	; 0
   7A46 FF                 3499 	.db #0xff	; 255
   7A47 00                 3500 	.db #0x00	; 0
   7A48 FF                 3501 	.db #0xff	; 255
   7A49 00                 3502 	.db #0x00	; 0
   7A4A FF                 3503 	.db #0xff	; 255
   7A4B 00                 3504 	.db #0x00	; 0
   7A4C 00                 3505 	.db #0x00	; 0
   7A4D 0F                 3506 	.db #0x0f	; 15
   7A4E 00                 3507 	.db #0x00	; 0
   7A4F 0F                 3508 	.db #0x0f	; 15
   7A50 00                 3509 	.db #0x00	; 0
   7A51 0F                 3510 	.db #0x0f	; 15
   7A52 00                 3511 	.db #0x00	; 0
   7A53 0F                 3512 	.db #0x0f	; 15
   7A54 00                 3513 	.db #0x00	; 0
   7A55 0F                 3514 	.db #0x0f	; 15
   7A56 00                 3515 	.db #0x00	; 0
   7A57 0F                 3516 	.db #0x0f	; 15
   7A58 00                 3517 	.db #0x00	; 0
   7A59 CC                 3518 	.db #0xcc	; 204
   7A5A 00                 3519 	.db #0x00	; 0
   7A5B CC                 3520 	.db #0xcc	; 204
   7A5C 00                 3521 	.db #0x00	; 0
   7A5D CC                 3522 	.db #0xcc	; 204
   7A5E 00                 3523 	.db #0x00	; 0
   7A5F CC                 3524 	.db #0xcc	; 204
   7A60 00                 3525 	.db #0x00	; 0
   7A61 CC                 3526 	.db #0xcc	; 204
   7A62 00                 3527 	.db #0x00	; 0
   7A63 CC                 3528 	.db #0xcc	; 204
   7A64                    3529 _gui_8:
   7A64 FF                 3530 	.db #0xff	; 255
   7A65 00                 3531 	.db #0x00	; 0
   7A66 AA                 3532 	.db #0xaa	; 170
   7A67 05                 3533 	.db #0x05	; 5
   7A68 55                 3534 	.db #0x55	; 85	'U'
   7A69 88                 3535 	.db #0x88	; 136
   7A6A FF                 3536 	.db #0xff	; 255
   7A6B 00                 3537 	.db #0x00	; 0
   7A6C AA                 3538 	.db #0xaa	; 170
   7A6D 05                 3539 	.db #0x05	; 5
   7A6E 55                 3540 	.db #0x55	; 85	'U'
   7A6F 88                 3541 	.db #0x88	; 136
   7A70 FF                 3542 	.db #0xff	; 255
   7A71 00                 3543 	.db #0x00	; 0
   7A72 AA                 3544 	.db #0xaa	; 170
   7A73 05                 3545 	.db #0x05	; 5
   7A74 55                 3546 	.db #0x55	; 85	'U'
   7A75 88                 3547 	.db #0x88	; 136
   7A76 FF                 3548 	.db #0xff	; 255
   7A77 00                 3549 	.db #0x00	; 0
   7A78 AA                 3550 	.db #0xaa	; 170
   7A79 05                 3551 	.db #0x05	; 5
   7A7A 55                 3552 	.db #0x55	; 85	'U'
   7A7B 88                 3553 	.db #0x88	; 136
   7A7C FF                 3554 	.db #0xff	; 255
   7A7D 00                 3555 	.db #0x00	; 0
   7A7E AA                 3556 	.db #0xaa	; 170
   7A7F 05                 3557 	.db #0x05	; 5
   7A80 55                 3558 	.db #0x55	; 85	'U'
   7A81 88                 3559 	.db #0x88	; 136
   7A82 FF                 3560 	.db #0xff	; 255
   7A83 00                 3561 	.db #0x00	; 0
   7A84 AA                 3562 	.db #0xaa	; 170
   7A85 05                 3563 	.db #0x05	; 5
   7A86 55                 3564 	.db #0x55	; 85	'U'
   7A87 88                 3565 	.db #0x88	; 136
   7A88 00                 3566 	.db #0x00	; 0
   7A89 0F                 3567 	.db #0x0f	; 15
   7A8A 00                 3568 	.db #0x00	; 0
   7A8B 0F                 3569 	.db #0x0f	; 15
   7A8C 55                 3570 	.db #0x55	; 85	'U'
   7A8D 88                 3571 	.db #0x88	; 136
   7A8E 00                 3572 	.db #0x00	; 0
   7A8F 0F                 3573 	.db #0x0f	; 15
   7A90 00                 3574 	.db #0x00	; 0
   7A91 0F                 3575 	.db #0x0f	; 15
   7A92 55                 3576 	.db #0x55	; 85	'U'
   7A93 88                 3577 	.db #0x88	; 136
   7A94 00                 3578 	.db #0x00	; 0
   7A95 CC                 3579 	.db #0xcc	; 204
   7A96 00                 3580 	.db #0x00	; 0
   7A97 CC                 3581 	.db #0xcc	; 204
   7A98 55                 3582 	.db #0x55	; 85	'U'
   7A99 88                 3583 	.db #0x88	; 136
   7A9A 00                 3584 	.db #0x00	; 0
   7A9B CC                 3585 	.db #0xcc	; 204
   7A9C 00                 3586 	.db #0x00	; 0
   7A9D CC                 3587 	.db #0xcc	; 204
   7A9E 55                 3588 	.db #0x55	; 85	'U'
   7A9F 88                 3589 	.db #0x88	; 136
   7AA0                    3590 _explode_ts:
   7AA0 AA 7A              3591 	.dw _explode_0
   7AA2 E6 7A              3592 	.dw _explode_1
   7AA4 22 7B              3593 	.dw _explode_2
   7AA6 5E 7B              3594 	.dw _explode_3
   7AA8 9A 7B              3595 	.dw _explode_4
   7AAA                    3596 _explode_0:
   7AAA FF                 3597 	.db #0xff	; 255
   7AAB 00                 3598 	.db #0x00	; 0
   7AAC FF                 3599 	.db #0xff	; 255
   7AAD 00                 3600 	.db #0x00	; 0
   7AAE FF                 3601 	.db #0xff	; 255
   7AAF 00                 3602 	.db #0x00	; 0
   7AB0 FF                 3603 	.db #0xff	; 255
   7AB1 00                 3604 	.db #0x00	; 0
   7AB2 FF                 3605 	.db #0xff	; 255
   7AB3 00                 3606 	.db #0x00	; 0
   7AB4 FF                 3607 	.db #0xff	; 255
   7AB5 00                 3608 	.db #0x00	; 0
   7AB6 FF                 3609 	.db #0xff	; 255
   7AB7 00                 3610 	.db #0x00	; 0
   7AB8 55                 3611 	.db #0x55	; 85	'U'
   7AB9 82                 3612 	.db #0x82	; 130
   7ABA FF                 3613 	.db #0xff	; 255
   7ABB 00                 3614 	.db #0x00	; 0
   7ABC FF                 3615 	.db #0xff	; 255
   7ABD 00                 3616 	.db #0x00	; 0
   7ABE 55                 3617 	.db #0x55	; 85	'U'
   7ABF 82                 3618 	.db #0x82	; 130
   7AC0 FF                 3619 	.db #0xff	; 255
   7AC1 00                 3620 	.db #0x00	; 0
   7AC2 AA                 3621 	.db #0xaa	; 170
   7AC3 41                 3622 	.db #0x41	; 65	'A'
   7AC4 00                 3623 	.db #0x00	; 0
   7AC5 E3                 3624 	.db #0xe3	; 227
   7AC6 FF                 3625 	.db #0xff	; 255
   7AC7 00                 3626 	.db #0x00	; 0
   7AC8 AA                 3627 	.db #0xaa	; 170
   7AC9 41                 3628 	.db #0x41	; 65	'A'
   7ACA 00                 3629 	.db #0x00	; 0
   7ACB E3                 3630 	.db #0xe3	; 227
   7ACC FF                 3631 	.db #0xff	; 255
   7ACD 00                 3632 	.db #0x00	; 0
   7ACE FF                 3633 	.db #0xff	; 255
   7ACF 00                 3634 	.db #0x00	; 0
   7AD0 55                 3635 	.db #0x55	; 85	'U'
   7AD1 82                 3636 	.db #0x82	; 130
   7AD2 FF                 3637 	.db #0xff	; 255
   7AD3 00                 3638 	.db #0x00	; 0
   7AD4 FF                 3639 	.db #0xff	; 255
   7AD5 00                 3640 	.db #0x00	; 0
   7AD6 55                 3641 	.db #0x55	; 85	'U'
   7AD7 82                 3642 	.db #0x82	; 130
   7AD8 FF                 3643 	.db #0xff	; 255
   7AD9 00                 3644 	.db #0x00	; 0
   7ADA FF                 3645 	.db #0xff	; 255
   7ADB 00                 3646 	.db #0x00	; 0
   7ADC FF                 3647 	.db #0xff	; 255
   7ADD 00                 3648 	.db #0x00	; 0
   7ADE FF                 3649 	.db #0xff	; 255
   7ADF 00                 3650 	.db #0x00	; 0
   7AE0 FF                 3651 	.db #0xff	; 255
   7AE1 00                 3652 	.db #0x00	; 0
   7AE2 FF                 3653 	.db #0xff	; 255
   7AE3 00                 3654 	.db #0x00	; 0
   7AE4 FF                 3655 	.db #0xff	; 255
   7AE5 00                 3656 	.db #0x00	; 0
   7AE6                    3657 _explode_1:
   7AE6 FF                 3658 	.db #0xff	; 255
   7AE7 00                 3659 	.db #0x00	; 0
   7AE8 55                 3660 	.db #0x55	; 85	'U'
   7AE9 82                 3661 	.db #0x82	; 130
   7AEA FF                 3662 	.db #0xff	; 255
   7AEB 00                 3663 	.db #0x00	; 0
   7AEC FF                 3664 	.db #0xff	; 255
   7AED 00                 3665 	.db #0x00	; 0
   7AEE 55                 3666 	.db #0x55	; 85	'U'
   7AEF 82                 3667 	.db #0x82	; 130
   7AF0 FF                 3668 	.db #0xff	; 255
   7AF1 00                 3669 	.db #0x00	; 0
   7AF2 AA                 3670 	.db #0xaa	; 170
   7AF3 41                 3671 	.db #0x41	; 65	'A'
   7AF4 00                 3672 	.db #0x00	; 0
   7AF5 E3                 3673 	.db #0xe3	; 227
   7AF6 FF                 3674 	.db #0xff	; 255
   7AF7 00                 3675 	.db #0x00	; 0
   7AF8 AA                 3676 	.db #0xaa	; 170
   7AF9 41                 3677 	.db #0x41	; 65	'A'
   7AFA 00                 3678 	.db #0x00	; 0
   7AFB E3                 3679 	.db #0xe3	; 227
   7AFC FF                 3680 	.db #0xff	; 255
   7AFD 00                 3681 	.db #0x00	; 0
   7AFE 00                 3682 	.db #0x00	; 0
   7AFF D3                 3683 	.db #0xd3	; 211
   7B00 00                 3684 	.db #0x00	; 0
   7B01 FB                 3685 	.db #0xfb	; 251
   7B02 55                 3686 	.db #0x55	; 85	'U'
   7B03 82                 3687 	.db #0x82	; 130
   7B04 00                 3688 	.db #0x00	; 0
   7B05 D3                 3689 	.db #0xd3	; 211
   7B06 00                 3690 	.db #0x00	; 0
   7B07 FB                 3691 	.db #0xfb	; 251
   7B08 55                 3692 	.db #0x55	; 85	'U'
   7B09 82                 3693 	.db #0x82	; 130
   7B0A AA                 3694 	.db #0xaa	; 170
   7B0B 41                 3695 	.db #0x41	; 65	'A'
   7B0C 00                 3696 	.db #0x00	; 0
   7B0D E3                 3697 	.db #0xe3	; 227
   7B0E FF                 3698 	.db #0xff	; 255
   7B0F 00                 3699 	.db #0x00	; 0
   7B10 AA                 3700 	.db #0xaa	; 170
   7B11 41                 3701 	.db #0x41	; 65	'A'
   7B12 00                 3702 	.db #0x00	; 0
   7B13 E3                 3703 	.db #0xe3	; 227
   7B14 FF                 3704 	.db #0xff	; 255
   7B15 00                 3705 	.db #0x00	; 0
   7B16 FF                 3706 	.db #0xff	; 255
   7B17 00                 3707 	.db #0x00	; 0
   7B18 55                 3708 	.db #0x55	; 85	'U'
   7B19 82                 3709 	.db #0x82	; 130
   7B1A FF                 3710 	.db #0xff	; 255
   7B1B 00                 3711 	.db #0x00	; 0
   7B1C FF                 3712 	.db #0xff	; 255
   7B1D 00                 3713 	.db #0x00	; 0
   7B1E 55                 3714 	.db #0x55	; 85	'U'
   7B1F 82                 3715 	.db #0x82	; 130
   7B20 FF                 3716 	.db #0xff	; 255
   7B21 00                 3717 	.db #0x00	; 0
   7B22                    3718 _explode_2:
   7B22 AA                 3719 	.db #0xaa	; 170
   7B23 10                 3720 	.db #0x10	; 16
   7B24 00                 3721 	.db #0x00	; 0
   7B25 92                 3722 	.db #0x92	; 146
   7B26 FF                 3723 	.db #0xff	; 255
   7B27 00                 3724 	.db #0x00	; 0
   7B28 AA                 3725 	.db #0xaa	; 170
   7B29 10                 3726 	.db #0x10	; 16
   7B2A 00                 3727 	.db #0x00	; 0
   7B2B 92                 3728 	.db #0x92	; 146
   7B2C FF                 3729 	.db #0xff	; 255
   7B2D 00                 3730 	.db #0x00	; 0
   7B2E 00                 3731 	.db #0x00	; 0
   7B2F 61                 3732 	.db #0x61	; 97	'a'
   7B30 00                 3733 	.db #0x00	; 0
   7B31 E3                 3734 	.db #0xe3	; 227
   7B32 55                 3735 	.db #0x55	; 85	'U'
   7B33 20                 3736 	.db #0x20	; 32
   7B34 00                 3737 	.db #0x00	; 0
   7B35 61                 3738 	.db #0x61	; 97	'a'
   7B36 00                 3739 	.db #0x00	; 0
   7B37 E3                 3740 	.db #0xe3	; 227
   7B38 55                 3741 	.db #0x55	; 85	'U'
   7B39 20                 3742 	.db #0x20	; 32
   7B3A 00                 3743 	.db #0x00	; 0
   7B3B D3                 3744 	.db #0xd3	; 211
   7B3C 00                 3745 	.db #0x00	; 0
   7B3D FB                 3746 	.db #0xfb	; 251
   7B3E 55                 3747 	.db #0x55	; 85	'U'
   7B3F 82                 3748 	.db #0x82	; 130
   7B40 00                 3749 	.db #0x00	; 0
   7B41 D3                 3750 	.db #0xd3	; 211
   7B42 00                 3751 	.db #0x00	; 0
   7B43 FB                 3752 	.db #0xfb	; 251
   7B44 55                 3753 	.db #0x55	; 85	'U'
   7B45 82                 3754 	.db #0x82	; 130
   7B46 00                 3755 	.db #0x00	; 0
   7B47 61                 3756 	.db #0x61	; 97	'a'
   7B48 00                 3757 	.db #0x00	; 0
   7B49 E3                 3758 	.db #0xe3	; 227
   7B4A 55                 3759 	.db #0x55	; 85	'U'
   7B4B 20                 3760 	.db #0x20	; 32
   7B4C 00                 3761 	.db #0x00	; 0
   7B4D 61                 3762 	.db #0x61	; 97	'a'
   7B4E 00                 3763 	.db #0x00	; 0
   7B4F E3                 3764 	.db #0xe3	; 227
   7B50 55                 3765 	.db #0x55	; 85	'U'
   7B51 20                 3766 	.db #0x20	; 32
   7B52 AA                 3767 	.db #0xaa	; 170
   7B53 10                 3768 	.db #0x10	; 16
   7B54 00                 3769 	.db #0x00	; 0
   7B55 92                 3770 	.db #0x92	; 146
   7B56 FF                 3771 	.db #0xff	; 255
   7B57 00                 3772 	.db #0x00	; 0
   7B58 AA                 3773 	.db #0xaa	; 170
   7B59 10                 3774 	.db #0x10	; 16
   7B5A 00                 3775 	.db #0x00	; 0
   7B5B 92                 3776 	.db #0x92	; 146
   7B5C FF                 3777 	.db #0xff	; 255
   7B5D 00                 3778 	.db #0x00	; 0
   7B5E                    3779 _explode_3:
   7B5E AA                 3780 	.db #0xaa	; 170
   7B5F 04                 3781 	.db #0x04	; 4
   7B60 00                 3782 	.db #0x00	; 0
   7B61 24                 3783 	.db #0x24	; 36
   7B62 FF                 3784 	.db #0xff	; 255
   7B63 00                 3785 	.db #0x00	; 0
   7B64 AA                 3786 	.db #0xaa	; 170
   7B65 04                 3787 	.db #0x04	; 4
   7B66 00                 3788 	.db #0x00	; 0
   7B67 24                 3789 	.db #0x24	; 36
   7B68 FF                 3790 	.db #0xff	; 255
   7B69 00                 3791 	.db #0x00	; 0
   7B6A 00                 3792 	.db #0x00	; 0
   7B6B 18                 3793 	.db #0x18	; 24
   7B6C 00                 3794 	.db #0x00	; 0
   7B6D 92                 3795 	.db #0x92	; 146
   7B6E 55                 3796 	.db #0x55	; 85	'U'
   7B6F 08                 3797 	.db #0x08	; 8
   7B70 00                 3798 	.db #0x00	; 0
   7B71 18                 3799 	.db #0x18	; 24
   7B72 00                 3800 	.db #0x00	; 0
   7B73 92                 3801 	.db #0x92	; 146
   7B74 55                 3802 	.db #0x55	; 85	'U'
   7B75 08                 3803 	.db #0x08	; 8
   7B76 00                 3804 	.db #0x00	; 0
   7B77 61                 3805 	.db #0x61	; 97	'a'
   7B78 00                 3806 	.db #0x00	; 0
   7B79 E3                 3807 	.db #0xe3	; 227
   7B7A 55                 3808 	.db #0x55	; 85	'U'
   7B7B 20                 3809 	.db #0x20	; 32
   7B7C 00                 3810 	.db #0x00	; 0
   7B7D 61                 3811 	.db #0x61	; 97	'a'
   7B7E 00                 3812 	.db #0x00	; 0
   7B7F E3                 3813 	.db #0xe3	; 227
   7B80 55                 3814 	.db #0x55	; 85	'U'
   7B81 20                 3815 	.db #0x20	; 32
   7B82 00                 3816 	.db #0x00	; 0
   7B83 18                 3817 	.db #0x18	; 24
   7B84 00                 3818 	.db #0x00	; 0
   7B85 92                 3819 	.db #0x92	; 146
   7B86 55                 3820 	.db #0x55	; 85	'U'
   7B87 08                 3821 	.db #0x08	; 8
   7B88 00                 3822 	.db #0x00	; 0
   7B89 18                 3823 	.db #0x18	; 24
   7B8A 00                 3824 	.db #0x00	; 0
   7B8B 92                 3825 	.db #0x92	; 146
   7B8C 55                 3826 	.db #0x55	; 85	'U'
   7B8D 08                 3827 	.db #0x08	; 8
   7B8E AA                 3828 	.db #0xaa	; 170
   7B8F 04                 3829 	.db #0x04	; 4
   7B90 00                 3830 	.db #0x00	; 0
   7B91 24                 3831 	.db #0x24	; 36
   7B92 FF                 3832 	.db #0xff	; 255
   7B93 00                 3833 	.db #0x00	; 0
   7B94 AA                 3834 	.db #0xaa	; 170
   7B95 04                 3835 	.db #0x04	; 4
   7B96 00                 3836 	.db #0x00	; 0
   7B97 24                 3837 	.db #0x24	; 36
   7B98 FF                 3838 	.db #0xff	; 255
   7B99 00                 3839 	.db #0x00	; 0
   7B9A                    3840 _explode_4:
   7B9A FF                 3841 	.db #0xff	; 255
   7B9B 00                 3842 	.db #0x00	; 0
   7B9C 55                 3843 	.db #0x55	; 85	'U'
   7B9D 08                 3844 	.db #0x08	; 8
   7B9E FF                 3845 	.db #0xff	; 255
   7B9F 00                 3846 	.db #0x00	; 0
   7BA0 FF                 3847 	.db #0xff	; 255
   7BA1 00                 3848 	.db #0x00	; 0
   7BA2 55                 3849 	.db #0x55	; 85	'U'
   7BA3 08                 3850 	.db #0x08	; 8
   7BA4 FF                 3851 	.db #0xff	; 255
   7BA5 00                 3852 	.db #0x00	; 0
   7BA6 AA                 3853 	.db #0xaa	; 170
   7BA7 04                 3854 	.db #0x04	; 4
   7BA8 00                 3855 	.db #0x00	; 0
   7BA9 24                 3856 	.db #0x24	; 36
   7BAA FF                 3857 	.db #0xff	; 255
   7BAB 00                 3858 	.db #0x00	; 0
   7BAC AA                 3859 	.db #0xaa	; 170
   7BAD 04                 3860 	.db #0x04	; 4
   7BAE 00                 3861 	.db #0x00	; 0
   7BAF 24                 3862 	.db #0x24	; 36
   7BB0 FF                 3863 	.db #0xff	; 255
   7BB1 00                 3864 	.db #0x00	; 0
   7BB2 00                 3865 	.db #0x00	; 0
   7BB3 18                 3866 	.db #0x18	; 24
   7BB4 00                 3867 	.db #0x00	; 0
   7BB5 92                 3868 	.db #0x92	; 146
   7BB6 55                 3869 	.db #0x55	; 85	'U'
   7BB7 08                 3870 	.db #0x08	; 8
   7BB8 00                 3871 	.db #0x00	; 0
   7BB9 18                 3872 	.db #0x18	; 24
   7BBA 00                 3873 	.db #0x00	; 0
   7BBB 92                 3874 	.db #0x92	; 146
   7BBC 55                 3875 	.db #0x55	; 85	'U'
   7BBD 08                 3876 	.db #0x08	; 8
   7BBE AA                 3877 	.db #0xaa	; 170
   7BBF 04                 3878 	.db #0x04	; 4
   7BC0 00                 3879 	.db #0x00	; 0
   7BC1 24                 3880 	.db #0x24	; 36
   7BC2 FF                 3881 	.db #0xff	; 255
   7BC3 00                 3882 	.db #0x00	; 0
   7BC4 AA                 3883 	.db #0xaa	; 170
   7BC5 04                 3884 	.db #0x04	; 4
   7BC6 00                 3885 	.db #0x00	; 0
   7BC7 24                 3886 	.db #0x24	; 36
   7BC8 FF                 3887 	.db #0xff	; 255
   7BC9 00                 3888 	.db #0x00	; 0
   7BCA FF                 3889 	.db #0xff	; 255
   7BCB 00                 3890 	.db #0x00	; 0
   7BCC 55                 3891 	.db #0x55	; 85	'U'
   7BCD 08                 3892 	.db #0x08	; 8
   7BCE FF                 3893 	.db #0xff	; 255
   7BCF 00                 3894 	.db #0x00	; 0
   7BD0 FF                 3895 	.db #0xff	; 255
   7BD1 00                 3896 	.db #0x00	; 0
   7BD2 55                 3897 	.db #0x55	; 85	'U'
   7BD3 08                 3898 	.db #0x08	; 8
   7BD4 FF                 3899 	.db #0xff	; 255
   7BD5 00                 3900 	.db #0x00	; 0
   7BD6                    3901 _enemies_v_ts:
   7BD6 06 7C              3902 	.dw _enemies_v_00
   7BD8 1E 7C              3903 	.dw _enemies_v_01
   7BDA 36 7C              3904 	.dw _enemies_v_02
   7BDC 4E 7C              3905 	.dw _enemies_v_03
   7BDE 66 7C              3906 	.dw _enemies_v_04
   7BE0 7E 7C              3907 	.dw _enemies_v_05
   7BE2 96 7C              3908 	.dw _enemies_v_06
   7BE4 AE 7C              3909 	.dw _enemies_v_07
   7BE6 C6 7C              3910 	.dw _enemies_v_08
   7BE8 DE 7C              3911 	.dw _enemies_v_09
   7BEA F6 7C              3912 	.dw _enemies_v_10
   7BEC 0E 7D              3913 	.dw _enemies_v_11
   7BEE                    3914 _enemies_h_ts:
   7BEE 26 7D              3915 	.dw _enemies_h_00
   7BF0 3E 7D              3916 	.dw _enemies_h_01
   7BF2 56 7D              3917 	.dw _enemies_h_02
   7BF4 6E 7D              3918 	.dw _enemies_h_03
   7BF6 86 7D              3919 	.dw _enemies_h_04
   7BF8 9E 7D              3920 	.dw _enemies_h_05
   7BFA B6 7D              3921 	.dw _enemies_h_06
   7BFC CE 7D              3922 	.dw _enemies_h_07
   7BFE E6 7D              3923 	.dw _enemies_h_08
   7C00 FE 7D              3924 	.dw _enemies_h_09
   7C02 16 7E              3925 	.dw _enemies_h_10
   7C04 2E 7E              3926 	.dw _enemies_h_11
   7C06                    3927 _enemies_v_00:
   7C06 00                 3928 	.db #0x00	; 0
   7C07 00                 3929 	.db #0x00	; 0
   7C08 00                 3930 	.db #0x00	; 0
   7C09 00                 3931 	.db #0x00	; 0
   7C0A 00                 3932 	.db #0x00	; 0
   7C0B 00                 3933 	.db #0x00	; 0
   7C0C 00                 3934 	.db #0x00	; 0
   7C0D 00                 3935 	.db #0x00	; 0
   7C0E 00                 3936 	.db #0x00	; 0
   7C0F 00                 3937 	.db #0x00	; 0
   7C10 00                 3938 	.db #0x00	; 0
   7C11 00                 3939 	.db #0x00	; 0
   7C12 00                 3940 	.db #0x00	; 0
   7C13 00                 3941 	.db #0x00	; 0
   7C14 00                 3942 	.db #0x00	; 0
   7C15 00                 3943 	.db #0x00	; 0
   7C16 00                 3944 	.db #0x00	; 0
   7C17 00                 3945 	.db #0x00	; 0
   7C18 00                 3946 	.db #0x00	; 0
   7C19 00                 3947 	.db #0x00	; 0
   7C1A 80                 3948 	.db #0x80	; 128
   7C1B 00                 3949 	.db #0x00	; 0
   7C1C 80                 3950 	.db #0x80	; 128
   7C1D 00                 3951 	.db #0x00	; 0
   7C1E                    3952 _enemies_v_01:
   7C1E 00                 3953 	.db #0x00	; 0
   7C1F 00                 3954 	.db #0x00	; 0
   7C20 00                 3955 	.db #0x00	; 0
   7C21 00                 3956 	.db #0x00	; 0
   7C22 00                 3957 	.db #0x00	; 0
   7C23 00                 3958 	.db #0x00	; 0
   7C24 00                 3959 	.db #0x00	; 0
   7C25 00                 3960 	.db #0x00	; 0
   7C26 00                 3961 	.db #0x00	; 0
   7C27 00                 3962 	.db #0x00	; 0
   7C28 00                 3963 	.db #0x00	; 0
   7C29 00                 3964 	.db #0x00	; 0
   7C2A 00                 3965 	.db #0x00	; 0
   7C2B 00                 3966 	.db #0x00	; 0
   7C2C 00                 3967 	.db #0x00	; 0
   7C2D 00                 3968 	.db #0x00	; 0
   7C2E 00                 3969 	.db #0x00	; 0
   7C2F 00                 3970 	.db #0x00	; 0
   7C30 00                 3971 	.db #0x00	; 0
   7C31 00                 3972 	.db #0x00	; 0
   7C32 08                 3973 	.db #0x08	; 8
   7C33 00                 3974 	.db #0x00	; 0
   7C34 08                 3975 	.db #0x08	; 8
   7C35 00                 3976 	.db #0x00	; 0
   7C36                    3977 _enemies_v_02:
   7C36 00                 3978 	.db #0x00	; 0
   7C37 00                 3979 	.db #0x00	; 0
   7C38 00                 3980 	.db #0x00	; 0
   7C39 00                 3981 	.db #0x00	; 0
   7C3A 00                 3982 	.db #0x00	; 0
   7C3B 00                 3983 	.db #0x00	; 0
   7C3C 00                 3984 	.db #0x00	; 0
   7C3D 00                 3985 	.db #0x00	; 0
   7C3E 00                 3986 	.db #0x00	; 0
   7C3F 00                 3987 	.db #0x00	; 0
   7C40 00                 3988 	.db #0x00	; 0
   7C41 00                 3989 	.db #0x00	; 0
   7C42 00                 3990 	.db #0x00	; 0
   7C43 00                 3991 	.db #0x00	; 0
   7C44 00                 3992 	.db #0x00	; 0
   7C45 00                 3993 	.db #0x00	; 0
   7C46 00                 3994 	.db #0x00	; 0
   7C47 00                 3995 	.db #0x00	; 0
   7C48 00                 3996 	.db #0x00	; 0
   7C49 00                 3997 	.db #0x00	; 0
   7C4A 00                 3998 	.db #0x00	; 0
   7C4B 40                 3999 	.db #0x40	; 64
   7C4C 00                 4000 	.db #0x00	; 0
   7C4D 40                 4001 	.db #0x40	; 64
   7C4E                    4002 _enemies_v_03:
   7C4E 00                 4003 	.db #0x00	; 0
   7C4F 00                 4004 	.db #0x00	; 0
   7C50 00                 4005 	.db #0x00	; 0
   7C51 00                 4006 	.db #0x00	; 0
   7C52 00                 4007 	.db #0x00	; 0
   7C53 00                 4008 	.db #0x00	; 0
   7C54 00                 4009 	.db #0x00	; 0
   7C55 00                 4010 	.db #0x00	; 0
   7C56 00                 4011 	.db #0x00	; 0
   7C57 00                 4012 	.db #0x00	; 0
   7C58 00                 4013 	.db #0x00	; 0
   7C59 00                 4014 	.db #0x00	; 0
   7C5A 00                 4015 	.db #0x00	; 0
   7C5B 00                 4016 	.db #0x00	; 0
   7C5C 00                 4017 	.db #0x00	; 0
   7C5D 00                 4018 	.db #0x00	; 0
   7C5E 00                 4019 	.db #0x00	; 0
   7C5F 00                 4020 	.db #0x00	; 0
   7C60 00                 4021 	.db #0x00	; 0
   7C61 00                 4022 	.db #0x00	; 0
   7C62 00                 4023 	.db #0x00	; 0
   7C63 04                 4024 	.db #0x04	; 4
   7C64 00                 4025 	.db #0x00	; 0
   7C65 04                 4026 	.db #0x04	; 4
   7C66                    4027 _enemies_v_04:
   7C66 68                 4028 	.db #0x68	; 104	'h'
   7C67 00                 4029 	.db #0x00	; 0
   7C68 68                 4030 	.db #0x68	; 104	'h'
   7C69 00                 4031 	.db #0x00	; 0
   7C6A 36                 4032 	.db #0x36	; 54	'6'
   7C6B 80                 4033 	.db #0x80	; 128
   7C6C 36                 4034 	.db #0x36	; 54	'6'
   7C6D 80                 4035 	.db #0x80	; 128
   7C6E BB                 4036 	.db #0xbb	; 187
   7C6F 68                 4037 	.db #0x68	; 104	'h'
   7C70 BB                 4038 	.db #0xbb	; 187
   7C71 68                 4039 	.db #0x68	; 104	'h'
   7C72 BB                 4040 	.db #0xbb	; 187
   7C73 68                 4041 	.db #0x68	; 104	'h'
   7C74 BB                 4042 	.db #0xbb	; 187
   7C75 68                 4043 	.db #0x68	; 104	'h'
   7C76 36                 4044 	.db #0x36	; 54	'6'
   7C77 80                 4045 	.db #0x80	; 128
   7C78 36                 4046 	.db #0x36	; 54	'6'
   7C79 80                 4047 	.db #0x80	; 128
   7C7A 68                 4048 	.db #0x68	; 104	'h'
   7C7B 00                 4049 	.db #0x00	; 0
   7C7C 68                 4050 	.db #0x68	; 104	'h'
   7C7D 00                 4051 	.db #0x00	; 0
   7C7E                    4052 _enemies_v_05:
   7C7E 24                 4053 	.db #0x24	; 36
   7C7F 00                 4054 	.db #0x00	; 0
   7C80 24                 4055 	.db #0x24	; 36
   7C81 00                 4056 	.db #0x00	; 0
   7C82 1A                 4057 	.db #0x1a	; 26
   7C83 08                 4058 	.db #0x08	; 8
   7C84 1A                 4059 	.db #0x1a	; 26
   7C85 08                 4060 	.db #0x08	; 8
   7C86 AF                 4061 	.db #0xaf	; 175
   7C87 24                 4062 	.db #0x24	; 36
   7C88 AF                 4063 	.db #0xaf	; 175
   7C89 24                 4064 	.db #0x24	; 36
   7C8A AF                 4065 	.db #0xaf	; 175
   7C8B 24                 4066 	.db #0x24	; 36
   7C8C AF                 4067 	.db #0xaf	; 175
   7C8D 24                 4068 	.db #0x24	; 36
   7C8E 1A                 4069 	.db #0x1a	; 26
   7C8F 08                 4070 	.db #0x08	; 8
   7C90 1A                 4071 	.db #0x1a	; 26
   7C91 08                 4072 	.db #0x08	; 8
   7C92 24                 4073 	.db #0x24	; 36
   7C93 00                 4074 	.db #0x00	; 0
   7C94 24                 4075 	.db #0x24	; 36
   7C95 00                 4076 	.db #0x00	; 0
   7C96                    4077 _enemies_v_06:
   7C96 00                 4078 	.db #0x00	; 0
   7C97 94                 4079 	.db #0x94	; 148
   7C98 00                 4080 	.db #0x00	; 0
   7C99 94                 4081 	.db #0x94	; 148
   7C9A 40                 4082 	.db #0x40	; 64
   7C9B 39                 4083 	.db #0x39	; 57	'9'
   7C9C 40                 4084 	.db #0x40	; 64
   7C9D 39                 4085 	.db #0x39	; 57	'9'
   7C9E 94                 4086 	.db #0x94	; 148
   7C9F 77                 4087 	.db #0x77	; 119	'w'
   7CA0 94                 4088 	.db #0x94	; 148
   7CA1 77                 4089 	.db #0x77	; 119	'w'
   7CA2 94                 4090 	.db #0x94	; 148
   7CA3 77                 4091 	.db #0x77	; 119	'w'
   7CA4 94                 4092 	.db #0x94	; 148
   7CA5 77                 4093 	.db #0x77	; 119	'w'
   7CA6 40                 4094 	.db #0x40	; 64
   7CA7 39                 4095 	.db #0x39	; 57	'9'
   7CA8 40                 4096 	.db #0x40	; 64
   7CA9 39                 4097 	.db #0x39	; 57	'9'
   7CAA 00                 4098 	.db #0x00	; 0
   7CAB 94                 4099 	.db #0x94	; 148
   7CAC 00                 4100 	.db #0x00	; 0
   7CAD 94                 4101 	.db #0x94	; 148
   7CAE                    4102 _enemies_v_07:
   7CAE 00                 4103 	.db #0x00	; 0
   7CAF 18                 4104 	.db #0x18	; 24
   7CB0 00                 4105 	.db #0x00	; 0
   7CB1 18                 4106 	.db #0x18	; 24
   7CB2 04                 4107 	.db #0x04	; 4
   7CB3 25                 4108 	.db #0x25	; 37
   7CB4 04                 4109 	.db #0x04	; 4
   7CB5 25                 4110 	.db #0x25	; 37
   7CB6 18                 4111 	.db #0x18	; 24
   7CB7 5F                 4112 	.db #0x5f	; 95
   7CB8 18                 4113 	.db #0x18	; 24
   7CB9 5F                 4114 	.db #0x5f	; 95
   7CBA 18                 4115 	.db #0x18	; 24
   7CBB 5F                 4116 	.db #0x5f	; 95
   7CBC 18                 4117 	.db #0x18	; 24
   7CBD 5F                 4118 	.db #0x5f	; 95
   7CBE 04                 4119 	.db #0x04	; 4
   7CBF 25                 4120 	.db #0x25	; 37
   7CC0 04                 4121 	.db #0x04	; 4
   7CC1 25                 4122 	.db #0x25	; 37
   7CC2 00                 4123 	.db #0x00	; 0
   7CC3 18                 4124 	.db #0x18	; 24
   7CC4 00                 4125 	.db #0x00	; 0
   7CC5 18                 4126 	.db #0x18	; 24
   7CC6                    4127 _enemies_v_08:
   7CC6 80                 4128 	.db #0x80	; 128
   7CC7 00                 4129 	.db #0x00	; 0
   7CC8 80                 4130 	.db #0x80	; 128
   7CC9 00                 4131 	.db #0x00	; 0
   7CCA 00                 4132 	.db #0x00	; 0
   7CCB 00                 4133 	.db #0x00	; 0
   7CCC 00                 4134 	.db #0x00	; 0
   7CCD 00                 4135 	.db #0x00	; 0
   7CCE 00                 4136 	.db #0x00	; 0
   7CCF 00                 4137 	.db #0x00	; 0
   7CD0 00                 4138 	.db #0x00	; 0
   7CD1 00                 4139 	.db #0x00	; 0
   7CD2 00                 4140 	.db #0x00	; 0
   7CD3 00                 4141 	.db #0x00	; 0
   7CD4 00                 4142 	.db #0x00	; 0
   7CD5 00                 4143 	.db #0x00	; 0
   7CD6 00                 4144 	.db #0x00	; 0
   7CD7 00                 4145 	.db #0x00	; 0
   7CD8 00                 4146 	.db #0x00	; 0
   7CD9 00                 4147 	.db #0x00	; 0
   7CDA 00                 4148 	.db #0x00	; 0
   7CDB 00                 4149 	.db #0x00	; 0
   7CDC 00                 4150 	.db #0x00	; 0
   7CDD 00                 4151 	.db #0x00	; 0
   7CDE                    4152 _enemies_v_09:
   7CDE 08                 4153 	.db #0x08	; 8
   7CDF 00                 4154 	.db #0x00	; 0
   7CE0 08                 4155 	.db #0x08	; 8
   7CE1 00                 4156 	.db #0x00	; 0
   7CE2 00                 4157 	.db #0x00	; 0
   7CE3 00                 4158 	.db #0x00	; 0
   7CE4 00                 4159 	.db #0x00	; 0
   7CE5 00                 4160 	.db #0x00	; 0
   7CE6 00                 4161 	.db #0x00	; 0
   7CE7 00                 4162 	.db #0x00	; 0
   7CE8 00                 4163 	.db #0x00	; 0
   7CE9 00                 4164 	.db #0x00	; 0
   7CEA 00                 4165 	.db #0x00	; 0
   7CEB 00                 4166 	.db #0x00	; 0
   7CEC 00                 4167 	.db #0x00	; 0
   7CED 00                 4168 	.db #0x00	; 0
   7CEE 00                 4169 	.db #0x00	; 0
   7CEF 00                 4170 	.db #0x00	; 0
   7CF0 00                 4171 	.db #0x00	; 0
   7CF1 00                 4172 	.db #0x00	; 0
   7CF2 00                 4173 	.db #0x00	; 0
   7CF3 00                 4174 	.db #0x00	; 0
   7CF4 00                 4175 	.db #0x00	; 0
   7CF5 00                 4176 	.db #0x00	; 0
   7CF6                    4177 _enemies_v_10:
   7CF6 00                 4178 	.db #0x00	; 0
   7CF7 40                 4179 	.db #0x40	; 64
   7CF8 00                 4180 	.db #0x00	; 0
   7CF9 40                 4181 	.db #0x40	; 64
   7CFA 00                 4182 	.db #0x00	; 0
   7CFB 00                 4183 	.db #0x00	; 0
   7CFC 00                 4184 	.db #0x00	; 0
   7CFD 00                 4185 	.db #0x00	; 0
   7CFE 00                 4186 	.db #0x00	; 0
   7CFF 00                 4187 	.db #0x00	; 0
   7D00 00                 4188 	.db #0x00	; 0
   7D01 00                 4189 	.db #0x00	; 0
   7D02 00                 4190 	.db #0x00	; 0
   7D03 00                 4191 	.db #0x00	; 0
   7D04 00                 4192 	.db #0x00	; 0
   7D05 00                 4193 	.db #0x00	; 0
   7D06 00                 4194 	.db #0x00	; 0
   7D07 00                 4195 	.db #0x00	; 0
   7D08 00                 4196 	.db #0x00	; 0
   7D09 00                 4197 	.db #0x00	; 0
   7D0A 00                 4198 	.db #0x00	; 0
   7D0B 00                 4199 	.db #0x00	; 0
   7D0C 00                 4200 	.db #0x00	; 0
   7D0D 00                 4201 	.db #0x00	; 0
   7D0E                    4202 _enemies_v_11:
   7D0E 00                 4203 	.db #0x00	; 0
   7D0F 04                 4204 	.db #0x04	; 4
   7D10 00                 4205 	.db #0x00	; 0
   7D11 04                 4206 	.db #0x04	; 4
   7D12 00                 4207 	.db #0x00	; 0
   7D13 00                 4208 	.db #0x00	; 0
   7D14 00                 4209 	.db #0x00	; 0
   7D15 00                 4210 	.db #0x00	; 0
   7D16 00                 4211 	.db #0x00	; 0
   7D17 00                 4212 	.db #0x00	; 0
   7D18 00                 4213 	.db #0x00	; 0
   7D19 00                 4214 	.db #0x00	; 0
   7D1A 00                 4215 	.db #0x00	; 0
   7D1B 00                 4216 	.db #0x00	; 0
   7D1C 00                 4217 	.db #0x00	; 0
   7D1D 00                 4218 	.db #0x00	; 0
   7D1E 00                 4219 	.db #0x00	; 0
   7D1F 00                 4220 	.db #0x00	; 0
   7D20 00                 4221 	.db #0x00	; 0
   7D21 00                 4222 	.db #0x00	; 0
   7D22 00                 4223 	.db #0x00	; 0
   7D23 00                 4224 	.db #0x00	; 0
   7D24 00                 4225 	.db #0x00	; 0
   7D25 00                 4226 	.db #0x00	; 0
   7D26                    4227 _enemies_h_00:
   7D26 00                 4228 	.db #0x00	; 0
   7D27 00                 4229 	.db #0x00	; 0
   7D28 40                 4230 	.db #0x40	; 64
   7D29 00                 4231 	.db #0x00	; 0
   7D2A 00                 4232 	.db #0x00	; 0
   7D2B 40                 4233 	.db #0x40	; 64
   7D2C 00                 4234 	.db #0x00	; 0
   7D2D 00                 4235 	.db #0x00	; 0
   7D2E 00                 4236 	.db #0x00	; 0
   7D2F 00                 4237 	.db #0x00	; 0
   7D30 00                 4238 	.db #0x00	; 0
   7D31 00                 4239 	.db #0x00	; 0
   7D32 00                 4240 	.db #0x00	; 0
   7D33 00                 4241 	.db #0x00	; 0
   7D34 00                 4242 	.db #0x00	; 0
   7D35 00                 4243 	.db #0x00	; 0
   7D36 00                 4244 	.db #0x00	; 0
   7D37 00                 4245 	.db #0x00	; 0
   7D38 00                 4246 	.db #0x00	; 0
   7D39 00                 4247 	.db #0x00	; 0
   7D3A 00                 4248 	.db #0x00	; 0
   7D3B 00                 4249 	.db #0x00	; 0
   7D3C 00                 4250 	.db #0x00	; 0
   7D3D 00                 4251 	.db #0x00	; 0
   7D3E                    4252 _enemies_h_01:
   7D3E 39                 4253 	.db #0x39	; 57	'9'
   7D3F FF                 4254 	.db #0xff	; 255
   7D40 36                 4255 	.db #0x36	; 54	'6'
   7D41 39                 4256 	.db #0x39	; 57	'9'
   7D42 FF                 4257 	.db #0xff	; 255
   7D43 36                 4258 	.db #0x36	; 54	'6'
   7D44 94                 4259 	.db #0x94	; 148
   7D45 33                 4260 	.db #0x33	; 51	'3'
   7D46 68                 4261 	.db #0x68	; 104	'h'
   7D47 94                 4262 	.db #0x94	; 148
   7D48 33                 4263 	.db #0x33	; 51	'3'
   7D49 68                 4264 	.db #0x68	; 104	'h'
   7D4A 40                 4265 	.db #0x40	; 64
   7D4B 3C                 4266 	.db #0x3c	; 60
   7D4C 80                 4267 	.db #0x80	; 128
   7D4D 40                 4268 	.db #0x40	; 64
   7D4E 3C                 4269 	.db #0x3c	; 60
   7D4F 80                 4270 	.db #0x80	; 128
   7D50 00                 4271 	.db #0x00	; 0
   7D51 C0                 4272 	.db #0xc0	; 192
   7D52 00                 4273 	.db #0x00	; 0
   7D53 00                 4274 	.db #0x00	; 0
   7D54 C0                 4275 	.db #0xc0	; 192
   7D55 00                 4276 	.db #0x00	; 0
   7D56                    4277 _enemies_h_02:
   7D56 80                 4278 	.db #0x80	; 128
   7D57 00                 4279 	.db #0x00	; 0
   7D58 00                 4280 	.db #0x00	; 0
   7D59 80                 4281 	.db #0x80	; 128
   7D5A 00                 4282 	.db #0x00	; 0
   7D5B 00                 4283 	.db #0x00	; 0
   7D5C 00                 4284 	.db #0x00	; 0
   7D5D 00                 4285 	.db #0x00	; 0
   7D5E 00                 4286 	.db #0x00	; 0
   7D5F 00                 4287 	.db #0x00	; 0
   7D60 00                 4288 	.db #0x00	; 0
   7D61 00                 4289 	.db #0x00	; 0
   7D62 00                 4290 	.db #0x00	; 0
   7D63 00                 4291 	.db #0x00	; 0
   7D64 00                 4292 	.db #0x00	; 0
   7D65 00                 4293 	.db #0x00	; 0
   7D66 00                 4294 	.db #0x00	; 0
   7D67 00                 4295 	.db #0x00	; 0
   7D68 00                 4296 	.db #0x00	; 0
   7D69 00                 4297 	.db #0x00	; 0
   7D6A 00                 4298 	.db #0x00	; 0
   7D6B 00                 4299 	.db #0x00	; 0
   7D6C 00                 4300 	.db #0x00	; 0
   7D6D 00                 4301 	.db #0x00	; 0
   7D6E                    4302 _enemies_h_03:
   7D6E 00                 4303 	.db #0x00	; 0
   7D6F 00                 4304 	.db #0x00	; 0
   7D70 04                 4305 	.db #0x04	; 4
   7D71 00                 4306 	.db #0x00	; 0
   7D72 00                 4307 	.db #0x00	; 0
   7D73 04                 4308 	.db #0x04	; 4
   7D74 00                 4309 	.db #0x00	; 0
   7D75 00                 4310 	.db #0x00	; 0
   7D76 00                 4311 	.db #0x00	; 0
   7D77 00                 4312 	.db #0x00	; 0
   7D78 00                 4313 	.db #0x00	; 0
   7D79 00                 4314 	.db #0x00	; 0
   7D7A 00                 4315 	.db #0x00	; 0
   7D7B 00                 4316 	.db #0x00	; 0
   7D7C 00                 4317 	.db #0x00	; 0
   7D7D 00                 4318 	.db #0x00	; 0
   7D7E 00                 4319 	.db #0x00	; 0
   7D7F 00                 4320 	.db #0x00	; 0
   7D80 00                 4321 	.db #0x00	; 0
   7D81 00                 4322 	.db #0x00	; 0
   7D82 00                 4323 	.db #0x00	; 0
   7D83 00                 4324 	.db #0x00	; 0
   7D84 00                 4325 	.db #0x00	; 0
   7D85 00                 4326 	.db #0x00	; 0
   7D86                    4327 _enemies_h_04:
   7D86 25                 4328 	.db #0x25	; 37
   7D87 FF                 4329 	.db #0xff	; 255
   7D88 1A                 4330 	.db #0x1a	; 26
   7D89 25                 4331 	.db #0x25	; 37
   7D8A FF                 4332 	.db #0xff	; 255
   7D8B 1A                 4333 	.db #0x1a	; 26
   7D8C 18                 4334 	.db #0x18	; 24
   7D8D 0F                 4335 	.db #0x0f	; 15
   7D8E 24                 4336 	.db #0x24	; 36
   7D8F 18                 4337 	.db #0x18	; 24
   7D90 0F                 4338 	.db #0x0f	; 15
   7D91 24                 4339 	.db #0x24	; 36
   7D92 04                 4340 	.db #0x04	; 4
   7D93 30                 4341 	.db #0x30	; 48	'0'
   7D94 08                 4342 	.db #0x08	; 8
   7D95 04                 4343 	.db #0x04	; 4
   7D96 30                 4344 	.db #0x30	; 48	'0'
   7D97 08                 4345 	.db #0x08	; 8
   7D98 00                 4346 	.db #0x00	; 0
   7D99 0C                 4347 	.db #0x0c	; 12
   7D9A 00                 4348 	.db #0x00	; 0
   7D9B 00                 4349 	.db #0x00	; 0
   7D9C 0C                 4350 	.db #0x0c	; 12
   7D9D 00                 4351 	.db #0x00	; 0
   7D9E                    4352 _enemies_h_05:
   7D9E 08                 4353 	.db #0x08	; 8
   7D9F 00                 4354 	.db #0x00	; 0
   7DA0 00                 4355 	.db #0x00	; 0
   7DA1 08                 4356 	.db #0x08	; 8
   7DA2 00                 4357 	.db #0x00	; 0
   7DA3 00                 4358 	.db #0x00	; 0
   7DA4 00                 4359 	.db #0x00	; 0
   7DA5 00                 4360 	.db #0x00	; 0
   7DA6 00                 4361 	.db #0x00	; 0
   7DA7 00                 4362 	.db #0x00	; 0
   7DA8 00                 4363 	.db #0x00	; 0
   7DA9 00                 4364 	.db #0x00	; 0
   7DAA 00                 4365 	.db #0x00	; 0
   7DAB 00                 4366 	.db #0x00	; 0
   7DAC 00                 4367 	.db #0x00	; 0
   7DAD 00                 4368 	.db #0x00	; 0
   7DAE 00                 4369 	.db #0x00	; 0
   7DAF 00                 4370 	.db #0x00	; 0
   7DB0 00                 4371 	.db #0x00	; 0
   7DB1 00                 4372 	.db #0x00	; 0
   7DB2 00                 4373 	.db #0x00	; 0
   7DB3 00                 4374 	.db #0x00	; 0
   7DB4 00                 4375 	.db #0x00	; 0
   7DB5 00                 4376 	.db #0x00	; 0
   7DB6                    4377 _enemies_h_06:
   7DB6 00                 4378 	.db #0x00	; 0
   7DB7 00                 4379 	.db #0x00	; 0
   7DB8 00                 4380 	.db #0x00	; 0
   7DB9 00                 4381 	.db #0x00	; 0
   7DBA 00                 4382 	.db #0x00	; 0
   7DBB 00                 4383 	.db #0x00	; 0
   7DBC 00                 4384 	.db #0x00	; 0
   7DBD 00                 4385 	.db #0x00	; 0
   7DBE 00                 4386 	.db #0x00	; 0
   7DBF 00                 4387 	.db #0x00	; 0
   7DC0 00                 4388 	.db #0x00	; 0
   7DC1 00                 4389 	.db #0x00	; 0
   7DC2 00                 4390 	.db #0x00	; 0
   7DC3 00                 4391 	.db #0x00	; 0
   7DC4 00                 4392 	.db #0x00	; 0
   7DC5 00                 4393 	.db #0x00	; 0
   7DC6 00                 4394 	.db #0x00	; 0
   7DC7 00                 4395 	.db #0x00	; 0
   7DC8 00                 4396 	.db #0x00	; 0
   7DC9 00                 4397 	.db #0x00	; 0
   7DCA 40                 4398 	.db #0x40	; 64
   7DCB 00                 4399 	.db #0x00	; 0
   7DCC 00                 4400 	.db #0x00	; 0
   7DCD 40                 4401 	.db #0x40	; 64
   7DCE                    4402 _enemies_h_07:
   7DCE 00                 4403 	.db #0x00	; 0
   7DCF C0                 4404 	.db #0xc0	; 192
   7DD0 00                 4405 	.db #0x00	; 0
   7DD1 00                 4406 	.db #0x00	; 0
   7DD2 C0                 4407 	.db #0xc0	; 192
   7DD3 00                 4408 	.db #0x00	; 0
   7DD4 40                 4409 	.db #0x40	; 64
   7DD5 3C                 4410 	.db #0x3c	; 60
   7DD6 80                 4411 	.db #0x80	; 128
   7DD7 40                 4412 	.db #0x40	; 64
   7DD8 3C                 4413 	.db #0x3c	; 60
   7DD9 80                 4414 	.db #0x80	; 128
   7DDA 94                 4415 	.db #0x94	; 148
   7DDB 33                 4416 	.db #0x33	; 51	'3'
   7DDC 68                 4417 	.db #0x68	; 104	'h'
   7DDD 94                 4418 	.db #0x94	; 148
   7DDE 33                 4419 	.db #0x33	; 51	'3'
   7DDF 68                 4420 	.db #0x68	; 104	'h'
   7DE0 39                 4421 	.db #0x39	; 57	'9'
   7DE1 FF                 4422 	.db #0xff	; 255
   7DE2 36                 4423 	.db #0x36	; 54	'6'
   7DE3 39                 4424 	.db #0x39	; 57	'9'
   7DE4 FF                 4425 	.db #0xff	; 255
   7DE5 36                 4426 	.db #0x36	; 54	'6'
   7DE6                    4427 _enemies_h_08:
   7DE6 00                 4428 	.db #0x00	; 0
   7DE7 00                 4429 	.db #0x00	; 0
   7DE8 00                 4430 	.db #0x00	; 0
   7DE9 00                 4431 	.db #0x00	; 0
   7DEA 00                 4432 	.db #0x00	; 0
   7DEB 00                 4433 	.db #0x00	; 0
   7DEC 00                 4434 	.db #0x00	; 0
   7DED 00                 4435 	.db #0x00	; 0
   7DEE 00                 4436 	.db #0x00	; 0
   7DEF 00                 4437 	.db #0x00	; 0
   7DF0 00                 4438 	.db #0x00	; 0
   7DF1 00                 4439 	.db #0x00	; 0
   7DF2 00                 4440 	.db #0x00	; 0
   7DF3 00                 4441 	.db #0x00	; 0
   7DF4 00                 4442 	.db #0x00	; 0
   7DF5 00                 4443 	.db #0x00	; 0
   7DF6 00                 4444 	.db #0x00	; 0
   7DF7 00                 4445 	.db #0x00	; 0
   7DF8 80                 4446 	.db #0x80	; 128
   7DF9 00                 4447 	.db #0x00	; 0
   7DFA 00                 4448 	.db #0x00	; 0
   7DFB 80                 4449 	.db #0x80	; 128
   7DFC 00                 4450 	.db #0x00	; 0
   7DFD 00                 4451 	.db #0x00	; 0
   7DFE                    4452 _enemies_h_09:
   7DFE 00                 4453 	.db #0x00	; 0
   7DFF 00                 4454 	.db #0x00	; 0
   7E00 00                 4455 	.db #0x00	; 0
   7E01 00                 4456 	.db #0x00	; 0
   7E02 00                 4457 	.db #0x00	; 0
   7E03 00                 4458 	.db #0x00	; 0
   7E04 00                 4459 	.db #0x00	; 0
   7E05 00                 4460 	.db #0x00	; 0
   7E06 00                 4461 	.db #0x00	; 0
   7E07 00                 4462 	.db #0x00	; 0
   7E08 00                 4463 	.db #0x00	; 0
   7E09 00                 4464 	.db #0x00	; 0
   7E0A 00                 4465 	.db #0x00	; 0
   7E0B 00                 4466 	.db #0x00	; 0
   7E0C 00                 4467 	.db #0x00	; 0
   7E0D 00                 4468 	.db #0x00	; 0
   7E0E 00                 4469 	.db #0x00	; 0
   7E0F 00                 4470 	.db #0x00	; 0
   7E10 00                 4471 	.db #0x00	; 0
   7E11 00                 4472 	.db #0x00	; 0
   7E12 04                 4473 	.db #0x04	; 4
   7E13 00                 4474 	.db #0x00	; 0
   7E14 00                 4475 	.db #0x00	; 0
   7E15 04                 4476 	.db #0x04	; 4
   7E16                    4477 _enemies_h_10:
   7E16 00                 4478 	.db #0x00	; 0
   7E17 0C                 4479 	.db #0x0c	; 12
   7E18 00                 4480 	.db #0x00	; 0
   7E19 00                 4481 	.db #0x00	; 0
   7E1A 0C                 4482 	.db #0x0c	; 12
   7E1B 00                 4483 	.db #0x00	; 0
   7E1C 04                 4484 	.db #0x04	; 4
   7E1D 30                 4485 	.db #0x30	; 48	'0'
   7E1E 08                 4486 	.db #0x08	; 8
   7E1F 04                 4487 	.db #0x04	; 4
   7E20 30                 4488 	.db #0x30	; 48	'0'
   7E21 08                 4489 	.db #0x08	; 8
   7E22 18                 4490 	.db #0x18	; 24
   7E23 0F                 4491 	.db #0x0f	; 15
   7E24 24                 4492 	.db #0x24	; 36
   7E25 18                 4493 	.db #0x18	; 24
   7E26 0F                 4494 	.db #0x0f	; 15
   7E27 24                 4495 	.db #0x24	; 36
   7E28 25                 4496 	.db #0x25	; 37
   7E29 FF                 4497 	.db #0xff	; 255
   7E2A 1A                 4498 	.db #0x1a	; 26
   7E2B 25                 4499 	.db #0x25	; 37
   7E2C FF                 4500 	.db #0xff	; 255
   7E2D 1A                 4501 	.db #0x1a	; 26
   7E2E                    4502 _enemies_h_11:
   7E2E 00                 4503 	.db #0x00	; 0
   7E2F 00                 4504 	.db #0x00	; 0
   7E30 00                 4505 	.db #0x00	; 0
   7E31 00                 4506 	.db #0x00	; 0
   7E32 00                 4507 	.db #0x00	; 0
   7E33 00                 4508 	.db #0x00	; 0
   7E34 00                 4509 	.db #0x00	; 0
   7E35 00                 4510 	.db #0x00	; 0
   7E36 00                 4511 	.db #0x00	; 0
   7E37 00                 4512 	.db #0x00	; 0
   7E38 00                 4513 	.db #0x00	; 0
   7E39 00                 4514 	.db #0x00	; 0
   7E3A 00                 4515 	.db #0x00	; 0
   7E3B 00                 4516 	.db #0x00	; 0
   7E3C 00                 4517 	.db #0x00	; 0
   7E3D 00                 4518 	.db #0x00	; 0
   7E3E 00                 4519 	.db #0x00	; 0
   7E3F 00                 4520 	.db #0x00	; 0
   7E40 08                 4521 	.db #0x08	; 8
   7E41 00                 4522 	.db #0x00	; 0
   7E42 00                 4523 	.db #0x00	; 0
   7E43 08                 4524 	.db #0x08	; 8
   7E44 00                 4525 	.db #0x00	; 0
   7E45 00                 4526 	.db #0x00	; 0
                           4527 	.area _INITIALIZER
                           4528 	.area _CABS (ABS)
