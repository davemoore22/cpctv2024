; Jammin', Song part, encoded in the AKM (minimalist) format V0.


music_Start
music_StartDisarkGenerateExternalLabel

music_DisarkPointerRegionStart0
	dw music_InstrumentIndexes	; Index table for the Instruments.
music_DisarkForceNonReferenceDuring2_1
	dw 0	; Index table for the Arpeggios.
music_DisarkForceNonReferenceDuring2_2
	dw 0	; Index table for the Pitches.

; The subsongs references.
	dw music_Subsong0
music_DisarkPointerRegionEnd0

; The Instrument indexes.
music_InstrumentIndexes
music_DisarkPointerRegionStart3
	dw music_Instrument0
	dw music_Instrument1
	dw music_Instrument2
	dw music_Instrument3
	dw music_Instrument4
	dw music_Instrument5
	dw music_Instrument6
	dw music_Instrument7
	dw music_Instrument8
	dw music_Instrument9
	dw music_Instrument10
	dw music_Instrument11
music_DisarkPointerRegionEnd3

; The Instrument.
music_DisarkByteRegionStart4
music_Instrument0
	db 255	; Speed.

music_Instrument0Loop	db 0	; Volume: 0.

	db 4	; End the instrument.
music_DisarkPointerRegionStart5
	dw music_Instrument0Loop	; Loops.
music_DisarkPointerRegionEnd5

music_Instrument1
	db 0	; Speed.

	db 189	; Volume: 15.
	db 25	; Arpeggio: 12.
	db 1	; Noise: 1.

music_Instrument1Loop	db 57	; Volume: 14.

	db 53	; Volume: 13.

	db 113	; Volume: 12.
	dw -4	; Pitch: -4.

	db 45	; Volume: 11.

	db 105	; Volume: 10.
	dw -2	; Pitch: -2.

	db 37	; Volume: 9.

	db 105	; Volume: 10.
	dw -4	; Pitch: -4.

	db 177	; Volume: 12.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.

	db 4	; End the instrument.
music_DisarkPointerRegionStart6
	dw music_Instrument1Loop	; Loops.
music_DisarkPointerRegionEnd6

music_Instrument2
	db 0	; Speed.

music_Instrument2Loop	db 82
	db 4	; End the instrument.
music_DisarkPointerRegionStart7
	dw music_Instrument2Loop	; Loops.
music_DisarkPointerRegionEnd7

music_Instrument3
	db 0	; Speed.

	db 189	; Volume: 15.
	db 253	; Arpeggio: -2.
	db 1	; Noise: 1.

	db 189	; Volume: 15.
	db 252	; Arpeggio: -2.

	db 53	; Volume: 13.

	db 49	; Volume: 12.

	db 109	; Volume: 11.
	dw -8	; Pitch: -8.

music_Instrument3Loop	db 49	; Volume: 12.

	db 113	; Volume: 12.
	dw -8	; Pitch: -8.

	db 49	; Volume: 12.

	db 241	; Volume: 12.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.
	dw -8	; Pitch: -8.

	db 49	; Volume: 12.

	db 113	; Volume: 12.
	dw -8	; Pitch: -8.

	db 49	; Volume: 12.

	db 113	; Volume: 12.
	dw -8	; Pitch: -8.

	db 4	; End the instrument.
music_DisarkPointerRegionStart8
	dw music_Instrument3Loop	; Loops.
music_DisarkPointerRegionEnd8

music_Instrument4
	db 0	; Speed.

	db 41	; Volume: 10.

	db 45	; Volume: 11.

	db 41	; Volume: 10.

	db 17	; Volume: 4.

	db 21	; Volume: 5.

	db 17	; Volume: 4.

	db 4	; End the instrument.
music_DisarkPointerRegionStart9
	dw music_Instrument0Loop	; Loop to silence.
music_DisarkPointerRegionEnd9

