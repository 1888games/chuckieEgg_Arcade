
update_frame: 
	
	ld a, (harry_frame_timer)
	cp 0
	jp z, ready_next_frame

	dec a
	ld (harry_frame_timer), a
	ret


ready_next_frame:

	ld a, (harry_state)
	cp STATE_CLIMBING
	jp nz, notClimbing

	ld a, (moving_up_down)
	cp 0
	ret z


notClimbing:

	ld a, (harry_frame_time)
	ld (harry_frame_timer), a

	ld a, (harry_max_frame)
	inc a
	ld b, a
	
	ld a, (harry_frame)
	inc a
	ld (harry_frame), a

	cp b
	ret nz

	ld a, (harry_frame_loop)
	cp 0
	jp nz, reset0

	ld a, (harry_max_frame)
	ld (harry_frame), a
	ret

reset0:

	ld a, 0
	ld (harry_frame), a


	ret

calculate_frame: 
	
	ld ix, sprite0
	
	ld a, (harry_start_frame)
	ld b, a
	ld a, (harry_frame)
	add a, b
	ld b, a
	ld a, (harry_special_frame)
	add a, b

	sla a
	sla a
	ld (ix + spr_num), a

	ld a, (harry_face_right)
	cp 0
	jp z, FlipHarry


NoFlip:

	res flipy, (ix)
	ret


FlipHarry:

	set flipy,(ix)
	ret
