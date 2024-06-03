PLY_AKM_REGISTERS_OFFSETVOLUME = .+1
PLY_AKM_DATA_OFFSETTRANSPOSITION = .+1
PLY_AKM_OFFSET1B = .+1
PLY_AKM_STOP_SOUNDS = .+1
PLY_AKM_USE_HOOKS = .+1
AHARMLESSGRENADE_START:
_AHARMLESSGRENADE_START::
PLY_AKM_DATA_OFFSETWAITEMPTYCELL: .dw AHARMLESSGRENADE_INSTRUMENTINDEXES
PLY_AKM_SOUNDEFFECTDATA_OFFSETCURRENTSTEP = .+1
PLY_AKM_SOUNDEFFECTDATA_OFFSETINVERTEDVOLUME:
PLY_AKM_OFFSET2B:
PLY_AKM_DATA_OFFSETPTSTARTTRACK: .dw AHARMLESSGRENADE_ARPEGGIOINDEXES-2
PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODLSB = .+1
PLY_AKM_SOUNDEFFECTDATA_OFFSETSPEED:
PLY_AKM_DATA_OFFSETPTTRACK: .dw AHARMLESSGRENADE_PITCHINDEXES-2
PLY_AKM_DATA_OFFSETESCAPENOTE = .+1
PLY_AKM_DATA_OFFSETBASENOTE: .dw AHARMLESSGRENADE_SUBSONG0
PLY_AKM_DATA_OFFSETESCAPEWAIT = .+1
PLY_AKM_DATA_OFFSETSECONDARYINSTRUMENT = .+1
PLY_AKM_REGISTERS_OFFSETSOFTWAREPERIODMSB = .+1
AHARMLESSGRENADE_INSTRUMENTINDEXES:
PLY_AKM_CHANNEL_SOUNDEFFECTDATASIZE:
PLY_AKM_DATA_OFFSETESCAPEINSTRUMENT: .dw AHARMLESSGRENADE_INSTRUMENT0
PLY_AKM_DATA_OFFSETPTINSTRUMENT: .dw AHARMLESSGRENADE_INSTRUMENT1
PLY_AKM_DATA_OFFSETINSTRUMENTSPEED = .+1
PLY_AKM_DATA_OFFSETINSTRUMENTCURRENTSTEP: .dw AHARMLESSGRENADE_INSTRUMENT2
PLY_AKM_DATA_OFFSETISPITCHUPDOWNUSED = .+1
PLY_AKM_DATA_OFFSETTRACKINVERTEDVOLUME: .dw AHARMLESSGRENADE_INSTRUMENT3
PLY_AKM_DATA_OFFSETTRACKPITCHINTEGER: .dw AHARMLESSGRENADE_INSTRUMENT4
PLY_AKM_DATA_OFFSETTRACKPITCHSPEED = .+1
PLY_AKM_DATA_OFFSETTRACKPITCHDECIMAL: .dw AHARMLESSGRENADE_INSTRUMENT5
PLY_AKM_DATA_OFFSETISARPEGGIOTABLEUSED = .+1
    .dw AHARMLESSGRENADE_INSTRUMENT6
PLY_AKM_DATA_OFFSETPTARPEGGIOTABLE: .dw AHARMLESSGRENADE_INSTRUMENT7
PLY_AKM_DATA_OFFSETARPEGGIOCURRENTSTEP = .+1
PLY_AKM_DATA_OFFSETPTARPEGGIOOFFSET: .dw AHARMLESSGRENADE_INSTRUMENT8
PLY_AKM_DATA_OFFSETCURRENTARPEGGIOVALUE = .+1
PLY_AKM_DATA_OFFSETARPEGGIOORIGINALSPEED: .dw AHARMLESSGRENADE_INSTRUMENT9
PLY_AKM_DATA_OFFSETPTPITCHTABLE = .+1
PLY_AKM_DATA_OFFSETISPITCHTABLEUSED: .dw AHARMLESSGRENADE_INSTRUMENT10
PLY_AKM_DATA_OFFSETPTPITCHOFFSET = .+1
    .dw AHARMLESSGRENADE_INSTRUMENT11
PLY_AKM_DATA_OFFSETPITCHORIGINALSPEED = .+1
PLY_AKM_DATA_OFFSETPITCHCURRENTSTEP: .dw AHARMLESSGRENADE_INSTRUMENT12
PLY_AKM_DATA_OFFSETCURRENTPITCHTABLEVALUE: .dw AHARMLESSGRENADE_INSTRUMENT13
PLY_AKM_TRACK1_DATA_SIZE: .dw AHARMLESSGRENADE_INSTRUMENT14
    .dw AHARMLESSGRENADE_INSTRUMENT15
    .dw AHARMLESSGRENADE_INSTRUMENT16
    .dw AHARMLESSGRENADE_INSTRUMENT17
    .dw AHARMLESSGRENADE_INSTRUMENT18
    .dw AHARMLESSGRENADE_INSTRUMENT19
AHARMLESSGRENADE_INSTRUMENT0: .db 255
AHARMLESSGRENADE_INSTRUMENT0LOOP: .db 0
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
AHARMLESSGRENADE_INSTRUMENT1: .db 1
    .db 210
    .db 12
    .db 178
    .db 12
    .db 178
    .db 12
    .db 82
    .db 169
    .db 24
    .db 41
    .db 169
    .db 24
    .db 37
    .db 33
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
AHARMLESSGRENADE_INSTRUMENT2: .db 0
    .db 189
    .db 1
    .db 2
    .db 253
    .db 1
    .db 1
    .db 32
    .db 0
    .db 125
    .db 48
    .db 0
    .db 125
    .db 68
    .db 0
    .db 125
    .db 116
    .db 0
    .db 125
    .db 228
    .db 0
    .db 121
    .db 180
    .db 0
    .db 117
    .db 36
    .db 1
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
AHARMLESSGRENADE_INSTRUMENT3: .db 0
    .db 248
    .db 1
    .db 216
    .db 1
    .db 184
    .db 1
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
AHARMLESSGRENADE_INSTRUMENT4: .db 0
    .db 248
    .db 4
    .db 200
    .db 1
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
AHARMLESSGRENADE_INSTRUMENT5: .db 0
AHARMLESSGRENADE_INSTRUMENT5LOOP: .db 248
    .db 1
    .db 200
    .db 1
    .db 176
    .db 1
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT5LOOP
AHARMLESSGRENADE_INSTRUMENT6: .db 3
    .db 248
    .db 1
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
AHARMLESSGRENADE_INSTRUMENT7: .db 2
    .db 61
    .db 53
    .db 49
    .db 45
    .db 41
    .db 37
    .db 33
    .db 29
    .db 25
    .db 21
    .db 17
    .db 13
    .db 9
    .db 5
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
AHARMLESSGRENADE_INSTRUMENT8: .db 0
AHARMLESSGRENADE_INSTRUMENT8LOOP: .db 74
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT8LOOP
AHARMLESSGRENADE_INSTRUMENT9: .db 0
    .db 248
    .db 2
    .db 57
    .db 245
    .db 1
    .db 1
    .db 208
    .db 0
    .db 237
    .db 1
    .db 1
    .db 144
    .db 1
    .db 216
    .db 1
    .db 216
    .db 3
    .db 208
    .db 4
    .db 200
    .db 1
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
AHARMLESSGRENADE_INSTRUMENT10: .db 4
AHARMLESSGRENADE_INSTRUMENT10LOOP: .db 82
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT10LOOP
AHARMLESSGRENADE_INSTRUMENT11: .db 1
AHARMLESSGRENADE_INSTRUMENT11LOOP: .db 194
    .db 12
    .db 194
    .db 12
    .db 120
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT11LOOP
AHARMLESSGRENADE_INSTRUMENT12: .db 0
AHARMLESSGRENADE_INSTRUMENT12LOOP: .db 61
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT12LOOP
AHARMLESSGRENADE_INSTRUMENT13: .db 0
    .db 61
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
AHARMLESSGRENADE_INSTRUMENT14: .db 0
AHARMLESSGRENADE_INSTRUMENT14LOOP: .db 58
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT14LOOP
AHARMLESSGRENADE_INSTRUMENT15: .db 1
    .db 61