music_Instrument5
	db 0	; Speed.

	db 189	; Volume: 15.
	db 1	; Arpeggio: 0.
	db 31	; Noise: 31.

	db 185	; Volume: 14.
	db 1	; Arpeggio: 0.
	db 28	; Noise: 28.

	db 181	; Volume: 13.
	db 1	; Arpeggio: 0.
	db 25	; Noise: 25.

	db 177	; Volume: 12.
	db 1	; Arpeggio: 0.
	db 22	; Noise: 22.

	db 173	; Volume: 11.
	db 1	; Arpeggio: 0.
	db 19	; Noise: 19.

	db 169	; Volume: 10.
	db 1	; Arpeggio: 0.
	db 16	; Noise: 16.

	db 165	; Volume: 9.
	db 1	; Arpeggio: 0.
	db 13	; Noise: 13.

	db 161	; Volume: 8.
	db 1	; Arpeggio: 0.
	db 10	; Noise: 10.

	db 157	; Volume: 7.
	db 1	; Arpeggio: 0.
	db 7	; Noise: 7.

	db 153	; Volume: 6.
	db 1	; Arpeggio: 0.
	db 4	; Noise: 4.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 4	; End the instrument.
music_DisarkPointerRegionStart10
	dw music_Instrument0Loop	; Loop to silence.
music_DisarkPointerRegionEnd10

music_Instrument6
	db 0	; Speed.

	db 189	; Volume: 15.
	db 48	; Arpeggio: 24.

	db 185	; Volume: 14.
	db 38	; Arpeggio: 19.

	db 245	; Volume: 13.
	db 24	; Arpeggio: 12.
	dw -1	; Pitch: -1.

	db 113	; Volume: 12.
	dw -1	; Pitch: -1.

	db 113	; Volume: 12.
	dw -1	; Pitch: -1.

	db 113	; Volume: 12.
	dw -1	; Pitch: -1.

	db 113	; Volume: 12.
	dw -1	; Pitch: -1.

music_Instrument6Loop	db 113	; Volume: 12.
	dw -1	; Pitch: -1.

	db 4	; End the instrument.
music_DisarkPointerRegionStart11
	dw music_Instrument6Loop	; Loops.
music_DisarkPointerRegionEnd11

music_Instrument7
	db 0	; Speed.

	db 189	; Volume: 15.
	db 25	; Arpeggio: 12.
	db 1	; Noise: 1.

	db 185	; Volume: 14.
	db 18	; Arpeggio: 9.

	db 181	; Volume: 13.
	db 15	; Arpeggio: 7.
	db 3	; Noise: 3.

	db 177	; Volume: 12.
	db 8	; Arpeggio: 4.

	db 173	; Volume: 11.
	db 7	; Arpeggio: 3.
	db 5	; Noise: 5.

	db 169	; Volume: 10.
	db 2	; Arpeggio: 1.

	db 165	; Volume: 9.
	db 1	; Arpeggio: 0.
	db 7	; Noise: 7.

	db 33	; Volume: 8.

	db 4	; End the instrument.
music_DisarkPointerRegionStart12
	dw music_Instrument0Loop	; Loop to silence.
music_DisarkPointerRegionEnd12

music_Instrument8
	db 0	; Speed.

	db 173	; Volume: 11.
	db 24	; Arpeggio: 12.

	db 173	; Volume: 11.
	db 14	; Arpeggio: 7.

	db 173	; Volume: 11.
	db 24	; Arpeggio: 12.

	db 173	; Volume: 11.
	db 6	; Arpeggio: 3.

	db 157	; Volume: 7.
	db 24	; Arpeggio: 12.

	db 157	; Volume: 7.
	db 14	; Arpeggio: 7.

	db 157	; Volume: 7.
	db 24	; Arpeggio: 12.

	db 157	; Volume: 7.
	db 6	; Arpeggio: 3.

	db 4	; End the instrument.
music_DisarkPointerRegionStart13
	dw music_Instrument0Loop	; Loop to silence.
music_DisarkPointerRegionEnd13

music_Instrument9
	db 0	; Speed.

	db 189	; Volume: 15.
	db 232	; Arpeggio: -12.

	db 41	; Volume: 10.

	db 181	; Volume: 13.
	db 232	; Arpeggio: -12.

	db 33	; Volume: 8.

	db 45	; Volume: 11.

music_Instrument9Loop	db 21	; Volume: 5.

	db 25	; Volume: 6.

	db 4	; End the instrument.
music_DisarkPointerRegionStart14
	dw music_Instrument9Loop	; Loops.
music_DisarkPointerRegionEnd14

music_Instrument10
	db 0	; Speed.

	db 233	; Volume: 10.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.
	dw 1	; Pitch: 1.

	db 237	; Volume: 11.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.
	dw 1	; Pitch: 1.

	db 233	; Volume: 10.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.
	dw 1	; Pitch: 1.

	db 229	; Volume: 9.
	db 1	; Arpeggio: 0.
	db 1	; Noise: 1.
	dw 1	; Pitch: 1.

	db 4	; End the instrument.
