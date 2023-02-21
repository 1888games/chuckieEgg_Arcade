
process_effect:
	
	

	ld hl, EFFECT_TABLE_1
	ld ix, CH1_E_NUM
	ld iy, CH1_FREQ0

	call process_voice

	ld (CH1_VOL), a


	ld hl, EFFECT_TABLE_2
	ld ix, CH2_E_NUM
	ld iy, CH2_FREQ1
	call  process_voice
	ld (CH2_VOL), a

	ld hl, EFFECT_TABLE_3
	ld ix, CH3_E_NUM
	ld iy, CH3_FREQ1
	call  process_voice
	ld (CH3_VOL), a

	
	ret

	
process_voice: // 2dee Process effect (one voice

	ld a, (ix + 0)
	and a
	jr nz, find_effect

init_param:

	ld a, (ix+2)
	and a
	ret z

	ld (ix+2), 0
	ld (ix+$0D), 0
	ld (ix+$0E), 0
	ld (ix+$0F), 0
	ld (iy+0), 0
	ld (iy+1), 0
	ld (iy+2), 0
	ld (iy+3), 0
	xor a
	ret 



find_effect:
	
	ld c, a
	ld b, 8
	ld e, $80

find_bit:

	ld a, e
	and c
	jr nz, process_bit

	srl e
	djnz find_bit
	ret



process_bit:
		

	ld a, (ix+2)
	and e
	jr nz, compute_effect
	ld (ix+2), e

	dec b
	ld a,b
	rlca
	rlca
	rlca
	ld c,a
	ld b,0
	push hl
	add hl, bc
	push ix
	pop de
	inc de
	inc de
	inc de 
	ld bc,$0008
	ldir
	pop hl



	ld a, (ix + 6)
	and $7F
	ld (ix+$0C), a

	ld a,(ix+4)
	ld (ix+$0E), a

	ld a, (ix+9)
	ld b, a
	rrca
	rrca
	rrca
	rrca
	and $0F
	ld (ix+$0B),a

	and $08
	jr nz, compute_effect
	ld (ix+$0F), b
	ld (ix+$0D),0



compute_effect:


	dec (ix+$0C)
	jr nz, update_freq


	ld a, (ix+8)
	and a
	jr z, skip1

	dec (ix+8)
	jr nz, skip1

	ld a, e
	cpl
	and (ix+0)
	ld (ix+0), a
	jp process_voice


skip1:

	ld a,(ix+6)
	and $7F
	ld (ix+$0C),a
	bit 7,(ix+6)
	jr z, skip2

	ld a, (ix+5)
	neg
	ld (ix+5), a
	bit 0, (ix+$0D)
	set 0, (ix+$0D)
	jr z, update_freq

	res 0,(ix+$0D)

skip2:
	


	ld a, (ix+4)
	add a, (ix+7)
	ld (ix+4), a
	ld (ix+$0E),a
	ld a, (ix+$09)
	add a,(ix+$0A)
	ld (ix+9),a
	ld b, a
	ld a,(ix+$0B)
	and 8
	jr nz, update_freq

	ld (ix+$0F), b


update_freq:

	ld a, (ix+$0e)
	add a,(ix+5)
	ld (ix+$0e),a

	ld l, a
	ld h, 0

	ld a, (ix+3)
	and $70
	jr z, skip3



	rrca
	rrca
	rrca
	rrca

jump_from_wave:

	ld b, a

doubleIt2:

	add hl, hl
	djnz doubleIt2

skip3:

	ld (iy+0),l
	ld a,l
	rrca
	rrca
	rrca
	rrca
	ld (iy+1),a
	ld (iy+2), h
	ld a, h
	rrca
	rrca
	rrca
	rrca
	ld (iy+3), a


	ld a,(ix+$0B)

	rst $20

	defw	type0, type1, type2, type3, type4, type5
	defw 	type5,type5,type5,type5,type5,type5,type5, type5,type5,type5


type0:
	
	ld a, (ix+$0F)
	ret
type1:
	
	ld a, (ix+$0F)
	jr decrease_routine

type2:
	
	ld a, (SOUND_COUNTER)
	and 1

check_skip:

	ld a, (ix+$0f)
	ret nz
decrease_routine:

  	and $0F
  	ret z
  	dec a
  	ld (ix+$0F), a
  	ret