AHARMLESSGRENADE_INSTRUMENT15LOOP: .db 121
    .db 251
    .db 255
    .db 49
    .db 109
    .db 5
    .db 0
    .db 61
    .db 117
    .db 249
    .db 255
    .db 37
    .db 105
    .db 32
    .db 0
    .db 45
    .db 49
    .db 57
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT15LOOP
AHARMLESSGRENADE_INSTRUMENT16: .db 0
    .db 232
    .db 5
    .db 216
    .db 5
    .db 208
    .db 5
    .db 200
    .db 5
    .db 184
    .db 5
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
AHARMLESSGRENADE_INSTRUMENT17: .db 0
    .db 232
    .db 9
    .db 216
    .db 9
    .db 208
    .db 9
    .db 200
    .db 9
    .db 184
    .db 9
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
AHARMLESSGRENADE_INSTRUMENT18: .db 0
    .db 232
    .db 17
    .db 216
    .db 17
    .db 208
    .db 17
    .db 200
    .db 17
    .db 184
    .db 17
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
AHARMLESSGRENADE_INSTRUMENT19: .db 0
    .db 232
    .db 25
    .db 216
    .db 25
    .db 208
    .db 25
    .db 200
    .db 25
    .db 184
    .db 25
    .db 4
    .dw AHARMLESSGRENADE_INSTRUMENT0LOOP
AHARMLESSGRENADE_ARPEGGIOINDEXES: .dw AHARMLESSGRENADE_ARPEGGIO1
    .dw AHARMLESSGRENADE_ARPEGGIO2
AHARMLESSGRENADE_ARPEGGIO1: .db 0
    .db 0
    .db 24
    .db 18
    .db 232
    .db 36
    .db 1
AHARMLESSGRENADE_ARPEGGIO2: .db 0
    .db 0
    .db 12
    .db 250
    .db 232
    .db 244
    .db 0
    .db 24
    .db 1
AHARMLESSGRENADE_PITCHINDEXES: .dw AHARMLESSGRENADE_PITCH1
AHARMLESSGRENADE_PITCH1: .db 1
    .db 0
    .db 0
    .db 0
    .db 254
    .db 248
    .db 4
    .db 5
AHARMLESSGRENADE_SUBSONG0: .dw AHARMLESSGRENADE_SUBSONG0_NOTEINDEXES
    .dw AHARMLESSGRENADE_SUBSONG0_TRACKINDEXES
    .db 6
    .db 1
    .db 2
    .db 0
    .db 1
    .db 21
    .db 10
    .db 0
    .db 12
AHARMLESSGRENADE_SUBSONG0_LOOP: .db 250
    .db 31
    .db 132
    .db 0
    .db 128
    .db 0
    .db 128
    .db 160
    .db 133
    .db 133
    .db 128
    .db 0
    .db 154
    .db 0
    .db 168
    .db 1
    .db 9
    .db 1
    .db 39
    .db 1
    .db 19
    .db 170
    .db 23
    .db 136
    .db 135
    .db 137
    .db 170
    .db 7
    .db 1
    .db 143
    .db 1
    .db 144
    .db 1
    .db 149
    .db 170
    .db 23
    .db 136
    .db 135
    .db 137
    .db 170
    .db 7
    .db 1
    .db 144
    .db 1
    .db 151
    .db 1
    .db 167
    .db 170
    .db 23
    .db 136
    .db 135
    .db 137
    .db 170
    .db 7
    .db 1
    .db 117
    .db 1
    .db 118
    .db 1
    .db 123
    .db 170
    .db 31
    .db 138
    .db 139
    .db 1
    .db 189
    .db 128
    .db 2
    .db 10
    .db 130
    .db 27
    .db 1
    .db 182
    .db 170
    .db 3
    .db 128
    .db 129
    .db 128
    .db 170
    .db 31
    .db 1
    .db 199
    .db 130
    .db 131
    .db 0
    .db 8
    .db 140
    .db 0
    .db 70
    .db 15
    .db 2
    .db 2
    .db 254
    .db 3
    .db 0
    .db 128
    .db 2
    .db 129
    .db 0
    .db 134
    .db 80
    .db 10
    .db 4
    .db 80
    .db 20
    .db 8
    .db 80
    .db 36
    .db 14
    .db 1
    .db 0
    .dw AHARMLESSGRENADE_SUBSONG0_LOOP
AHARMLESSGRENADE_SUBSONG0_TRACKINDEXES: .dw AHARMLESSGRENADE_SUBSONG0_TRACK22
    .dw AHARMLESSGRENADE_SUBSONG0_TRACK23
    .dw AHARMLESSGRENADE_SUBSONG0_TRACK19
    .dw AHARMLESSGRENADE_SUBSONG0_TRACK21
    .dw AHARMLESSGRENADE_SUBSONG0_TRACK0
    .dw AHARMLESSGRENADE_SUBSONG0_TRACK1
    .dw AHARMLESSGRENADE_SUBSONG0_TRACK25
    .dw AHARMLESSGRENADE_SUBSONG0_TRACK8
    .dw AHARMLESSGRENADE_SUBSONG0_TRACK6
    .dw AHARMLESSGRENADE_SUBSONG0_TRACK7
    .dw AHARMLESSGRENADE_SUBSONG0_TRACK15
    .dw AHARMLESSGRENADE_SUBSONG0_TRACK16
    .dw AHARMLESSGRENADE_SUBSONG0_TRACK24
AHARMLESSGRENADE_SUBSONG0_TRACK0: .db 146
    .db 82
    .db 146
    .db 146
    .db 82
    .db 146
    .db 146
    .db 146
    .db 146
    .db 146
    .db 82
    .db 146
    .db 146
    .db 82
    .db 82
    .db 90
    .db 94
    .db 29
    .db 94
    .db 32
    .db 85
    .db 94
    .db 29
    .db 80
    .db 218
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK1: .db 205
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK2: .db 12
    .db 96
    .db 0
    .db 12
    .db 112
    .db 3
    .db 50
    .db 12
    .db 64
    .db 2
    .db 12
    .db 64
    .db 50
    .db 12
    .db 96
    .db 2
    .db 12
    .db 112
    .db 4
    .db 18
    .db 12
    .db 112
    .db 3
    .db 34
    .db 12
    .db 64
    .db 50
    .db 12
    .db 96
    .db 2
    .db 12
    .db 112
    .db 5
    .db 18
    .db 12
    .db 112
    .db 3
    .db 34
    .db 12
    .db 112
    .db 4
    .db 50
    .db 12
    .db 96
    .db 2
    .db 12
    .db 112
    .db 6
    .db 50
    .db 12
    .db 112
    .db 4
    .db 82
    .db 12
    .db 112
    .db 6
    .db 34
    .db 12
    .db 96
    .db 2
    .db 12
    .db 112
    .db 3
    .db 34
    .db 12
    .db 112
    .db 4
    .db 18
    .db 12
    .db 112
    .db 3
    .db 50
    .db 12
    .db 96
    .db 2
    .db 12
    .db 112
    .db 4
    .db 34
    .db 12
    .db 112
    .db 5
    .db 50
    .db 12
    .db 112
    .db 4
    .db 18
    .db 12
    .db 96
    .db 2
    .db 12
    .db 112
    .db 3
    .db 18
    .db 12
    .db 112
    .db 5
    .db 50
    .db 12
    .db 64
    .db 66
    .db 12
    .db 96
    .db 2
    .db 12
    .db 112
    .db 3
    .db 66
    .db 12
    .db 112
    .db 4
    .db 34
    .db 240
    .db 6
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK3: .db 12
    .db 254
    .db 79
    .db 7
    .db 7
    .db 33
    .db 24
    .db 14
    .db 77
    .db 14
    .db 72
    .db 206
    .db 76
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK4: .db 12
    .db 224
    .db 3
    .db 0
    .db 12
    .db 254
    .db 75
    .db 7
    .db 7
    .db 35
    .db 24
    .db 14
    .db 71
    .db 14
    .db 77
    .db 206
    .db 79
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK5: .db 242
    .db 8
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK6: .db 12
    .db 69
    .db 0
    .db 157
    .db 244
    .db 0
    .db 32
    .db 69
    .db 157
    .db 244
    .db 0
    .db 32
    .db 69
    .db 93
    .db 244
    .db 0
    .db 32
    .db 241
    .db 0
    .db 6
    .db 114
    .db 10
    .db 69
    .db 157
    .db 244
    .db 0
    .db 32
    .db 69
    .db 157
    .db 244
    .db 0
    .db 32
    .db 69
    .db 221
    .db 127
    .db 244
    .db 0
    .db 32
