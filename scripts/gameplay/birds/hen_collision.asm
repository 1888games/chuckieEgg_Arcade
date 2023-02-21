

hen_check_ladder:
	
	ld a, 0
	ld (hen_over_ladder), a
	ld (hen_can_go_up_ladder), a
	ld (hen_can_go_down_ladder), a
	
	ld hl, (iy + hen_tile_address)

	
	ld a, (iy + hen_centred_x)
	cp 1
	ret z


	ld a, (hl)
	cp tile_ladder_left
	ret nz

	ld a, (iy + hen_centred_y)
	cp 0
	jp z, hen_between_steps

	ld a, 1
	ld (hen_over_ladder), a

	call moveTileDownHL

	ld a, (hl)
	cp tile_ladder_left
	jp nz, noDownLadder

	ld a, 1
	ld (hen_can_go_down_ladder), a

noDownLadder:

	call moveTwoTilesUpHL
	call moveTileUpHL

	ld a, (hl)
	cp tile_ladder_left
	ret nz

	ld a, 1
	ld (hen_can_go_up_ladder), a



	ret


hen_between_steps:

	

	ld a, 1
	ld (hen_can_go_up_ladder), a
	ld (hen_can_go_down_ladder), a

	ret



hen_check_ladder_state:
	
	ld a, 0
	ld (hen_can_get_off_left), a
	ld (hen_can_get_off_right), a

	ld a, (iy + hen_state)
	cp HEN_CLIMBING
	ret nz

	ld a, (iy + hen_centred_y)
	cp 0
	ret z

	ld hl, (iy + hen_tile_address)
	dec hl
	call moveTileDownHL

	ld a, (hl)
	cp tile_platform
	jp nz, notLeftHenOff


	ld a, 1
	ld (hen_can_get_off_left), a

notLeftHenOff:

	inc hl
	inc hl
	inc hl

	ld a, (hl)
	cp tile_platform
	ret nz

	ld a, 1
	ld (hen_can_get_off_right), a

	ret






	ret

hen_check_blocked:

	ld a, 0
	ld (hen_blocked), a

	ld hl, (iy + hen_tile_address)

	ld a, (hen_over_ladder)
	cp 1
	ret z

	ld a, (iy + hen_centred_x)
	cp 0
	ret z


	ld a, (iy + hen_direction)
	cp LEFT
	jp z, checkLeft



checkRight:

		
		inc hl
		ld a, (hl)
		cp tile_platform
		jp z, isBlockedHen

		call moveTileDownHL
		ld a, (hl)
		cp tile_platform
		ret z

		cp tile_ladder_left
		ret z

		cp tile_ladder_right
		ret z

		jp isBlockedHen

checkLeft:	


		dec hl
		ld a, (hl)
		cp tile_platform
		jp z, isBlockedHen



		call moveTileDownHL
		ld a, (hl)
		cp tile_platform
		ret z

		cp tile_ladder_left
		ret z

		cp tile_ladder_right
		ret z


isBlockedHen:

		ld a, 1
		ld (hen_blocked), a






	ret