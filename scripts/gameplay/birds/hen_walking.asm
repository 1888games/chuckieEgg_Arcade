
hen_walking:
	
	call hen_check_seed

hen_walking_no_seed:

	ld a, (iy + hen_state)
	cp HEN_EATING
	ret z

	;ld hl, (iy + hen_tile_address)
	
	;call moveTileUpHL
	;ld a, 4
	;ld (hl), a
	
	ld a, (hen_blocked)
	cp 1
	call z, hen_turn_around

	ld a, (hen_over_ladder)
	cp 1
	call z, hen_decide_ladder


	ld a, (iy + hen_state)
	cp HEN_WALKING
	ret nz

hen_walk_skip_check:

	ld a, (iy + hen_direction)
	cp LEFT
	jp z, moveHenLeft

	jp moveHenRight



fakeMoveLeft:

	ld a, LEFT
	ld (iy + hen_direction), a

	ld a, HEN_WALKING
	ld (iy + hen_state), a

moveHenLeft:	


	ld a, (ix + spr_y)
	add 4
	ld (ix + spr_y), a

	ld a, (iy + hen_centred_x)
	xor %00000001
	ld (iy + hen_centred_x), a

	ld a, (iy + hen_frame)
	xor %00000001
	ld (iy + hen_frame), a

	
	call setWalkFrame

	ld a, (iy + hen_centred_x)
	cp 1
	ret z

	ld hl, (iy + hen_tile_address)
	dec hl
	ld (iy + hen_tile_address), hl


	ret

fakeMoveRight:
	
	ld a, RIGHT
	ld (iy + hen_direction), a

	ld a, HEN_WALKING
	ld (iy + hen_state), a

moveHenRight:

	
	ld a, (ix + spr_y)
	sub 4
	ld (ix + spr_y), a

	ld a, (iy + hen_centred_x)
	xor %00000001
	ld (iy + hen_centred_x), a

	ld a, (iy + hen_frame)
	xor %00000001
	ld (iy + hen_frame), a

	
	call setWalkFrame


	ld a, (iy + hen_centred_x)
	cp 0
	ret z

	ld hl, (iy + hen_tile_address)
	inc hl
	ld (iy + hen_tile_address), hl


	ret



hen_turn_around:	
	
	;push hl
	;ld hl, tile_ram_start + row_0 + column_6
	;;inc (hl)

	;pop hl
;

	ld a, (iy + hen_direction)
	xor %00000001
	ld (iy + hen_direction), a


	ret


setWalkFrame:
	
	ld a, hen_walk_sprite - 4
	ld b, a

	ld a, (iy + hen_frame)
	sla a
    sla a
    add b
    ld (ix + spr_num), a

	
	ld a, (hen_speed)
	ld (iy + hen_timer), a



	ld a, (iy + hen_direction)

	cp LEFT
	jp z, fliphen


	res flipy, (ix)
	ret

fliphen:
	
	set flipy, (ix)
	
	ret






hen_control_fake:
	
	ld a, (temp_byte2)
	cp 5
	ret nz

	ld a, (joystick_state)
	and inp_chk_left
	jp nz, fakeMoveLeft


	ld a, (joystick_state)
	and inp_chk_right
	jp nz, fakeMoveRight

	ld a, (joystick_state)
	and inp_chk_up
	jp nz, fakeMoveUp


	ld a, (joystick_state)
	and inp_chk_down
	jp nz, fakeMoveDown


	ret