AHARMLESSGRENADE_SUBSONG0_TRACK7: .db 12
    .db 114
    .db 12
    .db 0
    .db 157
    .db 244
    .db 0
    .db 32
    .db 66
    .db 157
    .db 244
    .db 0
    .db 32
    .db 66
    .db 93
    .db 244
    .db 0
    .db 32
    .db 241
    .db 0
    .db 6
    .db 114
    .db 12
    .db 12
    .db 66
    .db 2
    .db 157
    .db 244
    .db 0
    .db 32
    .db 66
    .db 157
    .db 244
    .db 0
    .db 32
    .db 66
    .db 221
    .db 127
    .db 244
    .db 0
    .db 32
AHARMLESSGRENADE_SUBSONG0_TRACK8: .db 12
    .db 224
    .db 2
    .db 0
    .db 32
    .db 160
    .db 118
    .db 9
    .db 12
    .db 70
    .db 18
    .db 12
    .db 70
    .db 34
    .db 12
    .db 70
    .db 50
    .db 12
    .db 70
    .db 66
    .db 12
    .db 70
    .db 82
    .db 12
    .db 70
    .db 98
    .db 12
    .db 96
    .db 2
    .db 32
    .db 32
    .db 224
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK9: .db 143
    .db 202
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK10: .db 243
    .db 9
    .db 3
    .db 160
    .db 67
    .db 224
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK11: .db 191
    .db 12
    .db 202
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK12: .db 142
    .db 19
    .db 157
    .db 244
    .db 0
    .db 16
    .db 206
    .db 16
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK13: .db 12
    .db 224
    .db 3
    .db 0
    .db 96
    .db 12
    .db 115
    .db 4
    .db 50
    .db 12
    .db 115
    .db 6
    .db 18
    .db 12
    .db 243
    .db 3
    .db 127
    .db 34
AHARMLESSGRENADE_SUBSONG0_TRACK14: .db 190
    .db 19
    .db 12
    .db 157
    .db 244
    .db 0
    .db 16
    .db 206
    .db 16
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK15: .db 254
    .db 39
    .db 14
    .db 5
    .db 195
    .db 9
    .db 247
    .db 8
    .db 5
    .db 196
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK16: .db 224
    .db 2
    .db 160
    .db 96
    .db 243
    .db 9
    .db 3
    .db 224
    .db 2
    .db 32
    .db 32
    .db 160
    .db 96
    .db 195
    .db 3
    .db 160
    .db 67
    .db 160
    .db 224
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK17: .db 12
    .db 177
    .db 13
    .db 64
    .db 136
    .db 142
    .db 55
    .db 139
    .db 137
    .db 12
    .db 129
    .db 50
    .db 129
    .db 136
    .db 142
    .db 54
    .db 139
    .db 12
    .db 137
    .db 34
    .db 129
    .db 129
    .db 136
    .db 143
    .db 201
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK18: .db 244
    .db 11
    .db 5
    .db 192
    .db 9
    .db 206
    .db 18
    .db 5
    .db 206
    .db 15
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK19: .db 96
    .db 113
    .db 16
    .db 65
    .db 96
    .db 65
    .db 96
    .db 115
    .db 9
    .db 113
    .db 16
    .db 65
    .db 65
    .db 96
    .db 113
    .db 17
    .db 65
    .db 96
    .db 65
    .db 65
    .db 96
    .db 65
    .db 113
    .db 18
    .db 96
    .db 65
    .db 96
    .db 115
    .db 9
    .db 113
    .db 18
    .db 113
    .db 19
    .db 65
    .db 96
    .db 65
    .db 115
    .db 9
    .db 96
    .db 113
    .db 19
    .db 224
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK20: .db 12
    .db 177
    .db 15
    .db 32
    .db 141
    .db 141
    .db 141
    .db 141
    .db 141
    .db 141
    .db 141
    .db 141
    .db 141
    .db 141
    .db 141
    .db 141
    .db 141
    .db 141
    .db 205
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK21: .db 12
    .db 177
    .db 7
    .db 33
    .db 22
    .db 136
    .db 142
    .db 55
    .db 139
    .db 137
    .db 129
    .db 129
    .db 136
    .db 142
    .db 54
    .db 139
    .db 137
    .db 129
    .db 129
    .db 136
    .db 143
    .db 201
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK22: .db 241
    .db 0
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK23: .db 12
    .db 206
    .db 60
    .db 127
    .db 244
    .db 0
    .db 80
AHARMLESSGRENADE_SUBSONG0_TRACK24: .db 12
    .db 84
    .db 0
    .db 84
    .db 94
    .db 28
    .db 95
    .db 87
    .db 94
    .db 31
    .db 80
    .db 80
    .db 80
    .db 80
    .db 80
    .db 80
    .db 94
    .db 28
    .db 80
    .db 94
    .db 31
    .db 80
    .db 87
    .db 87
    .db 87
    .db 87
    .db 94
    .db 32
    .db 94
    .db 33
    .db 84
    .db 84
    .db 84
    .db 84
    .db 84
    .db 90
    .db 94
    .db 25
    .db 80
    .db 82
    .db 222
    .db 22
    .db 127
AHARMLESSGRENADE_SUBSONG0_TRACK25: .db 12
    .db 254
    .db 72
    .db 12
    .db 127
    .db 81
    .db 245
    .db 0
    .db 2
    .db 38
AHARMLESSGRENADE_SUBSONG0_NOTEINDEXES: .db 24
    .db 48
    .db 23
    .db 36
    .db 27
    .db 35
    .db 40
    .db 30
    .db 51
    .db 57
    .db 26
    .db 58
SOUNDEFFECTS_SOUNDEFFECTS:
_SOUNDEFFECTS_SOUNDEFFECTS:: .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND1
    .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND2
    .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND3
    .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND4
    .dw SOUNDEFFECTS_SOUNDEFFECTS_SOUND5
SOUNDEFFECTS_SOUNDEFFECTS_SOUND1: .db 0
SOUNDEFFECTS_SOUNDEFFECTS_SOUND1_LOOP: .db 189
    .db 1
    .db 95
    .db 0
    .db 189
    .db 1
    .db 99
    .db 0
    .db 177
    .db 1
    .db 102
    .db 0
    .db 173
    .db 1
    .db 106
    .db 0
    .db 4
SOUNDEFFECTS_SOUNDEFFECTS_SOUND2: .db 1
SOUNDEFFECTS_SOUNDEFFECTS_SOUND2_LOOP: .db 189
    .db 1
    .db 45
    .db 1
    .db 189
    .db 8
    .db 63
    .db 1
    .db 185
    .db 2
    .db 146
    .db 1
    .db 181
    .db 16
    .db 213
    .db 0
    .db 177
    .db 2
    .db 225
    .db 0
    .db 173
    .db 2
    .db 239
    .db 0
    .db 165
    .db 16
    .db 102
    .db 1
    .db 157
    .db 31
    .db 119
    .db 0
    .db 153
    .db 7
    .db 80
    .db 0
    .db 4
