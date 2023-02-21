hens_update:

	ld ix, sprite2
	ld iy, hens

	;ret


	ld b, 5


hen_update_loop:

	ld a, b
	ld (temp_byte2), a

	ld a, (iy + hen_state)
	cp HEN_DEAD
	jp z, nextHen

	ld (map_address), iy

	call process_hen
	call check_hen_harry

nextHen:

	inc ix
	inc ix

	ld iy, (map_address)

	inc iy
	inc iy
	inc iy
	inc iy
	inc iy
	inc iy
	inc iy
	inc iy


	ld a, (temp_byte2)
	ld b, a

	djnz hen_update_loop


	ret


process_hen: 


	ld a, (temp_byte2)
	cp 5
	;jp nz, noDebug

	
	;ld hl, (iy + hen_tile_address)
	;ld de, tile_ram_start + row_0 + column_3
	;ld a, (hl)
	;ld (de), a

	;ld de, tile_ram_start + row_0 + column_4
	;ld a, (iy + hen_direction)
	;ld (de), a


	ld a, (iy + hen_timer)
	cp 0
	jp z, henReady

	dec a
	ld (iy + hen_timer), a

	ret

henReady:	


	
	
	;jp nz, noDebug


	ld a, (temp_byte2)
	cp 5
	;jp nz, noDebug

	call hen_check_ladder
	
	call hen_check_ladder_state
	call hen_check_blocked
	;call hen_control_fake

	

	;call showHenDebug




	ld hl, (iy + hen_tile_address)
	call moveTileUpHL

	;ld a,4
;	ld (hl), a


	;ret
	
	ld a, (iy + hen_state)
	cp HEN_WALKING
	jp z, hen_walking

	cp HEN_CLIMBING
	jp z, hen_climbing

	cp HEN_EATING
	jp z, hen_eating


noDebug:

	ret


showHenDebug: 

	ld hl, tile_ram_start + row_0 + column_18


	ld a, (hen_can_go_up_ladder)
	ld (hl), a


	inc hl
	ld a, (hen_over_ladder)
	ld (hl), a

	inc hl
	ld a, (hen_can_go_down_ladder)
	ld (hl), a
	
	inc hl
	ld a, (hen_blocked)
	ld (hl), a
	

	call moveTileDownHL

	dec hl
	dec hl
	dec hl
	dec hl

	inc hl
	ld a, (hen_can_get_off_left)
	ld (hl), a

	inc hl
	ld a, (hen_can_get_off_right)
	ld (hl), a


	inc hl
	ld a, (iy + hen_centred_x)
	ld (hl), a

	inc hl
	ld a, (iy + hen_centred_y)
	ld (hl), a



	ret

check_hen_harry:

	//ld a, (alex_invincible_timer)
	//cp 0
	//ret nz

	ld a, (sprite0 + spr_x)
	ld c, a

	ld a, (ix + spr_x)
	cp 0
	ret z

	sub c
	add 9
	cp 18
	ret nc

	ld a, (sprite0 + spr_y)
	cp 2
	;ret c
	ld c, a

	ld a, (ix + spr_y)
	sub c
	add 6
	cp 12
	ret nc


	jp lose_set













initialise_hens:

	
	ld (hen_data_address), hl


	// ix = sprite data
	// iy = enemy ram
	ld ix, sprite2
	ld iy, hens

	;ld a, (number_hens)
	;ld de, tile_ram_start +row_0 + column_16
	;ld (de), a


hen_init_loop:

	inc hl

	ld a, (hl)
	cp -3
	jp z, lifts_init

	inc hl

	ld b, a

	ld a, (number_hens)
	cp 0
	jp nz, stillHens

	ld a, HEN_DEAD
	ld (iy + hen_state), a

	jp skipThisHen


stillHens:
	ld a, b
	ld (ix+spr_x), a

	ld a, (hl)	
	ld (ix+spr_y), a

	ld (temp_address), hl
	
	call convert_hen_sprite_to_tile

	call calculate_offsets

	ld a, HEN_WALKING
	ld (iy + hen_state), a

	ld (iy + hen_tile_address), l
	ld (iy + hen_tile_address + 1), h

	ld a, (number_hens)
	ld (iy + hen_timer), a

	ld a, 1
	ld (iy + hen_frame), a
	ld (iy + hen_centred_y), a

	ld a, 0
	ld (iy + hen_centred_x), a

	res flipy, (ix)

	ld a, (x_pos_offset)
	cp 5
	jp nz, notCentered

	ld a, 1
	ld (iy + hen_centred_x), a


notCentered:
	
	call random

	and %00000001
	ld (iy + hen_direction), a
	cp 0
	jp nz, notLeftHen

	set flipy, (ix)

notLeftHen:

	ld hl, (temp_address)

skipThisHen:

	inc ix
	inc ix

	inc iy
	inc iy
	inc iy
	inc iy
	inc iy
	inc iy
	inc iy
	inc iy

	ld a, (number_hens)
	cp 0
	jp z, noReduceHens
	dec a
	ld (number_hens), a

noReduceHens:

	jp hen_init_loop


	ret