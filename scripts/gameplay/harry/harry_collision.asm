
checkCollisions: 
	
	ld ix, sprite0

	call convert_sprite_to_tile


	ld (harry_tile_address), hl

	ld a, (temp_byte)
	ld (harry_tile_x), a

	ld a, (temp_byte2)
	ld (harry_tile_y), a

	ld ix, sprite0

	

	call checkOverLadderL
	call checkOverLadderR
	call checkLadderAbove
	call checkLadderTwoAbove
	call checkLadderBelow

	call checkFloor
	call checkFootLadder
	call checkCanFall
	call checkStartFalling
	


	call checkCollisionLeft
	call checkBounceLeft

	call checkBounceRight
	call checkCollisionRight
	call checkLand
	
	call checkEgg
	call checkCorn

	;call displayDebug



	ret



checkEgg:	

	ld hl, (harry_tile_address)

	call moveTileUpHL

	ld a, (hl)
	cp tile_egg
	jp z, gotEgg

	call moveTileDownHL


	ld a, (hl)
	cp tile_egg
	jp z, gotEgg

	dec hl
	ld a, (hl)
	cp tile_egg
	jp nz, notEggLeft

	ld a, (x_pos_offset)
	cp 6
	ret c

	jp gotEgg

notEggLeft:

	
	inc hl
	inc hl
	ld a, (hl)
	cp tile_egg
	ret nz

	ld a, (x_pos_offset)
	cp 4
	ret nc

gotEgg:

	ld a, blank_tile
	ld (hl), a

	ld a, $50
	call score_points

	ld a, $50
	call score_points

	call sfx_got_egg

	// SCORE POINTS

	ld a, (eggs_remaining)
	dec a
	ld (eggs_remaining), a
	;ld a, 0
	cp 0
	ret nz

	ld a, 1
	ld (level_complete), a




	ret


checkCorn:

	ld hl, (harry_tile_address)
	ld a, (hl)
	cp tile_seed
	jp z, gotCorn

	call moveTileUpHL
	ld a, (hl)
	cp tile_seed
	jp z, gotCorn

	call moveTileDownHL

	dec hl
	ld a, (hl)
	cp tile_seed
	jp nz, notCornLeft

	ld a, (x_pos_offset)
	cp 4
	ret c

	jp gotCorn

notCornLeft:

	
	inc hl
	inc hl
	ld a, (hl)
	cp tile_seed
	ret nz

	ld a, (x_pos_offset)
	cp 4
	ret nc

gotCorn:

	ld a, blank_tile
	ld (hl), a

	ld a, 240
	ld (stop_timer), a

	ld a, $50
	call score_points

	call sfx_got_corn


	;ld a, $100
	// SCORE POINTS


	ret




checkBlockingTile:

	ld a, (hl)
	;ld de, tile_ram_start + row_0  + column_10
;	ld (de), a

checkBlockRight:

	cp tile_platform
	ret z



NoSolidLeft:
	
	cp 255
	ret nz



checkCanFall: 

	ld a, (harry_on_lift)
	cp 1
	jp z, noAlready
	
	ld a, (harry_state)
	cp STATE_FALLING
	jp z, noAlready

	ld a, (harry_right_foot_block)
	ld b, a
	ld a, (blocked_below)
	add b
	ld b, a
	ld a, (harry_land_ladder)
	add b
	cp 0
	ret z

noAlready:
	ld a, 0
	ld (harry_can_fall), a

	ret


checkStartFalling:

	ld a, (harry_state)
	cp STATE_FALLING
	ret z

	cp STATE_JUMPING
	ret z

	cp STATE_CLIMBING
	ret z

	ld a, (harry_over_ladder)
	cp 1
	ret z

	ld a, (harry_can_fall)
	cp 0
	ret z

	ld a, (harry_state)
	cp STATE_WALKING
	jp nz, notWalking

	ld a, (harry_face_right)
	cp 0
	jp z, fallLeft

fallRight:
	
	ld a, (ix+spr_y)
	sub 2
	ld (ix+spr_y), a

	jp notWalking

fallLeft:

	
	ld a, (ix+spr_y)
	add 2
	ld (ix+spr_y), a

notWalking:


	jp harry_make_fall




	ret

checkLand: 

	ld a, (harry_state)
	cp STATE_FALLING
	jp z, canLand

	cp STATE_IDLE
	ret z

	cp STATE_JUMPING
	jp z, canLandUpper

	ret

canLandUpper:
	
	ld a, (jump_counter)
	cp 4
	ret c

canLand:

	ld a, (harry_land_ladder)
	cp 1
	jp z, checkSnapPoint

	ld a, (harry_over_ladder)
	cp 1
	jp nz, noLadderLand

	ld a, (harry_exit_right)
	ld b, a
	ld a, (harry_exit_left)
	add b
	cp 2
	jp z, noLadderLand


	ld a, (harry_state)
	cp STATE_JUMPING
	ret z
	
	ret
	jp checkRightFoot2

noLadderLand:

	
	ld a, (harry_can_fall)
	cp 1
	ret z

checkSnapPoint:

	ld a, (harry_snap_ground)
	cp 0
	ret z

	ld a, (blocked_below)
	cp 1
	jp z, stopFall

checkRightFoot2:


	ld a, (harry_snap_ground)
	cp 0
	ret z

	ld a, (harry_land_ladder)
	cp 1
	ret nz

	ld a, (harry_right_foot_block)
	cp 1
	jp z, stopFall

	

	

stopFall:


	jp harry_make_idle






	ret




displayDebug: 

	


	ld hl, tile_ram_start + row_0 + column_17

	
;	inc hl
	ld a, (harry_ladder_above)
	ld (hl), a

	inc hl
	ld a, (harry_over_ladder)
	ld (hl), a

	inc hl
	ld a, (harry_ladder_below)
	ld (hl), a

	inc hl
	ld a, (harry_can_climb_ladder)
	ld (hl), a

	inc hl
	ld a, (harry_ladder_two_above)
	ld (hl), a


	dec hl
	dec hl
	dec hl
	dec hl



	call moveTileDownHL

	
	ld a, (blocked_below)
	ld (hl), a


	inc hl
	ld a, (harry_left_foot_block)
	ld (hl), a

	inc hl
	ld a, (harry_right_foot_block)
	ld (hl), a


	inc hl
	ld a, (harry_snap_ground)
	ld (hl), a


	inc hl
	ld a, (harry_can_fall)
	ld (hl), a



	dec hl
	dec hl
	dec hl
	dec hl



	call moveTileDownHL


	ld a, (x_pos_offset)
	ld (hl), a

	inc hl
	ld a, (y_pos_offset)
	ld (hl), a


	inc hl
	ld a, (harry_exit_left)
	ld (hl), a

	inc hl
	ld a, (harry_exit_right)
	ld (hl), a

	inc hl
	ld a, (harry_land_ladder)
	ld (hl), a


	dec hl
	dec hl
	dec hl
	dec hl


	call moveTileDownHL


	ld a, (blocked_left)
	ld (hl), a

	inc hl
	ld a, (blocked_right)
	ld (hl), a


	inc hl
	ld a, (blocked_jump_left)
	ld (hl), a

	inc hl
	ld a, (blocked_jump_right)
	ld (hl), a

	inc hl
	ld a, (harry_land_ladder)
	ld (hl), a



	ret