SOUNDEFFECTS_SOUNDEFFECTS_SOUND3: .db 1
SOUNDEFFECTS_SOUNDEFFECTS_SOUND3_LOOP: .db 189
    .db 1
    .db 119
    .db 0
    .db 57
    .db 60
    .db 0
    .db 181
    .db 1
    .db 95
    .db 0
    .db 49
    .db 47
    .db 0
    .db 185
    .db 1
    .db 80
    .db 0
    .db 61
    .db 40
    .db 0
    .db 3
    .db 15
    .db 0
    .db 222
    .db 1
    .db 61
    .db 239
    .db 0
    .db 3
    .db 15
    .db 0
    .db 222
    .db 1
    .db 61
    .db 239
    .db 0
    .db 3
    .db 15
    .db 0
    .db 222
    .db 1
    .db 61
    .db 239
    .db 0
    .db 3
    .db 30
    .db 0
    .db 188
    .db 3
    .db 61
    .db 239
    .db 0
    .db 3
    .db 30
    .db 0
    .db 188
    .db 3
    .db 61
    .db 239
    .db 0
    .db 4
SOUNDEFFECTS_SOUNDEFFECTS_SOUND4: .db 1
SOUNDEFFECTS_SOUNDEFFECTS_SOUND4_LOOP: .db 189
    .db 1
    .db 119
    .db 0
    .db 61
    .db 56
    .db 0
    .db 189
    .db 1
    .db 106
    .db 0
    .db 61
    .db 53
    .db 0
    .db 61
    .db 100
    .db 0
    .db 61
    .db 50
    .db 0
    .db 4
SOUNDEFFECTS_SOUNDEFFECTS_SOUND5: .db 1
SOUNDEFFECTS_SOUNDEFFECTS_SOUND5_LOOP: .db 3
    .db 2
    .db 0
    .db 27
    .db 0
    .db 3
    .db 3
    .db 0
    .db 47
    .db 0
    .db 3
    .db 2
    .db 0
    .db 30
    .db 0
    .db 3
    .db 5
    .db 0
    .db 75
    .db 0
    .db 3
    .db 3
    .db 0
    .db 47
    .db 0
    .db 3
    .db 7
    .db 0
    .db 119
    .db 0
    .db 3
    .db 5
    .db 0
    .db 75
    .db 0
    .db 3
    .db 12
    .db 0
    .db 190
    .db 0
    .db 3
    .db 7
    .db 0
    .db 119
    .db 0
    .db 3
    .db 19
    .db 0
    .db 45
    .db 1
    .db 3
    .db 12
    .db 0
    .db 190
    .db 0
    .db 3
    .db 34
    .db 0
    .db 24
    .db 2
    .db 3
    .db 50
    .db 0
    .db 36
    .db 3
    .db 4
PLY_AKM_START: jp PLY_AKM_INIT
    jp PLY_AKM_PLAY
    jp PLY_AKM_INITVARS_END
_PLY_AKM_INITSOUNDEFFECTS::
PLY_AKM_INITSOUNDEFFECTS: ld (PLY_AKM_PTSOUNDEFFECTTABLE+1),hl
    ret 
_PLY_AKM_PLAYSOUNDEFFECT::
PLY_AKM_PLAYSOUNDEFFECT: dec a
PLY_AKM_PTSOUNDEFFECTTABLE: ld hl,#0
    ld e,a
    ld d,#0
    add hl,de
    add hl,de
    ld e,(hl)
    inc hl
    ld d,(hl)
    ld a,(de)
    inc de
    ex af,af'
    ld a,b
    ld hl,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
    ld b,#0
    sla c
    sla c
    sla c
    add hl,bc
    ld (hl),e
    inc hl
    ld (hl),d
    inc hl
    ld (hl),a
    inc hl
    ld (hl),#0
    inc hl
    ex af,af'
    ld (hl),a
    ret 
_PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL::
PLY_AKM_STOPSOUNDEFFECTFROMCHANNEL: add a,a
    add a,a
    add a,a
    ld e,a
    ld d,#0
    ld hl,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
    add hl,de
    ld (hl),d
    inc hl
    ld (hl),d
    ret 
PLY_AKM_PLAYSOUNDEFFECTSSTREAM: rla 
    rla 
    ld ix,#PLY_AKM_CHANNEL1_SOUNDEFFECTDATA
    ld iy,#PLY_AKM_TRACK3_DATA_END
    ld c,a
    call PLY_AKM_PSES_PLAY
    ld ix,#PLY_AKM_CHANNEL2_SOUNDEFFECTDATA
    ld iy,#PLY_AKM_TRACK2_REGISTERS
    srl c
    call PLY_AKM_PSES_PLAY
    ld ix,#PLY_AKM_CHANNEL3_SOUNDEFFECTDATA
    ld iy,#PLY_AKM_TRACK3_REGISTERS
    rr c
    call PLY_AKM_PSES_PLAY
    ld a,c
    ld (PLY_AKM_MIXERREGISTER),a
    ret 
PLY_AKM_PSES_PLAY: ld l,+0(ix)
    ld h,+1(ix)
    ld a,l
    or h
    ret z
PLY_AKM_PSES_READFIRSTBYTE: ld a,(hl)
    inc hl
    ld b,a
    rra 
    jr c,PLY_AKM_PSES_SOFTWAREORSOFTWAREANDHARDWARE
    rra 
    rra 
PLY_AKM_PSES_S_ENDORLOOP: xor a
    ld +0(ix),a
    ld +1(ix),a
    ret 
PLY_AKM_PSES_SAVEPOINTERANDEXIT: ld a,+3(ix)
    cp +4(ix)
    jr c,PLY_AKM_PSES_NOTREACHED
    ld +3(ix),#0
    .db 221
    .db 117
    .db +0
    .db 221
    .db 116
    .db +1
    ret 
PLY_AKM_PSES_NOTREACHED: inc +3(ix)
    ret 
PLY_AKM_PSES_SOFTWAREORSOFTWAREANDHARDWARE: rra 
    jr c,PLY_AKM_PSES_SOFTWAREANDHARDWARE
    call PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS
    rl b
    call c,PLY_AKM_PSES_READNOISEANDOPENNOISECHANNEL
    res 2,c
    call PLY_AKM_PSES_READSOFTWAREPERIOD
    jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
PLY_AKM_PSES_SOFTWAREANDHARDWARE: call PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE
    call PLY_AKM_PSES_READSOFTWAREPERIOD
    res 2,c
    jr PLY_AKM_PSES_SAVEPOINTERANDEXIT
PLY_AKM_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE: rra 
    and #7
    add a,#8
    ld (PLY_AKM_SENDPSGREGISTERR13+1),a
    call PLY_AKM_PSES_READHARDWAREPERIOD
    ld a,#16
    jp PLY_AKM_PSES_MANAGEVOLUMEFROMA_HARD
PLY_AKM_PSES_READNOISEANDOPENNOISECHANNEL: ld a,(hl)
    ld (PLY_AKM_NOISEREGISTER),a
    inc hl
    res 5,c
    ret 
PLY_AKM_PSES_READHARDWAREPERIOD: ld a,(hl)
    ld (PLY_AKM_REG11),a
    inc hl
    ld a,(hl)
    ld (PLY_AKM_REG12),a
    inc hl
    ret 
PLY_AKM_PSES_READSOFTWAREPERIOD: ld a,(hl)
    ld +5(iy),a
    inc hl
    ld a,(hl)
    ld +9(iy),a
    inc hl
    ret 
PLY_AKM_PSES_MANAGEVOLUMEFROMA_FILTER4BITS: and #15
PLY_AKM_PSES_MANAGEVOLUMEFROMA_HARD: sub +2(ix)
    jr nc,PLY_AKM_PSES_MVFA_NOOVERFLOW
    xor a
PLY_AKM_PSES_MVFA_NOOVERFLOW: ld +1(iy),a
    ret 
PLY_AKM_CHANNEL1_SOUNDEFFECTDATA: .dw 0
PLY_AKM_CHANNEL1_SOUNDEFFECTINVERTEDVOLUME: .db 0
PLY_AKM_CHANNEL1_SOUNDEFFECTCURRENTSTEP: .db 0
PLY_AKM_CHANNEL1_SOUNDEFFECTSPEED: .db 0
    .db 0
    .db 0
    .db 0
