
checkCollisionLeft:

	ld a, 0
	ld (blocked_left), a
	ld (harry_exit_left), a

	ld hl, (harry_tile_address)
	;ld a, 3
	;ld (hl), a
	
	ld a, (ix+spr_y)
	cp 255
	jp z, isBlockedL

	cp 254
	jp z, isBlockedL

	ld a, (hl)
	cp tile_platform
	jp nz, notLeft1

isBlockedL:

	ld a, 1
	ld (blocked_left), a
	
notLeft1:
	
	dec hl
	ld a, (hl)
	cp tile_platform
	jp nz, notLeft2

	ld a, (x_pos_offset)
	cp 3
	jp c, notLeft2

isBlockedL2:

	ld a, 1
	ld (blocked_left), a

notLeft2:

	call moveTileDownHL

	ld a, (hl)
	cp tile_platform
	ret nz

isLeftExit:
	
	ld a, 1
	ld (harry_exit_left), a
	
	ret




checkBounceLeft:
	
	ld a, 0
	ld (blocked_jump_left), a

	ld a, (jump_direction)
	cp jump_right_state
	ret z

	ld hl, (harry_tile_address)
	
	ld a, (ix+spr_y)
	cp 255
	jp z, isBlockedLB

	cp 254
	jp z, isBlockedLB

	ld a, (hl)
	cp tile_platform
	jp z, isBlockedLB



isBlockedLB:

	ld a, (x_pos_offset)
	cp 4
	;ret c

	ld a, 1
	ld (blocked_jump_left), a
	


	ret


checkBounceRight:

	ld a, 0
	ld (blocked_jump_right), a

	ld a, (harry_state)
	cp STATE_FALLING
	ret nz


	ld a, (jump_direction)
	cp jump_left_state
	ret z

	ld hl, (harry_tile_address)
	inc hl

	ld a, (hl)
	cp tile_platform
	ret nz

	

isBlockedRB:

	
	ld a, (x_pos_offset)
	cp 4
	;ret c

	ld a, 1
	ld (blocked_jump_right), a
	



	ret

	
checkCollisionRight:

	ld a, 0
	ld (blocked_right), a
	ld (harry_exit_right), a
	
	ld hl, (harry_tile_address)
	inc hl
	
	ld a, (ix+spr_y)
	cp edgeRightX
	jp c,isBlockedR

checkR:

	ld a, (hl)
	cp tile_platform
	jp nz, notRight1

isBlockedR:

	ld a, 1
	ld (blocked_right), a

notRight1:
	

	call moveTileDownHL
	inc hl
	ld a, (hl)
	cp tile_platform
	ret nz

isRight2:
	
	ld a, 1
	ld (harry_exit_right), a


	
	ret

