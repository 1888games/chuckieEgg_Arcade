

process_wave:
	

	ld a, (song_number)
	cp 0
	ret z

	ld hl, channel_1_3BC8

	
	ld ix, CH1_W_NUM
	ld iy, CH1_FREQ0

	call process_wave_voice

	ld b, a
	ld a, (CH1_W_NUM)
	and a
	jr z, channel2

	ld a, b
	ld (CH1_VOL), a

channel2:

	ld hl, channel_2_3BCC
	ld ix, CH2_W_NUM
	ld iy, CH2_FREQ1

	call process_wave_voice

	ld b, a
	ld a, (CH2_W_NUM)
	and a
	jr z, channel3

	ld a, b
	ld (CH2_VOL), a

channel3:


	ld hl, channel_3_3CD0
	ld ix, CH3_W_NUM
	ld iy, CH3_FREQ1

	call process_wave_voice

	ld b, a
	ld a, (CH3_W_NUM)
	and a
	ret z

	ld a, b
	ld (CH3_VOL), a

	ret




process_wave_voice:

	ld a, (ix + 0)
	and a
	jp z, init_param

	ld c, a
	ld b, 8
	ld e, $80

find_bit2:

	ld a, e
	and c
	jr nz, process_wav_bit

	srl e
	djnz find_bit2

	ret 


process_wav_bit:

	ld a, (ix+2)
	and e
	jr nz, dec_duration

	ld (ix+2),e 
	ld b, 1
	call select_song
	jp process_wave_byte

	inc c


dec_duration:
	
	dec (ix+$0C)
	jp nz, compute_wave_freq

return_from_rst_20:

	ld l, (ix+6)
	ld h, (ix+7)


process_wave_byte:
	
	ld a, (hl)
	inc hl
	ld (ix+6), l
	
	ld (ix+7), h
	cp $F0
	jp c, process_regular_byte

	ld hl, return_from_rst_20
	push hl
	and $0F
	rst $20

jump_table:

	defw special_F0
	defw special_F1
	defw special_F2
	defw special_F3
	defw special_F4
	defw special_F5
	defw special_F5
	defw special_F5
	defw special_F5
	defw special_F5
	defw special_F5
	defw special_F5
	defw special_F5
	defw special_F5
	defw special_F5
	defw special_FF


special_F0:

	ld l, (ix+6)
	ld h, (ix+7)
	ld a,(hl)
	ld (ix+6), a	
	inc hl
	ld a,(hl)
	ld (ix+7), a
	ret


special_F1:

	ld l, (ix+6)
	ld h, (ix+7)
	ld a,(hl)
	inc hl
	ld (ix+6), l
	ld (ix+7), h
	ld (ix+3), a

	ret


special_F2:

	ld l,(ix+6)
	ld h,(ix+7)
	ld a, (hl)
	inc hl
	ld (ix+6),l
	ld (ix+7),h
	ld (ix+4),a
	ret

special_F3:

	ld l, (ix+6)
	ld h, (ix+7)
	ld a, (hl)
	inc hl
	ld (ix+6), l
	ld (ix+7), h
	ld (ix+9), a
	ret


special_F4:

	ld l, (ix+6)
	ld h, (ix+7)
	ld a, (hl)
	inc hl
	ld (ix+6),l
	ld (ix+7),h
	ld (ix+$0b), a
	ret

special_FF:
	
	ld a, (ix+2)
	cpl 
	and (ix+0)
	ld (ix+0), a

	ld a, 0
	ld (song_number), a
	jp init_param
	
special_F5:

	ret


select_song:
	
	ld a, (song_number)
	ld b, a
	ld a, 1
	jp goto_rst_18
	dec b

	;push bc
	
	ld a, b
	cp 1
	jr z, skip44

	ld b, 0
	jr goto_rst_18

skip44:
	
	ld a, 1
	ld b, 1
	cp 1
	jr z, goto_rst_18

	ld b, 2
	cp 4
	jr z, goto_rst_18

	ld b,3

goto_rst_18:

	rst $18

	pop bc
	jp process_wave_byte


process_regular_byte:

	ld b, a
	and $1F
	jr z, skip45

	ld (ix+$0d),b


skip45:

	ld c, (ix+9)
	ld a, (ix+$0B)
	and 8
	jr z, skip46

	ld c,0

skip46:

	ld (ix+$0f),c
	ld a,b
	rlca
	rlca
	rlca
	and $7
	ld hl, lookup_3bb0
	rst $10

	ld (ix+$0C), a
	ld a,b
	and $1F
	jr z, compute_wave_freq

	and $0F
	ld hl, lookup_3bb8
	rst $10

	ld (ix+$0e), a

compute_wave_freq:
	
	ld l, (ix+$0e)
	ld h, 0

	ld a, (ix+$0d)
	and $10
	jr z, skip47

	ld a, 1


skip47:

	add a, (ix+4)
	jp z, skip3
	jp jump_from_wave