PLY_AKM_CHANNEL2_SOUNDEFFECTDATA: .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
PLY_AKM_CHANNEL3_SOUNDEFFECTDATA: .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
_PLY_AKM_INIT::
PLY_AKM_INIT: ld de,#PLY_AKM_READLINE+1
    ldi
    ldi
    ld de,#PLY_AKM_PTARPEGGIOS+1
    ldi
    ldi
    ld de,#PLY_AKM_PTPITCHES+1
    ldi
    ldi
    add a,a
    ld e,a
    ld d,#0
    add hl,de
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld ix,#PLY_AKM_INITVARS_START
    ld a,#13
PLY_AKM_INITVARS_LOOP: ld e,+0(ix)
    ld d,+1(ix)
    inc ix
    inc ix
    ldi
    dec a
    jr nz,PLY_AKM_INITVARS_LOOP
    ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
    ex de,hl
    ld hl,#PLY_AKM_PTLINKER+1
    ld (hl),e
    inc hl
    ld (hl),d
    ld hl,#PLY_AKM_TRACK1_DATA
    ld de,#PLY_AKM_TRACK1_TRANSPOSITION
    ld bc,#35
    ld (hl),a
    ldir
    ld a,(PLY_AKM_SPEED+1)
    dec a
    ld (PLY_AKM_TICKCOUNTER+1),a
    ld hl,(PLY_AKM_READLINE+1)
    ld e,(hl)
    inc hl
    ld d,(hl)
    inc de
    ld (PLY_AKM_TRACK1_PTINSTRUMENT),de
    ld (PLY_AKM_TRACK2_PTINSTRUMENT),de
    ld (PLY_AKM_TRACK3_PTINSTRUMENT),de
    ret 
PLY_AKM_INITVARS_START: .dw PLY_AKM_NOTEINDEXTABLE+1
    .dw PLY_AKM_NOTEINDEXTABLE+2
    .dw PLY_AKM_LINKER+1
    .dw PLY_AKM_LINKER+2
    .dw PLY_AKM_SPEED+1
    .dw PLY_AKM_RT_PRIMARYINSTRUMENT+1
    .dw PLY_AKM_RT_SECONDARYINSTRUMENT+1
    .dw PLY_AKM_RT_PRIMARYWAIT+1
    .dw PLY_AKM_RT_SECONDARYWAIT+1
    .dw PLY_AKM_DEFAULTSTARTNOTEINTRACKS+1
    .dw PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS+1
    .dw PLY_AKM_DEFAULTSTARTWAITINTRACKS+1
    .dw PLY_AKM_FLAGNOTEANDEFFECTINCELL+1
PLY_AKM_INITVARS_END:
_PLY_AKM_STOP::
PLY_AKM_STOP: ld (PLY_AKM_SENDPSGREGISTEREND+1),sp
    xor a
    ld (PLY_AKM_TRACK1_VOLUME),a
    ld (PLY_AKM_TRACK2_VOLUME),a
    ld (PLY_AKM_TRACK3_VOLUME),a
    ld a,#63
    ld (PLY_AKM_MIXERREGISTER),a
    jp PLY_AKM_SENDPSG
_PLY_AKM_PLAY::
PLY_AKM_PLAY: ld (PLY_AKM_SENDPSGREGISTEREND+1),sp
PLY_AKM_TICKCOUNTER: ld a,#0
    inc a
PLY_AKM_SPEED: cp #1
    jp nz,PLY_AKM_TICKCOUNTERMANAGED
PLY_AKM_PATTERNREMAININGHEIGHT: ld a,#0
    sub #1
    jr c,PLY_AKM_LINKER
    ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
    jr PLY_AKM_READLINE
PLY_AKM_LINKER:
PLY_AKM_TRACKINDEX: ld de,#0
    exx
PLY_AKM_PTLINKER: ld hl,#0
PLY_AKM_LINKERPOSTPT: xor a
    ld (PLY_AKM_TRACK1_DATA),a
    ld (PLY_AKM_TRACK1_DATA_END),a
    ld (PLY_AKM_TRACK2_DATA_END),a
PLY_AKM_DEFAULTSTARTNOTEINTRACKS: ld a,#0
    ld (PLY_AKM_TRACK1_ESCAPENOTE),a
    ld (PLY_AKM_TRACK2_ESCAPENOTE),a
    ld (PLY_AKM_TRACK3_ESCAPENOTE),a
PLY_AKM_DEFAULTSTARTINSTRUMENTINTRACKS: ld a,#0
    ld (PLY_AKM_TRACK1_ESCAPEINSTRUMENT),a
    ld (PLY_AKM_TRACK2_ESCAPEINSTRUMENT),a
    ld (PLY_AKM_TRACK3_ESCAPEINSTRUMENT),a
PLY_AKM_DEFAULTSTARTWAITINTRACKS: ld a,#0
    ld (PLY_AKM_TRACK1_ESCAPEWAIT),a
    ld (PLY_AKM_TRACK2_ESCAPEWAIT),a
    ld (PLY_AKM_TRACK3_ESCAPEWAIT),a
    ld b,(hl)
    inc hl
    rr b
    jr nc,PLY_AKM_LINKERAFTERSPEEDCHANGE
    ld a,(hl)
    inc hl
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    jr PLY_AKM_LINKERPOSTPT
PLY_AKM_LINKERAFTERSPEEDCHANGE: rr b
    jr nc,PLY_AKM_LINKERUSEPREVIOUSHEIGHT
    ld a,(hl)
    inc hl
    ld (PLY_AKM_LINKERUSEPREVIOUSHEIGHT+1),a
    jr PLY_AKM_LINKERSETREMAININGHEIGHT
PLY_AKM_LINKERUSEPREVIOUSHEIGHT:
PLY_AKM_LINKERPREVIOUSREMAININGHEIGHT: ld a,#0
PLY_AKM_LINKERSETREMAININGHEIGHT: ld (PLY_AKM_PATTERNREMAININGHEIGHT+1),a
    ld ix,#PLY_AKM_TRACK1_DATA
    call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
    ld ix,#PLY_AKM_TRACK1_DATA_END
    call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
    ld ix,#PLY_AKM_TRACK2_DATA_END
    call PLY_AKM_CHECKTRANSPOSITIONANDTRACK
    ld (PLY_AKM_PTLINKER+1),hl
PLY_AKM_READLINE:
PLY_AKM_PTINSTRUMENTS: ld de,#0
PLY_AKM_NOTEINDEXTABLE: ld bc,#0
    exx
    ld ix,#PLY_AKM_TRACK1_DATA
    call PLY_AKM_READTRACK
    ld ix,#PLY_AKM_TRACK1_DATA_END
    call PLY_AKM_READTRACK
    ld ix,#PLY_AKM_TRACK2_DATA_END
    call PLY_AKM_READTRACK
    xor a
PLY_AKM_TICKCOUNTERMANAGED: ld (PLY_AKM_TICKCOUNTER+1),a
    ld de,#PLY_AKM_PERIODTABLE
    exx
    ld c,#224
    ld ix,#PLY_AKM_TRACK1_DATA
    call PLY_AKM_MANAGEEFFECTS
    ld iy,#PLY_AKM_TRACK3_DATA_END
    call PLY_AKM_PLAYSOUNDSTREAM
    srl c
    ld ix,#PLY_AKM_TRACK1_DATA_END
    call PLY_AKM_MANAGEEFFECTS
    ld iy,#PLY_AKM_TRACK2_REGISTERS
    call PLY_AKM_PLAYSOUNDSTREAM
    rr c
    ld ix,#PLY_AKM_TRACK2_DATA_END
    call PLY_AKM_MANAGEEFFECTS
    ld iy,#PLY_AKM_TRACK3_REGISTERS
    call PLY_AKM_PLAYSOUNDSTREAM
    ld a,c
    call PLY_AKM_PLAYSOUNDEFFECTSSTREAM
PLY_AKM_SENDPSG: ld sp,#PLY_AKM_TRACK3_DATA_END
    ld bc,#63104
    ld a,#192
    ld de,#62710
    out (c),a
