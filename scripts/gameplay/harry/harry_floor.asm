

sort_out_inside:
	
	ret
	ld a, (harry_state)
	cp STATE_FALLING
	ret nz

	ld a, 1
	ld (harry_snap_ground), a
	ld (blocked_below), a


	ret


checkFloor:

	ld a, 0
	ld (blocked_below), a
	ld (harry_left_foot_block), a
	ld (harry_right_foot_block), a
	ld (harry_snap_ground), a

	ld a, 1
	ld (harry_can_fall), a


	ld a, (y_pos_offset)
	cp 3
	jp z, canSnap

	cp 4
	jp z, canSnap

	cp 5
	jp z, canSnap

	cp 6
	jp z, canSnap

	jp noSnap

canSnap:

	ld a, 1
	ld (harry_snap_ground), a

noSnap:


	ld hl, (harry_tile_address)
	ld a, (hl)
	cp tile_platform
	jp z, sort_out_inside

notInside:


	call moveTileDownHL

	ld a, (hl)
	;ld de, tile_ram_start + row_0 + column_4
	;ld (de), a
	cp tile_platform
	jp z, floorRightBelow

	ld a, (harry_ladder_below)
	cp 1
	jp nz, checkLeftFoot


	jp checkRightFoot


floorRightBelow:

	ld a, 1
	ld (blocked_below), a


checkLeftFoot:

	
checkRightFoot:
	
	inc hl


	ld a, (hl)
	cp tile_platform
	jp z, mightRightFoot

	cp tile_ladder_left
	ret nz

	ld a, (harry_state)
	cp STATE_JUMPING
	ret z

	cp STATE_FALLING
	;ret z


mightRightFoot:
	


	ld a, (x_pos_offset)
	cp 3
	ret nc

	ld a, 1
	ld (harry_right_foot_block), a

	ret
