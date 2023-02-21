jumping_right:
	
	ld a, (blocked_below)
	cp 0
	jp z, checkBounceR

	ld a, (blocked_right)
	cp 1
	jp z, okayJump

	jp falling_right


jumping_left:

	ld a, (blocked_below)
	cp 0
	jp z, checkBounceL

	ld a, (blocked_left)
	cp 1
	jp z, okayJump

	jp falling_left
	

falling_right:


	

checkBounceR:
	
    ld a, (blocked_right)
	cp 1
	jp z, bounce_right


okayJump:

	ld a, air_speed_frac
	call increaseFracX
	
	ld a, (ix + spr_y)
	sbc 0
	ld (ix + spr_y), a

	ret



falling_left:
	

checkBounceL:
	
    ld a, (blocked_left)
	cp 1
	jp z, bounce_left


okayJumpL:
	
	ld a, (ix + spr_y)
	cp 255
	jp z, forcing

	cp 254
	jp z, forcing

	ld a, air_speed_frac
	call increaseFracX
	
	ld a, (ix + spr_y)
	adc 0
	ld (ix + spr_y), a



	ret

bounce_right:
	
	ld a, (x_pos_offset)
	cp 4
	jp nc, okayJump
	
	ld a, jump_left_state
	ld (jump_direction), a


	ret

bounce_left:
	
	ld a, (blocked_jump_left)
	cp 0
	jp z, okayJumpL

	ld a, (ix + spr_y)
	cp 255
	jp z, forcing

	cp 254
	jp z, forcing

	cp 0
	jp z, forcing

	jp notForcing


forcing:
	ld a, 255
	ld (ix +spr_y), a

	jp forceBounce


notForcing:

	ld a, (x_pos_offset)
	cp 4
	jp c, okayJumpL
	;

forceBounce:

	ld a, jump_right_state
	ld (jump_direction), a


	ret