PLY_AKM_SENDPSGREGISTER: pop hl
PLY_AKM_SENDPSGREGISTERAFTERPOP: ld b,d
    out (c),l
    ld b,e
    .db 237
    .db 113
    ld b,d
    out (c),h
    ld b,e
    out (c),c
    out (c),a
    ret 
PLY_AKM_SENDPSGREGISTERR13:
PLY_AKM_SETREG13: ld a,#0
PLY_AKM_SETREG13OLD: cp #0
    jr z,PLY_AKM_SENDPSGREGISTEREND
    ld (PLY_AKM_SETREG13OLD+1),a
    ld h,a
    ld l,#13
    ld a,#192
    ret 
PLY_AKM_SENDPSGREGISTEREND:
PLY_AKM_SAVESP: ld sp,#0
    ret 
PLY_AKM_CHECKTRANSPOSITIONANDTRACK: rr b
    jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_AFTERTRANSPOSITION
    ld a,(hl)
    ld +1(ix),a
    inc hl
PLY_AKM_CHECKTRANSPOSITIONANDTRACK_AFTERTRANSPOSITION: rr b
    jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_NONEWTRACK
    ld a,(hl)
    inc hl
    sla a
    jr nc,PLY_AKM_CHECKTRANSPOSITIONANDTRACK_TRACKOFFSET
    exx
    ld l,a
    ld h,#0
    add hl,de
    ld a,(hl)
    ld +2(ix),a
    ld +4(ix),a
    inc hl
    ld a,(hl)
    ld +3(ix),a
    ld +5(ix),a
    exx
    ret 
PLY_AKM_CHECKTRANSPOSITIONANDTRACK_TRACKOFFSET: rra 
    ld d,a
    ld e,(hl)
    inc hl
    ld c,l
    ld a,h
    add hl,de
    .db 221
    .db 117
    .db +2
    .db 221
    .db 116
    .db +3
    .db 221
    .db 117
    .db +4
    .db 221
    .db 116
    .db +5
    ld l,c
    ld h,a
    ret 
PLY_AKM_CHECKTRANSPOSITIONANDTRACK_NONEWTRACK: ld a,+2(ix)
    ld +4(ix),a
    ld a,+3(ix)
    ld +5(ix),a
    ret 
PLY_AKM_READTRACK: ld a,+0(ix)
    sub #1
    jr c,PLY_AKM_RT_NOEMPTYCELL
    ld +0(ix),a
    ret 
PLY_AKM_RT_NOEMPTYCELL: ld l,+4(ix)
    ld h,+5(ix)
PLY_AKM_RT_GETDATABYTE: ld b,(hl)
    inc hl
    ld a,b
    and #15
PLY_AKM_FLAGNOTEANDEFFECTINCELL: cp #12
    jr c,PLY_AKM_RT_NOTEREFERENCE
    sub #12
    jr z,PLY_AKM_RT_NOTEANDEFFECTS
    dec a
    jr z,PLY_AKM_RT_NONOTEMAYBEEFFECTS
    dec a
    jr z,PLY_AKM_RT_NEWESCAPENOTE
    ld a,+7(ix)
    jr PLY_AKM_RT_AFTERNOTEREAD
PLY_AKM_RT_NEWESCAPENOTE: ld a,(hl)
    ld +7(ix),a
    inc hl
    jr PLY_AKM_RT_AFTERNOTEREAD
PLY_AKM_RT_NOTEANDEFFECTS: dec a
    ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
    jr PLY_AKM_RT_GETDATABYTE
PLY_AKM_RT_NONOTEMAYBEEFFECTS: bit 4,b
    jr z,PLY_AKM_RT_READWAITFLAGS
    ld a,b
    ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
    jr PLY_AKM_RT_READWAITFLAGS
PLY_AKM_RT_NOTEREFERENCE: exx
    ld l,a
    ld h,#0
    add hl,bc
    ld a,(hl)
    exx
PLY_AKM_RT_AFTERNOTEREAD: add a,+1(ix)
    ld +6(ix),a
    ld a,b
    and #48
    jr z,PLY_AKM_RT_SAMEESCAPEINSTRUMENT
    cp #16
    jr z,PLY_AKM_RT_PRIMARYINSTRUMENT
    cp #32
    jr z,PLY_AKM_RT_SECONDARYINSTRUMENT
    ld a,(hl)
    inc hl
    ld +8(ix),a
    jr PLY_AKM_RT_STORECURRENTINSTRUMENT
PLY_AKM_RT_SAMEESCAPEINSTRUMENT: ld a,+8(ix)
    jr PLY_AKM_RT_STORECURRENTINSTRUMENT
PLY_AKM_RT_SECONDARYINSTRUMENT:
PLY_AKM_SECONDARYINSTRUMENT: ld a,#0
    jr PLY_AKM_RT_STORECURRENTINSTRUMENT
PLY_AKM_RT_PRIMARYINSTRUMENT:
PLY_AKM_PRIMARYINSTRUMENT: ld a,#0
PLY_AKM_RT_STORECURRENTINSTRUMENT: exx
    add a,a
    ld l,a
    ld h,#0
    add hl,de
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,(hl)
    inc hl
    ld +13(ix),a
    .db 221
    .db 117
    .db +10
    .db 221
    .db 116
    .db +11
    exx
    xor a
    ld +12(ix),a
    ld +15(ix),a
    ld +16(ix),a
    ld +17(ix),a
    ld +24(ix),a
    ld +25(ix),a
    ld +31(ix),a
    ld +32(ix),a
PLY_AKM_RT_READWAITFLAGS: ld a,b
    and #192
    jr z,PLY_AKM_RT_SAMEESCAPEWAIT
    cp #64
    jr z,PLY_AKM_RT_PRIMARYWAIT
    cp #128
    jr z,PLY_AKM_RT_SECONDARYWAIT
    ld a,(hl)
    inc hl
    ld +9(ix),a
    jr PLY_AKM_RT_STORECURRENTWAIT
PLY_AKM_RT_SAMEESCAPEWAIT: ld a,+9(ix)
    jr PLY_AKM_RT_STORECURRENTWAIT
PLY_AKM_RT_PRIMARYWAIT:
PLY_AKM_PRIMARYWAIT: ld a,#0
    jr PLY_AKM_RT_STORECURRENTWAIT
PLY_AKM_RT_SECONDARYWAIT:
PLY_AKM_SECONDARYWAIT: ld a,#0
PLY_AKM_RT_STORECURRENTWAIT: ld +0(ix),a
PLY_AKM_RT_READEFFECTSFLAG: ld a,#0
    or a
    jr nz,PLY_AKM_RT_READEFFECTS
PLY_AKM_RT_AFTEREFFECTS: .db 221
    .db 117
    .db +4
    .db 221
    .db 116
    .db +5
    ret 
PLY_AKM_RT_READEFFECTS: xor a
    ld (PLY_AKM_RT_READEFFECTSFLAG+1),a
PLY_AKM_RT_READEFFECT: ld iy,#PLY_AKM_EFFECTTABLE
    ld b,(hl)
    ld a,b
    inc hl
    and #14
    ld e,a
    ld d,#0
    add iy,de
    ld a,b
    rra 
    rra 
    rra 
    rra 
    and #15
    jp (iy)
PLY_AKM_RT_READEFFECT_RETURN: bit 0,b
    jr nz,PLY_AKM_RT_READEFFECT
    jr PLY_AKM_RT_AFTEREFFECTS
PLY_AKM_RT_WAITLONG: ld a,(hl)
    inc hl
    ld +0(ix),a
    jr PLY_AKM_RT_CELLREAD
PLY_AKM_RT_WAITSHORT: ld a,b
    rlca 
    rlca 
    and #3
    ld +0(ix),a
PLY_AKM_RT_CELLREAD: .db 221
    .db 117
    .db +4
    .db 221
    .db 116
    .db +5
    ret 
PLY_AKM_MANAGEEFFECTS: ld a,+15(ix)
    or a
    jr z,PLY_AKM_ME_PITCHUPDOWNFINISHED
    ld l,+18(ix)
    ld h,+16(ix)
    ld e,+19(ix)
    ld d,+20(ix)
    ld a,+17(ix)
    bit 7,d
    jr nz,PLY_AKM_ME_PITCHUPDOWN_NEGATIVESPEED