music_DisarkPointerRegionStart15
	dw music_Instrument0Loop	; Loop to silence.
music_DisarkPointerRegionEnd15

music_Instrument11
	db 0	; Speed.

	db 189	; Volume: 15.
	db 1	; Arpeggio: 0.
	db 31	; Noise: 31.

	db 185	; Volume: 14.
	db 7	; Arpeggio: 3.
	db 29	; Noise: 29.

	db 181	; Volume: 13.
	db 15	; Arpeggio: 7.
	db 25	; Noise: 25.

	db 49	; Volume: 12.

	db 173	; Volume: 11.
	db 7	; Arpeggio: 3.
	db 19	; Noise: 19.

	db 169	; Volume: 10.
	db 14	; Arpeggio: 7.

	db 37	; Volume: 9.

	db 161	; Volume: 8.
	db 6	; Arpeggio: 3.

	db 157	; Volume: 7.
	db 14	; Arpeggio: 7.

	db 25	; Volume: 6.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 0	; Volume: 0.

	db 4	; End the instrument.
music_DisarkPointerRegionStart16
	dw music_Instrument0Loop	; Loop to silence.
music_DisarkPointerRegionEnd16

music_DisarkByteRegionEnd4
music_ArpeggioIndexes
music_DisarkPointerRegionStart17
music_DisarkPointerRegionEnd17

music_DisarkByteRegionStart18
music_DisarkByteRegionEnd18

music_PitchIndexes
music_DisarkPointerRegionStart19
music_DisarkPointerRegionEnd19

music_DisarkByteRegionStart20
music_DisarkByteRegionEnd20

; Jammin', Subsong 0.
; ----------------------------------

music_Subsong0
music_Subsong0DisarkPointerRegionStart0
	dw music_Subsong0_NoteIndexes	; Index table for the notes.
	dw music_Subsong0_TrackIndexes	; Index table for the Tracks.
music_Subsong0DisarkPointerRegionEnd0

music_Subsong0DisarkByteRegionStart1
	db 4	; Initial speed.

	db 9	; Most used instrument.
	db 10	; Second most used instrument.

	db 1	; Most used wait.
	db 3	; Second most used wait.

	db 0	; Default start note in tracks.
	db 2	; Default start instrument in tracks.
	db 56	; Default start wait in tracks.

	db 12	; Are there effects? 12 if yes, 13 if not. Don't ask.
music_Subsong0DisarkByteRegionEnd1

; The Linker.
music_Subsong0DisarkByteRegionStart2
; Pattern 0
	db 170	; State byte.
	db 63	; New height.
	db 129	; New track (0) for channel 1, as a reference (index 1).
	db 128	; New track (1) for channel 2, as a reference (index 0).
	db 129	; New track (0) for channel 3, as a reference (index 1).

; Pattern 1
	db 0	; State byte.

