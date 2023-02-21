

checkOverLadderL:	
	
	ld a, 0
	ld (harry_over_ladder), a
	ld (harry_can_climb_ladder), a

	ld hl, (harry_tile_address)
	ld a, (hl)
	cp tile_ladder_left
	ret nz

	ld a, 1
	ld (harry_over_ladder), a

	ld a, (x_pos_offset)
	ld b, a
	cp 5
	ret nc

	ld a, 1
	ld (harry_can_climb_ladder), a

	ld a, (ix + spr_y)
	sub b
	add 1
	ld (ladder_join_x), a


	ret


checkOverLadderR:	


	ld a, (hl)
	cp tile_ladder_right
	ret nz

	ld a, 1
	ld (harry_over_ladder), a

	ld a, (x_pos_offset)
	ld b, a
	cp 5
	ret c

	ld a, 1
	ld (harry_can_climb_ladder), a

	ld a, 9
	sub b
	ld b, a

	ld a, (ix + spr_y)
	add b
	ld (ladder_join_x), a

	ret



checkLadderAbove:	
	
	call moveTileUpHL

	ld a, 0
	ld (harry_ladder_above), a

	ld a, (hl)
	cp tile_ladder_left
	jp z, isBelowLadder

	cp tile_ladder_right
	ret nz

isBelowLadder:

	ld a, 1
	ld (harry_ladder_above), a

	ret


checkLadderTwoAbove:	
	
	call moveTileUpHL

	ld a, 0
	ld (harry_ladder_two_above), a

	ld a, (hl)
	cp tile_ladder_left
	jp z, isBelowLadderTwo

	cp tile_ladder_right
	ret nz

isBelowLadderTwo:

	ld a, 1
	ld (harry_ladder_two_above), a

	ret


checkLadderBelow: 

	ld hl, (harry_tile_address)

	ld a, 0
	ld (harry_ladder_below), a

	call moveTileDownHL

	ld a, (hl)
	cp tile_ladder_left
	jp z, isAboveLadder

	cp tile_ladder_right
	ret nz

isAboveLadder:

	ld a, 1
	ld (harry_ladder_below), a

	ret



checkFootLadder: 

	ld a, 0
	ld (harry_land_ladder), a

	ld a, (harry_state)
	cp STATE_JUMPING
	ret z

	ld hl, (harry_tile_address)
	;ld de, tile_ram_start + row_0 + column_4
	ld a, (hl)
	;ld (de), a


	cp tile_ladder_left
	jp z, checkPlatformLeftRight

	cp tile_ladder_right
	ret nz

checkPlatformRight:
	
	call moveTileDownHL

	inc hl

	ld a, (hl)
	cp tile_platform
	ret nz

	dec hl
	dec hl
	dec hl

	ld a, (hl)
	cp tile_platform
	ret nz

yes:
	ld a, 1
	ld (harry_land_ladder), a

	ret




checkPlatformLeftRight:

	call moveTileDownHL
			
	dec hl

	ld a, (hl)
	cp tile_platform
	ret nz

	inc hl
	inc hl
	inc hl
	ld a, (hl)
	cp tile_platform
	ret nz

	jp yes