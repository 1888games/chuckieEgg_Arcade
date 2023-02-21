harry_make_idle:


	ld (harry_state), a
	cp STATE_IDLE
	;;ret z

	ld a, STATE_IDLE
	ld (harry_state), a

	ld a, harry_idle_frame
	ld (harry_start_frame), a

	ld a, 0
	ld (harry_frame), a
	ld (y_speed_frac), a
	ld (y_speed_pixel), a
	ld (harry_special_frame), a

	ld a, 16
	ld (harry_frame_time), a
	ld (harry_frame_timer), a

	ld a, 0
	ld (harry_max_frame), a
	ld (harry_frame_loop), a
	ld (jump_direction), a

	ld a, (harry_on_lift)
	cp 1
	ret z

	ld a, (y_pos_offset)
	sub 4
	ld b, a
	ld a, (ix + spr_x)
	sub b
	ld (ix + spr_x), a

	ret


harry_make_climb:
	
	

	ld a, STATE_CLIMBING
	ld (harry_state), a

	ld a, harry_climb_frame
	ld (harry_start_frame), a

	ld a, 0
	ld (harry_frame), a
	ld (harry_special_frame), a
	

	ld a, 1
	ld (harry_frame_time), a
	ld (harry_frame_timer), a
	ld (harry_frame_loop), a 

	ld a, 3
	ld (harry_max_frame), a

	ld a, (ladder_join_x)
	ld (ix + spr_y), a


	ret


harry_make_jump:


	call sfx_jump

harry_jump_no_sound:

	
	ld a, 1
	ld (jump_climb_straight), a

	ld a, (harry_state)
	cp STATE_CLIMBING
	jp nz, notLadderJump


	ld a, (possible_jump_direction)
	cp 0
	jp z, noFrameChange


notLadderJump:


	ld a, 0
	ld (jump_climb_straight), a
	
	ld a, harry_jump_frame
	ld (harry_start_frame), a

noFrameChange:
	
	ld a, STATE_JUMPING
	ld (harry_state), a



	ld a, 0
	ld (harry_frame), a

	ld (y_pos_frac), a
	ld (harry_frame_loop), a
	ld (harry_special_frame), a
	ld (jump_counter), a
	ld (x_pos_frac), a
	ld (gravity_applies), a

	ld a, (possible_jump_direction)
	ld hl, tile_ram_start + column_5 + row_2
	;ld (hl), a
	ld (jump_direction), a

	ld a, 255
	ld (harry_frame_time), a
	ld (harry_frame_timer), a

	ld a, 0
	ld (harry_max_frame), a

	ld a, 0
	ld (y_speed_pixel), a

	ld a, 120
	ld (y_speed_frac), a

	ld a, (harry_on_lift)
	cp 0
	ret z

	ld a, 170
	ld (y_speed_frac), a

	ret


harry_make_fall:

	ld a, 0
	ld (gravity_applies), a
	ld (harry_frame), a
	ld (harry_frame_loop), a
	ld (harry_max_frame), a
	ld (harry_special_frame), a
	ld (jump_counter), a

	ld a, 15
	ld (gravity), a

	ld a, 120
	ld (y_speed_frac), a
	
	ld a, (harry_state)
	cp STATE_JUMPING
	jp z, noGravityYet

	ld a, 1
	ld (gravity_applies), a

	ld a, 5
	ld (y_speed_frac), a
	ld (gravity), a

noGravityYet:

	

	ld a, STATE_FALLING
	ld (harry_state), a

	ld a, (jump_climb_straight)
	cp 1
	jp z, skipFrameSet
		

	ld a, harry_fall_frame
	ld (harry_start_frame), a

skipFrameSet:


	ld a, 255
	ld (harry_frame_time), a
	ld (harry_frame_timer), a

	ld a, 0
	ld (y_speed_pixel), a

	;ld a, 120
	;ld (y_speed_frac), a


	ret



harry_make_walk:

	ld a, STATE_WALKING
	ld (harry_state), a

	ld a, harry_walk_frame
	ld (harry_start_frame), a

	ld a, 0
	ld (harry_frame), a
	ld (harry_special_frame), a
	ld (jump_direction), a


	ld a, 1
	ld (harry_frame_time), a
	ld (harry_frame_timer), a

	ld a, 1
	ld (harry_max_frame), a
	ld (harry_frame_loop), a

	ret
