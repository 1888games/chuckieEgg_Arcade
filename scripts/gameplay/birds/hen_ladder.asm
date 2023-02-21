	

	
CHANCE_OF_STAYING_ON_LADDER = 120
CHANCE_WHEN_END_OF_LADDER = 180


hen_climbing:

	ld a, CHANCE_OF_STAYING_ON_LADDER
	ld (ladder_off_chance), a
	sra a
	ld (ladder_half_chance), a


	
	ld a, (hen_can_go_down_ladder)
	ld b, a
	ld a, (hen_can_go_up_ladder)
	add b
	cp 2
	jp z, probStayOn

	ld a, CHANCE_WHEN_END_OF_LADDER
	ld (ladder_off_chance), a
	sra a
	ld (ladder_half_chance), a


probStayOn:

	
	call random

	ld b, a
	ld a, (ladder_off_chance)
	cp b
	jp c, carryOnClimbing
	
checkGetOffLeft:

	ld a, (hen_can_get_off_left)
	cp 0
	jp z, checkGetOffRight

	ld a, (hen_can_get_off_right)
	cp 0
	jp z, startWalkLeft

	ld a, b
	ld a, (ladder_half_chance)
	cp b
	jp c, startWalkLeft


startWalkRight:

	ld a, HEN_WALKING
	ld (iy + hen_state), a

	ld a, RIGHT
	ld (iy + hen_direction), a

	ret 


startWalkLeft:
	
	ld a, HEN_WALKING
	ld (iy + hen_state), a

	ld a, LEFT
	ld (iy + hen_direction), a

	ret


checkGetOffRight:

	ld a, (hen_can_get_off_right)
	cp 1
	jp z, startWalkRight

	
carryOnClimbing:

	ld a, (iy + hen_state)
	cp HEN_CLIMBING
	ret nz


	ld a, (iy + hen_direction)
	cp UP
	jp z, moveHenUp

	jp moveHenDown



fakeMoveUp:

	ld a, (iy + hen_state)
	cp HEN_CLIMBING
	jp z, moveHenUp

	ld a, 1
	ld (iy + hen_centred_y), a

	ld a, HEN_CLIMBING
	ld (iy + hen_state), a

	ld a, UP
	ld (iy + hen_direction), a


moveHenUp:	
	
	ld a, (hen_can_go_up_ladder)
	cp 0
	jp z, hen_turn_ladder



	ld a, (ix + spr_x)
	sub 4
	ld (ix + spr_x), a

	ld a, (iy + hen_frame)
	xor %00000001
	ld (iy + hen_frame), a


	ld a, (iy + hen_centred_y)
	xor %00000001
	ld (iy + hen_centred_y), a
	
	call setClimbFrame

	ld a, (iy + hen_centred_y)
	cp 0
	ret z

	ld hl, (iy + hen_tile_address)
	call moveTileUpHL
	ld (iy + hen_tile_address), hl


	ret

fakeMoveDown:

	
	ld a, (iy + hen_state)
	cp HEN_CLIMBING
	jp z, moveHenDown

	ld a, 1
	ld (iy + hen_centred_y), a

	ld a, HEN_CLIMBING
	ld (iy + hen_state), a

	ld a, DOWN
	ld (iy + hen_direction), a


moveHenDown:
	

	ld a, (hen_can_go_down_ladder)
	cp 0
	jp z, hen_turn_ladder
	
	ld a, (ix + spr_x)
	add 4
	ld (ix + spr_x), a

	;ld de, tile_ram_start + row_0 + column_4


	ld a, (iy + hen_centred_y)
	;ld (de), a
	xor %00000001
	ld (iy + hen_centred_y), a
	;inc de	
	;ld (de), a

	ld a, (iy + hen_frame)
	xor %00000001
	ld (iy + hen_frame), a

	
	call setClimbFrame


	ld a, (iy + hen_centred_y)
	cp 1
	ret z

	ld hl, (iy + hen_tile_address)
	call moveTileDownHL
	ld (iy + hen_tile_address), hl


	ret



hen_turn_ladder:	

	ld a, (iy + hen_direction)
	xor %00000100
	ld (iy + hen_direction), a

	jp carryOnClimbing


setClimbFrame:
	
	ld a, hen_climb_sprite
	ld b, a

	ld a, (iy + hen_frame)
	sla a
    sla a
    add b
    ld (ix + spr_num), a

	
	ld a, (hen_speed)
	ld (iy + hen_timer), a

	res flipy, (ix)
	ret







hen_decide_ladder:



	call random
	ld b, a

	cp 128
	ret nc

	ld a, (hen_can_go_up_ladder)
	cp 0
	jp z, checkHenDownLadder

	ld a, (hen_can_go_down_ladder)
	cp 0
	jp z, henMakeUp

	ld a, b
	cp 64
	jp nc, henMakeDown

henMakeUp:
	
	ld a, UP
	ld (iy + hen_direction), a

	ld a, HEN_CLIMBING
	ld (iy + hen_state), a

	
	ret


henMakeDown:


	ld a, DOWN
	ld (iy + hen_direction), a

	ld a, HEN_CLIMBING
	ld (iy + hen_state), a

	ret

checkHenDownLadder:
	
	ld a, (hen_can_go_down_ladder)
	cp 1
	jp z, henMakeDown
	

	ret