PLY_AKM_ME_PITCHUPDOWN_POSITIVESPEED: add hl,de
    adc a,#0
    jr PLY_AKM_ME_PITCHUPDOWN_SAVE
PLY_AKM_ME_PITCHUPDOWN_NEGATIVESPEED: res 7,d
    or a
    sbc hl,de
    sbc a,#0
PLY_AKM_ME_PITCHUPDOWN_SAVE: ld +17(ix),a
    .db 221
    .db 117
    .db +18
    .db 221
    .db 116
    .db +16
PLY_AKM_ME_PITCHUPDOWNFINISHED: ld a,+21(ix)
    or a
    jr z,PLY_AKM_ME_ARPEGGIOTABLEFINISHED
    ld e,+22(ix)
    ld d,+23(ix)
    ld l,+24(ix)
    ld h,#0
    add hl,de
    ld a,(hl)
    sra a
    ld +27(ix),a
    ld a,+25(ix)
    cp +26(ix)
    jr c,PLY_AKM_ME_ARPEGGIOTABLE_SPEEDNOTREACHED
    ld +25(ix),#0
    inc +24(ix)
    inc hl
    ld a,(hl)
    rra 
    jr nc,PLY_AKM_ME_ARPEGGIOTABLEFINISHED
    ld l,a
    ld +24(ix),a
    jr PLY_AKM_ME_ARPEGGIOTABLEFINISHED
PLY_AKM_ME_ARPEGGIOTABLE_SPEEDNOTREACHED: inc a
    ld +25(ix),a
PLY_AKM_ME_ARPEGGIOTABLEFINISHED: ld a,+28(ix)
    or a
    ret z
    ld l,+29(ix)
    ld h,+30(ix)
    ld e,+31(ix)
    ld d,#0
    add hl,de
    ld a,(hl)
    sra a
    jp p,PLY_AKM_ME_PITCHTABLEENDNOTREACHED_POSITIVE
    dec d
PLY_AKM_ME_PITCHTABLEENDNOTREACHED_POSITIVE: ld +34(ix),a
    .db 221
    .db 114
    .db +35
    ld a,+32(ix)
    cp +33(ix)
    jr c,PLY_AKM_ME_PITCHTABLE_SPEEDNOTREACHED
    ld +32(ix),#0
    inc +31(ix)
    inc hl
    ld a,(hl)
    rra 
    ret nc
    ld l,a
    ld +31(ix),a
    ret 
PLY_AKM_ME_PITCHTABLE_SPEEDNOTREACHED: inc a
    ld +32(ix),a
    ret 
PLY_AKM_PLAYSOUNDSTREAM: ld l,+10(ix)
    ld h,+11(ix)
PLY_AKM_PSS_READFIRSTBYTE: ld a,(hl)
    ld b,a
    inc hl
    rra 
    jr c,PLY_AKM_PSS_SOFTORSOFTANDHARD
    rra 
    jr c,PLY_AKM_PSS_SOFTWARETOHARDWARE
    rra 
    jr nc,PLY_AKM_PSS_NSNH_NOTENDOFSOUND
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    .db 221
    .db 117
    .db +10
    .db 221
    .db 116
    .db +11
    jr PLY_AKM_PSS_READFIRSTBYTE
PLY_AKM_PSS_NSNH_NOTENDOFSOUND: set 2,c
    call PLY_AKM_PSS_SHARED_ADJUSTVOLUME
    ld +1(iy),a
    rl b
    call c,PLY_AKM_PSS_READNOISE
    jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
PLY_AKM_PSS_SOFTORSOFTANDHARD: rra 
    jr c,PLY_AKM_PSS_SOFTANDHARD
    call PLY_AKM_PSS_SHARED_ADJUSTVOLUME
    ld +1(iy),a
    ld d,#0
    rl b
    jr nc,PLY_AKM_PSS_S_AFTERARPANDORNOISE
    ld a,(hl)
    inc hl
    sra a
    ld d,a
    call c,PLY_AKM_PSS_READNOISE
PLY_AKM_PSS_S_AFTERARPANDORNOISE: ld a,d
    call PLY_AKM_CALCULATEPERIODFORBASENOTE
    rl b
    call c,PLY_AKM_READPITCHANDADDTOPERIOD
    exx
    ld +5(iy),l
    ld +9(iy),h
    exx
PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER: ld a,+12(ix)
    cp +13(ix)
    jr nc,PLY_AKM_PSS_S_SPEEDREACHED
    inc +12(ix)
    ret 
PLY_AKM_PSS_S_SPEEDREACHED: .db 221
    .db 117
    .db +10
    .db 221
    .db 116
    .db +11
    ld +12(ix),#0
    ret 
PLY_AKM_PSS_SOFTANDHARD: call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
    ld a,(hl)
    ld (PLY_AKM_REG11),a
    inc hl
    ld a,(hl)
    ld (PLY_AKM_REG12),a
    inc hl
    jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
PLY_AKM_PSS_SOFTWARETOHARDWARE: call PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV
    ld a,b
    rlca 
    rlca 
    rlca 
    rlca 
    and #7
    exx
    jr z,PLY_AKM_PSS_STH_RATIOEND
PLY_AKM_PSS_STH_RATIOLOOP: srl h
    rr l
    dec a
    jr nz,PLY_AKM_PSS_STH_RATIOLOOP
    jr nc,PLY_AKM_PSS_STH_RATIOEND
    inc hl
PLY_AKM_PSS_STH_RATIOEND: ld a,l
    ld (PLY_AKM_REG11),a
    ld a,h
    ld (PLY_AKM_REG12),a
    exx
    jr PLY_AKM_PSS_SHARED_STOREINSTRUMENTPOINTER
PLY_AKM_PSS_SHARED_READENVBITPITCHARP_SOFTPERIOD_HARDVOL_HARDENV: and #2
    add a,#8
    ld (PLY_AKM_SENDPSGREGISTERR13+1),a
    ld +1(iy),#16
    xor a
    bit 7,b
    jr z,PLY_AKM_PSS_SHARED_RENVBAP_AFTERARPEGGIO
    ld a,(hl)
    inc hl
PLY_AKM_PSS_SHARED_RENVBAP_AFTERARPEGGIO: call PLY_AKM_CALCULATEPERIODFORBASENOTE
    exx
    ld +5(iy),l
    ld +9(iy),h
    exx
    ret 
PLY_AKM_PSS_SHARED_ADJUSTVOLUME: and #15
    sub +14(ix)
    ret nc
    xor a
    ret 
PLY_AKM_PSS_READNOISE: ld a,(hl)
    inc hl
    ld (PLY_AKM_NOISEREGISTER),a
    res 5,c
    ret 
PLY_AKM_CALCULATEPERIODFORBASENOTE: exx
    ld h,#0
    add a,+6(ix)
    add a,+27(ix)
    ld bc,#65292
PLY_AKM_FINDOCTAVE_LOOP: inc b
    sub c
    jr nc,PLY_AKM_FINDOCTAVE_LOOP
    add a,c
    add a,a
    ld l,a
    ld h,#0
    add hl,de
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,b
    or a
    jr z,PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP_FINISHED
PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP: srl h
    rr l
    djnz PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP
PLY_AKM_FINDOCTAVE_OCTAVESHIFTLOOP_FINISHED: jr nc,PLY_AKM_FINDOCTAVE_FINISHED
    inc hl
PLY_AKM_FINDOCTAVE_FINISHED: ld a,+28(ix)
    or a
    jr z,PLY_AKM_CALCULATEPERIODFORBASENOTE_NOPITCHTABLE
    ld c,+34(ix)
    ld b,+35(ix)
    add hl,bc
PLY_AKM_CALCULATEPERIODFORBASENOTE_NOPITCHTABLE: ld c,+16(ix)
    ld b,+17(ix)
    add hl,bc
    exx
    ret 