; Pattern 2
	db 8	; State byte.
	db ((music_Subsong0_Track2 - ($ + 2)) & #ff00) / 256	; New track (2) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track2 - ($ + 1)) & 255)

; Pattern 3
	db 136	; State byte.
	db ((music_Subsong0_Track3 - ($ + 2)) & #ff00) / 256	; New track (3) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track3 - ($ + 1)) & 255)
	db ((music_Subsong0_Track10 - ($ + 2)) & #ff00) / 256	; New track (10) for channel 3, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track10 - ($ + 1)) & 255)

; Pattern 4
music_Subsong0_Loop
	db 136	; State byte.
	db ((music_Subsong0_Track6 - ($ + 2)) & #ff00) / 256	; New track (6) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track6 - ($ + 1)) & 255)
	db ((music_Subsong0_Track4 - ($ + 2)) & #ff00) / 256	; New track (4) for channel 3, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track4 - ($ + 1)) & 255)

; Pattern 5
	db 136	; State byte.
	db ((music_Subsong0_Track7 - ($ + 2)) & #ff00) / 256	; New track (7) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track7 - ($ + 1)) & 255)
	db ((music_Subsong0_Track5 - ($ + 2)) & #ff00) / 256	; New track (5) for channel 3, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track5 - ($ + 1)) & 255)

; Pattern 6
	db 136	; State byte.
	db ((music_Subsong0_Track6 - ($ + 2)) & #ff00) / 256	; New track (6) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track6 - ($ + 1)) & 255)
	db ((music_Subsong0_Track4 - ($ + 2)) & #ff00) / 256	; New track (4) for channel 3, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track4 - ($ + 1)) & 255)

; Pattern 7
	db 136	; State byte.
	db ((music_Subsong0_Track7 - ($ + 2)) & #ff00) / 256	; New track (7) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track7 - ($ + 1)) & 255)
	db ((music_Subsong0_Track5 - ($ + 2)) & #ff00) / 256	; New track (5) for channel 3, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track5 - ($ + 1)) & 255)

; Pattern 8
	db 136	; State byte.
	db ((music_Subsong0_Track8 - ($ + 2)) & #ff00) / 256	; New track (8) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track8 - ($ + 1)) & 255)
	db 132	; New track (11) for channel 3, as a reference (index 4).

; Pattern 9
	db 136	; State byte.
	db ((music_Subsong0_Track9 - ($ + 2)) & #ff00) / 256	; New track (9) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track9 - ($ + 1)) & 255)
	db 130	; New track (12) for channel 3, as a reference (index 2).

; Pattern 10
	db 136	; State byte.
	db ((music_Subsong0_Track8 - ($ + 2)) & #ff00) / 256	; New track (8) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track8 - ($ + 1)) & 255)
	db 132	; New track (11) for channel 3, as a reference (index 4).

; Pattern 11
	db 136	; State byte.
	db ((music_Subsong0_Track9 - ($ + 2)) & #ff00) / 256	; New track (9) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track9 - ($ + 1)) & 255)
	db 130	; New track (12) for channel 3, as a reference (index 2).

; Pattern 12
	db 136	; State byte.
	db ((music_Subsong0_Track13 - ($ + 2)) & #ff00) / 256	; New track (13) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track13 - ($ + 1)) & 255)
	db 132	; New track (11) for channel 3, as a reference (index 4).

; Pattern 13
	db 136	; State byte.
	db ((music_Subsong0_Track14 - ($ + 2)) & #ff00) / 256	; New track (14) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track14 - ($ + 1)) & 255)
	db 130	; New track (12) for channel 3, as a reference (index 2).

; Pattern 14
	db 136	; State byte.
	db ((music_Subsong0_Track13 - ($ + 2)) & #ff00) / 256	; New track (13) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track13 - ($ + 1)) & 255)
	db 132	; New track (11) for channel 3, as a reference (index 4).

; Pattern 15
	db 136	; State byte.
	db ((music_Subsong0_Track14 - ($ + 2)) & #ff00) / 256	; New track (14) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track14 - ($ + 1)) & 255)
	db 130	; New track (12) for channel 3, as a reference (index 2).

; Pattern 16
	db 168	; State byte.
	db ((music_Subsong0_Track15 - ($ + 2)) & #ff00) / 256	; New track (15) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track15 - ($ + 1)) & 255)
	db 131	; New track (17) for channel 2, as a reference (index 3).
	db ((music_Subsong0_Track18 - ($ + 2)) & #ff00) / 256	; New track (18) for channel 3, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track18 - ($ + 1)) & 255)

; Pattern 17
	db 136	; State byte.
	db ((music_Subsong0_Track16 - ($ + 2)) & #ff00) / 256	; New track (16) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track16 - ($ + 1)) & 255)
	db ((music_Subsong0_Track19 - ($ + 2)) & #ff00) / 256	; New track (19) for channel 3, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track19 - ($ + 1)) & 255)

; Pattern 18
	db 136	; State byte.
	db 129	; New track (0) for channel 1, as a reference (index 1).
	db ((music_Subsong0_Track18 - ($ + 2)) & #ff00) / 256	; New track (18) for channel 3, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track18 - ($ + 1)) & 255)

; Pattern 19
	db 136	; State byte.
	db ((music_Subsong0_Track16 - ($ + 2)) & #ff00) / 256	; New track (16) for channel 1, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track16 - ($ + 1)) & 255)
	db ((music_Subsong0_Track19 - ($ + 2)) & #ff00) / 256	; New track (19) for channel 3, as an offset. Offset MSB, then LSB.
	db ((music_Subsong0_Track19 - ($ + 1)) & 255)

	db 1	; End of the Song.
	db 0	; Speed to 0, meaning "end of song".
music_Subsong0DisarkByteRegionEnd2
music_Subsong0DisarkPointerRegionStart3
	dw music_Subsong0_Loop

music_Subsong0DisarkPointerRegionEnd3
; The indexes of the tracks.
music_Subsong0_TrackIndexes
music_Subsong0DisarkPointerRegionStart4
	dw music_Subsong0_Track1	; Track 1, index 0.
	dw music_Subsong0_Track0	; Track 0, index 1.
	dw music_Subsong0_Track12	; Track 12, index 2.
	dw music_Subsong0_Track17	; Track 17, index 3.
	dw music_Subsong0_Track11	; Track 11, index 4.
music_Subsong0DisarkPointerRegionEnd4

music_Subsong0DisarkByteRegionStart5
music_Subsong0_Track0
	db 205	; New wait (127).
	db 127	;   Escape wait value.

music_Subsong0_Track1
	db 12	; Note with effects flag.
	db 176	; New instrument (1). Note reference (0). Secondary wait (3).
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 64	; Note reference (0). Primary wait (1).
	db 64	; Note reference (0). Primary wait (1).
	db 113	; New instrument (3). Note reference (1). Primary wait (1).
	db 3	;   Escape instrument value.
	db 181	; New instrument (1). Note reference (5). Secondary wait (3).
	db 1	;   Escape instrument value.
	db 128	; Note reference (0). Secondary wait (3).
	db 128	; Note reference (0). Secondary wait (3).
	db 64	; Note reference (0). Primary wait (1).
	db 181	; New instrument (3). Note reference (5). Secondary wait (3).
	db 3	;   Escape instrument value.
	db 117	; New instrument (1). Note reference (5). Primary wait (1).
	db 1	;   Escape instrument value.
	db 117	; New instrument (3). Note reference (5). Primary wait (1).
	db 3	;   Escape instrument value.
	db 176	; New instrument (1). Note reference (0). Secondary wait (3).
	db 1	;   Escape instrument value.
	db 64	; Note reference (0). Primary wait (1).
	db 64	; Note reference (0). Primary wait (1).
	db 113	; New instrument (3). Note reference (1). Primary wait (1).
	db 3	;   Escape instrument value.
	db 181	; New instrument (1). Note reference (5). Secondary wait (3).
	db 1	;   Escape instrument value.
	db 128	; Note reference (0). Secondary wait (3).
	db 128	; Note reference (0). Secondary wait (3).
	db 64	; Note reference (0). Primary wait (1).
	db 181	; New instrument (3). Note reference (5). Secondary wait (3).
	db 3	;   Escape instrument value.
	db 117	; New instrument (1). Note reference (5). Primary wait (1).
	db 1	;   Escape instrument value.
	db 197	; Note reference (5). New wait (127).
	db 127	;   Escape wait value.

music_Subsong0_Track2
	db 64	; Note reference (0). Primary wait (1).
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 247	; New instrument (4). Note reference (7). New wait (7).
	db 4	;   Escape instrument value.
	db 7	;   Escape wait value.
	db 71	; Note reference (7). Primary wait (1).
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 242	; New instrument (0). Note reference (2). New wait (10).
	db 0	;   Escape instrument value.
	db 10	;   Escape wait value.
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 247	; New instrument (4). Note reference (7). New wait (7).
	db 4	;   Escape instrument value.
	db 7	;   Escape wait value.
	db 71	; Note reference (7). Primary wait (1).
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 242	; New instrument (0). Note reference (2). New wait (127).
	db 0	;   Escape instrument value.
	db 127	;   Escape wait value.

music_Subsong0_Track3
	db 64	; Note reference (0). Primary wait (1).
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 247	; New instrument (4). Note reference (7). New wait (7).
	db 4	;   Escape instrument value.
	db 7	;   Escape wait value.
	db 71	; Note reference (7). Primary wait (1).
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 242	; New instrument (0). Note reference (2). New wait (10).
	db 0	;   Escape instrument value.
	db 10	;   Escape wait value.
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 247	; New instrument (4). Note reference (7). New wait (7).
	db 4	;   Escape instrument value.
	db 7	;   Escape wait value.
	db 71	; Note reference (7). Primary wait (1).
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 50	; New instrument (0). Note reference (2). 
	db 0	;   Escape instrument value.
	db 254	; New instrument (2). New escaped note: 16. New wait (127).
	db 16	;   Escape note value.
	db 2	;   Escape instrument value.
	db 127	;   Escape wait value.

music_Subsong0_Track4
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 64	; Note reference (0). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 101	; Secondary instrument (10). Note reference (5). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 64	; Note reference (0). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 101	; Secondary instrument (10). Note reference (5). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 241	; New instrument (7). Note reference (1). New wait (127).
	db 7	;   Escape instrument value.
	db 127	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.

music_Subsong0_Track5
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 64	; Note reference (0). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 101	; Secondary instrument (10). Note reference (5). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 64	; Note reference (0). Primary wait (1).
	db 12	; Note with effects flag.
	db 112	; New instrument (5). Note reference (0). Primary wait (1).
	db 5	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 65	; Note reference (1). Primary wait (1).
	db 65	; Note reference (1). Primary wait (1).
	db 193	; Note reference (1). New wait (127).
	db 127	;   Escape wait value.

music_Subsong0_Track6
	db 64	; Note reference (0). Primary wait (1).
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 243	; New instrument (8). Note reference (3). New wait (7).
	db 8	;   Escape instrument value.
	db 7	;   Escape wait value.
	db 67	; Note reference (3). Primary wait (1).
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 242	; New instrument (0). Note reference (2). New wait (10).
	db 0	;   Escape instrument value.
	db 10	;   Escape wait value.
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 243	; New instrument (8). Note reference (3). New wait (7).
	db 8	;   Escape instrument value.
	db 7	;   Escape wait value.
	db 67	; Note reference (3). Primary wait (1).
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 242	; New instrument (0). Note reference (2). New wait (127).
	db 0	;   Escape instrument value.
	db 127	;   Escape wait value.

music_Subsong0_Track7
	db 64	; Note reference (0). Primary wait (1).
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 243	; New instrument (8). Note reference (3). New wait (7).
	db 8	;   Escape instrument value.
	db 7	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 67	; Note reference (3). Primary wait (1).
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 242	; New instrument (0). Note reference (2). New wait (10).
	db 0	;   Escape instrument value.
	db 10	;   Escape wait value.
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 243	; New instrument (8). Note reference (3). New wait (7).
	db 8	;   Escape instrument value.
	db 7	;   Escape wait value.
	db 67	; Note reference (3). Primary wait (1).
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 50	; New instrument (0). Note reference (2). 
	db 0	;   Escape instrument value.
	db 254	; New instrument (2). New escaped note: 16. New wait (127).
	db 16	;   Escape note value.
	db 2	;   Escape instrument value.
	db 127	;   Escape wait value.

music_Subsong0_Track8
	db 12	; Note with effects flag.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 86	; Primary instrument (9). Note reference (6). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 86	; Primary instrument (9). Note reference (6). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 12	; Note with effects flag.
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 86	; Primary instrument (9). Note reference (6). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 98	;    Volume effect, with inverted volume: 6.
	db 12	; Note with effects flag.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 86	; Primary instrument (9). Note reference (6). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 86	; Primary instrument (9). Note reference (6). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 12	; Note with effects flag.
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 86	; Primary instrument (9). Note reference (6). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 212	; Primary instrument (9). Note reference (4). New wait (127).
	db 127	;   Escape wait value.
	db 82	;    Volume effect, with inverted volume: 5.

music_Subsong0_Track9
	db 64	; Note reference (0). Primary wait (1).
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 243	; New instrument (8). Note reference (3). New wait (7).
	db 8	;   Escape instrument value.
	db 7	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 67	; Note reference (3). Primary wait (1).
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 242	; New instrument (0). Note reference (2). New wait (0).
	db 0	;   Escape instrument value.
	db 0	;   Escape wait value.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 12	; Note with effects flag.
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 86	; Primary instrument (9). Note reference (6). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 243	; New instrument (8). Note reference (3). New wait (7).
	db 8	;   Escape instrument value.
	db 7	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 67	; Note reference (3). Primary wait (1).
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 242	; New instrument (0). Note reference (2). New wait (0).
	db 0	;   Escape instrument value.
	db 0	;   Escape wait value.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 43. Primary wait (1).
	db 43	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 212	; Primary instrument (9). Note reference (4). New wait (127).
	db 127	;   Escape wait value.
	db 82	;    Volume effect, with inverted volume: 5.

music_Subsong0_Track10
	db 205	; New wait (55).
	db 55	;   Escape wait value.
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 65	; Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 65	; Note reference (1). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 193	; Note reference (1). New wait (127).
	db 127	;   Escape wait value.

music_Subsong0_Track11
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 64	; Note reference (0). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 101	; Secondary instrument (10). Note reference (5). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 64	; Note reference (0). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 101	; Secondary instrument (10). Note reference (5). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 241	; New instrument (7). Note reference (1). New wait (127).
	db 7	;   Escape instrument value.
	db 127	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.

music_Subsong0_Track12
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 64	; Note reference (0). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 101	; Secondary instrument (10). Note reference (5). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 64	; Note reference (0). Primary wait (1).
	db 12	; Note with effects flag.
	db 115	; New instrument (11). Note reference (3). Primary wait (1).
	db 11	;   Escape instrument value.
	db 50	;    Volume effect, with inverted volume: 3.
	db 97	; Secondary instrument (10). Note reference (1). Primary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (7). Note reference (1). Primary wait (1).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 65	; Note reference (1). Primary wait (1).
	db 65	; Note reference (1). Primary wait (1).
	db 193	; Note reference (1). New wait (127).
	db 127	;   Escape wait value.

music_Subsong0_Track13
	db 12	; Note with effects flag.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 90	; Primary instrument (9). Note reference (10). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 12	; Note with effects flag.
	db 90	; Primary instrument (9). Note reference (10). Primary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 79. Primary wait (1).
	db 79	;   Escape note value.
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 77. Primary wait (1).
	db 77	;   Escape note value.
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 88	; Primary instrument (9). Note reference (8). Primary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 88	; Primary instrument (9). Note reference (8). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 88	; Primary instrument (9). Note reference (8). Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 86	; Primary instrument (9). Note reference (6). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 90	; Primary instrument (9). Note reference (10). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 12	; Note with effects flag.
	db 90	; Primary instrument (9). Note reference (10). Primary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 79. Primary wait (1).
	db 79	;   Escape note value.
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 77. Primary wait (1).
	db 77	;   Escape note value.
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 88	; Primary instrument (9). Note reference (8). Primary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 88	; Primary instrument (9). Note reference (8). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 88	; Primary instrument (9). Note reference (8). Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 12	; Note with effects flag.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 86	; Primary instrument (9). Note reference (6). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 212	; Primary instrument (9). Note reference (4). New wait (127).
	db 127	;   Escape wait value.
	db 82	;    Volume effect, with inverted volume: 5.

music_Subsong0_Track14
	db 64	; Note reference (0). Primary wait (1).
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 243	; New instrument (8). Note reference (3). New wait (7).
	db 8	;   Escape instrument value.
	db 7	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 67	; Note reference (3). Primary wait (1).
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 242	; New instrument (0). Note reference (2). New wait (0).
	db 0	;   Escape instrument value.
	db 0	;   Escape wait value.
	db 84	; Primary instrument (9). Note reference (4). Primary wait (1).
	db 94	; Primary instrument (9). New escaped note: 67. Primary wait (1).
	db 67	;   Escape note value.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 65. Primary wait (1).
	db 65	;   Escape note value.
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 64. Primary wait (1).
	db 64	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 82	; Primary instrument (9). Note reference (2). Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 243	; New instrument (8). Note reference (3). New wait (7).
	db 8	;   Escape instrument value.
	db 7	;   Escape wait value.
	db 67	; Note reference (3). Primary wait (1).
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 242	; New instrument (0). Note reference (2). New wait (0).
	db 0	;   Escape instrument value.
	db 0	;   Escape wait value.
	db 12	; Note with effects flag.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 94	; Primary instrument (9). New escaped note: 60. Primary wait (1).
	db 60	;   Escape note value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 89	; Primary instrument (9). Note reference (9). Primary wait (1).
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 12	; Note with effects flag.
	db 217	; Primary instrument (9). Note reference (9). New wait (127).
	db 127	;   Escape wait value.
	db 66	;    Volume effect, with inverted volume: 4.

music_Subsong0_Track15
	db 12	; Note with effects flag.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 89	; Primary instrument (9). Note reference (9). Primary wait (1).
	db 98	;    Volume effect, with inverted volume: 6.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 12	; Note with effects flag.
	db 89	; Primary instrument (9). Note reference (9). Primary wait (1).
	db 114	;    Volume effect, with inverted volume: 7.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 12	; Note with effects flag.
	db 89	; Primary instrument (9). Note reference (9). Primary wait (1).
	db 130	;    Volume effect, with inverted volume: 8.
	db 83	; Primary instrument (9). Note reference (3). Primary wait (1).
	db 12	; Note with effects flag.
	db 177	; New instrument (4). Note reference (1). Secondary wait (3).
	db 4	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 193	; Note reference (1). New wait (13).
	db 13	;   Escape wait value.
	db 1	; Note reference (1). 
	db 129	; Note reference (1). Secondary wait (3).
	db 193	; Note reference (1). New wait (5).
	db 5	;   Escape wait value.
	db 193	; Note reference (1). New wait (127).
	db 127	;   Escape wait value.

music_Subsong0_Track16
	db 64	; Note reference (0). Primary wait (1).
	db 242	; New instrument (0). Note reference (2). New wait (11).
	db 0	;   Escape instrument value.
	db 11	;   Escape wait value.
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 242	; New instrument (0). Note reference (2). New wait (10).
	db 0	;   Escape instrument value.
	db 10	;   Escape wait value.
	db 12	; Note with effects flag.
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 242	; New instrument (0). Note reference (2). New wait (11).
	db 0	;   Escape instrument value.
	db 11	;   Escape wait value.
	db 112	; New instrument (2). Note reference (0). Primary wait (1).
	db 2	;   Escape instrument value.
	db 114	; New instrument (0). Note reference (2). Primary wait (1).
	db 0	;   Escape instrument value.
	db 240	; New instrument (2). Note reference (0). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 242	; New instrument (0). Note reference (2). New wait (127).
	db 0	;   Escape instrument value.
	db 127	;   Escape wait value.

music_Subsong0_Track17
	db 240	; New instrument (1). Note reference (0). New wait (127).
	db 1	;   Escape instrument value.
	db 127	;   Escape wait value.

music_Subsong0_Track18
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 221	; Effect only. New wait (5).
	db 5	;   Escape wait value.
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 49	; New instrument (7). Note reference (1). 
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 93	; Effect only. Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (3).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 49	; New instrument (7). Note reference (1). 
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 65	; Note reference (1). Primary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 29	; Effect only. 
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 49	; New instrument (7). Note reference (1). 
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 112	; New instrument (6). Note reference (0). Primary wait (1).
	db 6	;   Escape instrument value.
	db 93	; Effect only. Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 64	; Note reference (0). Primary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (3).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 49	; New instrument (7). Note reference (1). 
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 193	; Note reference (1). New wait (127).
	db 127	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.

music_Subsong0_Track19
	db 12	; Note with effects flag.
	db 176	; New instrument (6). Note reference (0). Secondary wait (3).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (3).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 241	; New instrument (7). Note reference (1). New wait (5).
	db 7	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 176	; New instrument (6). Note reference (0). Secondary wait (3).
	db 6	;   Escape instrument value.
	db 128	; Note reference (0). Secondary wait (3).
	db 93	; Effect only. Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 49	; New instrument (7). Note reference (1). 
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 65	; Note reference (1). Primary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 176	; New instrument (6). Note reference (0). Secondary wait (3).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 157	; Effect only. Secondary wait (3).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 49	; New instrument (7). Note reference (1). 
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 176	; New instrument (6). Note reference (0). Secondary wait (3).
	db 6	;   Escape instrument value.
	db 128	; Note reference (0). Secondary wait (3).
	db 93	; Effect only. Primary wait (1).
	db 82	;    Volume effect, with inverted volume: 5.
	db 12	; Note with effects flag.
	db 49	; New instrument (7). Note reference (1). 
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 193	; Note reference (1). New wait (127).
	db 127	;   Escape wait value.
	db 34	;    Volume effect, with inverted volume: 2.

music_Subsong0DisarkByteRegionEnd5
; The note indexes.
music_Subsong0_NoteIndexes
music_Subsong0DisarkByteRegionStart6
	db 21	; Note for index 0.
	db 33	; Note for index 1.
	db 48	; Note for index 2.
	db 57	; Note for index 3.
	db 45	; Note for index 4.
	db 31	; Note for index 5.
	db 52	; Note for index 6.
	db 69	; Note for index 7.
	db 76	; Note for index 8.
	db 59	; Note for index 9.
	db 84	; Note for index 10.
music_Subsong0DisarkByteRegionEnd6