type3:
	
	ld a, (SOUND_COUNTER)
	and 3
	jr check_skip

type4:

	ld a, (SOUND_COUNTER)
	and $07
	jr check_skip

type5:
	ret




load_sound_registers:

	

	ld hl, (SOUND_COUNTER)
	inc (hl)
	inc hl
	dec (hl)
	



	ret


vblank1:
	
	call load_sound_registers

	ld      a, $1           ; a = 1zz1
    ld     ($5001),a      ; enable audio

     ld      hl,CH1_FREQ0             ; pointer to frequencies and volumes of the 3 voices
	ld      de,#5050                  ; hardware address
 	ld      bc,#0010                  ; 16 bytes
  	ldir                     

  	ret

	ld a, (CH1_W_NUM)
	and a
	ld a, (CH1_W_SEL)
	jr nz, skip4

	ld a, (CH1_E_TABLE0)

skip4:

	ld ($5045), a

	ld a, (CH2_W_NUM)
	and a
	ld a, (CH2_W_SEL)
	jr nz, skip5

	ld a, (CH2_E_TABLE0)

skip5:

	ld ($504a), a

	ld a, (CH3_W_NUM)
	and a
	ld a, (CH3_W_SEL)
	jr nz, skip6

	ld a, (CH3_E_TABLE0)

skip6:

	ld ($504F), a

	ret

vblank2:

	
	call process_wave
	ret





sfx_walk:


	
	push hl
	ld hl, CH3_E_NUM
	set 0, (hl)
	pop hl

	ret

sfx_open_door:

	push hl
	ld hl, CH3_E_NUM
	set 1, (hl)
	pop hl

	ret

sfx_jump:
	
	push hl
	ld hl, CH3_E_NUM
	set 2, (hl)
	pop hl

	ret


sfx_got_corn:
	
	push hl
	ld hl, CH3_E_NUM
	set 3, (hl)
	pop hl

	ret


sfx_died:

	push hl
	ld hl, CH3_E_NUM
	set 4, (hl)
	pop hl

	ret

sfx_got_egg:

	push hl
	ld hl, CH3_E_NUM
	set 5, (hl)
	pop hl

	ret


sfx_fire:

	
	push hl
	ld hl, CH3_E_NUM
	set 5, (hl)
	pop hl

	ret

sfx_test:

	push hl
	ld hl, CH3_E_NUM
	set 7, (hl)
	pop hl

	ret


sfx_got_key:
	
	push hl
	ld hl, CH3_E_NUM
	set 6, (hl)
	pop hl

	ret

sfx_climb:

	ld a, (moving_up_down)
	cp 0
	ret z
	
	push hl
	ld hl, CH3_E_NUM
	set 7, (hl)
	pop hl

	ret


sfx_life:

	push hl
	ld hl, CH1_E_NUM
	set 1, (hl)
	pop hl

	ret

sfx_coin:
	
	
	push hl
	ld hl, CH1_E_NUM
	set 0, (hl)
	pop hl

	ret


reset_sound:

	xor a
    ld  hl,SoundDataStart                                             ;addr to copy from
    ld  de,SoundDataStart + 1                                        ;addr to copy to
    ld  bc,140                                                                ;gonna loop this many times (size of RAM 1007 bytes)
    ld  (hl),a                                                                        ;clear (hl), which then gets copied through to de
    ldir  

    ret

play_song:
	
	ld (song_number), a

	call reset_sound
	call vblank1

	ld a, (song_number)
    ld (CH1_W_NUM), a
    ld (CH2_W_NUM), a

    ret




playSound:

	ld hl, CH1_E_NUM			// 0 =coin	
								// 1=extra life


    set 2, (hl)					// 2=background hum
  								// 3=background hum med
    							// 4=background hum high
    							// 5=background him higher
    							// 6=background hum even higher
    							// 7=extra life ding			// using effect table 2

    							// 1=endless med chirps
								// 2=endless low chirps
    							// 3=endless high chirps
    							// 4=four med chirps
    							// 5=rising tone endless
    							// 6=c64 space loop
    							// 7=long tone unused


								// 1=med blip (good for key?)
								// 2=eat ghost
    							// 3=quick rising bloop
    							// 4=died
    							// 5=rising tone endless
    							// 6=higher blip
    							// 7=nothing





    ret