PLY_AKM_READPITCHANDADDTOPERIOD: ld a,(hl)
    inc hl
    exx
    ld c,a
    exx
    ld a,(hl)
    inc hl
    exx
    ld b,a
    add hl,bc
    exx
    ret 
PLY_AKM_EFFECTRESETWITHVOLUME: ld +14(ix),a
    xor a
    ld +15(ix),a
    ld +21(ix),a
    ld +27(ix),a
    ld +28(ix),a
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTVOLUME: ld +14(ix),a
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTTABLE: jr PLY_AKM_EFFECTRESETWITHVOLUME
    jr PLY_AKM_EFFECTVOLUME
    jr PLY_AKM_EFFECTPITCHUPDOWN
    jr PLY_AKM_EFFECTARPEGGIOTABLE
    jr PLY_AKM_EFFECTPITCHTABLE
    jr PLY_AKM_EFFECTPITCHUPDOWN-4
    jr PLY_AKM_EFFECTPITCHUPDOWN-2
PLY_AKM_EFFECTPITCHUPDOWN: rra 
    jr nc,PLY_AKM_EFFECTPITCHUPDOWN_DEACTIVATED
    ld +15(ix),#255
    ld a,(hl)
    inc hl
    ld +19(ix),a
    ld a,(hl)
    inc hl
    ld +20(ix),a
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTPITCHUPDOWN_DEACTIVATED: ld +15(ix),#0
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTARPEGGIOTABLE: call PLY_AKM_EFFECTREADIFESCAPE
    ld +21(ix),a
    jr z,PLY_AKM_EFFECTARPEGGIOTABLE_STOP
    add a,a
    exx
    ld l,a
    ld h,#0
PLY_AKM_PTARPEGGIOS: ld bc,#0
    add hl,bc
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,(hl)
    inc hl
    ld +26(ix),a
    .db 221
    .db 117
    .db +22
    .db 221
    .db 116
    .db +23
    exx
    xor a
    ld +24(ix),a
    ld +25(ix),a
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTARPEGGIOTABLE_STOP: ld +27(ix),a
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTPITCHTABLE: call PLY_AKM_EFFECTREADIFESCAPE
    ld +28(ix),a
    jp z,PLY_AKM_RT_READEFFECT_RETURN
    add a,a
    exx
    ld l,a
    ld h,#0
PLY_AKM_PTPITCHES: ld bc,#0
    add hl,bc
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,(hl)
    inc hl
    ld +33(ix),a
    .db 221
    .db 117
    .db +29
    .db 221
    .db 116
    .db +30
    exx
    xor a
    ld +31(ix),a
    ld +32(ix),a
    jp PLY_AKM_RT_READEFFECT_RETURN
PLY_AKM_EFFECTREADIFESCAPE: cp #15
    ret c
    ld a,(hl)
    inc hl
    ret 
PLY_AKM_TRACK1_DATA:
PLY_AKM_TRACK1_WAITEMPTYCELL: .db 0
PLY_AKM_TRACK1_TRANSPOSITION: .db 0
PLY_AKM_TRACK1_PTSTARTTRACK: .dw 0
PLY_AKM_TRACK1_PTTRACK: .dw 0
PLY_AKM_TRACK1_BASENOTE: .db 0
PLY_AKM_TRACK1_ESCAPENOTE: .db 0
PLY_AKM_TRACK1_ESCAPEINSTRUMENT: .db 0
PLY_AKM_TRACK1_ESCAPEWAIT: .db 0
PLY_AKM_TRACK1_PTINSTRUMENT: .dw 0
PLY_AKM_TRACK1_INSTRUMENTCURRENTSTEP: .db 0
PLY_AKM_TRACK1_INSTRUMENTSPEED: .db 0
PLY_AKM_TRACK1_TRACKINVERTEDVOLUME: .db 0
PLY_AKM_TRACK1_ISPITCHUPDOWNUSED: .db 0
PLY_AKM_TRACK1_TRACKPITCHINTEGER: .dw 0
PLY_AKM_TRACK1_TRACKPITCHDECIMAL: .db 0
PLY_AKM_TRACK1_TRACKPITCHSPEED: .dw 0
PLY_AKM_TRACK1_ISARPEGGIOTABLEUSED: .db 0
PLY_AKM_TRACK1_PTARPEGGIOTABLE: .dw 0
PLY_AKM_TRACK1_PTARPEGGIOOFFSET: .db 0
PLY_AKM_TRACK1_ARPEGGIOCURRENTSTEP: .db 0
PLY_AKM_TRACK1_ARPEGGIOORIGINALSPEED: .db 0
PLY_AKM_TRACK1_CURRENTARPEGGIOVALUE: .db 0
PLY_AKM_TRACK1_ISPITCHTABLEUSED: .db 0
PLY_AKM_TRACK1_PTPITCHTABLE: .dw 0
PLY_AKM_TRACK1_PTPITCHOFFSET: .db 0
PLY_AKM_TRACK1_PITCHCURRENTSTEP: .db 0
PLY_AKM_TRACK1_PITCHORIGINALSPEED: .db 0
PLY_AKM_TRACK1_CURRENTPITCHTABLEVALUE: .dw 0
PLY_AKM_TRACK1_DATA_END:
PLY_AKM_TRACK2_DATA:
PLY_AKM_TRACK2_WAITEMPTYCELL: .db 0
    .db 0
    .db 0
    .db 0
PLY_AKM_TRACK2_PTTRACK: .db 0
    .db 0
    .db 0
PLY_AKM_TRACK2_ESCAPENOTE: .db 0
PLY_AKM_TRACK2_ESCAPEINSTRUMENT: .db 0
PLY_AKM_TRACK2_ESCAPEWAIT: .db 0
PLY_AKM_TRACK2_PTINSTRUMENT: .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
PLY_AKM_TRACK2_DATA_END:
PLY_AKM_TRACK3_DATA:
PLY_AKM_TRACK3_WAITEMPTYCELL: .db 0
    .db 0
    .db 0
    .db 0
PLY_AKM_TRACK3_PTTRACK: .db 0
    .db 0
    .db 0
PLY_AKM_TRACK3_ESCAPENOTE: .db 0
PLY_AKM_TRACK3_ESCAPEINSTRUMENT: .db 0
PLY_AKM_TRACK3_ESCAPEWAIT: .db 0
PLY_AKM_TRACK3_PTINSTRUMENT: .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
    .db 0
PLY_AKM_TRACK3_DATA_END:
PLY_AKM_REGISTERS_RETTABLE:
PLY_AKM_TRACK1_REGISTERS: .db 8
PLY_AKM_TRACK1_VOLUME: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 0
PLY_AKM_TRACK1_SOFTWAREPERIODLSB: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 1
PLY_AKM_TRACK1_SOFTWAREPERIODMSB: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
PLY_AKM_TRACK2_REGISTERS: .db 9
PLY_AKM_TRACK2_VOLUME: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 2
PLY_AKM_TRACK2_SOFTWAREPERIODLSB: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 3
PLY_AKM_TRACK2_SOFTWAREPERIODMSB: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
PLY_AKM_TRACK3_REGISTERS: .db 10
PLY_AKM_TRACK3_VOLUME: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 4
PLY_AKM_TRACK3_SOFTWAREPERIODLSB: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 5
PLY_AKM_TRACK3_SOFTWAREPERIODMSB: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 6
PLY_AKM_NOISEREGISTER: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 7
PLY_AKM_MIXERREGISTER: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 11
PLY_AKM_REG11: .db 0
    .dw PLY_AKM_SENDPSGREGISTER
    .db 12
PLY_AKM_REG12: .db 0
    .dw PLY_AKM_SENDPSGREGISTERR13
    .dw PLY_AKM_SENDPSGREGISTERAFTERPOP
    .dw PLY_AKM_SENDPSGREGISTEREND
PLY_AKM_PERIODTABLE: .dw 3822
    .dw 3608
    .dw 3405
    .dw 3214
    .dw 3034
    .dw 2863
    .dw 2703
    .dw 2551
    .dw 2408
    .dw 2273
    .dw 2145
    .dw 2025
