                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module fonts
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _font_ts
                             12 	.globl _font_287
                             13 	.globl _font_286
                             14 	.globl _font_285
                             15 	.globl _font_284
                             16 	.globl _font_283
                             17 	.globl _font_282
                             18 	.globl _font_281
                             19 	.globl _font_280
                             20 	.globl _font_279
                             21 	.globl _font_278
                             22 	.globl _font_277
                             23 	.globl _font_276
                             24 	.globl _font_275
                             25 	.globl _font_274
                             26 	.globl _font_273
                             27 	.globl _font_272
                             28 	.globl _font_271
                             29 	.globl _font_270
                             30 	.globl _font_269
                             31 	.globl _font_268
                             32 	.globl _font_267
                             33 	.globl _font_266
                             34 	.globl _font_265
                             35 	.globl _font_264
                             36 	.globl _font_263
                             37 	.globl _font_262
                             38 	.globl _font_261
                             39 	.globl _font_260
                             40 	.globl _font_259
                             41 	.globl _font_258
                             42 	.globl _font_257
                             43 	.globl _font_256
                             44 	.globl _font_255
                             45 	.globl _font_254
                             46 	.globl _font_253
                             47 	.globl _font_252
                             48 	.globl _font_251
                             49 	.globl _font_250
                             50 	.globl _font_249
                             51 	.globl _font_248
                             52 	.globl _font_247
                             53 	.globl _font_246
                             54 	.globl _font_245
                             55 	.globl _font_244
                             56 	.globl _font_243
                             57 	.globl _font_242
                             58 	.globl _font_241
                             59 	.globl _font_240
                             60 	.globl _font_239
                             61 	.globl _font_238
                             62 	.globl _font_237
                             63 	.globl _font_236
                             64 	.globl _font_235
                             65 	.globl _font_234
                             66 	.globl _font_233
                             67 	.globl _font_232
                             68 	.globl _font_231
                             69 	.globl _font_230
                             70 	.globl _font_229
                             71 	.globl _font_228
                             72 	.globl _font_227
                             73 	.globl _font_226
                             74 	.globl _font_225
                             75 	.globl _font_224
                             76 	.globl _font_223
                             77 	.globl _font_222
                             78 	.globl _font_221
                             79 	.globl _font_220
                             80 	.globl _font_219
                             81 	.globl _font_218
                             82 	.globl _font_217
                             83 	.globl _font_216
                             84 	.globl _font_215
                             85 	.globl _font_214
                             86 	.globl _font_213
                             87 	.globl _font_212
                             88 	.globl _font_211
                             89 	.globl _font_210
                             90 	.globl _font_209
                             91 	.globl _font_208
                             92 	.globl _font_207
                             93 	.globl _font_206
                             94 	.globl _font_205
                             95 	.globl _font_204
                             96 	.globl _font_203
                             97 	.globl _font_202
                             98 	.globl _font_201
                             99 	.globl _font_200
                            100 	.globl _font_199
                            101 	.globl _font_198
                            102 	.globl _font_197
                            103 	.globl _font_196
                            104 	.globl _font_195
                            105 	.globl _font_194
                            106 	.globl _font_193
                            107 	.globl _font_192
                            108 	.globl _font_191
                            109 	.globl _font_190
                            110 	.globl _font_189
                            111 	.globl _font_188
                            112 	.globl _font_187
                            113 	.globl _font_186
                            114 	.globl _font_185
                            115 	.globl _font_184
                            116 	.globl _font_183
                            117 	.globl _font_182
                            118 	.globl _font_181
                            119 	.globl _font_180
                            120 	.globl _font_179
                            121 	.globl _font_178
                            122 	.globl _font_177
                            123 	.globl _font_176
                            124 	.globl _font_175
                            125 	.globl _font_174
                            126 	.globl _font_173
                            127 	.globl _font_172
                            128 	.globl _font_171
                            129 	.globl _font_170
                            130 	.globl _font_169
                            131 	.globl _font_168
                            132 	.globl _font_167
                            133 	.globl _font_166
                            134 	.globl _font_165
                            135 	.globl _font_164
                            136 	.globl _font_163
                            137 	.globl _font_162
                            138 	.globl _font_161
                            139 	.globl _font_160
                            140 	.globl _font_159
                            141 	.globl _font_158
                            142 	.globl _font_157
                            143 	.globl _font_156
                            144 	.globl _font_155
                            145 	.globl _font_154
                            146 	.globl _font_153
                            147 	.globl _font_152
                            148 	.globl _font_151
                            149 	.globl _font_150
                            150 	.globl _font_149
                            151 	.globl _font_148
                            152 	.globl _font_147
                            153 	.globl _font_146
                            154 	.globl _font_145
                            155 	.globl _font_144
                            156 	.globl _font_143
                            157 	.globl _font_142
                            158 	.globl _font_141
                            159 	.globl _font_140
                            160 	.globl _font_139
                            161 	.globl _font_138
                            162 	.globl _font_137
                            163 	.globl _font_136
                            164 	.globl _font_135
                            165 	.globl _font_134
                            166 	.globl _font_133
                            167 	.globl _font_132
                            168 	.globl _font_131
                            169 	.globl _font_130
                            170 	.globl _font_129
                            171 	.globl _font_128
                            172 	.globl _font_127
                            173 	.globl _font_126
                            174 	.globl _font_125
                            175 	.globl _font_124
                            176 	.globl _font_123
                            177 	.globl _font_122
                            178 	.globl _font_121
                            179 	.globl _font_120
                            180 	.globl _font_119
                            181 	.globl _font_118
                            182 	.globl _font_117
                            183 	.globl _font_116
                            184 	.globl _font_115
                            185 	.globl _font_114
                            186 	.globl _font_113
                            187 	.globl _font_112
                            188 	.globl _font_111
                            189 	.globl _font_110
                            190 	.globl _font_109
                            191 	.globl _font_108
                            192 	.globl _font_107
                            193 	.globl _font_106
                            194 	.globl _font_105
                            195 	.globl _font_104
                            196 	.globl _font_103
                            197 	.globl _font_102
                            198 	.globl _font_101
                            199 	.globl _font_100
                            200 	.globl _font_099
                            201 	.globl _font_098
                            202 	.globl _font_097
                            203 	.globl _font_096
                            204 	.globl _font_095
                            205 	.globl _font_094
                            206 	.globl _font_093
                            207 	.globl _font_092
                            208 	.globl _font_091
                            209 	.globl _font_090
                            210 	.globl _font_089
                            211 	.globl _font_088
                            212 	.globl _font_087
                            213 	.globl _font_086
                            214 	.globl _font_085
                            215 	.globl _font_084
                            216 	.globl _font_083
                            217 	.globl _font_082
                            218 	.globl _font_081
                            219 	.globl _font_080
                            220 	.globl _font_079
                            221 	.globl _font_078
                            222 	.globl _font_077
                            223 	.globl _font_076
                            224 	.globl _font_075
                            225 	.globl _font_074
                            226 	.globl _font_073
                            227 	.globl _font_072
                            228 	.globl _font_071
                            229 	.globl _font_070
                            230 	.globl _font_069
                            231 	.globl _font_068
                            232 	.globl _font_067
                            233 	.globl _font_066
                            234 	.globl _font_065
                            235 	.globl _font_064
                            236 	.globl _font_063
                            237 	.globl _font_062
                            238 	.globl _font_061
                            239 	.globl _font_060
                            240 	.globl _font_059
                            241 	.globl _font_058
                            242 	.globl _font_057
                            243 	.globl _font_056
                            244 	.globl _font_055
                            245 	.globl _font_054
                            246 	.globl _font_053
                            247 	.globl _font_052
                            248 	.globl _font_051
                            249 	.globl _font_050
                            250 	.globl _font_049
                            251 	.globl _font_048
                            252 	.globl _font_047
                            253 	.globl _font_046
                            254 	.globl _font_045
                            255 	.globl _font_044
                            256 	.globl _font_043
                            257 	.globl _font_042
                            258 	.globl _font_041
                            259 	.globl _font_040
                            260 	.globl _font_039
                            261 	.globl _font_038
                            262 	.globl _font_037
                            263 	.globl _font_036
                            264 	.globl _font_035
                            265 	.globl _font_034
                            266 	.globl _font_033
                            267 	.globl _font_032
                            268 	.globl _font_031
                            269 	.globl _font_030
                            270 	.globl _font_029
                            271 	.globl _font_028
                            272 	.globl _font_027
                            273 	.globl _font_026
                            274 	.globl _font_025
                            275 	.globl _font_024
                            276 	.globl _font_023
                            277 	.globl _font_022
                            278 	.globl _font_021
                            279 	.globl _font_020
                            280 	.globl _font_019
                            281 	.globl _font_018
                            282 	.globl _font_017
                            283 	.globl _font_016
                            284 	.globl _font_015
                            285 	.globl _font_014
                            286 	.globl _font_013
                            287 	.globl _font_012
                            288 	.globl _font_011
                            289 	.globl _font_010
                            290 	.globl _font_009
                            291 	.globl _font_008
                            292 	.globl _font_007
                            293 	.globl _font_006
                            294 	.globl _font_005
                            295 	.globl _font_004
                            296 	.globl _font_003
                            297 	.globl _font_002
                            298 	.globl _font_001
                            299 	.globl _font_000
                            300 ;--------------------------------------------------------
                            301 ; special function registers
                            302 ;--------------------------------------------------------
                            303 ;--------------------------------------------------------
                            304 ; ram data
                            305 ;--------------------------------------------------------
                            306 	.area _DATA
                            307 ;--------------------------------------------------------
                            308 ; ram data
                            309 ;--------------------------------------------------------
                            310 	.area _INITIALIZED
                            311 ;--------------------------------------------------------
                            312 ; absolute external ram data
                            313 ;--------------------------------------------------------
                            314 	.area _DABS (ABS)
                            315 ;--------------------------------------------------------
                            316 ; global & static initialisations
                            317 ;--------------------------------------------------------
                            318 	.area _HOME
                            319 	.area _GSINIT
                            320 	.area _GSFINAL
                            321 	.area _GSINIT
                            322 ;--------------------------------------------------------
                            323 ; Home
                            324 ;--------------------------------------------------------
                            325 	.area _HOME
                            326 	.area _HOME
                            327 ;--------------------------------------------------------
                            328 ; code
                            329 ;--------------------------------------------------------
                            330 	.area _CODE
                            331 	.area _CODE
   3F91                     332 _font_000:
   3F91 00                  333 	.db #0x00	; 0
   3F92 00                  334 	.db #0x00	; 0
   3F93 00                  335 	.db #0x00	; 0
   3F94 00                  336 	.db #0x00	; 0
   3F95 00                  337 	.db #0x00	; 0
   3F96 00                  338 	.db #0x00	; 0
   3F97 00                  339 	.db #0x00	; 0
   3F98 00                  340 	.db #0x00	; 0
   3F99 00                  341 	.db #0x00	; 0
   3F9A 00                  342 	.db #0x00	; 0
   3F9B 00                  343 	.db #0x00	; 0
   3F9C 00                  344 	.db #0x00	; 0
   3F9D                     345 _font_001:
   3F9D 00                  346 	.db #0x00	; 0
   3F9E 00                  347 	.db #0x00	; 0
   3F9F 10                  348 	.db #0x10	; 16
   3FA0 00                  349 	.db #0x00	; 0
   3FA1 10                  350 	.db #0x10	; 16
   3FA2 00                  351 	.db #0x00	; 0
   3FA3 41                  352 	.db #0x41	; 65	'A'
   3FA4 00                  353 	.db #0x00	; 0
   3FA5 00                  354 	.db #0x00	; 0
   3FA6 00                  355 	.db #0x00	; 0
   3FA7 51                  356 	.db #0x51	; 81	'Q'
   3FA8 00                  357 	.db #0x00	; 0
   3FA9                     358 _font_002:
   3FA9 00                  359 	.db #0x00	; 0
   3FAA 00                  360 	.db #0x00	; 0
   3FAB 20                  361 	.db #0x20	; 32
   3FAC 20                  362 	.db #0x20	; 32
   3FAD 00                  363 	.db #0x00	; 0
   3FAE 00                  364 	.db #0x00	; 0
   3FAF 00                  365 	.db #0x00	; 0
   3FB0 00                  366 	.db #0x00	; 0
   3FB1 00                  367 	.db #0x00	; 0
   3FB2 00                  368 	.db #0x00	; 0
   3FB3 00                  369 	.db #0x00	; 0
   3FB4 00                  370 	.db #0x00	; 0
   3FB5                     371 _font_003:
   3FB5 00                  372 	.db #0x00	; 0
   3FB6 00                  373 	.db #0x00	; 0
   3FB7 20                  374 	.db #0x20	; 32
   3FB8 20                  375 	.db #0x20	; 32
   3FB9 30                  376 	.db #0x30	; 48	'0'
   3FBA 20                  377 	.db #0x20	; 32
   3FBB 82                  378 	.db #0x82	; 130
   3FBC 82                  379 	.db #0x82	; 130
   3FBD C3                  380 	.db #0xc3	; 195
   3FBE 82                  381 	.db #0x82	; 130
   3FBF A2                  382 	.db #0xa2	; 162
   3FC0 A2                  383 	.db #0xa2	; 162
   3FC1                     384 _font_004:
   3FC1 00                  385 	.db #0x00	; 0
   3FC2 00                  386 	.db #0x00	; 0
   3FC3 10                  387 	.db #0x10	; 16
   3FC4 20                  388 	.db #0x20	; 32
   3FC5 30                  389 	.db #0x30	; 48	'0'
   3FC6 00                  390 	.db #0x00	; 0
   3FC7 41                  391 	.db #0x41	; 65	'A'
   3FC8 82                  392 	.db #0x82	; 130
   3FC9 C3                  393 	.db #0xc3	; 195
   3FCA 00                  394 	.db #0x00	; 0
   3FCB 51                  395 	.db #0x51	; 81	'Q'
   3FCC 00                  396 	.db #0x00	; 0
   3FCD                     397 _font_005:
   3FCD 00                  398 	.db #0x00	; 0
   3FCE 00                  399 	.db #0x00	; 0
   3FCF 20                  400 	.db #0x20	; 32
   3FD0 20                  401 	.db #0x20	; 32
   3FD1 00                  402 	.db #0x00	; 0
   3FD2 20                  403 	.db #0x20	; 32
   3FD3 41                  404 	.db #0x41	; 65	'A'
   3FD4 00                  405 	.db #0x00	; 0
   3FD5 82                  406 	.db #0x82	; 130
   3FD6 00                  407 	.db #0x00	; 0
   3FD7 A2                  408 	.db #0xa2	; 162
   3FD8 A2                  409 	.db #0xa2	; 162
   3FD9                     410 _font_006:
   3FD9 00                  411 	.db #0x00	; 0
   3FDA 00                  412 	.db #0x00	; 0
   3FDB 00                  413 	.db #0x00	; 0
   3FDC 20                  414 	.db #0x20	; 32
   3FDD 10                  415 	.db #0x10	; 16
   3FDE 10                  416 	.db #0x10	; 16
   3FDF 00                  417 	.db #0x00	; 0
   3FE0 82                  418 	.db #0x82	; 130
   3FE1 41                  419 	.db #0x41	; 65	'A'
   3FE2 41                  420 	.db #0x41	; 65	'A'
   3FE3 00                  421 	.db #0x00	; 0
   3FE4 F3                  422 	.db #0xf3	; 243
   3FE5                     423 _font_007:
   3FE5 00                  424 	.db #0x00	; 0
   3FE6 00                  425 	.db #0x00	; 0
   3FE7 00                  426 	.db #0x00	; 0
   3FE8 20                  427 	.db #0x20	; 32
   3FE9 10                  428 	.db #0x10	; 16
   3FEA 00                  429 	.db #0x00	; 0
   3FEB 00                  430 	.db #0x00	; 0
   3FEC 00                  431 	.db #0x00	; 0
   3FED 00                  432 	.db #0x00	; 0
   3FEE 00                  433 	.db #0x00	; 0
   3FEF 00                  434 	.db #0x00	; 0
   3FF0 00                  435 	.db #0x00	; 0
   3FF1                     436 _font_008:
   3FF1 00                  437 	.db #0x00	; 0
   3FF2 00                  438 	.db #0x00	; 0
   3FF3 00                  439 	.db #0x00	; 0
   3FF4 20                  440 	.db #0x20	; 32
   3FF5 10                  441 	.db #0x10	; 16
   3FF6 00                  442 	.db #0x00	; 0
   3FF7 41                  443 	.db #0x41	; 65	'A'
   3FF8 00                  444 	.db #0x00	; 0
   3FF9 41                  445 	.db #0x41	; 65	'A'
   3FFA 00                  446 	.db #0x00	; 0
   3FFB 00                  447 	.db #0x00	; 0
   3FFC A2                  448 	.db #0xa2	; 162
   3FFD                     449 _font_009:
   3FFD 00                  450 	.db #0x00	; 0
   3FFE 00                  451 	.db #0x00	; 0
   3FFF 10                  452 	.db #0x10	; 16
   4000 00                  453 	.db #0x00	; 0
   4001 00                  454 	.db #0x00	; 0
   4002 20                  455 	.db #0x20	; 32
   4003 00                  456 	.db #0x00	; 0
   4004 82                  457 	.db #0x82	; 130
   4005 00                  458 	.db #0x00	; 0
   4006 82                  459 	.db #0x82	; 130
   4007 51                  460 	.db #0x51	; 81	'Q'
   4008 00                  461 	.db #0x00	; 0
   4009                     462 _font_010:
   4009 00                  463 	.db #0x00	; 0
   400A 00                  464 	.db #0x00	; 0
   400B 20                  465 	.db #0x20	; 32
   400C 20                  466 	.db #0x20	; 32
   400D 10                  467 	.db #0x10	; 16
   400E 00                  468 	.db #0x00	; 0
   400F C3                  469 	.db #0xc3	; 195
   4010 82                  470 	.db #0x82	; 130
   4011 41                  471 	.db #0x41	; 65	'A'
   4012 00                  472 	.db #0x00	; 0
   4013 A2                  473 	.db #0xa2	; 162
   4014 A2                  474 	.db #0xa2	; 162
   4015                     475 _font_011:
   4015 00                  476 	.db #0x00	; 0
   4016 00                  477 	.db #0x00	; 0
   4017 00                  478 	.db #0x00	; 0
   4018 00                  479 	.db #0x00	; 0
   4019 10                  480 	.db #0x10	; 16
   401A 00                  481 	.db #0x00	; 0
   401B C3                  482 	.db #0xc3	; 195
   401C 82                  483 	.db #0x82	; 130
   401D 41                  484 	.db #0x41	; 65	'A'
   401E 00                  485 	.db #0x00	; 0
   401F 00                  486 	.db #0x00	; 0
   4020 00                  487 	.db #0x00	; 0
   4021                     488 _font_012:
   4021 00                  489 	.db #0x00	; 0
   4022 00                  490 	.db #0x00	; 0
   4023 00                  491 	.db #0x00	; 0
   4024 00                  492 	.db #0x00	; 0
   4025 00                  493 	.db #0x00	; 0
   4026 00                  494 	.db #0x00	; 0
   4027 00                  495 	.db #0x00	; 0
   4028 00                  496 	.db #0x00	; 0
   4029 41                  497 	.db #0x41	; 65	'A'
   402A 00                  498 	.db #0x00	; 0
   402B A2                  499 	.db #0xa2	; 162
   402C 00                  500 	.db #0x00	; 0
   402D                     501 _font_013:
   402D 00                  502 	.db #0x00	; 0
   402E 00                  503 	.db #0x00	; 0
   402F 00                  504 	.db #0x00	; 0
   4030 00                  505 	.db #0x00	; 0
   4031 00                  506 	.db #0x00	; 0
   4032 00                  507 	.db #0x00	; 0
   4033 C3                  508 	.db #0xc3	; 195
   4034 82                  509 	.db #0x82	; 130
   4035 00                  510 	.db #0x00	; 0
   4036 00                  511 	.db #0x00	; 0
   4037 00                  512 	.db #0x00	; 0
   4038 00                  513 	.db #0x00	; 0
   4039                     514 _font_014:
   4039 00                  515 	.db #0x00	; 0
   403A 00                  516 	.db #0x00	; 0
   403B 00                  517 	.db #0x00	; 0
   403C 00                  518 	.db #0x00	; 0
   403D 00                  519 	.db #0x00	; 0
   403E 00                  520 	.db #0x00	; 0
   403F 00                  521 	.db #0x00	; 0
   4040 00                  522 	.db #0x00	; 0
   4041 00                  523 	.db #0x00	; 0
   4042 00                  524 	.db #0x00	; 0
   4043 51                  525 	.db #0x51	; 81	'Q'
   4044 00                  526 	.db #0x00	; 0
   4045                     527 _font_015:
   4045 00                  528 	.db #0x00	; 0
   4046 00                  529 	.db #0x00	; 0
   4047 00                  530 	.db #0x00	; 0
   4048 20                  531 	.db #0x20	; 32
   4049 00                  532 	.db #0x00	; 0
   404A 20                  533 	.db #0x20	; 32
   404B 41                  534 	.db #0x41	; 65	'A'
   404C 00                  535 	.db #0x00	; 0
   404D 82                  536 	.db #0x82	; 130
   404E 00                  537 	.db #0x00	; 0
   404F A2                  538 	.db #0xa2	; 162
   4050 00                  539 	.db #0x00	; 0
   4051                     540 _font_016:
   4051 00                  541 	.db #0x00	; 0
   4052 00                  542 	.db #0x00	; 0
   4053 30                  543 	.db #0x30	; 48	'0'
   4054 20                  544 	.db #0x20	; 32
   4055 20                  545 	.db #0x20	; 32
   4056 20                  546 	.db #0x20	; 32
   4057 82                  547 	.db #0x82	; 130
   4058 82                  548 	.db #0x82	; 130
   4059 82                  549 	.db #0x82	; 130
   405A 82                  550 	.db #0x82	; 130
   405B F3                  551 	.db #0xf3	; 243
   405C A2                  552 	.db #0xa2	; 162
   405D                     553 _font_017:
   405D 00                  554 	.db #0x00	; 0
   405E 00                  555 	.db #0x00	; 0
   405F 10                  556 	.db #0x10	; 16
   4060 00                  557 	.db #0x00	; 0
   4061 10                  558 	.db #0x10	; 16
   4062 00                  559 	.db #0x00	; 0
   4063 41                  560 	.db #0x41	; 65	'A'
   4064 00                  561 	.db #0x00	; 0
   4065 41                  562 	.db #0x41	; 65	'A'
   4066 00                  563 	.db #0x00	; 0
   4067 51                  564 	.db #0x51	; 81	'Q'
   4068 00                  565 	.db #0x00	; 0
   4069                     566 _font_018:
   4069 00                  567 	.db #0x00	; 0
   406A 00                  568 	.db #0x00	; 0
   406B 30                  569 	.db #0x30	; 48	'0'
   406C 20                  570 	.db #0x20	; 32
   406D 00                  571 	.db #0x00	; 0
   406E 20                  572 	.db #0x20	; 32
   406F C3                  573 	.db #0xc3	; 195
   4070 82                  574 	.db #0x82	; 130
   4071 82                  575 	.db #0x82	; 130
   4072 00                  576 	.db #0x00	; 0
   4073 F3                  577 	.db #0xf3	; 243
   4074 A2                  578 	.db #0xa2	; 162
   4075                     579 _font_019:
   4075 00                  580 	.db #0x00	; 0
   4076 00                  581 	.db #0x00	; 0
   4077 30                  582 	.db #0x30	; 48	'0'
   4078 20                  583 	.db #0x20	; 32
   4079 00                  584 	.db #0x00	; 0
   407A 20                  585 	.db #0x20	; 32
   407B 41                  586 	.db #0x41	; 65	'A'
   407C 82                  587 	.db #0x82	; 130
   407D 00                  588 	.db #0x00	; 0
   407E 82                  589 	.db #0x82	; 130
   407F F3                  590 	.db #0xf3	; 243
   4080 A2                  591 	.db #0xa2	; 162
   4081                     592 _font_020:
   4081 00                  593 	.db #0x00	; 0
   4082 00                  594 	.db #0x00	; 0
   4083 20                  595 	.db #0x20	; 32
   4084 20                  596 	.db #0x20	; 32
   4085 20                  597 	.db #0x20	; 32
   4086 20                  598 	.db #0x20	; 32
   4087 C3                  599 	.db #0xc3	; 195
   4088 82                  600 	.db #0x82	; 130
   4089 00                  601 	.db #0x00	; 0
   408A 82                  602 	.db #0x82	; 130
   408B 00                  603 	.db #0x00	; 0
   408C A2                  604 	.db #0xa2	; 162
   408D                     605 _font_021:
   408D 00                  606 	.db #0x00	; 0
   408E 00                  607 	.db #0x00	; 0
   408F 30                  608 	.db #0x30	; 48	'0'
   4090 20                  609 	.db #0x20	; 32
   4091 20                  610 	.db #0x20	; 32
   4092 00                  611 	.db #0x00	; 0
   4093 C3                  612 	.db #0xc3	; 195
   4094 82                  613 	.db #0x82	; 130
   4095 00                  614 	.db #0x00	; 0
   4096 82                  615 	.db #0x82	; 130
   4097 F3                  616 	.db #0xf3	; 243
   4098 A2                  617 	.db #0xa2	; 162
   4099                     618 _font_022:
   4099 00                  619 	.db #0x00	; 0
   409A 00                  620 	.db #0x00	; 0
   409B 30                  621 	.db #0x30	; 48	'0'
   409C 20                  622 	.db #0x20	; 32
   409D 20                  623 	.db #0x20	; 32
   409E 00                  624 	.db #0x00	; 0
   409F C3                  625 	.db #0xc3	; 195
   40A0 82                  626 	.db #0x82	; 130
   40A1 82                  627 	.db #0x82	; 130
   40A2 82                  628 	.db #0x82	; 130
   40A3 F3                  629 	.db #0xf3	; 243
   40A4 A2                  630 	.db #0xa2	; 162
   40A5                     631 _font_023:
   40A5 00                  632 	.db #0x00	; 0
   40A6 00                  633 	.db #0x00	; 0
   40A7 30                  634 	.db #0x30	; 48	'0'
   40A8 20                  635 	.db #0x20	; 32
   40A9 00                  636 	.db #0x00	; 0
   40AA 20                  637 	.db #0x20	; 32
   40AB 00                  638 	.db #0x00	; 0
   40AC 82                  639 	.db #0x82	; 130
   40AD 00                  640 	.db #0x00	; 0
   40AE 82                  641 	.db #0x82	; 130
   40AF 00                  642 	.db #0x00	; 0
   40B0 A2                  643 	.db #0xa2	; 162
   40B1                     644 _font_024:
   40B1 00                  645 	.db #0x00	; 0
   40B2 00                  646 	.db #0x00	; 0
   40B3 30                  647 	.db #0x30	; 48	'0'
   40B4 20                  648 	.db #0x20	; 32
   40B5 20                  649 	.db #0x20	; 32
   40B6 20                  650 	.db #0x20	; 32
   40B7 C3                  651 	.db #0xc3	; 195
   40B8 82                  652 	.db #0x82	; 130
   40B9 82                  653 	.db #0x82	; 130
   40BA 82                  654 	.db #0x82	; 130
   40BB F3                  655 	.db #0xf3	; 243
   40BC A2                  656 	.db #0xa2	; 162
   40BD                     657 _font_025:
   40BD 00                  658 	.db #0x00	; 0
   40BE 00                  659 	.db #0x00	; 0
   40BF 30                  660 	.db #0x30	; 48	'0'
   40C0 20                  661 	.db #0x20	; 32
   40C1 20                  662 	.db #0x20	; 32
   40C2 20                  663 	.db #0x20	; 32
   40C3 C3                  664 	.db #0xc3	; 195
   40C4 82                  665 	.db #0x82	; 130
   40C5 00                  666 	.db #0x00	; 0
   40C6 82                  667 	.db #0x82	; 130
   40C7 F3                  668 	.db #0xf3	; 243
   40C8 A2                  669 	.db #0xa2	; 162
   40C9                     670 _font_026:
   40C9 00                  671 	.db #0x00	; 0
   40CA 00                  672 	.db #0x00	; 0
   40CB 00                  673 	.db #0x00	; 0
   40CC 00                  674 	.db #0x00	; 0
   40CD 10                  675 	.db #0x10	; 16
   40CE 00                  676 	.db #0x00	; 0
   40CF 00                  677 	.db #0x00	; 0
   40D0 00                  678 	.db #0x00	; 0
   40D1 41                  679 	.db #0x41	; 65	'A'
   40D2 00                  680 	.db #0x00	; 0
   40D3 00                  681 	.db #0x00	; 0
   40D4 00                  682 	.db #0x00	; 0
   40D5                     683 _font_027:
   40D5 00                  684 	.db #0x00	; 0
   40D6 00                  685 	.db #0x00	; 0
   40D7 00                  686 	.db #0x00	; 0
   40D8 00                  687 	.db #0x00	; 0
   40D9 10                  688 	.db #0x10	; 16
   40DA 00                  689 	.db #0x00	; 0
   40DB 00                  690 	.db #0x00	; 0
   40DC 00                  691 	.db #0x00	; 0
   40DD 41                  692 	.db #0x41	; 65	'A'
   40DE 00                  693 	.db #0x00	; 0
   40DF A2                  694 	.db #0xa2	; 162
   40E0 00                  695 	.db #0x00	; 0
   40E1                     696 _font_028:
   40E1 00                  697 	.db #0x00	; 0
   40E2 00                  698 	.db #0x00	; 0
   40E3 00                  699 	.db #0x00	; 0
   40E4 20                  700 	.db #0x20	; 32
   40E5 10                  701 	.db #0x10	; 16
   40E6 00                  702 	.db #0x00	; 0
   40E7 82                  703 	.db #0x82	; 130
   40E8 00                  704 	.db #0x00	; 0
   40E9 41                  705 	.db #0x41	; 65	'A'
   40EA 00                  706 	.db #0x00	; 0
   40EB 00                  707 	.db #0x00	; 0
   40EC A2                  708 	.db #0xa2	; 162
   40ED                     709 _font_029:
   40ED 00                  710 	.db #0x00	; 0
   40EE 00                  711 	.db #0x00	; 0
   40EF 00                  712 	.db #0x00	; 0
   40F0 00                  713 	.db #0x00	; 0
   40F1 30                  714 	.db #0x30	; 48	'0'
   40F2 20                  715 	.db #0x20	; 32
   40F3 00                  716 	.db #0x00	; 0
   40F4 00                  717 	.db #0x00	; 0
   40F5 C3                  718 	.db #0xc3	; 195
   40F6 82                  719 	.db #0x82	; 130
   40F7 00                  720 	.db #0x00	; 0
   40F8 00                  721 	.db #0x00	; 0
   40F9                     722 _font_030:
   40F9 00                  723 	.db #0x00	; 0
   40FA 00                  724 	.db #0x00	; 0
   40FB 20                  725 	.db #0x20	; 32
   40FC 00                  726 	.db #0x00	; 0
   40FD 10                  727 	.db #0x10	; 16
   40FE 00                  728 	.db #0x00	; 0
   40FF 00                  729 	.db #0x00	; 0
   4100 82                  730 	.db #0x82	; 130
   4101 41                  731 	.db #0x41	; 65	'A'
   4102 00                  732 	.db #0x00	; 0
   4103 A2                  733 	.db #0xa2	; 162
   4104 00                  734 	.db #0x00	; 0
   4105                     735 _font_031:
   4105 00                  736 	.db #0x00	; 0
   4106 00                  737 	.db #0x00	; 0
   4107 10                  738 	.db #0x10	; 16
   4108 20                  739 	.db #0x20	; 32
   4109 00                  740 	.db #0x00	; 0
   410A 20                  741 	.db #0x20	; 32
   410B 41                  742 	.db #0x41	; 65	'A'
   410C 00                  743 	.db #0x00	; 0
   410D 00                  744 	.db #0x00	; 0
   410E 00                  745 	.db #0x00	; 0
   410F 51                  746 	.db #0x51	; 81	'Q'
   4110 00                  747 	.db #0x00	; 0
   4111                     748 _font_032:
   4111 00                  749 	.db #0x00	; 0
   4112 00                  750 	.db #0x00	; 0
   4113 10                  751 	.db #0x10	; 16
   4114 00                  752 	.db #0x00	; 0
   4115 20                  753 	.db #0x20	; 32
   4116 20                  754 	.db #0x20	; 32
   4117 C3                  755 	.db #0xc3	; 195
   4118 82                  756 	.db #0x82	; 130
   4119 82                  757 	.db #0x82	; 130
   411A 00                  758 	.db #0x00	; 0
   411B 51                  759 	.db #0x51	; 81	'Q'
   411C A2                  760 	.db #0xa2	; 162
   411D                     761 _font_033:
   411D 00                  762 	.db #0x00	; 0
   411E 00                  763 	.db #0x00	; 0
   411F 30                  764 	.db #0x30	; 48	'0'
   4120 20                  765 	.db #0x20	; 32
   4121 20                  766 	.db #0x20	; 32
   4122 20                  767 	.db #0x20	; 32
   4123 C3                  768 	.db #0xc3	; 195
   4124 82                  769 	.db #0x82	; 130
   4125 82                  770 	.db #0x82	; 130
   4126 82                  771 	.db #0x82	; 130
   4127 A2                  772 	.db #0xa2	; 162
   4128 A2                  773 	.db #0xa2	; 162
   4129                     774 _font_034:
   4129 00                  775 	.db #0x00	; 0
   412A 00                  776 	.db #0x00	; 0
   412B 30                  777 	.db #0x30	; 48	'0'
   412C 00                  778 	.db #0x00	; 0
   412D 20                  779 	.db #0x20	; 32
   412E 20                  780 	.db #0x20	; 32
   412F C3                  781 	.db #0xc3	; 195
   4130 00                  782 	.db #0x00	; 0
   4131 82                  783 	.db #0x82	; 130
   4132 82                  784 	.db #0x82	; 130
   4133 F3                  785 	.db #0xf3	; 243
   4134 00                  786 	.db #0x00	; 0
   4135                     787 _font_035:
   4135 00                  788 	.db #0x00	; 0
   4136 00                  789 	.db #0x00	; 0
   4137 30                  790 	.db #0x30	; 48	'0'
   4138 20                  791 	.db #0x20	; 32
   4139 20                  792 	.db #0x20	; 32
   413A 00                  793 	.db #0x00	; 0
   413B 82                  794 	.db #0x82	; 130
   413C 00                  795 	.db #0x00	; 0
   413D 82                  796 	.db #0x82	; 130
   413E 00                  797 	.db #0x00	; 0
   413F F3                  798 	.db #0xf3	; 243
   4140 A2                  799 	.db #0xa2	; 162
   4141                     800 _font_036:
   4141 00                  801 	.db #0x00	; 0
   4142 00                  802 	.db #0x00	; 0
   4143 30                  803 	.db #0x30	; 48	'0'
   4144 00                  804 	.db #0x00	; 0
   4145 20                  805 	.db #0x20	; 32
   4146 20                  806 	.db #0x20	; 32
   4147 82                  807 	.db #0x82	; 130
   4148 82                  808 	.db #0x82	; 130
   4149 82                  809 	.db #0x82	; 130
   414A 82                  810 	.db #0x82	; 130
   414B F3                  811 	.db #0xf3	; 243
   414C 00                  812 	.db #0x00	; 0
   414D                     813 _font_037:
   414D 00                  814 	.db #0x00	; 0
   414E 00                  815 	.db #0x00	; 0
   414F 30                  816 	.db #0x30	; 48	'0'
   4150 20                  817 	.db #0x20	; 32
   4151 20                  818 	.db #0x20	; 32
   4152 00                  819 	.db #0x00	; 0
   4153 C3                  820 	.db #0xc3	; 195
   4154 00                  821 	.db #0x00	; 0
   4155 82                  822 	.db #0x82	; 130
   4156 00                  823 	.db #0x00	; 0
   4157 F3                  824 	.db #0xf3	; 243
   4158 A2                  825 	.db #0xa2	; 162
   4159                     826 _font_038:
   4159 00                  827 	.db #0x00	; 0
   415A 00                  828 	.db #0x00	; 0
   415B 30                  829 	.db #0x30	; 48	'0'
   415C 20                  830 	.db #0x20	; 32
   415D 20                  831 	.db #0x20	; 32
   415E 00                  832 	.db #0x00	; 0
   415F C3                  833 	.db #0xc3	; 195
   4160 00                  834 	.db #0x00	; 0
   4161 82                  835 	.db #0x82	; 130
   4162 00                  836 	.db #0x00	; 0
   4163 A2                  837 	.db #0xa2	; 162
   4164 00                  838 	.db #0x00	; 0
   4165                     839 _font_039:
   4165 00                  840 	.db #0x00	; 0
   4166 00                  841 	.db #0x00	; 0
   4167 30                  842 	.db #0x30	; 48	'0'
   4168 20                  843 	.db #0x20	; 32
   4169 20                  844 	.db #0x20	; 32
   416A 00                  845 	.db #0x00	; 0
   416B 82                  846 	.db #0x82	; 130
   416C 00                  847 	.db #0x00	; 0
   416D 82                  848 	.db #0x82	; 130
   416E 82                  849 	.db #0x82	; 130
   416F F3                  850 	.db #0xf3	; 243
   4170 A2                  851 	.db #0xa2	; 162
   4171                     852 _font_040:
   4171 00                  853 	.db #0x00	; 0
   4172 00                  854 	.db #0x00	; 0
   4173 20                  855 	.db #0x20	; 32
   4174 20                  856 	.db #0x20	; 32
   4175 20                  857 	.db #0x20	; 32
   4176 20                  858 	.db #0x20	; 32
   4177 C3                  859 	.db #0xc3	; 195
   4178 82                  860 	.db #0x82	; 130
   4179 82                  861 	.db #0x82	; 130
   417A 82                  862 	.db #0x82	; 130
   417B A2                  863 	.db #0xa2	; 162
   417C A2                  864 	.db #0xa2	; 162
   417D                     865 _font_041:
   417D 00                  866 	.db #0x00	; 0
   417E 00                  867 	.db #0x00	; 0
   417F 30                  868 	.db #0x30	; 48	'0'
   4180 20                  869 	.db #0x20	; 32
   4181 10                  870 	.db #0x10	; 16
   4182 00                  871 	.db #0x00	; 0
   4183 41                  872 	.db #0x41	; 65	'A'
   4184 00                  873 	.db #0x00	; 0
   4185 41                  874 	.db #0x41	; 65	'A'
   4186 00                  875 	.db #0x00	; 0
   4187 F3                  876 	.db #0xf3	; 243
   4188 A2                  877 	.db #0xa2	; 162
   4189                     878 _font_042:
   4189 00                  879 	.db #0x00	; 0
   418A 00                  880 	.db #0x00	; 0
   418B 30                  881 	.db #0x30	; 48	'0'
   418C 20                  882 	.db #0x20	; 32
   418D 10                  883 	.db #0x10	; 16
   418E 00                  884 	.db #0x00	; 0
   418F 41                  885 	.db #0x41	; 65	'A'
   4190 00                  886 	.db #0x00	; 0
   4191 41                  887 	.db #0x41	; 65	'A'
   4192 00                  888 	.db #0x00	; 0
   4193 F3                  889 	.db #0xf3	; 243
   4194 00                  890 	.db #0x00	; 0
   4195                     891 _font_043:
   4195 00                  892 	.db #0x00	; 0
   4196 00                  893 	.db #0x00	; 0
   4197 20                  894 	.db #0x20	; 32
   4198 20                  895 	.db #0x20	; 32
   4199 20                  896 	.db #0x20	; 32
   419A 20                  897 	.db #0x20	; 32
   419B C3                  898 	.db #0xc3	; 195
   419C 00                  899 	.db #0x00	; 0
   419D 82                  900 	.db #0x82	; 130
   419E 82                  901 	.db #0x82	; 130
   419F A2                  902 	.db #0xa2	; 162
   41A0 A2                  903 	.db #0xa2	; 162
   41A1                     904 _font_044:
   41A1 00                  905 	.db #0x00	; 0
   41A2 00                  906 	.db #0x00	; 0
   41A3 20                  907 	.db #0x20	; 32
   41A4 00                  908 	.db #0x00	; 0
   41A5 20                  909 	.db #0x20	; 32
   41A6 00                  910 	.db #0x00	; 0
   41A7 82                  911 	.db #0x82	; 130
   41A8 00                  912 	.db #0x00	; 0
   41A9 82                  913 	.db #0x82	; 130
   41AA 00                  914 	.db #0x00	; 0
   41AB F3                  915 	.db #0xf3	; 243
   41AC A2                  916 	.db #0xa2	; 162
   41AD                     917 _font_045:
   41AD 00                  918 	.db #0x00	; 0
   41AE 00                  919 	.db #0x00	; 0
   41AF 20                  920 	.db #0x20	; 32
   41B0 20                  921 	.db #0x20	; 32
   41B1 30                  922 	.db #0x30	; 48	'0'
   41B2 20                  923 	.db #0x20	; 32
   41B3 82                  924 	.db #0x82	; 130
   41B4 82                  925 	.db #0x82	; 130
   41B5 82                  926 	.db #0x82	; 130
   41B6 82                  927 	.db #0x82	; 130
   41B7 A2                  928 	.db #0xa2	; 162
   41B8 A2                  929 	.db #0xa2	; 162
   41B9                     930 _font_046:
   41B9 00                  931 	.db #0x00	; 0
   41BA 00                  932 	.db #0x00	; 0
   41BB 30                  933 	.db #0x30	; 48	'0'
   41BC 20                  934 	.db #0x20	; 32
   41BD 20                  935 	.db #0x20	; 32
   41BE 20                  936 	.db #0x20	; 32
   41BF 82                  937 	.db #0x82	; 130
   41C0 82                  938 	.db #0x82	; 130
   41C1 82                  939 	.db #0x82	; 130
   41C2 82                  940 	.db #0x82	; 130
   41C3 A2                  941 	.db #0xa2	; 162
   41C4 A2                  942 	.db #0xa2	; 162
   41C5                     943 _font_047:
   41C5 00                  944 	.db #0x00	; 0
   41C6 00                  945 	.db #0x00	; 0
   41C7 30                  946 	.db #0x30	; 48	'0'
   41C8 20                  947 	.db #0x20	; 32
   41C9 20                  948 	.db #0x20	; 32
   41CA 20                  949 	.db #0x20	; 32
   41CB 82                  950 	.db #0x82	; 130
   41CC 82                  951 	.db #0x82	; 130
   41CD 82                  952 	.db #0x82	; 130
   41CE 82                  953 	.db #0x82	; 130
   41CF F3                  954 	.db #0xf3	; 243
   41D0 A2                  955 	.db #0xa2	; 162
   41D1                     956 _font_048:
   41D1 00                  957 	.db #0x00	; 0
   41D2 00                  958 	.db #0x00	; 0
   41D3 30                  959 	.db #0x30	; 48	'0'
   41D4 20                  960 	.db #0x20	; 32
   41D5 20                  961 	.db #0x20	; 32
   41D6 20                  962 	.db #0x20	; 32
   41D7 C3                  963 	.db #0xc3	; 195
   41D8 82                  964 	.db #0x82	; 130
   41D9 82                  965 	.db #0x82	; 130
   41DA 00                  966 	.db #0x00	; 0
   41DB A2                  967 	.db #0xa2	; 162
   41DC 00                  968 	.db #0x00	; 0
   41DD                     969 _font_049:
   41DD 00                  970 	.db #0x00	; 0
   41DE 00                  971 	.db #0x00	; 0
   41DF 30                  972 	.db #0x30	; 48	'0'
   41E0 20                  973 	.db #0x20	; 32
   41E1 20                  974 	.db #0x20	; 32
   41E2 20                  975 	.db #0x20	; 32
   41E3 82                  976 	.db #0x82	; 130
   41E4 82                  977 	.db #0x82	; 130
   41E5 82                  978 	.db #0x82	; 130
   41E6 82                  979 	.db #0x82	; 130
   41E7 F3                  980 	.db #0xf3	; 243
   41E8 00                  981 	.db #0x00	; 0
   41E9                     982 _font_050:
   41E9 00                  983 	.db #0x00	; 0
   41EA 00                  984 	.db #0x00	; 0
   41EB 30                  985 	.db #0x30	; 48	'0'
   41EC 20                  986 	.db #0x20	; 32
   41ED 20                  987 	.db #0x20	; 32
   41EE 20                  988 	.db #0x20	; 32
   41EF C3                  989 	.db #0xc3	; 195
   41F0 00                  990 	.db #0x00	; 0
   41F1 82                  991 	.db #0x82	; 130
   41F2 82                  992 	.db #0x82	; 130
   41F3 A2                  993 	.db #0xa2	; 162
   41F4 A2                  994 	.db #0xa2	; 162
   41F5                     995 _font_051:
   41F5 00                  996 	.db #0x00	; 0
   41F6 00                  997 	.db #0x00	; 0
   41F7 10                  998 	.db #0x10	; 16
   41F8 20                  999 	.db #0x20	; 32
   41F9 20                 1000 	.db #0x20	; 32
   41FA 00                 1001 	.db #0x00	; 0
   41FB 41                 1002 	.db #0x41	; 65	'A'
   41FC 00                 1003 	.db #0x00	; 0
   41FD 00                 1004 	.db #0x00	; 0
   41FE 82                 1005 	.db #0x82	; 130
   41FF F3                 1006 	.db #0xf3	; 243
   4200 00                 1007 	.db #0x00	; 0
   4201                    1008 _font_052:
   4201 00                 1009 	.db #0x00	; 0
   4202 00                 1010 	.db #0x00	; 0
   4203 30                 1011 	.db #0x30	; 48	'0'
   4204 20                 1012 	.db #0x20	; 32
   4205 10                 1013 	.db #0x10	; 16
   4206 00                 1014 	.db #0x00	; 0
   4207 41                 1015 	.db #0x41	; 65	'A'
   4208 00                 1016 	.db #0x00	; 0
   4209 41                 1017 	.db #0x41	; 65	'A'
   420A 00                 1018 	.db #0x00	; 0
   420B 51                 1019 	.db #0x51	; 81	'Q'
   420C 00                 1020 	.db #0x00	; 0
   420D                    1021 _font_053:
   420D 00                 1022 	.db #0x00	; 0
   420E 00                 1023 	.db #0x00	; 0
   420F 20                 1024 	.db #0x20	; 32
   4210 20                 1025 	.db #0x20	; 32
   4211 20                 1026 	.db #0x20	; 32
   4212 20                 1027 	.db #0x20	; 32
   4213 82                 1028 	.db #0x82	; 130
   4214 82                 1029 	.db #0x82	; 130
   4215 82                 1030 	.db #0x82	; 130
   4216 82                 1031 	.db #0x82	; 130
   4217 F3                 1032 	.db #0xf3	; 243
   4218 A2                 1033 	.db #0xa2	; 162
   4219                    1034 _font_054:
   4219 00                 1035 	.db #0x00	; 0
   421A 00                 1036 	.db #0x00	; 0
   421B 20                 1037 	.db #0x20	; 32
   421C 20                 1038 	.db #0x20	; 32
   421D 20                 1039 	.db #0x20	; 32
   421E 20                 1040 	.db #0x20	; 32
   421F 82                 1041 	.db #0x82	; 130
   4220 82                 1042 	.db #0x82	; 130
   4221 41                 1043 	.db #0x41	; 65	'A'
   4222 00                 1044 	.db #0x00	; 0
   4223 51                 1045 	.db #0x51	; 81	'Q'
   4224 00                 1046 	.db #0x00	; 0
   4225                    1047 _font_055:
   4225 00                 1048 	.db #0x00	; 0
   4226 00                 1049 	.db #0x00	; 0
   4227 20                 1050 	.db #0x20	; 32
   4228 20                 1051 	.db #0x20	; 32
   4229 20                 1052 	.db #0x20	; 32
   422A 20                 1053 	.db #0x20	; 32
   422B 82                 1054 	.db #0x82	; 130
   422C 82                 1055 	.db #0x82	; 130
   422D C3                 1056 	.db #0xc3	; 195
   422E 82                 1057 	.db #0x82	; 130
   422F A2                 1058 	.db #0xa2	; 162
   4230 A2                 1059 	.db #0xa2	; 162
   4231                    1060 _font_056:
   4231 00                 1061 	.db #0x00	; 0
   4232 00                 1062 	.db #0x00	; 0
   4233 20                 1063 	.db #0x20	; 32
   4234 20                 1064 	.db #0x20	; 32
   4235 20                 1065 	.db #0x20	; 32
   4236 20                 1066 	.db #0x20	; 32
   4237 41                 1067 	.db #0x41	; 65	'A'
   4238 00                 1068 	.db #0x00	; 0
   4239 82                 1069 	.db #0x82	; 130
   423A 82                 1070 	.db #0x82	; 130
   423B A2                 1071 	.db #0xa2	; 162
   423C A2                 1072 	.db #0xa2	; 162
   423D                    1073 _font_057:
   423D 00                 1074 	.db #0x00	; 0
   423E 00                 1075 	.db #0x00	; 0
   423F 20                 1076 	.db #0x20	; 32
   4240 20                 1077 	.db #0x20	; 32
   4241 20                 1078 	.db #0x20	; 32
   4242 20                 1079 	.db #0x20	; 32
   4243 C3                 1080 	.db #0xc3	; 195
   4244 82                 1081 	.db #0x82	; 130
   4245 41                 1082 	.db #0x41	; 65	'A'
   4246 00                 1083 	.db #0x00	; 0
   4247 51                 1084 	.db #0x51	; 81	'Q'
   4248 00                 1085 	.db #0x00	; 0
   4249                    1086 _font_058:
   4249 00                 1087 	.db #0x00	; 0
   424A 00                 1088 	.db #0x00	; 0
   424B 30                 1089 	.db #0x30	; 48	'0'
   424C 20                 1090 	.db #0x20	; 32
   424D 00                 1091 	.db #0x00	; 0
   424E 20                 1092 	.db #0x20	; 32
   424F 41                 1093 	.db #0x41	; 65	'A'
   4250 00                 1094 	.db #0x00	; 0
   4251 82                 1095 	.db #0x82	; 130
   4252 00                 1096 	.db #0x00	; 0
   4253 F3                 1097 	.db #0xf3	; 243
   4254 A2                 1098 	.db #0xa2	; 162
   4255                    1099 _font_059:
   4255 00                 1100 	.db #0x00	; 0
   4256 00                 1101 	.db #0x00	; 0
   4257 10                 1102 	.db #0x10	; 16
   4258 20                 1103 	.db #0x20	; 32
   4259 10                 1104 	.db #0x10	; 16
   425A 00                 1105 	.db #0x00	; 0
   425B 41                 1106 	.db #0x41	; 65	'A'
   425C 00                 1107 	.db #0x00	; 0
   425D 41                 1108 	.db #0x41	; 65	'A'
   425E 00                 1109 	.db #0x00	; 0
   425F 51                 1110 	.db #0x51	; 81	'Q'
   4260 A2                 1111 	.db #0xa2	; 162
   4261                    1112 _font_060:
   4261 00                 1113 	.db #0x00	; 0
   4262 00                 1114 	.db #0x00	; 0
   4263 20                 1115 	.db #0x20	; 32
   4264 00                 1116 	.db #0x00	; 0
   4265 20                 1117 	.db #0x20	; 32
   4266 00                 1118 	.db #0x00	; 0
   4267 41                 1119 	.db #0x41	; 65	'A'
   4268 00                 1120 	.db #0x00	; 0
   4269 00                 1121 	.db #0x00	; 0
   426A 82                 1122 	.db #0x82	; 130
   426B 00                 1123 	.db #0x00	; 0
   426C A2                 1124 	.db #0xa2	; 162
   426D                    1125 _font_061:
   426D 00                 1126 	.db #0x00	; 0
   426E 00                 1127 	.db #0x00	; 0
   426F 10                 1128 	.db #0x10	; 16
   4270 20                 1129 	.db #0x20	; 32
   4271 00                 1130 	.db #0x00	; 0
   4272 20                 1131 	.db #0x20	; 32
   4273 00                 1132 	.db #0x00	; 0
   4274 82                 1133 	.db #0x82	; 130
   4275 00                 1134 	.db #0x00	; 0
   4276 82                 1135 	.db #0x82	; 130
   4277 51                 1136 	.db #0x51	; 81	'Q'
   4278 A2                 1137 	.db #0xa2	; 162
   4279                    1138 _font_062:
   4279 00                 1139 	.db #0x00	; 0
   427A 00                 1140 	.db #0x00	; 0
   427B 10                 1141 	.db #0x10	; 16
   427C 00                 1142 	.db #0x00	; 0
   427D 20                 1143 	.db #0x20	; 32
   427E 20                 1144 	.db #0x20	; 32
   427F 00                 1145 	.db #0x00	; 0
   4280 00                 1146 	.db #0x00	; 0
   4281 00                 1147 	.db #0x00	; 0
   4282 00                 1148 	.db #0x00	; 0
   4283 00                 1149 	.db #0x00	; 0
   4284 00                 1150 	.db #0x00	; 0
   4285                    1151 _font_063:
   4285 00                 1152 	.db #0x00	; 0
   4286 00                 1153 	.db #0x00	; 0
   4287 00                 1154 	.db #0x00	; 0
   4288 00                 1155 	.db #0x00	; 0
   4289 00                 1156 	.db #0x00	; 0
   428A 00                 1157 	.db #0x00	; 0
   428B 00                 1158 	.db #0x00	; 0
   428C 00                 1159 	.db #0x00	; 0
   428D 00                 1160 	.db #0x00	; 0
   428E 00                 1161 	.db #0x00	; 0
   428F F3                 1162 	.db #0xf3	; 243
   4290 A2                 1163 	.db #0xa2	; 162
   4291                    1164 _font_064:
   4291 00                 1165 	.db #0x00	; 0
   4292 00                 1166 	.db #0x00	; 0
   4293 10                 1167 	.db #0x10	; 16
   4294 00                 1168 	.db #0x00	; 0
   4295 00                 1169 	.db #0x00	; 0
   4296 20                 1170 	.db #0x20	; 32
   4297 00                 1171 	.db #0x00	; 0
   4298 00                 1172 	.db #0x00	; 0
   4299 00                 1173 	.db #0x00	; 0
   429A 00                 1174 	.db #0x00	; 0
   429B 00                 1175 	.db #0x00	; 0
   429C 00                 1176 	.db #0x00	; 0
   429D                    1177 _font_065:
   429D 00                 1178 	.db #0x00	; 0
   429E 00                 1179 	.db #0x00	; 0
   429F 30                 1180 	.db #0x30	; 48	'0'
   42A0 20                 1181 	.db #0x20	; 32
   42A1 20                 1182 	.db #0x20	; 32
   42A2 20                 1183 	.db #0x20	; 32
   42A3 C3                 1184 	.db #0xc3	; 195
   42A4 82                 1185 	.db #0x82	; 130
   42A5 82                 1186 	.db #0x82	; 130
   42A6 82                 1187 	.db #0x82	; 130
   42A7 A2                 1188 	.db #0xa2	; 162
   42A8 A2                 1189 	.db #0xa2	; 162
   42A9                    1190 _font_066:
   42A9 00                 1191 	.db #0x00	; 0
   42AA 00                 1192 	.db #0x00	; 0
   42AB 30                 1193 	.db #0x30	; 48	'0'
   42AC 00                 1194 	.db #0x00	; 0
   42AD 20                 1195 	.db #0x20	; 32
   42AE 20                 1196 	.db #0x20	; 32
   42AF C3                 1197 	.db #0xc3	; 195
   42B0 00                 1198 	.db #0x00	; 0
   42B1 82                 1199 	.db #0x82	; 130
   42B2 82                 1200 	.db #0x82	; 130
   42B3 F3                 1201 	.db #0xf3	; 243
   42B4 00                 1202 	.db #0x00	; 0
   42B5                    1203 _font_067:
   42B5 00                 1204 	.db #0x00	; 0
   42B6 00                 1205 	.db #0x00	; 0
   42B7 30                 1206 	.db #0x30	; 48	'0'
   42B8 20                 1207 	.db #0x20	; 32
   42B9 20                 1208 	.db #0x20	; 32
   42BA 00                 1209 	.db #0x00	; 0
   42BB 82                 1210 	.db #0x82	; 130
   42BC 00                 1211 	.db #0x00	; 0
   42BD 82                 1212 	.db #0x82	; 130
   42BE 00                 1213 	.db #0x00	; 0
   42BF F3                 1214 	.db #0xf3	; 243
   42C0 A2                 1215 	.db #0xa2	; 162
   42C1                    1216 _font_068:
   42C1 00                 1217 	.db #0x00	; 0
   42C2 00                 1218 	.db #0x00	; 0
   42C3 30                 1219 	.db #0x30	; 48	'0'
   42C4 00                 1220 	.db #0x00	; 0
   42C5 20                 1221 	.db #0x20	; 32
   42C6 20                 1222 	.db #0x20	; 32
   42C7 82                 1223 	.db #0x82	; 130
   42C8 82                 1224 	.db #0x82	; 130
   42C9 82                 1225 	.db #0x82	; 130
   42CA 82                 1226 	.db #0x82	; 130
   42CB F3                 1227 	.db #0xf3	; 243
   42CC 00                 1228 	.db #0x00	; 0
   42CD                    1229 _font_069:
   42CD 00                 1230 	.db #0x00	; 0
   42CE 00                 1231 	.db #0x00	; 0
   42CF 30                 1232 	.db #0x30	; 48	'0'
   42D0 20                 1233 	.db #0x20	; 32
   42D1 20                 1234 	.db #0x20	; 32
   42D2 00                 1235 	.db #0x00	; 0
   42D3 C3                 1236 	.db #0xc3	; 195
   42D4 00                 1237 	.db #0x00	; 0
   42D5 82                 1238 	.db #0x82	; 130
   42D6 00                 1239 	.db #0x00	; 0
   42D7 F3                 1240 	.db #0xf3	; 243
   42D8 A2                 1241 	.db #0xa2	; 162
   42D9                    1242 _font_070:
   42D9 00                 1243 	.db #0x00	; 0
   42DA 00                 1244 	.db #0x00	; 0
   42DB 30                 1245 	.db #0x30	; 48	'0'
   42DC 20                 1246 	.db #0x20	; 32
   42DD 20                 1247 	.db #0x20	; 32
   42DE 00                 1248 	.db #0x00	; 0
   42DF C3                 1249 	.db #0xc3	; 195
   42E0 00                 1250 	.db #0x00	; 0
   42E1 82                 1251 	.db #0x82	; 130
   42E2 00                 1252 	.db #0x00	; 0
   42E3 A2                 1253 	.db #0xa2	; 162
   42E4 00                 1254 	.db #0x00	; 0
   42E5                    1255 _font_071:
   42E5 00                 1256 	.db #0x00	; 0
   42E6 00                 1257 	.db #0x00	; 0
   42E7 30                 1258 	.db #0x30	; 48	'0'
   42E8 20                 1259 	.db #0x20	; 32
   42E9 20                 1260 	.db #0x20	; 32
   42EA 00                 1261 	.db #0x00	; 0
   42EB 82                 1262 	.db #0x82	; 130
   42EC 00                 1263 	.db #0x00	; 0
   42ED 82                 1264 	.db #0x82	; 130
   42EE 82                 1265 	.db #0x82	; 130
   42EF F3                 1266 	.db #0xf3	; 243
   42F0 A2                 1267 	.db #0xa2	; 162
   42F1                    1268 _font_072:
   42F1 00                 1269 	.db #0x00	; 0
   42F2 00                 1270 	.db #0x00	; 0
   42F3 20                 1271 	.db #0x20	; 32
   42F4 20                 1272 	.db #0x20	; 32
   42F5 20                 1273 	.db #0x20	; 32
   42F6 20                 1274 	.db #0x20	; 32
   42F7 C3                 1275 	.db #0xc3	; 195
   42F8 82                 1276 	.db #0x82	; 130
   42F9 82                 1277 	.db #0x82	; 130
   42FA 82                 1278 	.db #0x82	; 130
   42FB A2                 1279 	.db #0xa2	; 162
   42FC A2                 1280 	.db #0xa2	; 162
   42FD                    1281 _font_073:
   42FD 00                 1282 	.db #0x00	; 0
   42FE 00                 1283 	.db #0x00	; 0
   42FF 30                 1284 	.db #0x30	; 48	'0'
   4300 20                 1285 	.db #0x20	; 32
   4301 10                 1286 	.db #0x10	; 16
   4302 00                 1287 	.db #0x00	; 0
   4303 41                 1288 	.db #0x41	; 65	'A'
   4304 00                 1289 	.db #0x00	; 0
   4305 41                 1290 	.db #0x41	; 65	'A'
   4306 00                 1291 	.db #0x00	; 0
   4307 F3                 1292 	.db #0xf3	; 243
   4308 A2                 1293 	.db #0xa2	; 162
   4309                    1294 _font_074:
   4309 00                 1295 	.db #0x00	; 0
   430A 00                 1296 	.db #0x00	; 0
   430B 30                 1297 	.db #0x30	; 48	'0'
   430C 20                 1298 	.db #0x20	; 32
   430D 10                 1299 	.db #0x10	; 16
   430E 00                 1300 	.db #0x00	; 0
   430F 41                 1301 	.db #0x41	; 65	'A'
   4310 00                 1302 	.db #0x00	; 0
   4311 41                 1303 	.db #0x41	; 65	'A'
   4312 00                 1304 	.db #0x00	; 0
   4313 F3                 1305 	.db #0xf3	; 243
   4314 00                 1306 	.db #0x00	; 0
   4315                    1307 _font_075:
   4315 00                 1308 	.db #0x00	; 0
   4316 00                 1309 	.db #0x00	; 0
   4317 20                 1310 	.db #0x20	; 32
   4318 20                 1311 	.db #0x20	; 32
   4319 20                 1312 	.db #0x20	; 32
   431A 20                 1313 	.db #0x20	; 32
   431B C3                 1314 	.db #0xc3	; 195
   431C 00                 1315 	.db #0x00	; 0
   431D 82                 1316 	.db #0x82	; 130
   431E 82                 1317 	.db #0x82	; 130
   431F A2                 1318 	.db #0xa2	; 162
   4320 A2                 1319 	.db #0xa2	; 162
   4321                    1320 _font_076:
   4321 00                 1321 	.db #0x00	; 0
   4322 00                 1322 	.db #0x00	; 0
   4323 20                 1323 	.db #0x20	; 32
   4324 00                 1324 	.db #0x00	; 0
   4325 20                 1325 	.db #0x20	; 32
   4326 00                 1326 	.db #0x00	; 0
   4327 82                 1327 	.db #0x82	; 130
   4328 00                 1328 	.db #0x00	; 0
   4329 82                 1329 	.db #0x82	; 130
   432A 00                 1330 	.db #0x00	; 0
   432B F3                 1331 	.db #0xf3	; 243
   432C A2                 1332 	.db #0xa2	; 162
   432D                    1333 _font_077:
   432D 00                 1334 	.db #0x00	; 0
   432E 00                 1335 	.db #0x00	; 0
   432F 20                 1336 	.db #0x20	; 32
   4330 20                 1337 	.db #0x20	; 32
   4331 30                 1338 	.db #0x30	; 48	'0'
   4332 20                 1339 	.db #0x20	; 32
   4333 82                 1340 	.db #0x82	; 130
   4334 82                 1341 	.db #0x82	; 130
   4335 82                 1342 	.db #0x82	; 130
   4336 82                 1343 	.db #0x82	; 130
   4337 A2                 1344 	.db #0xa2	; 162
   4338 A2                 1345 	.db #0xa2	; 162
   4339                    1346 _font_078:
   4339 00                 1347 	.db #0x00	; 0
   433A 00                 1348 	.db #0x00	; 0
   433B 30                 1349 	.db #0x30	; 48	'0'
   433C 20                 1350 	.db #0x20	; 32
   433D 20                 1351 	.db #0x20	; 32
   433E 20                 1352 	.db #0x20	; 32
   433F 82                 1353 	.db #0x82	; 130
   4340 82                 1354 	.db #0x82	; 130
   4341 82                 1355 	.db #0x82	; 130
   4342 82                 1356 	.db #0x82	; 130
   4343 A2                 1357 	.db #0xa2	; 162
   4344 A2                 1358 	.db #0xa2	; 162
   4345                    1359 _font_079:
   4345 00                 1360 	.db #0x00	; 0
   4346 00                 1361 	.db #0x00	; 0
   4347 30                 1362 	.db #0x30	; 48	'0'
   4348 20                 1363 	.db #0x20	; 32
   4349 20                 1364 	.db #0x20	; 32
   434A 20                 1365 	.db #0x20	; 32
   434B 82                 1366 	.db #0x82	; 130
   434C 82                 1367 	.db #0x82	; 130
   434D 82                 1368 	.db #0x82	; 130
   434E 82                 1369 	.db #0x82	; 130
   434F F3                 1370 	.db #0xf3	; 243
   4350 A2                 1371 	.db #0xa2	; 162
   4351                    1372 _font_080:
   4351 00                 1373 	.db #0x00	; 0
   4352 00                 1374 	.db #0x00	; 0
   4353 30                 1375 	.db #0x30	; 48	'0'
   4354 20                 1376 	.db #0x20	; 32
   4355 20                 1377 	.db #0x20	; 32
   4356 20                 1378 	.db #0x20	; 32
   4357 C3                 1379 	.db #0xc3	; 195
   4358 82                 1380 	.db #0x82	; 130
   4359 82                 1381 	.db #0x82	; 130
   435A 00                 1382 	.db #0x00	; 0
   435B A2                 1383 	.db #0xa2	; 162
   435C 00                 1384 	.db #0x00	; 0
   435D                    1385 _font_081:
   435D 00                 1386 	.db #0x00	; 0
   435E 00                 1387 	.db #0x00	; 0
   435F 30                 1388 	.db #0x30	; 48	'0'
   4360 20                 1389 	.db #0x20	; 32
   4361 20                 1390 	.db #0x20	; 32
   4362 20                 1391 	.db #0x20	; 32
   4363 82                 1392 	.db #0x82	; 130
   4364 82                 1393 	.db #0x82	; 130
   4365 82                 1394 	.db #0x82	; 130
   4366 82                 1395 	.db #0x82	; 130
   4367 F3                 1396 	.db #0xf3	; 243
   4368 00                 1397 	.db #0x00	; 0
   4369                    1398 _font_082:
   4369 00                 1399 	.db #0x00	; 0
   436A 00                 1400 	.db #0x00	; 0
   436B 30                 1401 	.db #0x30	; 48	'0'
   436C 20                 1402 	.db #0x20	; 32
   436D 20                 1403 	.db #0x20	; 32
   436E 20                 1404 	.db #0x20	; 32
   436F C3                 1405 	.db #0xc3	; 195
   4370 00                 1406 	.db #0x00	; 0
   4371 82                 1407 	.db #0x82	; 130
   4372 82                 1408 	.db #0x82	; 130
   4373 A2                 1409 	.db #0xa2	; 162
   4374 A2                 1410 	.db #0xa2	; 162
   4375                    1411 _font_083:
   4375 00                 1412 	.db #0x00	; 0
   4376 00                 1413 	.db #0x00	; 0
   4377 10                 1414 	.db #0x10	; 16
   4378 20                 1415 	.db #0x20	; 32
   4379 20                 1416 	.db #0x20	; 32
   437A 00                 1417 	.db #0x00	; 0
   437B 41                 1418 	.db #0x41	; 65	'A'
   437C 00                 1419 	.db #0x00	; 0
   437D 00                 1420 	.db #0x00	; 0
   437E 82                 1421 	.db #0x82	; 130
   437F F3                 1422 	.db #0xf3	; 243
   4380 00                 1423 	.db #0x00	; 0
   4381                    1424 _font_084:
   4381 00                 1425 	.db #0x00	; 0
   4382 00                 1426 	.db #0x00	; 0
   4383 30                 1427 	.db #0x30	; 48	'0'
   4384 20                 1428 	.db #0x20	; 32
   4385 10                 1429 	.db #0x10	; 16
   4386 00                 1430 	.db #0x00	; 0
   4387 41                 1431 	.db #0x41	; 65	'A'
   4388 00                 1432 	.db #0x00	; 0
   4389 41                 1433 	.db #0x41	; 65	'A'
   438A 00                 1434 	.db #0x00	; 0
   438B 51                 1435 	.db #0x51	; 81	'Q'
   438C 00                 1436 	.db #0x00	; 0
   438D                    1437 _font_085:
   438D 00                 1438 	.db #0x00	; 0
   438E 00                 1439 	.db #0x00	; 0
   438F 20                 1440 	.db #0x20	; 32
   4390 20                 1441 	.db #0x20	; 32
   4391 20                 1442 	.db #0x20	; 32
   4392 20                 1443 	.db #0x20	; 32
   4393 82                 1444 	.db #0x82	; 130
   4394 82                 1445 	.db #0x82	; 130
   4395 82                 1446 	.db #0x82	; 130
   4396 82                 1447 	.db #0x82	; 130
   4397 F3                 1448 	.db #0xf3	; 243
   4398 A2                 1449 	.db #0xa2	; 162
   4399                    1450 _font_086:
   4399 00                 1451 	.db #0x00	; 0
   439A 00                 1452 	.db #0x00	; 0
   439B 20                 1453 	.db #0x20	; 32
   439C 20                 1454 	.db #0x20	; 32
   439D 20                 1455 	.db #0x20	; 32
   439E 20                 1456 	.db #0x20	; 32
   439F 82                 1457 	.db #0x82	; 130
   43A0 82                 1458 	.db #0x82	; 130
   43A1 41                 1459 	.db #0x41	; 65	'A'
   43A2 00                 1460 	.db #0x00	; 0
   43A3 51                 1461 	.db #0x51	; 81	'Q'
   43A4 00                 1462 	.db #0x00	; 0
   43A5                    1463 _font_087:
   43A5 00                 1464 	.db #0x00	; 0
   43A6 00                 1465 	.db #0x00	; 0
   43A7 20                 1466 	.db #0x20	; 32
   43A8 20                 1467 	.db #0x20	; 32
   43A9 20                 1468 	.db #0x20	; 32
   43AA 20                 1469 	.db #0x20	; 32
   43AB 82                 1470 	.db #0x82	; 130
   43AC 82                 1471 	.db #0x82	; 130
   43AD C3                 1472 	.db #0xc3	; 195
   43AE 82                 1473 	.db #0x82	; 130
   43AF A2                 1474 	.db #0xa2	; 162
   43B0 A2                 1475 	.db #0xa2	; 162
   43B1                    1476 _font_088:
   43B1 00                 1477 	.db #0x00	; 0
   43B2 00                 1478 	.db #0x00	; 0
   43B3 20                 1479 	.db #0x20	; 32
   43B4 20                 1480 	.db #0x20	; 32
   43B5 20                 1481 	.db #0x20	; 32
   43B6 20                 1482 	.db #0x20	; 32
   43B7 41                 1483 	.db #0x41	; 65	'A'
   43B8 00                 1484 	.db #0x00	; 0
   43B9 82                 1485 	.db #0x82	; 130
   43BA 82                 1486 	.db #0x82	; 130
   43BB A2                 1487 	.db #0xa2	; 162
   43BC A2                 1488 	.db #0xa2	; 162
   43BD                    1489 _font_089:
   43BD 00                 1490 	.db #0x00	; 0
   43BE 00                 1491 	.db #0x00	; 0
   43BF 20                 1492 	.db #0x20	; 32
   43C0 20                 1493 	.db #0x20	; 32
   43C1 20                 1494 	.db #0x20	; 32
   43C2 20                 1495 	.db #0x20	; 32
   43C3 C3                 1496 	.db #0xc3	; 195
   43C4 82                 1497 	.db #0x82	; 130
   43C5 41                 1498 	.db #0x41	; 65	'A'
   43C6 00                 1499 	.db #0x00	; 0
   43C7 51                 1500 	.db #0x51	; 81	'Q'
   43C8 00                 1501 	.db #0x00	; 0
   43C9                    1502 _font_090:
   43C9 00                 1503 	.db #0x00	; 0
   43CA 00                 1504 	.db #0x00	; 0
   43CB 30                 1505 	.db #0x30	; 48	'0'
   43CC 20                 1506 	.db #0x20	; 32
   43CD 00                 1507 	.db #0x00	; 0
   43CE 20                 1508 	.db #0x20	; 32
   43CF 41                 1509 	.db #0x41	; 65	'A'
   43D0 00                 1510 	.db #0x00	; 0
   43D1 82                 1511 	.db #0x82	; 130
   43D2 00                 1512 	.db #0x00	; 0
   43D3 F3                 1513 	.db #0xf3	; 243
   43D4 A2                 1514 	.db #0xa2	; 162
   43D5                    1515 _font_091:
   43D5 00                 1516 	.db #0x00	; 0
   43D6 00                 1517 	.db #0x00	; 0
   43D7 00                 1518 	.db #0x00	; 0
   43D8 20                 1519 	.db #0x20	; 32
   43D9 10                 1520 	.db #0x10	; 16
   43DA 00                 1521 	.db #0x00	; 0
   43DB 41                 1522 	.db #0x41	; 65	'A'
   43DC 00                 1523 	.db #0x00	; 0
   43DD 41                 1524 	.db #0x41	; 65	'A'
   43DE 00                 1525 	.db #0x00	; 0
   43DF 00                 1526 	.db #0x00	; 0
   43E0 A2                 1527 	.db #0xa2	; 162
   43E1                    1528 _font_092:
   43E1 00                 1529 	.db #0x00	; 0
   43E2 00                 1530 	.db #0x00	; 0
   43E3 10                 1531 	.db #0x10	; 16
   43E4 00                 1532 	.db #0x00	; 0
   43E5 10                 1533 	.db #0x10	; 16
   43E6 00                 1534 	.db #0x00	; 0
   43E7 41                 1535 	.db #0x41	; 65	'A'
   43E8 00                 1536 	.db #0x00	; 0
   43E9 41                 1537 	.db #0x41	; 65	'A'
   43EA 00                 1538 	.db #0x00	; 0
   43EB 51                 1539 	.db #0x51	; 81	'Q'
   43EC 00                 1540 	.db #0x00	; 0
   43ED                    1541 _font_093:
   43ED 00                 1542 	.db #0x00	; 0
   43EE 00                 1543 	.db #0x00	; 0
   43EF 10                 1544 	.db #0x10	; 16
   43F0 00                 1545 	.db #0x00	; 0
   43F1 00                 1546 	.db #0x00	; 0
   43F2 20                 1547 	.db #0x20	; 32
   43F3 00                 1548 	.db #0x00	; 0
   43F4 82                 1549 	.db #0x82	; 130
   43F5 00                 1550 	.db #0x00	; 0
   43F6 82                 1551 	.db #0x82	; 130
   43F7 51                 1552 	.db #0x51	; 81	'Q'
   43F8 00                 1553 	.db #0x00	; 0
   43F9                    1554 _font_094:
   43F9 00                 1555 	.db #0x00	; 0
   43FA 00                 1556 	.db #0x00	; 0
   43FB 10                 1557 	.db #0x10	; 16
   43FC 20                 1558 	.db #0x20	; 32
   43FD 20                 1559 	.db #0x20	; 32
   43FE 20                 1560 	.db #0x20	; 32
   43FF 00                 1561 	.db #0x00	; 0
   4400 00                 1562 	.db #0x00	; 0
   4401 00                 1563 	.db #0x00	; 0
   4402 00                 1564 	.db #0x00	; 0
   4403 00                 1565 	.db #0x00	; 0
   4404 00                 1566 	.db #0x00	; 0
   4405                    1567 _font_095:
   4405 AA                 1568 	.db #0xaa	; 170
   4406 00                 1569 	.db #0x00	; 0
   4407 00                 1570 	.db #0x00	; 0
   4408 00                 1571 	.db #0x00	; 0
   4409 00                 1572 	.db #0x00	; 0
   440A 00                 1573 	.db #0x00	; 0
   440B 00                 1574 	.db #0x00	; 0
   440C 00                 1575 	.db #0x00	; 0
   440D 00                 1576 	.db #0x00	; 0
   440E 00                 1577 	.db #0x00	; 0
   440F 00                 1578 	.db #0x00	; 0
   4410 00                 1579 	.db #0x00	; 0
   4411                    1580 _font_096:
   4411 00                 1581 	.db #0x00	; 0
   4412 00                 1582 	.db #0x00	; 0
   4413 00                 1583 	.db #0x00	; 0
   4414 00                 1584 	.db #0x00	; 0
   4415 00                 1585 	.db #0x00	; 0
   4416 00                 1586 	.db #0x00	; 0
   4417 00                 1587 	.db #0x00	; 0
   4418 00                 1588 	.db #0x00	; 0
   4419 00                 1589 	.db #0x00	; 0
   441A 00                 1590 	.db #0x00	; 0
   441B 00                 1591 	.db #0x00	; 0
   441C 00                 1592 	.db #0x00	; 0
   441D                    1593 _font_097:
   441D 00                 1594 	.db #0x00	; 0
   441E 00                 1595 	.db #0x00	; 0
   441F 40                 1596 	.db #0x40	; 64
   4420 00                 1597 	.db #0x00	; 0
   4421 40                 1598 	.db #0x40	; 64
   4422 00                 1599 	.db #0x00	; 0
   4423 01                 1600 	.db #0x01	; 1
   4424 00                 1601 	.db #0x00	; 0
   4425 00                 1602 	.db #0x00	; 0
   4426 00                 1603 	.db #0x00	; 0
   4427 11                 1604 	.db #0x11	; 17
   4428 00                 1605 	.db #0x00	; 0
   4429                    1606 _font_098:
   4429 00                 1607 	.db #0x00	; 0
   442A 00                 1608 	.db #0x00	; 0
   442B 80                 1609 	.db #0x80	; 128
   442C 80                 1610 	.db #0x80	; 128
   442D 00                 1611 	.db #0x00	; 0
   442E 00                 1612 	.db #0x00	; 0
   442F 00                 1613 	.db #0x00	; 0
   4430 00                 1614 	.db #0x00	; 0
   4431 00                 1615 	.db #0x00	; 0
   4432 00                 1616 	.db #0x00	; 0
   4433 00                 1617 	.db #0x00	; 0
   4434 00                 1618 	.db #0x00	; 0
   4435                    1619 _font_099:
   4435 00                 1620 	.db #0x00	; 0
   4436 00                 1621 	.db #0x00	; 0
   4437 80                 1622 	.db #0x80	; 128
   4438 80                 1623 	.db #0x80	; 128
   4439 C0                 1624 	.db #0xc0	; 192
   443A 80                 1625 	.db #0x80	; 128
   443B 02                 1626 	.db #0x02	; 2
   443C 02                 1627 	.db #0x02	; 2
   443D 03                 1628 	.db #0x03	; 3
   443E 02                 1629 	.db #0x02	; 2
   443F 22                 1630 	.db #0x22	; 34
   4440 22                 1631 	.db #0x22	; 34
   4441                    1632 _font_100:
   4441 00                 1633 	.db #0x00	; 0
   4442 00                 1634 	.db #0x00	; 0
   4443 40                 1635 	.db #0x40	; 64
   4444 80                 1636 	.db #0x80	; 128
   4445 C0                 1637 	.db #0xc0	; 192
   4446 00                 1638 	.db #0x00	; 0
   4447 01                 1639 	.db #0x01	; 1
   4448 02                 1640 	.db #0x02	; 2
   4449 03                 1641 	.db #0x03	; 3
   444A 00                 1642 	.db #0x00	; 0
   444B 11                 1643 	.db #0x11	; 17
   444C 00                 1644 	.db #0x00	; 0
   444D                    1645 _font_101:
   444D 00                 1646 	.db #0x00	; 0
   444E 00                 1647 	.db #0x00	; 0
   444F 80                 1648 	.db #0x80	; 128
   4450 80                 1649 	.db #0x80	; 128
   4451 00                 1650 	.db #0x00	; 0
   4452 80                 1651 	.db #0x80	; 128
   4453 01                 1652 	.db #0x01	; 1
   4454 00                 1653 	.db #0x00	; 0
   4455 02                 1654 	.db #0x02	; 2
   4456 00                 1655 	.db #0x00	; 0
   4457 22                 1656 	.db #0x22	; 34
   4458 22                 1657 	.db #0x22	; 34
   4459                    1658 _font_102:
   4459 00                 1659 	.db #0x00	; 0
   445A 00                 1660 	.db #0x00	; 0
   445B 00                 1661 	.db #0x00	; 0
   445C 80                 1662 	.db #0x80	; 128
   445D 40                 1663 	.db #0x40	; 64
   445E 40                 1664 	.db #0x40	; 64
   445F 00                 1665 	.db #0x00	; 0
   4460 02                 1666 	.db #0x02	; 2
   4461 01                 1667 	.db #0x01	; 1
   4462 01                 1668 	.db #0x01	; 1
   4463 00                 1669 	.db #0x00	; 0
   4464 33                 1670 	.db #0x33	; 51	'3'
   4465                    1671 _font_103:
   4465 00                 1672 	.db #0x00	; 0
   4466 00                 1673 	.db #0x00	; 0
   4467 00                 1674 	.db #0x00	; 0
   4468 80                 1675 	.db #0x80	; 128
   4469 40                 1676 	.db #0x40	; 64
   446A 00                 1677 	.db #0x00	; 0
   446B 00                 1678 	.db #0x00	; 0
   446C 00                 1679 	.db #0x00	; 0
   446D 00                 1680 	.db #0x00	; 0
   446E 00                 1681 	.db #0x00	; 0
   446F 00                 1682 	.db #0x00	; 0
   4470 00                 1683 	.db #0x00	; 0
   4471                    1684 _font_104:
   4471 00                 1685 	.db #0x00	; 0
   4472 00                 1686 	.db #0x00	; 0
   4473 00                 1687 	.db #0x00	; 0
   4474 80                 1688 	.db #0x80	; 128
   4475 40                 1689 	.db #0x40	; 64
   4476 00                 1690 	.db #0x00	; 0
   4477 01                 1691 	.db #0x01	; 1
   4478 00                 1692 	.db #0x00	; 0
   4479 01                 1693 	.db #0x01	; 1
   447A 00                 1694 	.db #0x00	; 0
   447B 00                 1695 	.db #0x00	; 0
   447C 22                 1696 	.db #0x22	; 34
   447D                    1697 _font_105:
   447D 00                 1698 	.db #0x00	; 0
   447E 00                 1699 	.db #0x00	; 0
   447F 40                 1700 	.db #0x40	; 64
   4480 00                 1701 	.db #0x00	; 0
   4481 00                 1702 	.db #0x00	; 0
   4482 80                 1703 	.db #0x80	; 128
   4483 00                 1704 	.db #0x00	; 0
   4484 02                 1705 	.db #0x02	; 2
   4485 00                 1706 	.db #0x00	; 0
   4486 02                 1707 	.db #0x02	; 2
   4487 11                 1708 	.db #0x11	; 17
   4488 00                 1709 	.db #0x00	; 0
   4489                    1710 _font_106:
   4489 00                 1711 	.db #0x00	; 0
   448A 00                 1712 	.db #0x00	; 0
   448B 80                 1713 	.db #0x80	; 128
   448C 80                 1714 	.db #0x80	; 128
   448D 40                 1715 	.db #0x40	; 64
   448E 00                 1716 	.db #0x00	; 0
   448F 03                 1717 	.db #0x03	; 3
   4490 02                 1718 	.db #0x02	; 2
   4491 01                 1719 	.db #0x01	; 1
   4492 00                 1720 	.db #0x00	; 0
   4493 22                 1721 	.db #0x22	; 34
   4494 22                 1722 	.db #0x22	; 34
   4495                    1723 _font_107:
   4495 00                 1724 	.db #0x00	; 0
   4496 00                 1725 	.db #0x00	; 0
   4497 00                 1726 	.db #0x00	; 0
   4498 00                 1727 	.db #0x00	; 0
   4499 40                 1728 	.db #0x40	; 64
   449A 00                 1729 	.db #0x00	; 0
   449B 03                 1730 	.db #0x03	; 3
   449C 02                 1731 	.db #0x02	; 2
   449D 01                 1732 	.db #0x01	; 1
   449E 00                 1733 	.db #0x00	; 0
   449F 00                 1734 	.db #0x00	; 0
   44A0 00                 1735 	.db #0x00	; 0
   44A1                    1736 _font_108:
   44A1 00                 1737 	.db #0x00	; 0
   44A2 00                 1738 	.db #0x00	; 0
   44A3 00                 1739 	.db #0x00	; 0
   44A4 00                 1740 	.db #0x00	; 0
   44A5 00                 1741 	.db #0x00	; 0
   44A6 00                 1742 	.db #0x00	; 0
   44A7 00                 1743 	.db #0x00	; 0
   44A8 00                 1744 	.db #0x00	; 0
   44A9 01                 1745 	.db #0x01	; 1
   44AA 00                 1746 	.db #0x00	; 0
   44AB 22                 1747 	.db #0x22	; 34
   44AC 00                 1748 	.db #0x00	; 0
   44AD                    1749 _font_109:
   44AD 00                 1750 	.db #0x00	; 0
   44AE 00                 1751 	.db #0x00	; 0
   44AF 00                 1752 	.db #0x00	; 0
   44B0 00                 1753 	.db #0x00	; 0
   44B1 00                 1754 	.db #0x00	; 0
   44B2 00                 1755 	.db #0x00	; 0
   44B3 03                 1756 	.db #0x03	; 3
   44B4 02                 1757 	.db #0x02	; 2
   44B5 00                 1758 	.db #0x00	; 0
   44B6 00                 1759 	.db #0x00	; 0
   44B7 00                 1760 	.db #0x00	; 0
   44B8 00                 1761 	.db #0x00	; 0
   44B9                    1762 _font_110:
   44B9 00                 1763 	.db #0x00	; 0
   44BA 00                 1764 	.db #0x00	; 0
   44BB 00                 1765 	.db #0x00	; 0
   44BC 00                 1766 	.db #0x00	; 0
   44BD 00                 1767 	.db #0x00	; 0
   44BE 00                 1768 	.db #0x00	; 0
   44BF 00                 1769 	.db #0x00	; 0
   44C0 00                 1770 	.db #0x00	; 0
   44C1 00                 1771 	.db #0x00	; 0
   44C2 00                 1772 	.db #0x00	; 0
   44C3 11                 1773 	.db #0x11	; 17
   44C4 00                 1774 	.db #0x00	; 0
   44C5                    1775 _font_111:
   44C5 00                 1776 	.db #0x00	; 0
   44C6 00                 1777 	.db #0x00	; 0
   44C7 00                 1778 	.db #0x00	; 0
   44C8 80                 1779 	.db #0x80	; 128
   44C9 00                 1780 	.db #0x00	; 0
   44CA 80                 1781 	.db #0x80	; 128
   44CB 01                 1782 	.db #0x01	; 1
   44CC 00                 1783 	.db #0x00	; 0
   44CD 02                 1784 	.db #0x02	; 2
   44CE 00                 1785 	.db #0x00	; 0
   44CF 22                 1786 	.db #0x22	; 34
   44D0 00                 1787 	.db #0x00	; 0
   44D1                    1788 _font_112:
   44D1 00                 1789 	.db #0x00	; 0
   44D2 00                 1790 	.db #0x00	; 0
   44D3 C0                 1791 	.db #0xc0	; 192
   44D4 80                 1792 	.db #0x80	; 128
   44D5 80                 1793 	.db #0x80	; 128
   44D6 80                 1794 	.db #0x80	; 128
   44D7 02                 1795 	.db #0x02	; 2
   44D8 02                 1796 	.db #0x02	; 2
   44D9 02                 1797 	.db #0x02	; 2
   44DA 02                 1798 	.db #0x02	; 2
   44DB 33                 1799 	.db #0x33	; 51	'3'
   44DC 22                 1800 	.db #0x22	; 34
   44DD                    1801 _font_113:
   44DD 00                 1802 	.db #0x00	; 0
   44DE 00                 1803 	.db #0x00	; 0
   44DF 40                 1804 	.db #0x40	; 64
   44E0 00                 1805 	.db #0x00	; 0
   44E1 40                 1806 	.db #0x40	; 64
   44E2 00                 1807 	.db #0x00	; 0
   44E3 01                 1808 	.db #0x01	; 1
   44E4 00                 1809 	.db #0x00	; 0
   44E5 01                 1810 	.db #0x01	; 1
   44E6 00                 1811 	.db #0x00	; 0
   44E7 11                 1812 	.db #0x11	; 17
   44E8 00                 1813 	.db #0x00	; 0
   44E9                    1814 _font_114:
   44E9 00                 1815 	.db #0x00	; 0
   44EA 00                 1816 	.db #0x00	; 0
   44EB C0                 1817 	.db #0xc0	; 192
   44EC 80                 1818 	.db #0x80	; 128
   44ED 00                 1819 	.db #0x00	; 0
   44EE 80                 1820 	.db #0x80	; 128
   44EF 03                 1821 	.db #0x03	; 3
   44F0 02                 1822 	.db #0x02	; 2
   44F1 02                 1823 	.db #0x02	; 2
   44F2 00                 1824 	.db #0x00	; 0
   44F3 33                 1825 	.db #0x33	; 51	'3'
   44F4 22                 1826 	.db #0x22	; 34
   44F5                    1827 _font_115:
   44F5 00                 1828 	.db #0x00	; 0
   44F6 00                 1829 	.db #0x00	; 0
   44F7 C0                 1830 	.db #0xc0	; 192
   44F8 80                 1831 	.db #0x80	; 128
   44F9 00                 1832 	.db #0x00	; 0
   44FA 80                 1833 	.db #0x80	; 128
   44FB 01                 1834 	.db #0x01	; 1
   44FC 02                 1835 	.db #0x02	; 2
   44FD 00                 1836 	.db #0x00	; 0
   44FE 02                 1837 	.db #0x02	; 2
   44FF 33                 1838 	.db #0x33	; 51	'3'
   4500 22                 1839 	.db #0x22	; 34
   4501                    1840 _font_116:
   4501 00                 1841 	.db #0x00	; 0
   4502 00                 1842 	.db #0x00	; 0
   4503 80                 1843 	.db #0x80	; 128
   4504 80                 1844 	.db #0x80	; 128
   4505 80                 1845 	.db #0x80	; 128
   4506 80                 1846 	.db #0x80	; 128
   4507 03                 1847 	.db #0x03	; 3
   4508 02                 1848 	.db #0x02	; 2
   4509 00                 1849 	.db #0x00	; 0
   450A 02                 1850 	.db #0x02	; 2
   450B 00                 1851 	.db #0x00	; 0
   450C 22                 1852 	.db #0x22	; 34
   450D                    1853 _font_117:
   450D 00                 1854 	.db #0x00	; 0
   450E 00                 1855 	.db #0x00	; 0
   450F C0                 1856 	.db #0xc0	; 192
   4510 80                 1857 	.db #0x80	; 128
   4511 80                 1858 	.db #0x80	; 128
   4512 00                 1859 	.db #0x00	; 0
   4513 03                 1860 	.db #0x03	; 3
   4514 02                 1861 	.db #0x02	; 2
   4515 00                 1862 	.db #0x00	; 0
   4516 02                 1863 	.db #0x02	; 2
   4517 33                 1864 	.db #0x33	; 51	'3'
   4518 22                 1865 	.db #0x22	; 34
   4519                    1866 _font_118:
   4519 00                 1867 	.db #0x00	; 0
   451A 00                 1868 	.db #0x00	; 0
   451B C0                 1869 	.db #0xc0	; 192
   451C 80                 1870 	.db #0x80	; 128
   451D 80                 1871 	.db #0x80	; 128
   451E 00                 1872 	.db #0x00	; 0
   451F 03                 1873 	.db #0x03	; 3
   4520 02                 1874 	.db #0x02	; 2
   4521 02                 1875 	.db #0x02	; 2
   4522 02                 1876 	.db #0x02	; 2
   4523 33                 1877 	.db #0x33	; 51	'3'
   4524 22                 1878 	.db #0x22	; 34
   4525                    1879 _font_119:
   4525 00                 1880 	.db #0x00	; 0
   4526 00                 1881 	.db #0x00	; 0
   4527 C0                 1882 	.db #0xc0	; 192
   4528 80                 1883 	.db #0x80	; 128
   4529 00                 1884 	.db #0x00	; 0
   452A 80                 1885 	.db #0x80	; 128
   452B 00                 1886 	.db #0x00	; 0
   452C 02                 1887 	.db #0x02	; 2
   452D 00                 1888 	.db #0x00	; 0
   452E 02                 1889 	.db #0x02	; 2
   452F 00                 1890 	.db #0x00	; 0
   4530 22                 1891 	.db #0x22	; 34
   4531                    1892 _font_120:
   4531 00                 1893 	.db #0x00	; 0
   4532 00                 1894 	.db #0x00	; 0
   4533 C0                 1895 	.db #0xc0	; 192
   4534 80                 1896 	.db #0x80	; 128
   4535 80                 1897 	.db #0x80	; 128
   4536 80                 1898 	.db #0x80	; 128
   4537 03                 1899 	.db #0x03	; 3
   4538 02                 1900 	.db #0x02	; 2
   4539 02                 1901 	.db #0x02	; 2
   453A 02                 1902 	.db #0x02	; 2
   453B 33                 1903 	.db #0x33	; 51	'3'
   453C 22                 1904 	.db #0x22	; 34
   453D                    1905 _font_121:
   453D 00                 1906 	.db #0x00	; 0
   453E 00                 1907 	.db #0x00	; 0
   453F C0                 1908 	.db #0xc0	; 192
   4540 80                 1909 	.db #0x80	; 128
   4541 80                 1910 	.db #0x80	; 128
   4542 80                 1911 	.db #0x80	; 128
   4543 03                 1912 	.db #0x03	; 3
   4544 02                 1913 	.db #0x02	; 2
   4545 00                 1914 	.db #0x00	; 0
   4546 02                 1915 	.db #0x02	; 2
   4547 33                 1916 	.db #0x33	; 51	'3'
   4548 22                 1917 	.db #0x22	; 34
   4549                    1918 _font_122:
   4549 00                 1919 	.db #0x00	; 0
   454A 00                 1920 	.db #0x00	; 0
   454B 00                 1921 	.db #0x00	; 0
   454C 00                 1922 	.db #0x00	; 0
   454D 40                 1923 	.db #0x40	; 64
   454E 00                 1924 	.db #0x00	; 0
   454F 00                 1925 	.db #0x00	; 0
   4550 00                 1926 	.db #0x00	; 0
   4551 01                 1927 	.db #0x01	; 1
   4552 00                 1928 	.db #0x00	; 0
   4553 00                 1929 	.db #0x00	; 0
   4554 00                 1930 	.db #0x00	; 0
   4555                    1931 _font_123:
   4555 00                 1932 	.db #0x00	; 0
   4556 00                 1933 	.db #0x00	; 0
   4557 00                 1934 	.db #0x00	; 0
   4558 00                 1935 	.db #0x00	; 0
   4559 40                 1936 	.db #0x40	; 64
   455A 00                 1937 	.db #0x00	; 0
   455B 00                 1938 	.db #0x00	; 0
   455C 00                 1939 	.db #0x00	; 0
   455D 01                 1940 	.db #0x01	; 1
   455E 00                 1941 	.db #0x00	; 0
   455F 22                 1942 	.db #0x22	; 34
   4560 00                 1943 	.db #0x00	; 0
   4561                    1944 _font_124:
   4561 00                 1945 	.db #0x00	; 0
   4562 00                 1946 	.db #0x00	; 0
   4563 00                 1947 	.db #0x00	; 0
   4564 80                 1948 	.db #0x80	; 128
   4565 40                 1949 	.db #0x40	; 64
   4566 00                 1950 	.db #0x00	; 0
   4567 02                 1951 	.db #0x02	; 2
   4568 00                 1952 	.db #0x00	; 0
   4569 01                 1953 	.db #0x01	; 1
   456A 00                 1954 	.db #0x00	; 0
   456B 00                 1955 	.db #0x00	; 0
   456C 22                 1956 	.db #0x22	; 34
   456D                    1957 _font_125:
   456D 00                 1958 	.db #0x00	; 0
   456E 00                 1959 	.db #0x00	; 0
   456F 00                 1960 	.db #0x00	; 0
   4570 00                 1961 	.db #0x00	; 0
   4571 C0                 1962 	.db #0xc0	; 192
   4572 80                 1963 	.db #0x80	; 128
   4573 00                 1964 	.db #0x00	; 0
   4574 00                 1965 	.db #0x00	; 0
   4575 03                 1966 	.db #0x03	; 3
   4576 02                 1967 	.db #0x02	; 2
   4577 00                 1968 	.db #0x00	; 0
   4578 00                 1969 	.db #0x00	; 0
   4579                    1970 _font_126:
   4579 00                 1971 	.db #0x00	; 0
   457A 00                 1972 	.db #0x00	; 0
   457B 80                 1973 	.db #0x80	; 128
   457C 00                 1974 	.db #0x00	; 0
   457D 40                 1975 	.db #0x40	; 64
   457E 00                 1976 	.db #0x00	; 0
   457F 00                 1977 	.db #0x00	; 0
   4580 02                 1978 	.db #0x02	; 2
   4581 01                 1979 	.db #0x01	; 1
   4582 00                 1980 	.db #0x00	; 0
   4583 22                 1981 	.db #0x22	; 34
   4584 00                 1982 	.db #0x00	; 0
   4585                    1983 _font_127:
   4585 00                 1984 	.db #0x00	; 0
   4586 00                 1985 	.db #0x00	; 0
   4587 40                 1986 	.db #0x40	; 64
   4588 80                 1987 	.db #0x80	; 128
   4589 00                 1988 	.db #0x00	; 0
   458A 80                 1989 	.db #0x80	; 128
   458B 01                 1990 	.db #0x01	; 1
   458C 00                 1991 	.db #0x00	; 0
   458D 00                 1992 	.db #0x00	; 0
   458E 00                 1993 	.db #0x00	; 0
   458F 11                 1994 	.db #0x11	; 17
   4590 00                 1995 	.db #0x00	; 0
   4591                    1996 _font_128:
   4591 00                 1997 	.db #0x00	; 0
   4592 00                 1998 	.db #0x00	; 0
   4593 40                 1999 	.db #0x40	; 64
   4594 00                 2000 	.db #0x00	; 0
   4595 80                 2001 	.db #0x80	; 128
   4596 80                 2002 	.db #0x80	; 128
   4597 03                 2003 	.db #0x03	; 3
   4598 02                 2004 	.db #0x02	; 2
   4599 02                 2005 	.db #0x02	; 2
   459A 00                 2006 	.db #0x00	; 0
   459B 11                 2007 	.db #0x11	; 17
   459C 22                 2008 	.db #0x22	; 34
   459D                    2009 _font_129:
   459D 00                 2010 	.db #0x00	; 0
   459E 00                 2011 	.db #0x00	; 0
   459F C0                 2012 	.db #0xc0	; 192
   45A0 80                 2013 	.db #0x80	; 128
   45A1 80                 2014 	.db #0x80	; 128
   45A2 80                 2015 	.db #0x80	; 128
   45A3 03                 2016 	.db #0x03	; 3
   45A4 02                 2017 	.db #0x02	; 2
   45A5 02                 2018 	.db #0x02	; 2
   45A6 02                 2019 	.db #0x02	; 2
   45A7 22                 2020 	.db #0x22	; 34
   45A8 22                 2021 	.db #0x22	; 34
   45A9                    2022 _font_130:
   45A9 00                 2023 	.db #0x00	; 0
   45AA 00                 2024 	.db #0x00	; 0
   45AB C0                 2025 	.db #0xc0	; 192
   45AC 00                 2026 	.db #0x00	; 0
   45AD 80                 2027 	.db #0x80	; 128
   45AE 80                 2028 	.db #0x80	; 128
   45AF 03                 2029 	.db #0x03	; 3
   45B0 00                 2030 	.db #0x00	; 0
   45B1 02                 2031 	.db #0x02	; 2
   45B2 02                 2032 	.db #0x02	; 2
   45B3 33                 2033 	.db #0x33	; 51	'3'
   45B4 00                 2034 	.db #0x00	; 0
   45B5                    2035 _font_131:
   45B5 00                 2036 	.db #0x00	; 0
   45B6 00                 2037 	.db #0x00	; 0
   45B7 C0                 2038 	.db #0xc0	; 192
   45B8 80                 2039 	.db #0x80	; 128
   45B9 80                 2040 	.db #0x80	; 128
   45BA 00                 2041 	.db #0x00	; 0
   45BB 02                 2042 	.db #0x02	; 2
   45BC 00                 2043 	.db #0x00	; 0
   45BD 02                 2044 	.db #0x02	; 2
   45BE 00                 2045 	.db #0x00	; 0
   45BF 33                 2046 	.db #0x33	; 51	'3'
   45C0 22                 2047 	.db #0x22	; 34
   45C1                    2048 _font_132:
   45C1 00                 2049 	.db #0x00	; 0
   45C2 00                 2050 	.db #0x00	; 0
   45C3 C0                 2051 	.db #0xc0	; 192
   45C4 00                 2052 	.db #0x00	; 0
   45C5 80                 2053 	.db #0x80	; 128
   45C6 80                 2054 	.db #0x80	; 128
   45C7 02                 2055 	.db #0x02	; 2
   45C8 02                 2056 	.db #0x02	; 2
   45C9 02                 2057 	.db #0x02	; 2
   45CA 02                 2058 	.db #0x02	; 2
   45CB 33                 2059 	.db #0x33	; 51	'3'
   45CC 00                 2060 	.db #0x00	; 0
   45CD                    2061 _font_133:
   45CD 00                 2062 	.db #0x00	; 0
   45CE 00                 2063 	.db #0x00	; 0
   45CF C0                 2064 	.db #0xc0	; 192
   45D0 80                 2065 	.db #0x80	; 128
   45D1 80                 2066 	.db #0x80	; 128
   45D2 00                 2067 	.db #0x00	; 0
   45D3 03                 2068 	.db #0x03	; 3
   45D4 00                 2069 	.db #0x00	; 0
   45D5 02                 2070 	.db #0x02	; 2
   45D6 00                 2071 	.db #0x00	; 0
   45D7 33                 2072 	.db #0x33	; 51	'3'
   45D8 22                 2073 	.db #0x22	; 34
   45D9                    2074 _font_134:
   45D9 00                 2075 	.db #0x00	; 0
   45DA 00                 2076 	.db #0x00	; 0
   45DB C0                 2077 	.db #0xc0	; 192
   45DC 80                 2078 	.db #0x80	; 128
   45DD 80                 2079 	.db #0x80	; 128
   45DE 00                 2080 	.db #0x00	; 0
   45DF 03                 2081 	.db #0x03	; 3
   45E0 00                 2082 	.db #0x00	; 0
   45E1 02                 2083 	.db #0x02	; 2
   45E2 00                 2084 	.db #0x00	; 0
   45E3 22                 2085 	.db #0x22	; 34
   45E4 00                 2086 	.db #0x00	; 0
   45E5                    2087 _font_135:
   45E5 00                 2088 	.db #0x00	; 0
   45E6 00                 2089 	.db #0x00	; 0
   45E7 C0                 2090 	.db #0xc0	; 192
   45E8 80                 2091 	.db #0x80	; 128
   45E9 80                 2092 	.db #0x80	; 128
   45EA 00                 2093 	.db #0x00	; 0
   45EB 02                 2094 	.db #0x02	; 2
   45EC 00                 2095 	.db #0x00	; 0
   45ED 02                 2096 	.db #0x02	; 2
   45EE 02                 2097 	.db #0x02	; 2
   45EF 33                 2098 	.db #0x33	; 51	'3'
   45F0 22                 2099 	.db #0x22	; 34
   45F1                    2100 _font_136:
   45F1 00                 2101 	.db #0x00	; 0
   45F2 00                 2102 	.db #0x00	; 0
   45F3 80                 2103 	.db #0x80	; 128
   45F4 80                 2104 	.db #0x80	; 128
   45F5 80                 2105 	.db #0x80	; 128
   45F6 80                 2106 	.db #0x80	; 128
   45F7 03                 2107 	.db #0x03	; 3
   45F8 02                 2108 	.db #0x02	; 2
   45F9 02                 2109 	.db #0x02	; 2
   45FA 02                 2110 	.db #0x02	; 2
   45FB 22                 2111 	.db #0x22	; 34
   45FC 22                 2112 	.db #0x22	; 34
   45FD                    2113 _font_137:
   45FD 00                 2114 	.db #0x00	; 0
   45FE 00                 2115 	.db #0x00	; 0
   45FF C0                 2116 	.db #0xc0	; 192
   4600 80                 2117 	.db #0x80	; 128
   4601 40                 2118 	.db #0x40	; 64
   4602 00                 2119 	.db #0x00	; 0
   4603 01                 2120 	.db #0x01	; 1
   4604 00                 2121 	.db #0x00	; 0
   4605 01                 2122 	.db #0x01	; 1
   4606 00                 2123 	.db #0x00	; 0
   4607 33                 2124 	.db #0x33	; 51	'3'
   4608 22                 2125 	.db #0x22	; 34
   4609                    2126 _font_138:
   4609 00                 2127 	.db #0x00	; 0
   460A 00                 2128 	.db #0x00	; 0
   460B C0                 2129 	.db #0xc0	; 192
   460C 80                 2130 	.db #0x80	; 128
   460D 40                 2131 	.db #0x40	; 64
   460E 00                 2132 	.db #0x00	; 0
   460F 01                 2133 	.db #0x01	; 1
   4610 00                 2134 	.db #0x00	; 0
   4611 01                 2135 	.db #0x01	; 1
   4612 00                 2136 	.db #0x00	; 0
   4613 33                 2137 	.db #0x33	; 51	'3'
   4614 00                 2138 	.db #0x00	; 0
   4615                    2139 _font_139:
   4615 00                 2140 	.db #0x00	; 0
   4616 00                 2141 	.db #0x00	; 0
   4617 80                 2142 	.db #0x80	; 128
   4618 80                 2143 	.db #0x80	; 128
   4619 80                 2144 	.db #0x80	; 128
   461A 80                 2145 	.db #0x80	; 128
   461B 03                 2146 	.db #0x03	; 3
   461C 00                 2147 	.db #0x00	; 0
   461D 02                 2148 	.db #0x02	; 2
   461E 02                 2149 	.db #0x02	; 2
   461F 22                 2150 	.db #0x22	; 34
   4620 22                 2151 	.db #0x22	; 34
   4621                    2152 _font_140:
   4621 00                 2153 	.db #0x00	; 0
   4622 00                 2154 	.db #0x00	; 0
   4623 80                 2155 	.db #0x80	; 128
   4624 00                 2156 	.db #0x00	; 0
   4625 80                 2157 	.db #0x80	; 128
   4626 00                 2158 	.db #0x00	; 0
   4627 02                 2159 	.db #0x02	; 2
   4628 00                 2160 	.db #0x00	; 0
   4629 02                 2161 	.db #0x02	; 2
   462A 00                 2162 	.db #0x00	; 0
   462B 33                 2163 	.db #0x33	; 51	'3'
   462C 22                 2164 	.db #0x22	; 34
   462D                    2165 _font_141:
   462D 00                 2166 	.db #0x00	; 0
   462E 00                 2167 	.db #0x00	; 0
   462F 80                 2168 	.db #0x80	; 128
   4630 80                 2169 	.db #0x80	; 128
   4631 C0                 2170 	.db #0xc0	; 192
   4632 80                 2171 	.db #0x80	; 128
   4633 02                 2172 	.db #0x02	; 2
   4634 02                 2173 	.db #0x02	; 2
   4635 02                 2174 	.db #0x02	; 2
   4636 02                 2175 	.db #0x02	; 2
   4637 22                 2176 	.db #0x22	; 34
   4638 22                 2177 	.db #0x22	; 34
   4639                    2178 _font_142:
   4639 00                 2179 	.db #0x00	; 0
   463A 00                 2180 	.db #0x00	; 0
   463B C0                 2181 	.db #0xc0	; 192
   463C 80                 2182 	.db #0x80	; 128
   463D 80                 2183 	.db #0x80	; 128
   463E 80                 2184 	.db #0x80	; 128
   463F 02                 2185 	.db #0x02	; 2
   4640 02                 2186 	.db #0x02	; 2
   4641 02                 2187 	.db #0x02	; 2
   4642 02                 2188 	.db #0x02	; 2
   4643 22                 2189 	.db #0x22	; 34
   4644 22                 2190 	.db #0x22	; 34
   4645                    2191 _font_143:
   4645 00                 2192 	.db #0x00	; 0
   4646 00                 2193 	.db #0x00	; 0
   4647 C0                 2194 	.db #0xc0	; 192
   4648 80                 2195 	.db #0x80	; 128
   4649 80                 2196 	.db #0x80	; 128
   464A 80                 2197 	.db #0x80	; 128
   464B 02                 2198 	.db #0x02	; 2
   464C 02                 2199 	.db #0x02	; 2
   464D 02                 2200 	.db #0x02	; 2
   464E 02                 2201 	.db #0x02	; 2
   464F 33                 2202 	.db #0x33	; 51	'3'
   4650 22                 2203 	.db #0x22	; 34
   4651                    2204 _font_144:
   4651 00                 2205 	.db #0x00	; 0
   4652 00                 2206 	.db #0x00	; 0
   4653 C0                 2207 	.db #0xc0	; 192
   4654 80                 2208 	.db #0x80	; 128
   4655 80                 2209 	.db #0x80	; 128
   4656 80                 2210 	.db #0x80	; 128
   4657 03                 2211 	.db #0x03	; 3
   4658 02                 2212 	.db #0x02	; 2
   4659 02                 2213 	.db #0x02	; 2
   465A 00                 2214 	.db #0x00	; 0
   465B 22                 2215 	.db #0x22	; 34
   465C 00                 2216 	.db #0x00	; 0
   465D                    2217 _font_145:
   465D 00                 2218 	.db #0x00	; 0
   465E 00                 2219 	.db #0x00	; 0
   465F C0                 2220 	.db #0xc0	; 192
   4660 80                 2221 	.db #0x80	; 128
   4661 80                 2222 	.db #0x80	; 128
   4662 80                 2223 	.db #0x80	; 128
   4663 02                 2224 	.db #0x02	; 2
   4664 02                 2225 	.db #0x02	; 2
   4665 02                 2226 	.db #0x02	; 2
   4666 02                 2227 	.db #0x02	; 2
   4667 33                 2228 	.db #0x33	; 51	'3'
   4668 00                 2229 	.db #0x00	; 0
   4669                    2230 _font_146:
   4669 00                 2231 	.db #0x00	; 0
   466A 00                 2232 	.db #0x00	; 0
   466B C0                 2233 	.db #0xc0	; 192
   466C 80                 2234 	.db #0x80	; 128
   466D 80                 2235 	.db #0x80	; 128
   466E 80                 2236 	.db #0x80	; 128
   466F 03                 2237 	.db #0x03	; 3
   4670 00                 2238 	.db #0x00	; 0
   4671 02                 2239 	.db #0x02	; 2
   4672 02                 2240 	.db #0x02	; 2
   4673 22                 2241 	.db #0x22	; 34
   4674 22                 2242 	.db #0x22	; 34
   4675                    2243 _font_147:
   4675 00                 2244 	.db #0x00	; 0
   4676 00                 2245 	.db #0x00	; 0
   4677 40                 2246 	.db #0x40	; 64
   4678 80                 2247 	.db #0x80	; 128
   4679 80                 2248 	.db #0x80	; 128
   467A 00                 2249 	.db #0x00	; 0
   467B 01                 2250 	.db #0x01	; 1
   467C 00                 2251 	.db #0x00	; 0
   467D 00                 2252 	.db #0x00	; 0
   467E 02                 2253 	.db #0x02	; 2
   467F 33                 2254 	.db #0x33	; 51	'3'
   4680 00                 2255 	.db #0x00	; 0
   4681                    2256 _font_148:
   4681 00                 2257 	.db #0x00	; 0
   4682 00                 2258 	.db #0x00	; 0
   4683 C0                 2259 	.db #0xc0	; 192
   4684 80                 2260 	.db #0x80	; 128
   4685 40                 2261 	.db #0x40	; 64
   4686 00                 2262 	.db #0x00	; 0
   4687 01                 2263 	.db #0x01	; 1
   4688 00                 2264 	.db #0x00	; 0
   4689 01                 2265 	.db #0x01	; 1
   468A 00                 2266 	.db #0x00	; 0
   468B 11                 2267 	.db #0x11	; 17
   468C 00                 2268 	.db #0x00	; 0
   468D                    2269 _font_149:
   468D 00                 2270 	.db #0x00	; 0
   468E 00                 2271 	.db #0x00	; 0
   468F 80                 2272 	.db #0x80	; 128
   4690 80                 2273 	.db #0x80	; 128
   4691 80                 2274 	.db #0x80	; 128
   4692 80                 2275 	.db #0x80	; 128
   4693 02                 2276 	.db #0x02	; 2
   4694 02                 2277 	.db #0x02	; 2
   4695 02                 2278 	.db #0x02	; 2
   4696 02                 2279 	.db #0x02	; 2
   4697 33                 2280 	.db #0x33	; 51	'3'
   4698 22                 2281 	.db #0x22	; 34
   4699                    2282 _font_150:
   4699 00                 2283 	.db #0x00	; 0
   469A 00                 2284 	.db #0x00	; 0
   469B 80                 2285 	.db #0x80	; 128
   469C 80                 2286 	.db #0x80	; 128
   469D 80                 2287 	.db #0x80	; 128
   469E 80                 2288 	.db #0x80	; 128
   469F 02                 2289 	.db #0x02	; 2
   46A0 02                 2290 	.db #0x02	; 2
   46A1 01                 2291 	.db #0x01	; 1
   46A2 00                 2292 	.db #0x00	; 0
   46A3 11                 2293 	.db #0x11	; 17
   46A4 00                 2294 	.db #0x00	; 0
   46A5                    2295 _font_151:
   46A5 00                 2296 	.db #0x00	; 0
   46A6 00                 2297 	.db #0x00	; 0
   46A7 80                 2298 	.db #0x80	; 128
   46A8 80                 2299 	.db #0x80	; 128
   46A9 80                 2300 	.db #0x80	; 128
   46AA 80                 2301 	.db #0x80	; 128
   46AB 02                 2302 	.db #0x02	; 2
   46AC 02                 2303 	.db #0x02	; 2
   46AD 03                 2304 	.db #0x03	; 3
   46AE 02                 2305 	.db #0x02	; 2
   46AF 22                 2306 	.db #0x22	; 34
   46B0 22                 2307 	.db #0x22	; 34
   46B1                    2308 _font_152:
   46B1 00                 2309 	.db #0x00	; 0
   46B2 00                 2310 	.db #0x00	; 0
   46B3 80                 2311 	.db #0x80	; 128
   46B4 80                 2312 	.db #0x80	; 128
   46B5 80                 2313 	.db #0x80	; 128
   46B6 80                 2314 	.db #0x80	; 128
   46B7 01                 2315 	.db #0x01	; 1
   46B8 00                 2316 	.db #0x00	; 0
   46B9 02                 2317 	.db #0x02	; 2
   46BA 02                 2318 	.db #0x02	; 2
   46BB 22                 2319 	.db #0x22	; 34
   46BC 22                 2320 	.db #0x22	; 34
   46BD                    2321 _font_153:
   46BD 00                 2322 	.db #0x00	; 0
   46BE 00                 2323 	.db #0x00	; 0
   46BF 80                 2324 	.db #0x80	; 128
   46C0 80                 2325 	.db #0x80	; 128
   46C1 80                 2326 	.db #0x80	; 128
   46C2 80                 2327 	.db #0x80	; 128
   46C3 03                 2328 	.db #0x03	; 3
   46C4 02                 2329 	.db #0x02	; 2
   46C5 01                 2330 	.db #0x01	; 1
   46C6 00                 2331 	.db #0x00	; 0
   46C7 11                 2332 	.db #0x11	; 17
   46C8 00                 2333 	.db #0x00	; 0
   46C9                    2334 _font_154:
   46C9 00                 2335 	.db #0x00	; 0
   46CA 00                 2336 	.db #0x00	; 0
   46CB C0                 2337 	.db #0xc0	; 192
   46CC 80                 2338 	.db #0x80	; 128
   46CD 00                 2339 	.db #0x00	; 0
   46CE 80                 2340 	.db #0x80	; 128
   46CF 01                 2341 	.db #0x01	; 1
   46D0 00                 2342 	.db #0x00	; 0
   46D1 02                 2343 	.db #0x02	; 2
   46D2 00                 2344 	.db #0x00	; 0
   46D3 33                 2345 	.db #0x33	; 51	'3'
   46D4 22                 2346 	.db #0x22	; 34
   46D5                    2347 _font_155:
   46D5 00                 2348 	.db #0x00	; 0
   46D6 00                 2349 	.db #0x00	; 0
   46D7 40                 2350 	.db #0x40	; 64
   46D8 80                 2351 	.db #0x80	; 128
   46D9 40                 2352 	.db #0x40	; 64
   46DA 00                 2353 	.db #0x00	; 0
   46DB 01                 2354 	.db #0x01	; 1
   46DC 00                 2355 	.db #0x00	; 0
   46DD 01                 2356 	.db #0x01	; 1
   46DE 00                 2357 	.db #0x00	; 0
   46DF 11                 2358 	.db #0x11	; 17
   46E0 22                 2359 	.db #0x22	; 34
   46E1                    2360 _font_156:
   46E1 00                 2361 	.db #0x00	; 0
   46E2 00                 2362 	.db #0x00	; 0
   46E3 80                 2363 	.db #0x80	; 128
   46E4 00                 2364 	.db #0x00	; 0
   46E5 80                 2365 	.db #0x80	; 128
   46E6 00                 2366 	.db #0x00	; 0
   46E7 01                 2367 	.db #0x01	; 1
   46E8 00                 2368 	.db #0x00	; 0
   46E9 00                 2369 	.db #0x00	; 0
   46EA 02                 2370 	.db #0x02	; 2
   46EB 00                 2371 	.db #0x00	; 0
   46EC 22                 2372 	.db #0x22	; 34
   46ED                    2373 _font_157:
   46ED 00                 2374 	.db #0x00	; 0
   46EE 00                 2375 	.db #0x00	; 0
   46EF 40                 2376 	.db #0x40	; 64
   46F0 80                 2377 	.db #0x80	; 128
   46F1 00                 2378 	.db #0x00	; 0
   46F2 80                 2379 	.db #0x80	; 128
   46F3 00                 2380 	.db #0x00	; 0
   46F4 02                 2381 	.db #0x02	; 2
   46F5 00                 2382 	.db #0x00	; 0
   46F6 02                 2383 	.db #0x02	; 2
   46F7 11                 2384 	.db #0x11	; 17
   46F8 22                 2385 	.db #0x22	; 34
   46F9                    2386 _font_158:
   46F9 00                 2387 	.db #0x00	; 0
   46FA 00                 2388 	.db #0x00	; 0
   46FB 40                 2389 	.db #0x40	; 64
   46FC 00                 2390 	.db #0x00	; 0
   46FD 80                 2391 	.db #0x80	; 128
   46FE 80                 2392 	.db #0x80	; 128
   46FF 00                 2393 	.db #0x00	; 0
   4700 00                 2394 	.db #0x00	; 0
   4701 00                 2395 	.db #0x00	; 0
   4702 00                 2396 	.db #0x00	; 0
   4703 00                 2397 	.db #0x00	; 0
   4704 00                 2398 	.db #0x00	; 0
   4705                    2399 _font_159:
   4705 00                 2400 	.db #0x00	; 0
   4706 00                 2401 	.db #0x00	; 0
   4707 00                 2402 	.db #0x00	; 0
   4708 00                 2403 	.db #0x00	; 0
   4709 00                 2404 	.db #0x00	; 0
   470A 00                 2405 	.db #0x00	; 0
   470B 00                 2406 	.db #0x00	; 0
   470C 00                 2407 	.db #0x00	; 0
   470D 00                 2408 	.db #0x00	; 0
   470E 00                 2409 	.db #0x00	; 0
   470F 33                 2410 	.db #0x33	; 51	'3'
   4710 22                 2411 	.db #0x22	; 34
   4711                    2412 _font_160:
   4711 00                 2413 	.db #0x00	; 0
   4712 00                 2414 	.db #0x00	; 0
   4713 40                 2415 	.db #0x40	; 64
   4714 00                 2416 	.db #0x00	; 0
   4715 00                 2417 	.db #0x00	; 0
   4716 80                 2418 	.db #0x80	; 128
   4717 00                 2419 	.db #0x00	; 0
   4718 00                 2420 	.db #0x00	; 0
   4719 00                 2421 	.db #0x00	; 0
   471A 00                 2422 	.db #0x00	; 0
   471B 00                 2423 	.db #0x00	; 0
   471C 00                 2424 	.db #0x00	; 0
   471D                    2425 _font_161:
   471D 00                 2426 	.db #0x00	; 0
   471E 00                 2427 	.db #0x00	; 0
   471F C0                 2428 	.db #0xc0	; 192
   4720 80                 2429 	.db #0x80	; 128
   4721 80                 2430 	.db #0x80	; 128
   4722 80                 2431 	.db #0x80	; 128
   4723 03                 2432 	.db #0x03	; 3
   4724 02                 2433 	.db #0x02	; 2
   4725 02                 2434 	.db #0x02	; 2
   4726 02                 2435 	.db #0x02	; 2
   4727 22                 2436 	.db #0x22	; 34
   4728 22                 2437 	.db #0x22	; 34
   4729                    2438 _font_162:
   4729 00                 2439 	.db #0x00	; 0
   472A 00                 2440 	.db #0x00	; 0
   472B C0                 2441 	.db #0xc0	; 192
   472C 00                 2442 	.db #0x00	; 0
   472D 80                 2443 	.db #0x80	; 128
   472E 80                 2444 	.db #0x80	; 128
   472F 03                 2445 	.db #0x03	; 3
   4730 00                 2446 	.db #0x00	; 0
   4731 02                 2447 	.db #0x02	; 2
   4732 02                 2448 	.db #0x02	; 2
   4733 33                 2449 	.db #0x33	; 51	'3'
   4734 00                 2450 	.db #0x00	; 0
   4735                    2451 _font_163:
   4735 00                 2452 	.db #0x00	; 0
   4736 00                 2453 	.db #0x00	; 0
   4737 C0                 2454 	.db #0xc0	; 192
   4738 80                 2455 	.db #0x80	; 128
   4739 80                 2456 	.db #0x80	; 128
   473A 00                 2457 	.db #0x00	; 0
   473B 02                 2458 	.db #0x02	; 2
   473C 00                 2459 	.db #0x00	; 0
   473D 02                 2460 	.db #0x02	; 2
   473E 00                 2461 	.db #0x00	; 0
   473F 33                 2462 	.db #0x33	; 51	'3'
   4740 22                 2463 	.db #0x22	; 34
   4741                    2464 _font_164:
   4741 00                 2465 	.db #0x00	; 0
   4742 00                 2466 	.db #0x00	; 0
   4743 C0                 2467 	.db #0xc0	; 192
   4744 00                 2468 	.db #0x00	; 0
   4745 80                 2469 	.db #0x80	; 128
   4746 80                 2470 	.db #0x80	; 128
   4747 02                 2471 	.db #0x02	; 2
   4748 02                 2472 	.db #0x02	; 2
   4749 02                 2473 	.db #0x02	; 2
   474A 02                 2474 	.db #0x02	; 2
   474B 33                 2475 	.db #0x33	; 51	'3'
   474C 00                 2476 	.db #0x00	; 0
   474D                    2477 _font_165:
   474D 00                 2478 	.db #0x00	; 0
   474E 00                 2479 	.db #0x00	; 0
   474F C0                 2480 	.db #0xc0	; 192
   4750 80                 2481 	.db #0x80	; 128
   4751 80                 2482 	.db #0x80	; 128
   4752 00                 2483 	.db #0x00	; 0
   4753 03                 2484 	.db #0x03	; 3
   4754 00                 2485 	.db #0x00	; 0
   4755 02                 2486 	.db #0x02	; 2
   4756 00                 2487 	.db #0x00	; 0
   4757 33                 2488 	.db #0x33	; 51	'3'
   4758 22                 2489 	.db #0x22	; 34
   4759                    2490 _font_166:
   4759 00                 2491 	.db #0x00	; 0
   475A 00                 2492 	.db #0x00	; 0
   475B C0                 2493 	.db #0xc0	; 192
   475C 80                 2494 	.db #0x80	; 128
   475D 80                 2495 	.db #0x80	; 128
   475E 00                 2496 	.db #0x00	; 0
   475F 03                 2497 	.db #0x03	; 3
   4760 00                 2498 	.db #0x00	; 0
   4761 02                 2499 	.db #0x02	; 2
   4762 00                 2500 	.db #0x00	; 0
   4763 22                 2501 	.db #0x22	; 34
   4764 00                 2502 	.db #0x00	; 0
   4765                    2503 _font_167:
   4765 00                 2504 	.db #0x00	; 0
   4766 00                 2505 	.db #0x00	; 0
   4767 C0                 2506 	.db #0xc0	; 192
   4768 80                 2507 	.db #0x80	; 128
   4769 80                 2508 	.db #0x80	; 128
   476A 00                 2509 	.db #0x00	; 0
   476B 02                 2510 	.db #0x02	; 2
   476C 00                 2511 	.db #0x00	; 0
   476D 02                 2512 	.db #0x02	; 2
   476E 02                 2513 	.db #0x02	; 2
   476F 33                 2514 	.db #0x33	; 51	'3'
   4770 22                 2515 	.db #0x22	; 34
   4771                    2516 _font_168:
   4771 00                 2517 	.db #0x00	; 0
   4772 00                 2518 	.db #0x00	; 0
   4773 80                 2519 	.db #0x80	; 128
   4774 80                 2520 	.db #0x80	; 128
   4775 80                 2521 	.db #0x80	; 128
   4776 80                 2522 	.db #0x80	; 128
   4777 03                 2523 	.db #0x03	; 3
   4778 02                 2524 	.db #0x02	; 2
   4779 02                 2525 	.db #0x02	; 2
   477A 02                 2526 	.db #0x02	; 2
   477B 22                 2527 	.db #0x22	; 34
   477C 22                 2528 	.db #0x22	; 34
   477D                    2529 _font_169:
   477D 00                 2530 	.db #0x00	; 0
   477E 00                 2531 	.db #0x00	; 0
   477F C0                 2532 	.db #0xc0	; 192
   4780 80                 2533 	.db #0x80	; 128
   4781 40                 2534 	.db #0x40	; 64
   4782 00                 2535 	.db #0x00	; 0
   4783 01                 2536 	.db #0x01	; 1
   4784 00                 2537 	.db #0x00	; 0
   4785 01                 2538 	.db #0x01	; 1
   4786 00                 2539 	.db #0x00	; 0
   4787 33                 2540 	.db #0x33	; 51	'3'
   4788 22                 2541 	.db #0x22	; 34
   4789                    2542 _font_170:
   4789 00                 2543 	.db #0x00	; 0
   478A 00                 2544 	.db #0x00	; 0
   478B C0                 2545 	.db #0xc0	; 192
   478C 80                 2546 	.db #0x80	; 128
   478D 40                 2547 	.db #0x40	; 64
   478E 00                 2548 	.db #0x00	; 0
   478F 01                 2549 	.db #0x01	; 1
   4790 00                 2550 	.db #0x00	; 0
   4791 01                 2551 	.db #0x01	; 1
   4792 00                 2552 	.db #0x00	; 0
   4793 33                 2553 	.db #0x33	; 51	'3'
   4794 00                 2554 	.db #0x00	; 0
   4795                    2555 _font_171:
   4795 00                 2556 	.db #0x00	; 0
   4796 00                 2557 	.db #0x00	; 0
   4797 80                 2558 	.db #0x80	; 128
   4798 80                 2559 	.db #0x80	; 128
   4799 80                 2560 	.db #0x80	; 128
   479A 80                 2561 	.db #0x80	; 128
   479B 03                 2562 	.db #0x03	; 3
   479C 00                 2563 	.db #0x00	; 0
   479D 02                 2564 	.db #0x02	; 2
   479E 02                 2565 	.db #0x02	; 2
   479F 22                 2566 	.db #0x22	; 34
   47A0 22                 2567 	.db #0x22	; 34
   47A1                    2568 _font_172:
   47A1 00                 2569 	.db #0x00	; 0
   47A2 00                 2570 	.db #0x00	; 0
   47A3 80                 2571 	.db #0x80	; 128
   47A4 00                 2572 	.db #0x00	; 0
   47A5 80                 2573 	.db #0x80	; 128
   47A6 00                 2574 	.db #0x00	; 0
   47A7 02                 2575 	.db #0x02	; 2
   47A8 00                 2576 	.db #0x00	; 0
   47A9 02                 2577 	.db #0x02	; 2
   47AA 00                 2578 	.db #0x00	; 0
   47AB 33                 2579 	.db #0x33	; 51	'3'
   47AC 22                 2580 	.db #0x22	; 34
   47AD                    2581 _font_173:
   47AD 00                 2582 	.db #0x00	; 0
   47AE 00                 2583 	.db #0x00	; 0
   47AF 80                 2584 	.db #0x80	; 128
   47B0 80                 2585 	.db #0x80	; 128
   47B1 C0                 2586 	.db #0xc0	; 192
   47B2 80                 2587 	.db #0x80	; 128
   47B3 02                 2588 	.db #0x02	; 2
   47B4 02                 2589 	.db #0x02	; 2
   47B5 02                 2590 	.db #0x02	; 2
   47B6 02                 2591 	.db #0x02	; 2
   47B7 22                 2592 	.db #0x22	; 34
   47B8 22                 2593 	.db #0x22	; 34
   47B9                    2594 _font_174:
   47B9 00                 2595 	.db #0x00	; 0
   47BA 00                 2596 	.db #0x00	; 0
   47BB C0                 2597 	.db #0xc0	; 192
   47BC 80                 2598 	.db #0x80	; 128
   47BD 80                 2599 	.db #0x80	; 128
   47BE 80                 2600 	.db #0x80	; 128
   47BF 02                 2601 	.db #0x02	; 2
   47C0 02                 2602 	.db #0x02	; 2
   47C1 02                 2603 	.db #0x02	; 2
   47C2 02                 2604 	.db #0x02	; 2
   47C3 22                 2605 	.db #0x22	; 34
   47C4 22                 2606 	.db #0x22	; 34
   47C5                    2607 _font_175:
   47C5 00                 2608 	.db #0x00	; 0
   47C6 00                 2609 	.db #0x00	; 0
   47C7 C0                 2610 	.db #0xc0	; 192
   47C8 80                 2611 	.db #0x80	; 128
   47C9 80                 2612 	.db #0x80	; 128
   47CA 80                 2613 	.db #0x80	; 128
   47CB 02                 2614 	.db #0x02	; 2
   47CC 02                 2615 	.db #0x02	; 2
   47CD 02                 2616 	.db #0x02	; 2
   47CE 02                 2617 	.db #0x02	; 2
   47CF 33                 2618 	.db #0x33	; 51	'3'
   47D0 22                 2619 	.db #0x22	; 34
   47D1                    2620 _font_176:
   47D1 00                 2621 	.db #0x00	; 0
   47D2 00                 2622 	.db #0x00	; 0
   47D3 C0                 2623 	.db #0xc0	; 192
   47D4 80                 2624 	.db #0x80	; 128
   47D5 80                 2625 	.db #0x80	; 128
   47D6 80                 2626 	.db #0x80	; 128
   47D7 03                 2627 	.db #0x03	; 3
   47D8 02                 2628 	.db #0x02	; 2
   47D9 02                 2629 	.db #0x02	; 2
   47DA 00                 2630 	.db #0x00	; 0
   47DB 22                 2631 	.db #0x22	; 34
   47DC 00                 2632 	.db #0x00	; 0
   47DD                    2633 _font_177:
   47DD 00                 2634 	.db #0x00	; 0
   47DE 00                 2635 	.db #0x00	; 0
   47DF C0                 2636 	.db #0xc0	; 192
   47E0 80                 2637 	.db #0x80	; 128
   47E1 80                 2638 	.db #0x80	; 128
   47E2 80                 2639 	.db #0x80	; 128
   47E3 02                 2640 	.db #0x02	; 2
   47E4 02                 2641 	.db #0x02	; 2
   47E5 02                 2642 	.db #0x02	; 2
   47E6 02                 2643 	.db #0x02	; 2
   47E7 33                 2644 	.db #0x33	; 51	'3'
   47E8 00                 2645 	.db #0x00	; 0
   47E9                    2646 _font_178:
   47E9 00                 2647 	.db #0x00	; 0
   47EA 00                 2648 	.db #0x00	; 0
   47EB C0                 2649 	.db #0xc0	; 192
   47EC 80                 2650 	.db #0x80	; 128
   47ED 80                 2651 	.db #0x80	; 128
   47EE 80                 2652 	.db #0x80	; 128
   47EF 03                 2653 	.db #0x03	; 3
   47F0 00                 2654 	.db #0x00	; 0
   47F1 02                 2655 	.db #0x02	; 2
   47F2 02                 2656 	.db #0x02	; 2
   47F3 22                 2657 	.db #0x22	; 34
   47F4 22                 2658 	.db #0x22	; 34
   47F5                    2659 _font_179:
   47F5 00                 2660 	.db #0x00	; 0
   47F6 00                 2661 	.db #0x00	; 0
   47F7 40                 2662 	.db #0x40	; 64
   47F8 80                 2663 	.db #0x80	; 128
   47F9 80                 2664 	.db #0x80	; 128
   47FA 00                 2665 	.db #0x00	; 0
   47FB 01                 2666 	.db #0x01	; 1
   47FC 00                 2667 	.db #0x00	; 0
   47FD 00                 2668 	.db #0x00	; 0
   47FE 02                 2669 	.db #0x02	; 2
   47FF 33                 2670 	.db #0x33	; 51	'3'
   4800 00                 2671 	.db #0x00	; 0
   4801                    2672 _font_180:
   4801 00                 2673 	.db #0x00	; 0
   4802 00                 2674 	.db #0x00	; 0
   4803 C0                 2675 	.db #0xc0	; 192
   4804 80                 2676 	.db #0x80	; 128
   4805 40                 2677 	.db #0x40	; 64
   4806 00                 2678 	.db #0x00	; 0
   4807 01                 2679 	.db #0x01	; 1
   4808 00                 2680 	.db #0x00	; 0
   4809 01                 2681 	.db #0x01	; 1
   480A 00                 2682 	.db #0x00	; 0
   480B 11                 2683 	.db #0x11	; 17
   480C 00                 2684 	.db #0x00	; 0
   480D                    2685 _font_181:
   480D 00                 2686 	.db #0x00	; 0
   480E 00                 2687 	.db #0x00	; 0
   480F 80                 2688 	.db #0x80	; 128
   4810 80                 2689 	.db #0x80	; 128
   4811 80                 2690 	.db #0x80	; 128
   4812 80                 2691 	.db #0x80	; 128
   4813 02                 2692 	.db #0x02	; 2
   4814 02                 2693 	.db #0x02	; 2
   4815 02                 2694 	.db #0x02	; 2
   4816 02                 2695 	.db #0x02	; 2
   4817 33                 2696 	.db #0x33	; 51	'3'
   4818 22                 2697 	.db #0x22	; 34
   4819                    2698 _font_182:
   4819 00                 2699 	.db #0x00	; 0
   481A 00                 2700 	.db #0x00	; 0
   481B 80                 2701 	.db #0x80	; 128
   481C 80                 2702 	.db #0x80	; 128
   481D 80                 2703 	.db #0x80	; 128
   481E 80                 2704 	.db #0x80	; 128
   481F 02                 2705 	.db #0x02	; 2
   4820 02                 2706 	.db #0x02	; 2
   4821 01                 2707 	.db #0x01	; 1
   4822 00                 2708 	.db #0x00	; 0
   4823 11                 2709 	.db #0x11	; 17
   4824 00                 2710 	.db #0x00	; 0
   4825                    2711 _font_183:
   4825 00                 2712 	.db #0x00	; 0
   4826 00                 2713 	.db #0x00	; 0
   4827 80                 2714 	.db #0x80	; 128
   4828 80                 2715 	.db #0x80	; 128
   4829 80                 2716 	.db #0x80	; 128
   482A 80                 2717 	.db #0x80	; 128
   482B 02                 2718 	.db #0x02	; 2
   482C 02                 2719 	.db #0x02	; 2
   482D 03                 2720 	.db #0x03	; 3
   482E 02                 2721 	.db #0x02	; 2
   482F 22                 2722 	.db #0x22	; 34
   4830 22                 2723 	.db #0x22	; 34
   4831                    2724 _font_184:
   4831 00                 2725 	.db #0x00	; 0
   4832 00                 2726 	.db #0x00	; 0
   4833 80                 2727 	.db #0x80	; 128
   4834 80                 2728 	.db #0x80	; 128
   4835 80                 2729 	.db #0x80	; 128
   4836 80                 2730 	.db #0x80	; 128
   4837 01                 2731 	.db #0x01	; 1
   4838 00                 2732 	.db #0x00	; 0
   4839 02                 2733 	.db #0x02	; 2
   483A 02                 2734 	.db #0x02	; 2
   483B 22                 2735 	.db #0x22	; 34
   483C 22                 2736 	.db #0x22	; 34
   483D                    2737 _font_185:
   483D 00                 2738 	.db #0x00	; 0
   483E 00                 2739 	.db #0x00	; 0
   483F 80                 2740 	.db #0x80	; 128
   4840 80                 2741 	.db #0x80	; 128
   4841 80                 2742 	.db #0x80	; 128
   4842 80                 2743 	.db #0x80	; 128
   4843 03                 2744 	.db #0x03	; 3
   4844 02                 2745 	.db #0x02	; 2
   4845 01                 2746 	.db #0x01	; 1
   4846 00                 2747 	.db #0x00	; 0
   4847 11                 2748 	.db #0x11	; 17
   4848 00                 2749 	.db #0x00	; 0
   4849                    2750 _font_186:
   4849 00                 2751 	.db #0x00	; 0
   484A 00                 2752 	.db #0x00	; 0
   484B C0                 2753 	.db #0xc0	; 192
   484C 80                 2754 	.db #0x80	; 128
   484D 00                 2755 	.db #0x00	; 0
   484E 80                 2756 	.db #0x80	; 128
   484F 01                 2757 	.db #0x01	; 1
   4850 00                 2758 	.db #0x00	; 0
   4851 02                 2759 	.db #0x02	; 2
   4852 00                 2760 	.db #0x00	; 0
   4853 33                 2761 	.db #0x33	; 51	'3'
   4854 22                 2762 	.db #0x22	; 34
   4855                    2763 _font_187:
   4855 00                 2764 	.db #0x00	; 0
   4856 00                 2765 	.db #0x00	; 0
   4857 00                 2766 	.db #0x00	; 0
   4858 80                 2767 	.db #0x80	; 128
   4859 40                 2768 	.db #0x40	; 64
   485A 00                 2769 	.db #0x00	; 0
   485B 01                 2770 	.db #0x01	; 1
   485C 00                 2771 	.db #0x00	; 0
   485D 01                 2772 	.db #0x01	; 1
   485E 00                 2773 	.db #0x00	; 0
   485F 00                 2774 	.db #0x00	; 0
   4860 22                 2775 	.db #0x22	; 34
   4861                    2776 _font_188:
   4861 00                 2777 	.db #0x00	; 0
   4862 00                 2778 	.db #0x00	; 0
   4863 40                 2779 	.db #0x40	; 64
   4864 00                 2780 	.db #0x00	; 0
   4865 40                 2781 	.db #0x40	; 64
   4866 00                 2782 	.db #0x00	; 0
   4867 01                 2783 	.db #0x01	; 1
   4868 00                 2784 	.db #0x00	; 0
   4869 01                 2785 	.db #0x01	; 1
   486A 00                 2786 	.db #0x00	; 0
   486B 11                 2787 	.db #0x11	; 17
   486C 00                 2788 	.db #0x00	; 0
   486D                    2789 _font_189:
   486D 00                 2790 	.db #0x00	; 0
   486E 00                 2791 	.db #0x00	; 0
   486F 40                 2792 	.db #0x40	; 64
   4870 00                 2793 	.db #0x00	; 0
   4871 00                 2794 	.db #0x00	; 0
   4872 80                 2795 	.db #0x80	; 128
   4873 00                 2796 	.db #0x00	; 0
   4874 02                 2797 	.db #0x02	; 2
   4875 00                 2798 	.db #0x00	; 0
   4876 02                 2799 	.db #0x02	; 2
   4877 11                 2800 	.db #0x11	; 17
   4878 00                 2801 	.db #0x00	; 0
   4879                    2802 _font_190:
   4879 00                 2803 	.db #0x00	; 0
   487A 00                 2804 	.db #0x00	; 0
   487B 40                 2805 	.db #0x40	; 64
   487C 80                 2806 	.db #0x80	; 128
   487D 80                 2807 	.db #0x80	; 128
   487E 80                 2808 	.db #0x80	; 128
   487F 00                 2809 	.db #0x00	; 0
   4880 00                 2810 	.db #0x00	; 0
   4881 00                 2811 	.db #0x00	; 0
   4882 00                 2812 	.db #0x00	; 0
   4883 00                 2813 	.db #0x00	; 0
   4884 00                 2814 	.db #0x00	; 0
   4885                    2815 _font_191:
   4885 00                 2816 	.db #0x00	; 0
   4886 00                 2817 	.db #0x00	; 0
   4887 00                 2818 	.db #0x00	; 0
   4888 00                 2819 	.db #0x00	; 0
   4889 00                 2820 	.db #0x00	; 0
   488A 00                 2821 	.db #0x00	; 0
   488B 00                 2822 	.db #0x00	; 0
   488C 00                 2823 	.db #0x00	; 0
   488D 00                 2824 	.db #0x00	; 0
   488E 00                 2825 	.db #0x00	; 0
   488F 00                 2826 	.db #0x00	; 0
   4890 00                 2827 	.db #0x00	; 0
   4891                    2828 _font_192:
   4891 00                 2829 	.db #0x00	; 0
   4892 00                 2830 	.db #0x00	; 0
   4893 00                 2831 	.db #0x00	; 0
   4894 00                 2832 	.db #0x00	; 0
   4895 00                 2833 	.db #0x00	; 0
   4896 00                 2834 	.db #0x00	; 0
   4897 00                 2835 	.db #0x00	; 0
   4898 00                 2836 	.db #0x00	; 0
   4899 00                 2837 	.db #0x00	; 0
   489A 00                 2838 	.db #0x00	; 0
   489B 00                 2839 	.db #0x00	; 0
   489C 00                 2840 	.db #0x00	; 0
   489D                    2841 _font_193:
   489D 00                 2842 	.db #0x00	; 0
   489E 00                 2843 	.db #0x00	; 0
   489F 55                 2844 	.db #0x55	; 85	'U'
   48A0 00                 2845 	.db #0x00	; 0
   48A1 55                 2846 	.db #0x55	; 85	'U'
   48A2 00                 2847 	.db #0x00	; 0
   48A3 55                 2848 	.db #0x55	; 85	'U'
   48A4 00                 2849 	.db #0x00	; 0
   48A5 00                 2850 	.db #0x00	; 0
   48A6 00                 2851 	.db #0x00	; 0
   48A7 55                 2852 	.db #0x55	; 85	'U'
   48A8 00                 2853 	.db #0x00	; 0
   48A9                    2854 _font_194:
   48A9 00                 2855 	.db #0x00	; 0
   48AA 00                 2856 	.db #0x00	; 0
   48AB AA                 2857 	.db #0xaa	; 170
   48AC AA                 2858 	.db #0xaa	; 170
   48AD 00                 2859 	.db #0x00	; 0
   48AE 00                 2860 	.db #0x00	; 0
   48AF 00                 2861 	.db #0x00	; 0
   48B0 00                 2862 	.db #0x00	; 0
   48B1 00                 2863 	.db #0x00	; 0
   48B2 00                 2864 	.db #0x00	; 0
   48B3 00                 2865 	.db #0x00	; 0
   48B4 00                 2866 	.db #0x00	; 0
   48B5                    2867 _font_195:
   48B5 00                 2868 	.db #0x00	; 0
   48B6 00                 2869 	.db #0x00	; 0
   48B7 AA                 2870 	.db #0xaa	; 170
   48B8 AA                 2871 	.db #0xaa	; 170
   48B9 FF                 2872 	.db #0xff	; 255
   48BA AA                 2873 	.db #0xaa	; 170
   48BB AA                 2874 	.db #0xaa	; 170
   48BC AA                 2875 	.db #0xaa	; 170
   48BD FF                 2876 	.db #0xff	; 255
   48BE AA                 2877 	.db #0xaa	; 170
   48BF AA                 2878 	.db #0xaa	; 170
   48C0 AA                 2879 	.db #0xaa	; 170
   48C1                    2880 _font_196:
   48C1 00                 2881 	.db #0x00	; 0
   48C2 00                 2882 	.db #0x00	; 0
   48C3 55                 2883 	.db #0x55	; 85	'U'
   48C4 AA                 2884 	.db #0xaa	; 170
   48C5 FF                 2885 	.db #0xff	; 255
   48C6 00                 2886 	.db #0x00	; 0
   48C7 55                 2887 	.db #0x55	; 85	'U'
   48C8 AA                 2888 	.db #0xaa	; 170
   48C9 FF                 2889 	.db #0xff	; 255
   48CA 00                 2890 	.db #0x00	; 0
   48CB 55                 2891 	.db #0x55	; 85	'U'
   48CC 00                 2892 	.db #0x00	; 0
   48CD                    2893 _font_197:
   48CD 00                 2894 	.db #0x00	; 0
   48CE 00                 2895 	.db #0x00	; 0
   48CF AA                 2896 	.db #0xaa	; 170
   48D0 AA                 2897 	.db #0xaa	; 170
   48D1 00                 2898 	.db #0x00	; 0
   48D2 AA                 2899 	.db #0xaa	; 170
   48D3 55                 2900 	.db #0x55	; 85	'U'
   48D4 00                 2901 	.db #0x00	; 0
   48D5 AA                 2902 	.db #0xaa	; 170
   48D6 00                 2903 	.db #0x00	; 0
   48D7 AA                 2904 	.db #0xaa	; 170
   48D8 AA                 2905 	.db #0xaa	; 170
   48D9                    2906 _font_198:
   48D9 00                 2907 	.db #0x00	; 0
   48DA 00                 2908 	.db #0x00	; 0
   48DB 00                 2909 	.db #0x00	; 0
   48DC AA                 2910 	.db #0xaa	; 170
   48DD 55                 2911 	.db #0x55	; 85	'U'
   48DE 55                 2912 	.db #0x55	; 85	'U'
   48DF 00                 2913 	.db #0x00	; 0
   48E0 AA                 2914 	.db #0xaa	; 170
   48E1 55                 2915 	.db #0x55	; 85	'U'
   48E2 55                 2916 	.db #0x55	; 85	'U'
   48E3 00                 2917 	.db #0x00	; 0
   48E4 FF                 2918 	.db #0xff	; 255
   48E5                    2919 _font_199:
   48E5 00                 2920 	.db #0x00	; 0
   48E6 00                 2921 	.db #0x00	; 0
   48E7 00                 2922 	.db #0x00	; 0
   48E8 AA                 2923 	.db #0xaa	; 170
   48E9 55                 2924 	.db #0x55	; 85	'U'
   48EA 00                 2925 	.db #0x00	; 0
   48EB 00                 2926 	.db #0x00	; 0
   48EC 00                 2927 	.db #0x00	; 0
   48ED 00                 2928 	.db #0x00	; 0
   48EE 00                 2929 	.db #0x00	; 0
   48EF 00                 2930 	.db #0x00	; 0
   48F0 00                 2931 	.db #0x00	; 0
   48F1                    2932 _font_200:
   48F1 00                 2933 	.db #0x00	; 0
   48F2 00                 2934 	.db #0x00	; 0
   48F3 00                 2935 	.db #0x00	; 0
   48F4 AA                 2936 	.db #0xaa	; 170
   48F5 55                 2937 	.db #0x55	; 85	'U'
   48F6 00                 2938 	.db #0x00	; 0
   48F7 55                 2939 	.db #0x55	; 85	'U'
   48F8 00                 2940 	.db #0x00	; 0
   48F9 55                 2941 	.db #0x55	; 85	'U'
   48FA 00                 2942 	.db #0x00	; 0
   48FB 00                 2943 	.db #0x00	; 0
   48FC AA                 2944 	.db #0xaa	; 170
   48FD                    2945 _font_201:
   48FD 00                 2946 	.db #0x00	; 0
   48FE 00                 2947 	.db #0x00	; 0
   48FF 55                 2948 	.db #0x55	; 85	'U'
   4900 00                 2949 	.db #0x00	; 0
   4901 00                 2950 	.db #0x00	; 0
   4902 AA                 2951 	.db #0xaa	; 170
   4903 00                 2952 	.db #0x00	; 0
   4904 AA                 2953 	.db #0xaa	; 170
   4905 00                 2954 	.db #0x00	; 0
   4906 AA                 2955 	.db #0xaa	; 170
   4907 55                 2956 	.db #0x55	; 85	'U'
   4908 00                 2957 	.db #0x00	; 0
   4909                    2958 _font_202:
   4909 00                 2959 	.db #0x00	; 0
   490A 00                 2960 	.db #0x00	; 0
   490B AA                 2961 	.db #0xaa	; 170
   490C AA                 2962 	.db #0xaa	; 170
   490D 55                 2963 	.db #0x55	; 85	'U'
   490E 00                 2964 	.db #0x00	; 0
   490F FF                 2965 	.db #0xff	; 255
   4910 AA                 2966 	.db #0xaa	; 170
   4911 55                 2967 	.db #0x55	; 85	'U'
   4912 00                 2968 	.db #0x00	; 0
   4913 AA                 2969 	.db #0xaa	; 170
   4914 AA                 2970 	.db #0xaa	; 170
   4915                    2971 _font_203:
   4915 00                 2972 	.db #0x00	; 0
   4916 00                 2973 	.db #0x00	; 0
   4917 00                 2974 	.db #0x00	; 0
   4918 00                 2975 	.db #0x00	; 0
   4919 55                 2976 	.db #0x55	; 85	'U'
   491A 00                 2977 	.db #0x00	; 0
   491B FF                 2978 	.db #0xff	; 255
   491C AA                 2979 	.db #0xaa	; 170
   491D 55                 2980 	.db #0x55	; 85	'U'
   491E 00                 2981 	.db #0x00	; 0
   491F 00                 2982 	.db #0x00	; 0
   4920 00                 2983 	.db #0x00	; 0
   4921                    2984 _font_204:
   4921 00                 2985 	.db #0x00	; 0
   4922 00                 2986 	.db #0x00	; 0
   4923 00                 2987 	.db #0x00	; 0
   4924 00                 2988 	.db #0x00	; 0
   4925 00                 2989 	.db #0x00	; 0
   4926 00                 2990 	.db #0x00	; 0
   4927 00                 2991 	.db #0x00	; 0
   4928 00                 2992 	.db #0x00	; 0
   4929 55                 2993 	.db #0x55	; 85	'U'
   492A 00                 2994 	.db #0x00	; 0
   492B AA                 2995 	.db #0xaa	; 170
   492C 00                 2996 	.db #0x00	; 0
   492D                    2997 _font_205:
   492D 00                 2998 	.db #0x00	; 0
   492E 00                 2999 	.db #0x00	; 0
   492F 00                 3000 	.db #0x00	; 0
   4930 00                 3001 	.db #0x00	; 0
   4931 00                 3002 	.db #0x00	; 0
   4932 00                 3003 	.db #0x00	; 0
   4933 FF                 3004 	.db #0xff	; 255
   4934 AA                 3005 	.db #0xaa	; 170
   4935 00                 3006 	.db #0x00	; 0
   4936 00                 3007 	.db #0x00	; 0
   4937 00                 3008 	.db #0x00	; 0
   4938 00                 3009 	.db #0x00	; 0
   4939                    3010 _font_206:
   4939 00                 3011 	.db #0x00	; 0
   493A 00                 3012 	.db #0x00	; 0
   493B 00                 3013 	.db #0x00	; 0
   493C 00                 3014 	.db #0x00	; 0
   493D 00                 3015 	.db #0x00	; 0
   493E 00                 3016 	.db #0x00	; 0
   493F 00                 3017 	.db #0x00	; 0
   4940 00                 3018 	.db #0x00	; 0
   4941 00                 3019 	.db #0x00	; 0
   4942 00                 3020 	.db #0x00	; 0
   4943 55                 3021 	.db #0x55	; 85	'U'
   4944 00                 3022 	.db #0x00	; 0
   4945                    3023 _font_207:
   4945 00                 3024 	.db #0x00	; 0
   4946 00                 3025 	.db #0x00	; 0
   4947 00                 3026 	.db #0x00	; 0
   4948 AA                 3027 	.db #0xaa	; 170
   4949 00                 3028 	.db #0x00	; 0
   494A AA                 3029 	.db #0xaa	; 170
   494B 55                 3030 	.db #0x55	; 85	'U'
   494C 00                 3031 	.db #0x00	; 0
   494D AA                 3032 	.db #0xaa	; 170
   494E 00                 3033 	.db #0x00	; 0
   494F AA                 3034 	.db #0xaa	; 170
   4950 00                 3035 	.db #0x00	; 0
   4951                    3036 _font_208:
   4951 00                 3037 	.db #0x00	; 0
   4952 00                 3038 	.db #0x00	; 0
   4953 FF                 3039 	.db #0xff	; 255
   4954 AA                 3040 	.db #0xaa	; 170
   4955 AA                 3041 	.db #0xaa	; 170
   4956 AA                 3042 	.db #0xaa	; 170
   4957 AA                 3043 	.db #0xaa	; 170
   4958 AA                 3044 	.db #0xaa	; 170
   4959 AA                 3045 	.db #0xaa	; 170
   495A AA                 3046 	.db #0xaa	; 170
   495B FF                 3047 	.db #0xff	; 255
   495C AA                 3048 	.db #0xaa	; 170
   495D                    3049 _font_209:
   495D 00                 3050 	.db #0x00	; 0
   495E 00                 3051 	.db #0x00	; 0
   495F 55                 3052 	.db #0x55	; 85	'U'
   4960 00                 3053 	.db #0x00	; 0
   4961 55                 3054 	.db #0x55	; 85	'U'
   4962 00                 3055 	.db #0x00	; 0
   4963 55                 3056 	.db #0x55	; 85	'U'
   4964 00                 3057 	.db #0x00	; 0
   4965 55                 3058 	.db #0x55	; 85	'U'
   4966 00                 3059 	.db #0x00	; 0
   4967 55                 3060 	.db #0x55	; 85	'U'
   4968 00                 3061 	.db #0x00	; 0
   4969                    3062 _font_210:
   4969 00                 3063 	.db #0x00	; 0
   496A 00                 3064 	.db #0x00	; 0
   496B FF                 3065 	.db #0xff	; 255
   496C AA                 3066 	.db #0xaa	; 170
   496D 00                 3067 	.db #0x00	; 0
   496E AA                 3068 	.db #0xaa	; 170
   496F FF                 3069 	.db #0xff	; 255
   4970 AA                 3070 	.db #0xaa	; 170
   4971 AA                 3071 	.db #0xaa	; 170
   4972 00                 3072 	.db #0x00	; 0
   4973 FF                 3073 	.db #0xff	; 255
   4974 AA                 3074 	.db #0xaa	; 170
   4975                    3075 _font_211:
   4975 00                 3076 	.db #0x00	; 0
   4976 00                 3077 	.db #0x00	; 0
   4977 FF                 3078 	.db #0xff	; 255
   4978 AA                 3079 	.db #0xaa	; 170
   4979 00                 3080 	.db #0x00	; 0
   497A AA                 3081 	.db #0xaa	; 170
   497B 55                 3082 	.db #0x55	; 85	'U'
   497C AA                 3083 	.db #0xaa	; 170
   497D 00                 3084 	.db #0x00	; 0
   497E AA                 3085 	.db #0xaa	; 170
   497F FF                 3086 	.db #0xff	; 255
   4980 AA                 3087 	.db #0xaa	; 170
   4981                    3088 _font_212:
   4981 00                 3089 	.db #0x00	; 0
   4982 00                 3090 	.db #0x00	; 0
   4983 AA                 3091 	.db #0xaa	; 170
   4984 AA                 3092 	.db #0xaa	; 170
   4985 AA                 3093 	.db #0xaa	; 170
   4986 AA                 3094 	.db #0xaa	; 170
   4987 FF                 3095 	.db #0xff	; 255
   4988 AA                 3096 	.db #0xaa	; 170
   4989 00                 3097 	.db #0x00	; 0
   498A AA                 3098 	.db #0xaa	; 170
   498B 00                 3099 	.db #0x00	; 0
   498C AA                 3100 	.db #0xaa	; 170
   498D                    3101 _font_213:
   498D 00                 3102 	.db #0x00	; 0
   498E 00                 3103 	.db #0x00	; 0
   498F FF                 3104 	.db #0xff	; 255
   4990 AA                 3105 	.db #0xaa	; 170
   4991 AA                 3106 	.db #0xaa	; 170
   4992 00                 3107 	.db #0x00	; 0
   4993 FF                 3108 	.db #0xff	; 255
   4994 AA                 3109 	.db #0xaa	; 170
   4995 00                 3110 	.db #0x00	; 0
   4996 AA                 3111 	.db #0xaa	; 170
   4997 FF                 3112 	.db #0xff	; 255
   4998 AA                 3113 	.db #0xaa	; 170
   4999                    3114 _font_214:
   4999 00                 3115 	.db #0x00	; 0
   499A 00                 3116 	.db #0x00	; 0
   499B FF                 3117 	.db #0xff	; 255
   499C AA                 3118 	.db #0xaa	; 170
   499D AA                 3119 	.db #0xaa	; 170
   499E 00                 3120 	.db #0x00	; 0
   499F FF                 3121 	.db #0xff	; 255
   49A0 AA                 3122 	.db #0xaa	; 170
   49A1 AA                 3123 	.db #0xaa	; 170
   49A2 AA                 3124 	.db #0xaa	; 170
   49A3 FF                 3125 	.db #0xff	; 255
   49A4 AA                 3126 	.db #0xaa	; 170
   49A5                    3127 _font_215:
   49A5 00                 3128 	.db #0x00	; 0
   49A6 00                 3129 	.db #0x00	; 0
   49A7 FF                 3130 	.db #0xff	; 255
   49A8 AA                 3131 	.db #0xaa	; 170
   49A9 00                 3132 	.db #0x00	; 0
   49AA AA                 3133 	.db #0xaa	; 170
   49AB 00                 3134 	.db #0x00	; 0
   49AC AA                 3135 	.db #0xaa	; 170
   49AD 00                 3136 	.db #0x00	; 0
   49AE AA                 3137 	.db #0xaa	; 170
   49AF 00                 3138 	.db #0x00	; 0
   49B0 AA                 3139 	.db #0xaa	; 170
   49B1                    3140 _font_216:
   49B1 00                 3141 	.db #0x00	; 0
   49B2 00                 3142 	.db #0x00	; 0
   49B3 FF                 3143 	.db #0xff	; 255
   49B4 AA                 3144 	.db #0xaa	; 170
   49B5 AA                 3145 	.db #0xaa	; 170
   49B6 AA                 3146 	.db #0xaa	; 170
   49B7 FF                 3147 	.db #0xff	; 255
   49B8 AA                 3148 	.db #0xaa	; 170
   49B9 AA                 3149 	.db #0xaa	; 170
   49BA AA                 3150 	.db #0xaa	; 170
   49BB FF                 3151 	.db #0xff	; 255
   49BC AA                 3152 	.db #0xaa	; 170
   49BD                    3153 _font_217:
   49BD 00                 3154 	.db #0x00	; 0
   49BE 00                 3155 	.db #0x00	; 0
   49BF FF                 3156 	.db #0xff	; 255
   49C0 AA                 3157 	.db #0xaa	; 170
   49C1 AA                 3158 	.db #0xaa	; 170
   49C2 AA                 3159 	.db #0xaa	; 170
   49C3 FF                 3160 	.db #0xff	; 255
   49C4 AA                 3161 	.db #0xaa	; 170
   49C5 00                 3162 	.db #0x00	; 0
   49C6 AA                 3163 	.db #0xaa	; 170
   49C7 FF                 3164 	.db #0xff	; 255
   49C8 AA                 3165 	.db #0xaa	; 170
   49C9                    3166 _font_218:
   49C9 00                 3167 	.db #0x00	; 0
   49CA 00                 3168 	.db #0x00	; 0
   49CB 00                 3169 	.db #0x00	; 0
   49CC 00                 3170 	.db #0x00	; 0
   49CD 55                 3171 	.db #0x55	; 85	'U'
   49CE 00                 3172 	.db #0x00	; 0
   49CF 00                 3173 	.db #0x00	; 0
   49D0 00                 3174 	.db #0x00	; 0
   49D1 55                 3175 	.db #0x55	; 85	'U'
   49D2 00                 3176 	.db #0x00	; 0
   49D3 00                 3177 	.db #0x00	; 0
   49D4 00                 3178 	.db #0x00	; 0
   49D5                    3179 _font_219:
   49D5 00                 3180 	.db #0x00	; 0
   49D6 00                 3181 	.db #0x00	; 0
   49D7 00                 3182 	.db #0x00	; 0
   49D8 00                 3183 	.db #0x00	; 0
   49D9 55                 3184 	.db #0x55	; 85	'U'
   49DA 00                 3185 	.db #0x00	; 0
   49DB 00                 3186 	.db #0x00	; 0
   49DC 00                 3187 	.db #0x00	; 0
   49DD 55                 3188 	.db #0x55	; 85	'U'
   49DE 00                 3189 	.db #0x00	; 0
   49DF AA                 3190 	.db #0xaa	; 170
   49E0 00                 3191 	.db #0x00	; 0
   49E1                    3192 _font_220:
   49E1 00                 3193 	.db #0x00	; 0
   49E2 00                 3194 	.db #0x00	; 0
   49E3 00                 3195 	.db #0x00	; 0
   49E4 AA                 3196 	.db #0xaa	; 170
   49E5 55                 3197 	.db #0x55	; 85	'U'
   49E6 00                 3198 	.db #0x00	; 0
   49E7 AA                 3199 	.db #0xaa	; 170
   49E8 00                 3200 	.db #0x00	; 0
   49E9 55                 3201 	.db #0x55	; 85	'U'
   49EA 00                 3202 	.db #0x00	; 0
   49EB 00                 3203 	.db #0x00	; 0
   49EC AA                 3204 	.db #0xaa	; 170
   49ED                    3205 _font_221:
   49ED 00                 3206 	.db #0x00	; 0
   49EE 00                 3207 	.db #0x00	; 0
   49EF 00                 3208 	.db #0x00	; 0
   49F0 00                 3209 	.db #0x00	; 0
   49F1 FF                 3210 	.db #0xff	; 255
   49F2 AA                 3211 	.db #0xaa	; 170
   49F3 00                 3212 	.db #0x00	; 0
   49F4 00                 3213 	.db #0x00	; 0
   49F5 FF                 3214 	.db #0xff	; 255
   49F6 AA                 3215 	.db #0xaa	; 170
   49F7 00                 3216 	.db #0x00	; 0
   49F8 00                 3217 	.db #0x00	; 0
   49F9                    3218 _font_222:
   49F9 00                 3219 	.db #0x00	; 0
   49FA 00                 3220 	.db #0x00	; 0
   49FB AA                 3221 	.db #0xaa	; 170
   49FC 00                 3222 	.db #0x00	; 0
   49FD 55                 3223 	.db #0x55	; 85	'U'
   49FE 00                 3224 	.db #0x00	; 0
   49FF 00                 3225 	.db #0x00	; 0
   4A00 AA                 3226 	.db #0xaa	; 170
   4A01 55                 3227 	.db #0x55	; 85	'U'
   4A02 00                 3228 	.db #0x00	; 0
   4A03 AA                 3229 	.db #0xaa	; 170
   4A04 00                 3230 	.db #0x00	; 0
   4A05                    3231 _font_223:
   4A05 00                 3232 	.db #0x00	; 0
   4A06 00                 3233 	.db #0x00	; 0
   4A07 55                 3234 	.db #0x55	; 85	'U'
   4A08 AA                 3235 	.db #0xaa	; 170
   4A09 00                 3236 	.db #0x00	; 0
   4A0A AA                 3237 	.db #0xaa	; 170
   4A0B 55                 3238 	.db #0x55	; 85	'U'
   4A0C 00                 3239 	.db #0x00	; 0
   4A0D 00                 3240 	.db #0x00	; 0
   4A0E 00                 3241 	.db #0x00	; 0
   4A0F 55                 3242 	.db #0x55	; 85	'U'
   4A10 00                 3243 	.db #0x00	; 0
   4A11                    3244 _font_224:
   4A11 00                 3245 	.db #0x00	; 0
   4A12 00                 3246 	.db #0x00	; 0
   4A13 55                 3247 	.db #0x55	; 85	'U'
   4A14 00                 3248 	.db #0x00	; 0
   4A15 AA                 3249 	.db #0xaa	; 170
   4A16 AA                 3250 	.db #0xaa	; 170
   4A17 FF                 3251 	.db #0xff	; 255
   4A18 AA                 3252 	.db #0xaa	; 170
   4A19 AA                 3253 	.db #0xaa	; 170
   4A1A 00                 3254 	.db #0x00	; 0
   4A1B 55                 3255 	.db #0x55	; 85	'U'
   4A1C AA                 3256 	.db #0xaa	; 170
   4A1D                    3257 _font_225:
   4A1D 00                 3258 	.db #0x00	; 0
   4A1E 00                 3259 	.db #0x00	; 0
   4A1F FF                 3260 	.db #0xff	; 255
   4A20 AA                 3261 	.db #0xaa	; 170
   4A21 AA                 3262 	.db #0xaa	; 170
   4A22 AA                 3263 	.db #0xaa	; 170
   4A23 FF                 3264 	.db #0xff	; 255
   4A24 AA                 3265 	.db #0xaa	; 170
   4A25 AA                 3266 	.db #0xaa	; 170
   4A26 AA                 3267 	.db #0xaa	; 170
   4A27 AA                 3268 	.db #0xaa	; 170
   4A28 AA                 3269 	.db #0xaa	; 170
   4A29                    3270 _font_226:
   4A29 00                 3271 	.db #0x00	; 0
   4A2A 00                 3272 	.db #0x00	; 0
   4A2B FF                 3273 	.db #0xff	; 255
   4A2C 00                 3274 	.db #0x00	; 0
   4A2D AA                 3275 	.db #0xaa	; 170
   4A2E AA                 3276 	.db #0xaa	; 170
   4A2F FF                 3277 	.db #0xff	; 255
   4A30 00                 3278 	.db #0x00	; 0
   4A31 AA                 3279 	.db #0xaa	; 170
   4A32 AA                 3280 	.db #0xaa	; 170
   4A33 FF                 3281 	.db #0xff	; 255
   4A34 00                 3282 	.db #0x00	; 0
   4A35                    3283 _font_227:
   4A35 00                 3284 	.db #0x00	; 0
   4A36 00                 3285 	.db #0x00	; 0
   4A37 FF                 3286 	.db #0xff	; 255
   4A38 AA                 3287 	.db #0xaa	; 170
   4A39 AA                 3288 	.db #0xaa	; 170
   4A3A 00                 3289 	.db #0x00	; 0
   4A3B AA                 3290 	.db #0xaa	; 170
   4A3C 00                 3291 	.db #0x00	; 0
   4A3D AA                 3292 	.db #0xaa	; 170
   4A3E 00                 3293 	.db #0x00	; 0
   4A3F FF                 3294 	.db #0xff	; 255
   4A40 AA                 3295 	.db #0xaa	; 170
   4A41                    3296 _font_228:
   4A41 00                 3297 	.db #0x00	; 0
   4A42 00                 3298 	.db #0x00	; 0
   4A43 FF                 3299 	.db #0xff	; 255
   4A44 00                 3300 	.db #0x00	; 0
   4A45 AA                 3301 	.db #0xaa	; 170
   4A46 AA                 3302 	.db #0xaa	; 170
   4A47 AA                 3303 	.db #0xaa	; 170
   4A48 AA                 3304 	.db #0xaa	; 170
   4A49 AA                 3305 	.db #0xaa	; 170
   4A4A AA                 3306 	.db #0xaa	; 170
   4A4B FF                 3307 	.db #0xff	; 255
   4A4C 00                 3308 	.db #0x00	; 0
   4A4D                    3309 _font_229:
   4A4D 00                 3310 	.db #0x00	; 0
   4A4E 00                 3311 	.db #0x00	; 0
   4A4F FF                 3312 	.db #0xff	; 255
   4A50 AA                 3313 	.db #0xaa	; 170
   4A51 AA                 3314 	.db #0xaa	; 170
   4A52 00                 3315 	.db #0x00	; 0
   4A53 FF                 3316 	.db #0xff	; 255
   4A54 00                 3317 	.db #0x00	; 0
   4A55 AA                 3318 	.db #0xaa	; 170
   4A56 00                 3319 	.db #0x00	; 0
   4A57 FF                 3320 	.db #0xff	; 255
   4A58 AA                 3321 	.db #0xaa	; 170
   4A59                    3322 _font_230:
   4A59 00                 3323 	.db #0x00	; 0
   4A5A 00                 3324 	.db #0x00	; 0
   4A5B FF                 3325 	.db #0xff	; 255
   4A5C AA                 3326 	.db #0xaa	; 170
   4A5D AA                 3327 	.db #0xaa	; 170
   4A5E 00                 3328 	.db #0x00	; 0
   4A5F FF                 3329 	.db #0xff	; 255
   4A60 00                 3330 	.db #0x00	; 0
   4A61 AA                 3331 	.db #0xaa	; 170
   4A62 00                 3332 	.db #0x00	; 0
   4A63 AA                 3333 	.db #0xaa	; 170
   4A64 00                 3334 	.db #0x00	; 0
   4A65                    3335 _font_231:
   4A65 00                 3336 	.db #0x00	; 0
   4A66 00                 3337 	.db #0x00	; 0
   4A67 FF                 3338 	.db #0xff	; 255
   4A68 AA                 3339 	.db #0xaa	; 170
   4A69 AA                 3340 	.db #0xaa	; 170
   4A6A 00                 3341 	.db #0x00	; 0
   4A6B AA                 3342 	.db #0xaa	; 170
   4A6C 00                 3343 	.db #0x00	; 0
   4A6D AA                 3344 	.db #0xaa	; 170
   4A6E AA                 3345 	.db #0xaa	; 170
   4A6F FF                 3346 	.db #0xff	; 255
   4A70 AA                 3347 	.db #0xaa	; 170
   4A71                    3348 _font_232:
   4A71 00                 3349 	.db #0x00	; 0
   4A72 00                 3350 	.db #0x00	; 0
   4A73 AA                 3351 	.db #0xaa	; 170
   4A74 AA                 3352 	.db #0xaa	; 170
   4A75 AA                 3353 	.db #0xaa	; 170
   4A76 AA                 3354 	.db #0xaa	; 170
   4A77 FF                 3355 	.db #0xff	; 255
   4A78 AA                 3356 	.db #0xaa	; 170
   4A79 AA                 3357 	.db #0xaa	; 170
   4A7A AA                 3358 	.db #0xaa	; 170
   4A7B AA                 3359 	.db #0xaa	; 170
   4A7C AA                 3360 	.db #0xaa	; 170
   4A7D                    3361 _font_233:
   4A7D 00                 3362 	.db #0x00	; 0
   4A7E 00                 3363 	.db #0x00	; 0
   4A7F FF                 3364 	.db #0xff	; 255
   4A80 AA                 3365 	.db #0xaa	; 170
   4A81 55                 3366 	.db #0x55	; 85	'U'
   4A82 00                 3367 	.db #0x00	; 0
   4A83 55                 3368 	.db #0x55	; 85	'U'
   4A84 00                 3369 	.db #0x00	; 0
   4A85 55                 3370 	.db #0x55	; 85	'U'
   4A86 00                 3371 	.db #0x00	; 0
   4A87 FF                 3372 	.db #0xff	; 255
   4A88 AA                 3373 	.db #0xaa	; 170
   4A89                    3374 _font_234:
   4A89 00                 3375 	.db #0x00	; 0
   4A8A 00                 3376 	.db #0x00	; 0
   4A8B FF                 3377 	.db #0xff	; 255
   4A8C AA                 3378 	.db #0xaa	; 170
   4A8D 55                 3379 	.db #0x55	; 85	'U'
   4A8E 00                 3380 	.db #0x00	; 0
   4A8F 55                 3381 	.db #0x55	; 85	'U'
   4A90 00                 3382 	.db #0x00	; 0
   4A91 55                 3383 	.db #0x55	; 85	'U'
   4A92 00                 3384 	.db #0x00	; 0
   4A93 FF                 3385 	.db #0xff	; 255
   4A94 00                 3386 	.db #0x00	; 0
   4A95                    3387 _font_235:
   4A95 00                 3388 	.db #0x00	; 0
   4A96 00                 3389 	.db #0x00	; 0
   4A97 AA                 3390 	.db #0xaa	; 170
   4A98 AA                 3391 	.db #0xaa	; 170
   4A99 AA                 3392 	.db #0xaa	; 170
   4A9A AA                 3393 	.db #0xaa	; 170
   4A9B FF                 3394 	.db #0xff	; 255
   4A9C 00                 3395 	.db #0x00	; 0
   4A9D AA                 3396 	.db #0xaa	; 170
   4A9E AA                 3397 	.db #0xaa	; 170
   4A9F AA                 3398 	.db #0xaa	; 170
   4AA0 AA                 3399 	.db #0xaa	; 170
   4AA1                    3400 _font_236:
   4AA1 00                 3401 	.db #0x00	; 0
   4AA2 00                 3402 	.db #0x00	; 0
   4AA3 AA                 3403 	.db #0xaa	; 170
   4AA4 00                 3404 	.db #0x00	; 0
   4AA5 AA                 3405 	.db #0xaa	; 170
   4AA6 00                 3406 	.db #0x00	; 0
   4AA7 AA                 3407 	.db #0xaa	; 170
   4AA8 00                 3408 	.db #0x00	; 0
   4AA9 AA                 3409 	.db #0xaa	; 170
   4AAA 00                 3410 	.db #0x00	; 0
   4AAB FF                 3411 	.db #0xff	; 255
   4AAC AA                 3412 	.db #0xaa	; 170
   4AAD                    3413 _font_237:
   4AAD 00                 3414 	.db #0x00	; 0
   4AAE 00                 3415 	.db #0x00	; 0
   4AAF AA                 3416 	.db #0xaa	; 170
   4AB0 AA                 3417 	.db #0xaa	; 170
   4AB1 FF                 3418 	.db #0xff	; 255
   4AB2 AA                 3419 	.db #0xaa	; 170
   4AB3 AA                 3420 	.db #0xaa	; 170
   4AB4 AA                 3421 	.db #0xaa	; 170
   4AB5 AA                 3422 	.db #0xaa	; 170
   4AB6 AA                 3423 	.db #0xaa	; 170
   4AB7 AA                 3424 	.db #0xaa	; 170
   4AB8 AA                 3425 	.db #0xaa	; 170
   4AB9                    3426 _font_238:
   4AB9 00                 3427 	.db #0x00	; 0
   4ABA 00                 3428 	.db #0x00	; 0
   4ABB FF                 3429 	.db #0xff	; 255
   4ABC AA                 3430 	.db #0xaa	; 170
   4ABD AA                 3431 	.db #0xaa	; 170
   4ABE AA                 3432 	.db #0xaa	; 170
   4ABF AA                 3433 	.db #0xaa	; 170
   4AC0 AA                 3434 	.db #0xaa	; 170
   4AC1 AA                 3435 	.db #0xaa	; 170
   4AC2 AA                 3436 	.db #0xaa	; 170
   4AC3 AA                 3437 	.db #0xaa	; 170
   4AC4 AA                 3438 	.db #0xaa	; 170
   4AC5                    3439 _font_239:
   4AC5 00                 3440 	.db #0x00	; 0
   4AC6 00                 3441 	.db #0x00	; 0
   4AC7 FF                 3442 	.db #0xff	; 255
   4AC8 AA                 3443 	.db #0xaa	; 170
   4AC9 AA                 3444 	.db #0xaa	; 170
   4ACA AA                 3445 	.db #0xaa	; 170
   4ACB AA                 3446 	.db #0xaa	; 170
   4ACC AA                 3447 	.db #0xaa	; 170
   4ACD AA                 3448 	.db #0xaa	; 170
   4ACE AA                 3449 	.db #0xaa	; 170
   4ACF FF                 3450 	.db #0xff	; 255
   4AD0 AA                 3451 	.db #0xaa	; 170
   4AD1                    3452 _font_240:
   4AD1 00                 3453 	.db #0x00	; 0
   4AD2 00                 3454 	.db #0x00	; 0
   4AD3 FF                 3455 	.db #0xff	; 255
   4AD4 AA                 3456 	.db #0xaa	; 170
   4AD5 AA                 3457 	.db #0xaa	; 170
   4AD6 AA                 3458 	.db #0xaa	; 170
   4AD7 FF                 3459 	.db #0xff	; 255
   4AD8 AA                 3460 	.db #0xaa	; 170
   4AD9 AA                 3461 	.db #0xaa	; 170
   4ADA 00                 3462 	.db #0x00	; 0
   4ADB AA                 3463 	.db #0xaa	; 170
   4ADC 00                 3464 	.db #0x00	; 0
   4ADD                    3465 _font_241:
   4ADD 00                 3466 	.db #0x00	; 0
   4ADE 00                 3467 	.db #0x00	; 0
   4ADF FF                 3468 	.db #0xff	; 255
   4AE0 AA                 3469 	.db #0xaa	; 170
   4AE1 AA                 3470 	.db #0xaa	; 170
   4AE2 AA                 3471 	.db #0xaa	; 170
   4AE3 AA                 3472 	.db #0xaa	; 170
   4AE4 AA                 3473 	.db #0xaa	; 170
   4AE5 AA                 3474 	.db #0xaa	; 170
   4AE6 AA                 3475 	.db #0xaa	; 170
   4AE7 FF                 3476 	.db #0xff	; 255
   4AE8 00                 3477 	.db #0x00	; 0
   4AE9                    3478 _font_242:
   4AE9 00                 3479 	.db #0x00	; 0
   4AEA 00                 3480 	.db #0x00	; 0
   4AEB FF                 3481 	.db #0xff	; 255
   4AEC AA                 3482 	.db #0xaa	; 170
   4AED AA                 3483 	.db #0xaa	; 170
   4AEE AA                 3484 	.db #0xaa	; 170
   4AEF FF                 3485 	.db #0xff	; 255
   4AF0 00                 3486 	.db #0x00	; 0
   4AF1 AA                 3487 	.db #0xaa	; 170
   4AF2 AA                 3488 	.db #0xaa	; 170
   4AF3 AA                 3489 	.db #0xaa	; 170
   4AF4 AA                 3490 	.db #0xaa	; 170
   4AF5                    3491 _font_243:
   4AF5 00                 3492 	.db #0x00	; 0
   4AF6 00                 3493 	.db #0x00	; 0
   4AF7 55                 3494 	.db #0x55	; 85	'U'
   4AF8 AA                 3495 	.db #0xaa	; 170
   4AF9 AA                 3496 	.db #0xaa	; 170
   4AFA 00                 3497 	.db #0x00	; 0
   4AFB 55                 3498 	.db #0x55	; 85	'U'
   4AFC 00                 3499 	.db #0x00	; 0
   4AFD 00                 3500 	.db #0x00	; 0
   4AFE AA                 3501 	.db #0xaa	; 170
   4AFF FF                 3502 	.db #0xff	; 255
   4B00 00                 3503 	.db #0x00	; 0
   4B01                    3504 _font_244:
   4B01 00                 3505 	.db #0x00	; 0
   4B02 00                 3506 	.db #0x00	; 0
   4B03 FF                 3507 	.db #0xff	; 255
   4B04 AA                 3508 	.db #0xaa	; 170
   4B05 55                 3509 	.db #0x55	; 85	'U'
   4B06 00                 3510 	.db #0x00	; 0
   4B07 55                 3511 	.db #0x55	; 85	'U'
   4B08 00                 3512 	.db #0x00	; 0
   4B09 55                 3513 	.db #0x55	; 85	'U'
   4B0A 00                 3514 	.db #0x00	; 0
   4B0B 55                 3515 	.db #0x55	; 85	'U'
   4B0C 00                 3516 	.db #0x00	; 0
   4B0D                    3517 _font_245:
   4B0D 00                 3518 	.db #0x00	; 0
   4B0E 00                 3519 	.db #0x00	; 0
   4B0F AA                 3520 	.db #0xaa	; 170
   4B10 AA                 3521 	.db #0xaa	; 170
   4B11 AA                 3522 	.db #0xaa	; 170
   4B12 AA                 3523 	.db #0xaa	; 170
   4B13 AA                 3524 	.db #0xaa	; 170
   4B14 AA                 3525 	.db #0xaa	; 170
   4B15 AA                 3526 	.db #0xaa	; 170
   4B16 AA                 3527 	.db #0xaa	; 170
   4B17 FF                 3528 	.db #0xff	; 255
   4B18 AA                 3529 	.db #0xaa	; 170
   4B19                    3530 _font_246:
   4B19 00                 3531 	.db #0x00	; 0
   4B1A 00                 3532 	.db #0x00	; 0
   4B1B AA                 3533 	.db #0xaa	; 170
   4B1C AA                 3534 	.db #0xaa	; 170
   4B1D AA                 3535 	.db #0xaa	; 170
   4B1E AA                 3536 	.db #0xaa	; 170
   4B1F AA                 3537 	.db #0xaa	; 170
   4B20 AA                 3538 	.db #0xaa	; 170
   4B21 55                 3539 	.db #0x55	; 85	'U'
   4B22 00                 3540 	.db #0x00	; 0
   4B23 55                 3541 	.db #0x55	; 85	'U'
   4B24 00                 3542 	.db #0x00	; 0
   4B25                    3543 _font_247:
   4B25 00                 3544 	.db #0x00	; 0
   4B26 00                 3545 	.db #0x00	; 0
   4B27 AA                 3546 	.db #0xaa	; 170
   4B28 AA                 3547 	.db #0xaa	; 170
   4B29 AA                 3548 	.db #0xaa	; 170
   4B2A AA                 3549 	.db #0xaa	; 170
   4B2B AA                 3550 	.db #0xaa	; 170
   4B2C AA                 3551 	.db #0xaa	; 170
   4B2D FF                 3552 	.db #0xff	; 255
   4B2E AA                 3553 	.db #0xaa	; 170
   4B2F AA                 3554 	.db #0xaa	; 170
   4B30 AA                 3555 	.db #0xaa	; 170
   4B31                    3556 _font_248:
   4B31 00                 3557 	.db #0x00	; 0
   4B32 00                 3558 	.db #0x00	; 0
   4B33 AA                 3559 	.db #0xaa	; 170
   4B34 AA                 3560 	.db #0xaa	; 170
   4B35 AA                 3561 	.db #0xaa	; 170
   4B36 AA                 3562 	.db #0xaa	; 170
   4B37 55                 3563 	.db #0x55	; 85	'U'
   4B38 00                 3564 	.db #0x00	; 0
   4B39 AA                 3565 	.db #0xaa	; 170
   4B3A AA                 3566 	.db #0xaa	; 170
   4B3B AA                 3567 	.db #0xaa	; 170
   4B3C AA                 3568 	.db #0xaa	; 170
   4B3D                    3569 _font_249:
   4B3D 00                 3570 	.db #0x00	; 0
   4B3E 00                 3571 	.db #0x00	; 0
   4B3F AA                 3572 	.db #0xaa	; 170
   4B40 AA                 3573 	.db #0xaa	; 170
   4B41 AA                 3574 	.db #0xaa	; 170
   4B42 AA                 3575 	.db #0xaa	; 170
   4B43 FF                 3576 	.db #0xff	; 255
   4B44 AA                 3577 	.db #0xaa	; 170
   4B45 55                 3578 	.db #0x55	; 85	'U'
   4B46 00                 3579 	.db #0x00	; 0
   4B47 55                 3580 	.db #0x55	; 85	'U'
   4B48 00                 3581 	.db #0x00	; 0
   4B49                    3582 _font_250:
   4B49 00                 3583 	.db #0x00	; 0
   4B4A 00                 3584 	.db #0x00	; 0
   4B4B FF                 3585 	.db #0xff	; 255
   4B4C AA                 3586 	.db #0xaa	; 170
   4B4D 00                 3587 	.db #0x00	; 0
   4B4E AA                 3588 	.db #0xaa	; 170
   4B4F 55                 3589 	.db #0x55	; 85	'U'
   4B50 00                 3590 	.db #0x00	; 0
   4B51 AA                 3591 	.db #0xaa	; 170
   4B52 00                 3592 	.db #0x00	; 0
   4B53 FF                 3593 	.db #0xff	; 255
   4B54 AA                 3594 	.db #0xaa	; 170
   4B55                    3595 _font_251:
   4B55 00                 3596 	.db #0x00	; 0
   4B56 00                 3597 	.db #0x00	; 0
   4B57 55                 3598 	.db #0x55	; 85	'U'
   4B58 AA                 3599 	.db #0xaa	; 170
   4B59 55                 3600 	.db #0x55	; 85	'U'
   4B5A 00                 3601 	.db #0x00	; 0
   4B5B 55                 3602 	.db #0x55	; 85	'U'
   4B5C 00                 3603 	.db #0x00	; 0
   4B5D 55                 3604 	.db #0x55	; 85	'U'
   4B5E 00                 3605 	.db #0x00	; 0
   4B5F 55                 3606 	.db #0x55	; 85	'U'
   4B60 AA                 3607 	.db #0xaa	; 170
   4B61                    3608 _font_252:
   4B61 00                 3609 	.db #0x00	; 0
   4B62 00                 3610 	.db #0x00	; 0
   4B63 AA                 3611 	.db #0xaa	; 170
   4B64 00                 3612 	.db #0x00	; 0
   4B65 AA                 3613 	.db #0xaa	; 170
   4B66 00                 3614 	.db #0x00	; 0
   4B67 55                 3615 	.db #0x55	; 85	'U'
   4B68 00                 3616 	.db #0x00	; 0
   4B69 00                 3617 	.db #0x00	; 0
   4B6A AA                 3618 	.db #0xaa	; 170
   4B6B 00                 3619 	.db #0x00	; 0
   4B6C AA                 3620 	.db #0xaa	; 170
   4B6D                    3621 _font_253:
   4B6D 00                 3622 	.db #0x00	; 0
   4B6E 00                 3623 	.db #0x00	; 0
   4B6F 55                 3624 	.db #0x55	; 85	'U'
   4B70 AA                 3625 	.db #0xaa	; 170
   4B71 00                 3626 	.db #0x00	; 0
   4B72 AA                 3627 	.db #0xaa	; 170
   4B73 00                 3628 	.db #0x00	; 0
   4B74 AA                 3629 	.db #0xaa	; 170
   4B75 00                 3630 	.db #0x00	; 0
   4B76 AA                 3631 	.db #0xaa	; 170
   4B77 55                 3632 	.db #0x55	; 85	'U'
   4B78 AA                 3633 	.db #0xaa	; 170
   4B79                    3634 _font_254:
   4B79 00                 3635 	.db #0x00	; 0
   4B7A 00                 3636 	.db #0x00	; 0
   4B7B 55                 3637 	.db #0x55	; 85	'U'
   4B7C 00                 3638 	.db #0x00	; 0
   4B7D AA                 3639 	.db #0xaa	; 170
   4B7E AA                 3640 	.db #0xaa	; 170
   4B7F 00                 3641 	.db #0x00	; 0
   4B80 00                 3642 	.db #0x00	; 0
   4B81 00                 3643 	.db #0x00	; 0
   4B82 00                 3644 	.db #0x00	; 0
   4B83 00                 3645 	.db #0x00	; 0
   4B84 00                 3646 	.db #0x00	; 0
   4B85                    3647 _font_255:
   4B85 00                 3648 	.db #0x00	; 0
   4B86 00                 3649 	.db #0x00	; 0
   4B87 00                 3650 	.db #0x00	; 0
   4B88 00                 3651 	.db #0x00	; 0
   4B89 00                 3652 	.db #0x00	; 0
   4B8A 00                 3653 	.db #0x00	; 0
   4B8B 00                 3654 	.db #0x00	; 0
   4B8C 00                 3655 	.db #0x00	; 0
   4B8D 00                 3656 	.db #0x00	; 0
   4B8E 00                 3657 	.db #0x00	; 0
   4B8F FF                 3658 	.db #0xff	; 255
   4B90 AA                 3659 	.db #0xaa	; 170
   4B91                    3660 _font_256:
   4B91 00                 3661 	.db #0x00	; 0
   4B92 00                 3662 	.db #0x00	; 0
   4B93 55                 3663 	.db #0x55	; 85	'U'
   4B94 00                 3664 	.db #0x00	; 0
   4B95 00                 3665 	.db #0x00	; 0
   4B96 AA                 3666 	.db #0xaa	; 170
   4B97 00                 3667 	.db #0x00	; 0
   4B98 00                 3668 	.db #0x00	; 0
   4B99 00                 3669 	.db #0x00	; 0
   4B9A 00                 3670 	.db #0x00	; 0
   4B9B 00                 3671 	.db #0x00	; 0
   4B9C 00                 3672 	.db #0x00	; 0
   4B9D                    3673 _font_257:
   4B9D 00                 3674 	.db #0x00	; 0
   4B9E 00                 3675 	.db #0x00	; 0
   4B9F FF                 3676 	.db #0xff	; 255
   4BA0 AA                 3677 	.db #0xaa	; 170
   4BA1 AA                 3678 	.db #0xaa	; 170
   4BA2 AA                 3679 	.db #0xaa	; 170
   4BA3 FF                 3680 	.db #0xff	; 255
   4BA4 AA                 3681 	.db #0xaa	; 170
   4BA5 AA                 3682 	.db #0xaa	; 170
   4BA6 AA                 3683 	.db #0xaa	; 170
   4BA7 AA                 3684 	.db #0xaa	; 170
   4BA8 AA                 3685 	.db #0xaa	; 170
   4BA9                    3686 _font_258:
   4BA9 00                 3687 	.db #0x00	; 0
   4BAA 00                 3688 	.db #0x00	; 0
   4BAB FF                 3689 	.db #0xff	; 255
   4BAC 00                 3690 	.db #0x00	; 0
   4BAD AA                 3691 	.db #0xaa	; 170
   4BAE AA                 3692 	.db #0xaa	; 170
   4BAF FF                 3693 	.db #0xff	; 255
   4BB0 00                 3694 	.db #0x00	; 0
   4BB1 AA                 3695 	.db #0xaa	; 170
   4BB2 AA                 3696 	.db #0xaa	; 170
   4BB3 FF                 3697 	.db #0xff	; 255
   4BB4 00                 3698 	.db #0x00	; 0
   4BB5                    3699 _font_259:
   4BB5 00                 3700 	.db #0x00	; 0
   4BB6 00                 3701 	.db #0x00	; 0
   4BB7 FF                 3702 	.db #0xff	; 255
   4BB8 AA                 3703 	.db #0xaa	; 170
   4BB9 AA                 3704 	.db #0xaa	; 170
   4BBA 00                 3705 	.db #0x00	; 0
   4BBB AA                 3706 	.db #0xaa	; 170
   4BBC 00                 3707 	.db #0x00	; 0
   4BBD AA                 3708 	.db #0xaa	; 170
   4BBE 00                 3709 	.db #0x00	; 0
   4BBF FF                 3710 	.db #0xff	; 255
   4BC0 AA                 3711 	.db #0xaa	; 170
   4BC1                    3712 _font_260:
   4BC1 00                 3713 	.db #0x00	; 0
   4BC2 00                 3714 	.db #0x00	; 0
   4BC3 FF                 3715 	.db #0xff	; 255
   4BC4 00                 3716 	.db #0x00	; 0
   4BC5 AA                 3717 	.db #0xaa	; 170
   4BC6 AA                 3718 	.db #0xaa	; 170
   4BC7 AA                 3719 	.db #0xaa	; 170
   4BC8 AA                 3720 	.db #0xaa	; 170
   4BC9 AA                 3721 	.db #0xaa	; 170
   4BCA AA                 3722 	.db #0xaa	; 170
   4BCB FF                 3723 	.db #0xff	; 255
   4BCC 00                 3724 	.db #0x00	; 0
   4BCD                    3725 _font_261:
   4BCD 00                 3726 	.db #0x00	; 0
   4BCE 00                 3727 	.db #0x00	; 0
   4BCF FF                 3728 	.db #0xff	; 255
   4BD0 AA                 3729 	.db #0xaa	; 170
   4BD1 AA                 3730 	.db #0xaa	; 170
   4BD2 00                 3731 	.db #0x00	; 0
   4BD3 FF                 3732 	.db #0xff	; 255
   4BD4 00                 3733 	.db #0x00	; 0
   4BD5 AA                 3734 	.db #0xaa	; 170
   4BD6 00                 3735 	.db #0x00	; 0
   4BD7 FF                 3736 	.db #0xff	; 255
   4BD8 AA                 3737 	.db #0xaa	; 170
   4BD9                    3738 _font_262:
   4BD9 00                 3739 	.db #0x00	; 0
   4BDA 00                 3740 	.db #0x00	; 0
   4BDB FF                 3741 	.db #0xff	; 255
   4BDC AA                 3742 	.db #0xaa	; 170
   4BDD AA                 3743 	.db #0xaa	; 170
   4BDE 00                 3744 	.db #0x00	; 0
   4BDF FF                 3745 	.db #0xff	; 255
   4BE0 00                 3746 	.db #0x00	; 0
   4BE1 AA                 3747 	.db #0xaa	; 170
   4BE2 00                 3748 	.db #0x00	; 0
   4BE3 AA                 3749 	.db #0xaa	; 170
   4BE4 00                 3750 	.db #0x00	; 0
   4BE5                    3751 _font_263:
   4BE5 00                 3752 	.db #0x00	; 0
   4BE6 00                 3753 	.db #0x00	; 0
   4BE7 FF                 3754 	.db #0xff	; 255
   4BE8 AA                 3755 	.db #0xaa	; 170
   4BE9 AA                 3756 	.db #0xaa	; 170
   4BEA 00                 3757 	.db #0x00	; 0
   4BEB AA                 3758 	.db #0xaa	; 170
   4BEC 00                 3759 	.db #0x00	; 0
   4BED AA                 3760 	.db #0xaa	; 170
   4BEE AA                 3761 	.db #0xaa	; 170
   4BEF FF                 3762 	.db #0xff	; 255
   4BF0 AA                 3763 	.db #0xaa	; 170
   4BF1                    3764 _font_264:
   4BF1 00                 3765 	.db #0x00	; 0
   4BF2 00                 3766 	.db #0x00	; 0
   4BF3 AA                 3767 	.db #0xaa	; 170
   4BF4 AA                 3768 	.db #0xaa	; 170
   4BF5 AA                 3769 	.db #0xaa	; 170
   4BF6 AA                 3770 	.db #0xaa	; 170
   4BF7 FF                 3771 	.db #0xff	; 255
   4BF8 AA                 3772 	.db #0xaa	; 170
   4BF9 AA                 3773 	.db #0xaa	; 170
   4BFA AA                 3774 	.db #0xaa	; 170
   4BFB AA                 3775 	.db #0xaa	; 170
   4BFC AA                 3776 	.db #0xaa	; 170
   4BFD                    3777 _font_265:
   4BFD 00                 3778 	.db #0x00	; 0
   4BFE 00                 3779 	.db #0x00	; 0
   4BFF FF                 3780 	.db #0xff	; 255
   4C00 AA                 3781 	.db #0xaa	; 170
   4C01 55                 3782 	.db #0x55	; 85	'U'
   4C02 00                 3783 	.db #0x00	; 0
   4C03 55                 3784 	.db #0x55	; 85	'U'
   4C04 00                 3785 	.db #0x00	; 0
   4C05 55                 3786 	.db #0x55	; 85	'U'
   4C06 00                 3787 	.db #0x00	; 0
   4C07 FF                 3788 	.db #0xff	; 255
   4C08 AA                 3789 	.db #0xaa	; 170
   4C09                    3790 _font_266:
   4C09 00                 3791 	.db #0x00	; 0
   4C0A 00                 3792 	.db #0x00	; 0
   4C0B FF                 3793 	.db #0xff	; 255
   4C0C AA                 3794 	.db #0xaa	; 170
   4C0D 55                 3795 	.db #0x55	; 85	'U'
   4C0E 00                 3796 	.db #0x00	; 0
   4C0F 55                 3797 	.db #0x55	; 85	'U'
   4C10 00                 3798 	.db #0x00	; 0
   4C11 55                 3799 	.db #0x55	; 85	'U'
   4C12 00                 3800 	.db #0x00	; 0
   4C13 FF                 3801 	.db #0xff	; 255
   4C14 00                 3802 	.db #0x00	; 0
   4C15                    3803 _font_267:
   4C15 00                 3804 	.db #0x00	; 0
   4C16 00                 3805 	.db #0x00	; 0
   4C17 AA                 3806 	.db #0xaa	; 170
   4C18 AA                 3807 	.db #0xaa	; 170
   4C19 AA                 3808 	.db #0xaa	; 170
   4C1A AA                 3809 	.db #0xaa	; 170
   4C1B FF                 3810 	.db #0xff	; 255
   4C1C 00                 3811 	.db #0x00	; 0
   4C1D AA                 3812 	.db #0xaa	; 170
   4C1E AA                 3813 	.db #0xaa	; 170
   4C1F AA                 3814 	.db #0xaa	; 170
   4C20 AA                 3815 	.db #0xaa	; 170
   4C21                    3816 _font_268:
   4C21 00                 3817 	.db #0x00	; 0
   4C22 00                 3818 	.db #0x00	; 0
   4C23 AA                 3819 	.db #0xaa	; 170
   4C24 00                 3820 	.db #0x00	; 0
   4C25 AA                 3821 	.db #0xaa	; 170
   4C26 00                 3822 	.db #0x00	; 0
   4C27 AA                 3823 	.db #0xaa	; 170
   4C28 00                 3824 	.db #0x00	; 0
   4C29 AA                 3825 	.db #0xaa	; 170
   4C2A 00                 3826 	.db #0x00	; 0
   4C2B FF                 3827 	.db #0xff	; 255
   4C2C AA                 3828 	.db #0xaa	; 170
   4C2D                    3829 _font_269:
   4C2D 00                 3830 	.db #0x00	; 0
   4C2E 00                 3831 	.db #0x00	; 0
   4C2F AA                 3832 	.db #0xaa	; 170
   4C30 AA                 3833 	.db #0xaa	; 170
   4C31 FF                 3834 	.db #0xff	; 255
   4C32 AA                 3835 	.db #0xaa	; 170
   4C33 AA                 3836 	.db #0xaa	; 170
   4C34 AA                 3837 	.db #0xaa	; 170
   4C35 AA                 3838 	.db #0xaa	; 170
   4C36 AA                 3839 	.db #0xaa	; 170
   4C37 AA                 3840 	.db #0xaa	; 170
   4C38 AA                 3841 	.db #0xaa	; 170
   4C39                    3842 _font_270:
   4C39 00                 3843 	.db #0x00	; 0
   4C3A 00                 3844 	.db #0x00	; 0
   4C3B FF                 3845 	.db #0xff	; 255
   4C3C AA                 3846 	.db #0xaa	; 170
   4C3D AA                 3847 	.db #0xaa	; 170
   4C3E AA                 3848 	.db #0xaa	; 170
   4C3F AA                 3849 	.db #0xaa	; 170
   4C40 AA                 3850 	.db #0xaa	; 170
   4C41 AA                 3851 	.db #0xaa	; 170
   4C42 AA                 3852 	.db #0xaa	; 170
   4C43 AA                 3853 	.db #0xaa	; 170
   4C44 AA                 3854 	.db #0xaa	; 170
   4C45                    3855 _font_271:
   4C45 00                 3856 	.db #0x00	; 0
   4C46 00                 3857 	.db #0x00	; 0
   4C47 FF                 3858 	.db #0xff	; 255
   4C48 AA                 3859 	.db #0xaa	; 170
   4C49 AA                 3860 	.db #0xaa	; 170
   4C4A AA                 3861 	.db #0xaa	; 170
   4C4B AA                 3862 	.db #0xaa	; 170
   4C4C AA                 3863 	.db #0xaa	; 170
   4C4D AA                 3864 	.db #0xaa	; 170
   4C4E AA                 3865 	.db #0xaa	; 170
   4C4F FF                 3866 	.db #0xff	; 255
   4C50 AA                 3867 	.db #0xaa	; 170
   4C51                    3868 _font_272:
   4C51 00                 3869 	.db #0x00	; 0
   4C52 00                 3870 	.db #0x00	; 0
   4C53 FF                 3871 	.db #0xff	; 255
   4C54 AA                 3872 	.db #0xaa	; 170
   4C55 AA                 3873 	.db #0xaa	; 170
   4C56 AA                 3874 	.db #0xaa	; 170
   4C57 FF                 3875 	.db #0xff	; 255
   4C58 AA                 3876 	.db #0xaa	; 170
   4C59 AA                 3877 	.db #0xaa	; 170
   4C5A 00                 3878 	.db #0x00	; 0
   4C5B AA                 3879 	.db #0xaa	; 170
   4C5C 00                 3880 	.db #0x00	; 0
   4C5D                    3881 _font_273:
   4C5D 00                 3882 	.db #0x00	; 0
   4C5E 00                 3883 	.db #0x00	; 0
   4C5F FF                 3884 	.db #0xff	; 255
   4C60 AA                 3885 	.db #0xaa	; 170
   4C61 AA                 3886 	.db #0xaa	; 170
   4C62 AA                 3887 	.db #0xaa	; 170
   4C63 AA                 3888 	.db #0xaa	; 170
   4C64 AA                 3889 	.db #0xaa	; 170
   4C65 AA                 3890 	.db #0xaa	; 170
   4C66 AA                 3891 	.db #0xaa	; 170
   4C67 FF                 3892 	.db #0xff	; 255
   4C68 00                 3893 	.db #0x00	; 0
   4C69                    3894 _font_274:
   4C69 00                 3895 	.db #0x00	; 0
   4C6A 00                 3896 	.db #0x00	; 0
   4C6B FF                 3897 	.db #0xff	; 255
   4C6C AA                 3898 	.db #0xaa	; 170
   4C6D AA                 3899 	.db #0xaa	; 170
   4C6E AA                 3900 	.db #0xaa	; 170
   4C6F FF                 3901 	.db #0xff	; 255
   4C70 00                 3902 	.db #0x00	; 0
   4C71 AA                 3903 	.db #0xaa	; 170
   4C72 AA                 3904 	.db #0xaa	; 170
   4C73 AA                 3905 	.db #0xaa	; 170
   4C74 AA                 3906 	.db #0xaa	; 170
   4C75                    3907 _font_275:
   4C75 00                 3908 	.db #0x00	; 0
   4C76 00                 3909 	.db #0x00	; 0
   4C77 55                 3910 	.db #0x55	; 85	'U'
   4C78 AA                 3911 	.db #0xaa	; 170
   4C79 AA                 3912 	.db #0xaa	; 170
   4C7A 00                 3913 	.db #0x00	; 0
   4C7B 55                 3914 	.db #0x55	; 85	'U'
   4C7C 00                 3915 	.db #0x00	; 0
   4C7D 00                 3916 	.db #0x00	; 0
   4C7E AA                 3917 	.db #0xaa	; 170
   4C7F FF                 3918 	.db #0xff	; 255
   4C80 00                 3919 	.db #0x00	; 0
   4C81                    3920 _font_276:
   4C81 00                 3921 	.db #0x00	; 0
   4C82 00                 3922 	.db #0x00	; 0
   4C83 FF                 3923 	.db #0xff	; 255
   4C84 AA                 3924 	.db #0xaa	; 170
   4C85 55                 3925 	.db #0x55	; 85	'U'
   4C86 00                 3926 	.db #0x00	; 0
   4C87 55                 3927 	.db #0x55	; 85	'U'
   4C88 00                 3928 	.db #0x00	; 0
   4C89 55                 3929 	.db #0x55	; 85	'U'
   4C8A 00                 3930 	.db #0x00	; 0
   4C8B 55                 3931 	.db #0x55	; 85	'U'
   4C8C 00                 3932 	.db #0x00	; 0
   4C8D                    3933 _font_277:
   4C8D 00                 3934 	.db #0x00	; 0
   4C8E 00                 3935 	.db #0x00	; 0
   4C8F AA                 3936 	.db #0xaa	; 170
   4C90 AA                 3937 	.db #0xaa	; 170
   4C91 AA                 3938 	.db #0xaa	; 170
   4C92 AA                 3939 	.db #0xaa	; 170
   4C93 AA                 3940 	.db #0xaa	; 170
   4C94 AA                 3941 	.db #0xaa	; 170
   4C95 AA                 3942 	.db #0xaa	; 170
   4C96 AA                 3943 	.db #0xaa	; 170
   4C97 FF                 3944 	.db #0xff	; 255
   4C98 AA                 3945 	.db #0xaa	; 170
   4C99                    3946 _font_278:
   4C99 00                 3947 	.db #0x00	; 0
   4C9A 00                 3948 	.db #0x00	; 0
   4C9B AA                 3949 	.db #0xaa	; 170
   4C9C AA                 3950 	.db #0xaa	; 170
   4C9D AA                 3951 	.db #0xaa	; 170
   4C9E AA                 3952 	.db #0xaa	; 170
   4C9F AA                 3953 	.db #0xaa	; 170
   4CA0 AA                 3954 	.db #0xaa	; 170
   4CA1 55                 3955 	.db #0x55	; 85	'U'
   4CA2 00                 3956 	.db #0x00	; 0
   4CA3 55                 3957 	.db #0x55	; 85	'U'
   4CA4 00                 3958 	.db #0x00	; 0
   4CA5                    3959 _font_279:
   4CA5 00                 3960 	.db #0x00	; 0
   4CA6 00                 3961 	.db #0x00	; 0
   4CA7 AA                 3962 	.db #0xaa	; 170
   4CA8 AA                 3963 	.db #0xaa	; 170
   4CA9 AA                 3964 	.db #0xaa	; 170
   4CAA AA                 3965 	.db #0xaa	; 170
   4CAB AA                 3966 	.db #0xaa	; 170
   4CAC AA                 3967 	.db #0xaa	; 170
   4CAD FF                 3968 	.db #0xff	; 255
   4CAE AA                 3969 	.db #0xaa	; 170
   4CAF AA                 3970 	.db #0xaa	; 170
   4CB0 AA                 3971 	.db #0xaa	; 170
   4CB1                    3972 _font_280:
   4CB1 00                 3973 	.db #0x00	; 0
   4CB2 00                 3974 	.db #0x00	; 0
   4CB3 AA                 3975 	.db #0xaa	; 170
   4CB4 AA                 3976 	.db #0xaa	; 170
   4CB5 AA                 3977 	.db #0xaa	; 170
   4CB6 AA                 3978 	.db #0xaa	; 170
   4CB7 55                 3979 	.db #0x55	; 85	'U'
   4CB8 00                 3980 	.db #0x00	; 0
   4CB9 AA                 3981 	.db #0xaa	; 170
   4CBA AA                 3982 	.db #0xaa	; 170
   4CBB AA                 3983 	.db #0xaa	; 170
   4CBC AA                 3984 	.db #0xaa	; 170
   4CBD                    3985 _font_281:
   4CBD 00                 3986 	.db #0x00	; 0
   4CBE 00                 3987 	.db #0x00	; 0
   4CBF AA                 3988 	.db #0xaa	; 170
   4CC0 AA                 3989 	.db #0xaa	; 170
   4CC1 AA                 3990 	.db #0xaa	; 170
   4CC2 AA                 3991 	.db #0xaa	; 170
   4CC3 FF                 3992 	.db #0xff	; 255
   4CC4 AA                 3993 	.db #0xaa	; 170
   4CC5 55                 3994 	.db #0x55	; 85	'U'
   4CC6 00                 3995 	.db #0x00	; 0
   4CC7 55                 3996 	.db #0x55	; 85	'U'
   4CC8 00                 3997 	.db #0x00	; 0
   4CC9                    3998 _font_282:
   4CC9 00                 3999 	.db #0x00	; 0
   4CCA 00                 4000 	.db #0x00	; 0
   4CCB FF                 4001 	.db #0xff	; 255
   4CCC AA                 4002 	.db #0xaa	; 170
   4CCD 00                 4003 	.db #0x00	; 0
   4CCE AA                 4004 	.db #0xaa	; 170
   4CCF 55                 4005 	.db #0x55	; 85	'U'
   4CD0 00                 4006 	.db #0x00	; 0
   4CD1 AA                 4007 	.db #0xaa	; 170
   4CD2 00                 4008 	.db #0x00	; 0
   4CD3 FF                 4009 	.db #0xff	; 255
   4CD4 AA                 4010 	.db #0xaa	; 170
   4CD5                    4011 _font_283:
   4CD5 00                 4012 	.db #0x00	; 0
   4CD6 00                 4013 	.db #0x00	; 0
   4CD7 00                 4014 	.db #0x00	; 0
   4CD8 AA                 4015 	.db #0xaa	; 170
   4CD9 55                 4016 	.db #0x55	; 85	'U'
   4CDA 00                 4017 	.db #0x00	; 0
   4CDB 55                 4018 	.db #0x55	; 85	'U'
   4CDC 00                 4019 	.db #0x00	; 0
   4CDD 55                 4020 	.db #0x55	; 85	'U'
   4CDE 00                 4021 	.db #0x00	; 0
   4CDF 00                 4022 	.db #0x00	; 0
   4CE0 AA                 4023 	.db #0xaa	; 170
   4CE1                    4024 _font_284:
   4CE1 00                 4025 	.db #0x00	; 0
   4CE2 00                 4026 	.db #0x00	; 0
   4CE3 55                 4027 	.db #0x55	; 85	'U'
   4CE4 00                 4028 	.db #0x00	; 0
   4CE5 55                 4029 	.db #0x55	; 85	'U'
   4CE6 00                 4030 	.db #0x00	; 0
   4CE7 55                 4031 	.db #0x55	; 85	'U'
   4CE8 00                 4032 	.db #0x00	; 0
   4CE9 55                 4033 	.db #0x55	; 85	'U'
   4CEA 00                 4034 	.db #0x00	; 0
   4CEB 55                 4035 	.db #0x55	; 85	'U'
   4CEC 00                 4036 	.db #0x00	; 0
   4CED                    4037 _font_285:
   4CED 00                 4038 	.db #0x00	; 0
   4CEE 00                 4039 	.db #0x00	; 0
   4CEF 55                 4040 	.db #0x55	; 85	'U'
   4CF0 00                 4041 	.db #0x00	; 0
   4CF1 00                 4042 	.db #0x00	; 0
   4CF2 AA                 4043 	.db #0xaa	; 170
   4CF3 00                 4044 	.db #0x00	; 0
   4CF4 AA                 4045 	.db #0xaa	; 170
   4CF5 00                 4046 	.db #0x00	; 0
   4CF6 AA                 4047 	.db #0xaa	; 170
   4CF7 55                 4048 	.db #0x55	; 85	'U'
   4CF8 00                 4049 	.db #0x00	; 0
   4CF9                    4050 _font_286:
   4CF9 00                 4051 	.db #0x00	; 0
   4CFA 00                 4052 	.db #0x00	; 0
   4CFB 55                 4053 	.db #0x55	; 85	'U'
   4CFC AA                 4054 	.db #0xaa	; 170
   4CFD AA                 4055 	.db #0xaa	; 170
   4CFE AA                 4056 	.db #0xaa	; 170
   4CFF 00                 4057 	.db #0x00	; 0
   4D00 00                 4058 	.db #0x00	; 0
   4D01 00                 4059 	.db #0x00	; 0
   4D02 00                 4060 	.db #0x00	; 0
   4D03 00                 4061 	.db #0x00	; 0
   4D04 00                 4062 	.db #0x00	; 0
   4D05                    4063 _font_287:
   4D05 0A                 4064 	.db #0x0a	; 10
   4D06 00                 4065 	.db #0x00	; 0
   4D07 00                 4066 	.db #0x00	; 0
   4D08 00                 4067 	.db #0x00	; 0
   4D09 00                 4068 	.db #0x00	; 0
   4D0A 00                 4069 	.db #0x00	; 0
   4D0B 00                 4070 	.db #0x00	; 0
   4D0C 00                 4071 	.db #0x00	; 0
   4D0D 00                 4072 	.db #0x00	; 0
   4D0E 00                 4073 	.db #0x00	; 0
   4D0F 00                 4074 	.db #0x00	; 0
   4D10 00                 4075 	.db #0x00	; 0
   4D11                    4076 _font_ts:
   4D11 91 3F              4077 	.dw _font_000
   4D13 9D 3F              4078 	.dw _font_001
   4D15 A9 3F              4079 	.dw _font_002
   4D17 B5 3F              4080 	.dw _font_003
   4D19 C1 3F              4081 	.dw _font_004
   4D1B CD 3F              4082 	.dw _font_005
   4D1D D9 3F              4083 	.dw _font_006
   4D1F E5 3F              4084 	.dw _font_007
   4D21 F1 3F              4085 	.dw _font_008
   4D23 FD 3F              4086 	.dw _font_009
   4D25 09 40              4087 	.dw _font_010
   4D27 15 40              4088 	.dw _font_011
   4D29 21 40              4089 	.dw _font_012
   4D2B 2D 40              4090 	.dw _font_013
   4D2D 39 40              4091 	.dw _font_014
   4D2F 45 40              4092 	.dw _font_015
   4D31 51 40              4093 	.dw _font_016
   4D33 5D 40              4094 	.dw _font_017
   4D35 69 40              4095 	.dw _font_018
   4D37 75 40              4096 	.dw _font_019
   4D39 81 40              4097 	.dw _font_020
   4D3B 8D 40              4098 	.dw _font_021
   4D3D 99 40              4099 	.dw _font_022
   4D3F A5 40              4100 	.dw _font_023
   4D41 B1 40              4101 	.dw _font_024
   4D43 BD 40              4102 	.dw _font_025
   4D45 C9 40              4103 	.dw _font_026
   4D47 D5 40              4104 	.dw _font_027
   4D49 E1 40              4105 	.dw _font_028
   4D4B ED 40              4106 	.dw _font_029
   4D4D F9 40              4107 	.dw _font_030
   4D4F 05 41              4108 	.dw _font_031
   4D51 11 41              4109 	.dw _font_032
   4D53 1D 41              4110 	.dw _font_033
   4D55 29 41              4111 	.dw _font_034
   4D57 35 41              4112 	.dw _font_035
   4D59 41 41              4113 	.dw _font_036
   4D5B 4D 41              4114 	.dw _font_037
   4D5D 59 41              4115 	.dw _font_038
   4D5F 65 41              4116 	.dw _font_039
   4D61 71 41              4117 	.dw _font_040
   4D63 7D 41              4118 	.dw _font_041
   4D65 89 41              4119 	.dw _font_042
   4D67 95 41              4120 	.dw _font_043
   4D69 A1 41              4121 	.dw _font_044
   4D6B AD 41              4122 	.dw _font_045
   4D6D B9 41              4123 	.dw _font_046
   4D6F C5 41              4124 	.dw _font_047
   4D71 D1 41              4125 	.dw _font_048
   4D73 DD 41              4126 	.dw _font_049
   4D75 E9 41              4127 	.dw _font_050
   4D77 F5 41              4128 	.dw _font_051
   4D79 01 42              4129 	.dw _font_052
   4D7B 0D 42              4130 	.dw _font_053
   4D7D 19 42              4131 	.dw _font_054
   4D7F 25 42              4132 	.dw _font_055
   4D81 31 42              4133 	.dw _font_056
   4D83 3D 42              4134 	.dw _font_057
   4D85 49 42              4135 	.dw _font_058
   4D87 55 42              4136 	.dw _font_059
   4D89 61 42              4137 	.dw _font_060
   4D8B 6D 42              4138 	.dw _font_061
   4D8D 79 42              4139 	.dw _font_062
   4D8F 85 42              4140 	.dw _font_063
   4D91 91 42              4141 	.dw _font_064
   4D93 9D 42              4142 	.dw _font_065
   4D95 A9 42              4143 	.dw _font_066
   4D97 B5 42              4144 	.dw _font_067
   4D99 C1 42              4145 	.dw _font_068
   4D9B CD 42              4146 	.dw _font_069
   4D9D D9 42              4147 	.dw _font_070
   4D9F E5 42              4148 	.dw _font_071
   4DA1 F1 42              4149 	.dw _font_072
   4DA3 FD 42              4150 	.dw _font_073
   4DA5 09 43              4151 	.dw _font_074
   4DA7 15 43              4152 	.dw _font_075
   4DA9 21 43              4153 	.dw _font_076
   4DAB 2D 43              4154 	.dw _font_077
   4DAD 39 43              4155 	.dw _font_078
   4DAF 45 43              4156 	.dw _font_079
   4DB1 51 43              4157 	.dw _font_080
   4DB3 5D 43              4158 	.dw _font_081
   4DB5 69 43              4159 	.dw _font_082
   4DB7 75 43              4160 	.dw _font_083
   4DB9 81 43              4161 	.dw _font_084
   4DBB 8D 43              4162 	.dw _font_085
   4DBD 99 43              4163 	.dw _font_086
   4DBF A5 43              4164 	.dw _font_087
   4DC1 B1 43              4165 	.dw _font_088
   4DC3 BD 43              4166 	.dw _font_089
   4DC5 C9 43              4167 	.dw _font_090
   4DC7 D5 43              4168 	.dw _font_091
   4DC9 E1 43              4169 	.dw _font_092
   4DCB ED 43              4170 	.dw _font_093
   4DCD F9 43              4171 	.dw _font_094
   4DCF 05 44              4172 	.dw _font_095
   4DD1 11 44              4173 	.dw _font_096
   4DD3 1D 44              4174 	.dw _font_097
   4DD5 29 44              4175 	.dw _font_098
   4DD7 35 44              4176 	.dw _font_099
   4DD9 41 44              4177 	.dw _font_100
   4DDB 4D 44              4178 	.dw _font_101
   4DDD 59 44              4179 	.dw _font_102
   4DDF 65 44              4180 	.dw _font_103
   4DE1 71 44              4181 	.dw _font_104
   4DE3 7D 44              4182 	.dw _font_105
   4DE5 89 44              4183 	.dw _font_106
   4DE7 95 44              4184 	.dw _font_107
   4DE9 A1 44              4185 	.dw _font_108
   4DEB AD 44              4186 	.dw _font_109
   4DED B9 44              4187 	.dw _font_110
   4DEF C5 44              4188 	.dw _font_111
   4DF1 D1 44              4189 	.dw _font_112
   4DF3 DD 44              4190 	.dw _font_113
   4DF5 E9 44              4191 	.dw _font_114
   4DF7 F5 44              4192 	.dw _font_115
   4DF9 01 45              4193 	.dw _font_116
   4DFB 0D 45              4194 	.dw _font_117
   4DFD 19 45              4195 	.dw _font_118
   4DFF 25 45              4196 	.dw _font_119
   4E01 31 45              4197 	.dw _font_120
   4E03 3D 45              4198 	.dw _font_121
   4E05 49 45              4199 	.dw _font_122
   4E07 55 45              4200 	.dw _font_123
   4E09 61 45              4201 	.dw _font_124
   4E0B 6D 45              4202 	.dw _font_125
   4E0D 79 45              4203 	.dw _font_126
   4E0F 85 45              4204 	.dw _font_127
   4E11 91 45              4205 	.dw _font_128
   4E13 9D 45              4206 	.dw _font_129
   4E15 A9 45              4207 	.dw _font_130
   4E17 B5 45              4208 	.dw _font_131
   4E19 C1 45              4209 	.dw _font_132
   4E1B CD 45              4210 	.dw _font_133
   4E1D D9 45              4211 	.dw _font_134
   4E1F E5 45              4212 	.dw _font_135
   4E21 F1 45              4213 	.dw _font_136
   4E23 FD 45              4214 	.dw _font_137
   4E25 09 46              4215 	.dw _font_138
   4E27 15 46              4216 	.dw _font_139
   4E29 21 46              4217 	.dw _font_140
   4E2B 2D 46              4218 	.dw _font_141
   4E2D 39 46              4219 	.dw _font_142
   4E2F 45 46              4220 	.dw _font_143
   4E31 51 46              4221 	.dw _font_144
   4E33 5D 46              4222 	.dw _font_145
   4E35 69 46              4223 	.dw _font_146
   4E37 75 46              4224 	.dw _font_147
   4E39 81 46              4225 	.dw _font_148
   4E3B 8D 46              4226 	.dw _font_149
   4E3D 99 46              4227 	.dw _font_150
   4E3F A5 46              4228 	.dw _font_151
   4E41 B1 46              4229 	.dw _font_152
   4E43 BD 46              4230 	.dw _font_153
   4E45 C9 46              4231 	.dw _font_154
   4E47 D5 46              4232 	.dw _font_155
   4E49 E1 46              4233 	.dw _font_156
   4E4B ED 46              4234 	.dw _font_157
   4E4D F9 46              4235 	.dw _font_158
   4E4F 05 47              4236 	.dw _font_159
   4E51 11 47              4237 	.dw _font_160
   4E53 1D 47              4238 	.dw _font_161
   4E55 29 47              4239 	.dw _font_162
   4E57 35 47              4240 	.dw _font_163
   4E59 41 47              4241 	.dw _font_164
   4E5B 4D 47              4242 	.dw _font_165
   4E5D 59 47              4243 	.dw _font_166
   4E5F 65 47              4244 	.dw _font_167
   4E61 71 47              4245 	.dw _font_168
   4E63 7D 47              4246 	.dw _font_169
   4E65 89 47              4247 	.dw _font_170
   4E67 95 47              4248 	.dw _font_171
   4E69 A1 47              4249 	.dw _font_172
   4E6B AD 47              4250 	.dw _font_173
   4E6D B9 47              4251 	.dw _font_174
   4E6F C5 47              4252 	.dw _font_175
   4E71 D1 47              4253 	.dw _font_176
   4E73 DD 47              4254 	.dw _font_177
   4E75 E9 47              4255 	.dw _font_178
   4E77 F5 47              4256 	.dw _font_179
   4E79 01 48              4257 	.dw _font_180
   4E7B 0D 48              4258 	.dw _font_181
   4E7D 19 48              4259 	.dw _font_182
   4E7F 25 48              4260 	.dw _font_183
   4E81 31 48              4261 	.dw _font_184
   4E83 3D 48              4262 	.dw _font_185
   4E85 49 48              4263 	.dw _font_186
   4E87 55 48              4264 	.dw _font_187
   4E89 61 48              4265 	.dw _font_188
   4E8B 6D 48              4266 	.dw _font_189
   4E8D 79 48              4267 	.dw _font_190
   4E8F 85 48              4268 	.dw _font_191
   4E91 91 48              4269 	.dw _font_192
   4E93 9D 48              4270 	.dw _font_193
   4E95 A9 48              4271 	.dw _font_194
   4E97 B5 48              4272 	.dw _font_195
   4E99 C1 48              4273 	.dw _font_196
   4E9B CD 48              4274 	.dw _font_197
   4E9D D9 48              4275 	.dw _font_198
   4E9F E5 48              4276 	.dw _font_199
   4EA1 F1 48              4277 	.dw _font_200
   4EA3 FD 48              4278 	.dw _font_201
   4EA5 09 49              4279 	.dw _font_202
   4EA7 15 49              4280 	.dw _font_203
   4EA9 21 49              4281 	.dw _font_204
   4EAB 2D 49              4282 	.dw _font_205
   4EAD 39 49              4283 	.dw _font_206
   4EAF 45 49              4284 	.dw _font_207
   4EB1 51 49              4285 	.dw _font_208
   4EB3 5D 49              4286 	.dw _font_209
   4EB5 69 49              4287 	.dw _font_210
   4EB7 75 49              4288 	.dw _font_211
   4EB9 81 49              4289 	.dw _font_212
   4EBB 8D 49              4290 	.dw _font_213
   4EBD 99 49              4291 	.dw _font_214
   4EBF A5 49              4292 	.dw _font_215
   4EC1 B1 49              4293 	.dw _font_216
   4EC3 BD 49              4294 	.dw _font_217
   4EC5 C9 49              4295 	.dw _font_218
   4EC7 D5 49              4296 	.dw _font_219
   4EC9 E1 49              4297 	.dw _font_220
   4ECB ED 49              4298 	.dw _font_221
   4ECD F9 49              4299 	.dw _font_222
   4ECF 05 4A              4300 	.dw _font_223
   4ED1 11 4A              4301 	.dw _font_224
   4ED3 1D 4A              4302 	.dw _font_225
   4ED5 29 4A              4303 	.dw _font_226
   4ED7 35 4A              4304 	.dw _font_227
   4ED9 41 4A              4305 	.dw _font_228
   4EDB 4D 4A              4306 	.dw _font_229
   4EDD 59 4A              4307 	.dw _font_230
   4EDF 65 4A              4308 	.dw _font_231
   4EE1 71 4A              4309 	.dw _font_232
   4EE3 7D 4A              4310 	.dw _font_233
   4EE5 89 4A              4311 	.dw _font_234
   4EE7 95 4A              4312 	.dw _font_235
   4EE9 A1 4A              4313 	.dw _font_236
   4EEB AD 4A              4314 	.dw _font_237
   4EED B9 4A              4315 	.dw _font_238
   4EEF C5 4A              4316 	.dw _font_239
   4EF1 D1 4A              4317 	.dw _font_240
   4EF3 DD 4A              4318 	.dw _font_241
   4EF5 E9 4A              4319 	.dw _font_242
   4EF7 F5 4A              4320 	.dw _font_243
   4EF9 01 4B              4321 	.dw _font_244
   4EFB 0D 4B              4322 	.dw _font_245
   4EFD 19 4B              4323 	.dw _font_246
   4EFF 25 4B              4324 	.dw _font_247
   4F01 31 4B              4325 	.dw _font_248
   4F03 3D 4B              4326 	.dw _font_249
   4F05 49 4B              4327 	.dw _font_250
   4F07 55 4B              4328 	.dw _font_251
   4F09 61 4B              4329 	.dw _font_252
   4F0B 6D 4B              4330 	.dw _font_253
   4F0D 79 4B              4331 	.dw _font_254
   4F0F 85 4B              4332 	.dw _font_255
   4F11 91 4B              4333 	.dw _font_256
   4F13 9D 4B              4334 	.dw _font_257
   4F15 A9 4B              4335 	.dw _font_258
   4F17 B5 4B              4336 	.dw _font_259
   4F19 C1 4B              4337 	.dw _font_260
   4F1B CD 4B              4338 	.dw _font_261
   4F1D D9 4B              4339 	.dw _font_262
   4F1F E5 4B              4340 	.dw _font_263
   4F21 F1 4B              4341 	.dw _font_264
   4F23 FD 4B              4342 	.dw _font_265
   4F25 09 4C              4343 	.dw _font_266
   4F27 15 4C              4344 	.dw _font_267
   4F29 21 4C              4345 	.dw _font_268
   4F2B 2D 4C              4346 	.dw _font_269
   4F2D 39 4C              4347 	.dw _font_270
   4F2F 45 4C              4348 	.dw _font_271
   4F31 51 4C              4349 	.dw _font_272
   4F33 5D 4C              4350 	.dw _font_273
   4F35 69 4C              4351 	.dw _font_274
   4F37 75 4C              4352 	.dw _font_275
   4F39 81 4C              4353 	.dw _font_276
   4F3B 8D 4C              4354 	.dw _font_277
   4F3D 99 4C              4355 	.dw _font_278
   4F3F A5 4C              4356 	.dw _font_279
   4F41 B1 4C              4357 	.dw _font_280
   4F43 BD 4C              4358 	.dw _font_281
   4F45 C9 4C              4359 	.dw _font_282
   4F47 D5 4C              4360 	.dw _font_283
   4F49 E1 4C              4361 	.dw _font_284
   4F4B ED 4C              4362 	.dw _font_285
   4F4D F9 4C              4363 	.dw _font_286
   4F4F 05 4D              4364 	.dw _font_287
                           4365 	.area _INITIALIZER
                           4366 	.area _CABS (ABS)
