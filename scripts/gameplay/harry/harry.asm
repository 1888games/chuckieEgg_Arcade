

harry_initialise: 
	
	ld a, 255
	ld (harry_state), a

	call calculate_offsets
	
	call harry_make_idle

	ld a, 1
	ld (harry_face_right), a

	ld a, 0
	ld (harry_special_frame), a
	ld (blocked_left), a

	
	ret



harry_update: 

	
	
	ld ix, sprite0


	
	call calculate_offsets
	call adjust_gravity
	call checkLift
	call checkCollisions

	ld a,(mode)                                                                        ;get mode
    cp title_mode                                                                ;is it title mode
    jp z,skipControls

    cp life_lost
    jp z, skipControls


    call checkJoystick
    call checkFire
   

skipControls:
	
	 call checkOffScreen
	call handle_state

	ld ix, sprite0

	call update_frame
	call calculate_frame
	;call check_invincible

	

	ld a, (ix +spr_x)
	ld (harry_sprite_y), a

	ld a, (ix + spr_y)
	ld (harry_sprite_x), a

	ret

adjust_gravity: 

	ld a, (gravity)
	cp max_gravity
	ret z

	inc a
	ld (gravity), a
	
	ret


x_adjust = -2
y_adjust = 1
max_gravity = 20




checkOffScreen: 
	
	ld ix, sprite0

	ld a, (ix + spr_x)
	cp 62
	jp nc, notOffTop

	jp lose_set

notOffTop:

	cp 250
	ret c



	jp lose_set


	

	ret

calculate_offsets:

	ld a, (ix+spr_x)
	add x_adjust
	srl a
	srl a
	srl a
	sla a
	sla a
	sla a
	ld b, a
	ld a, (ix+spr_x)
	add x_adjust
	sub b
	ld (y_pos_offset), a


	ld a, (ix+spr_y)
	add y_adjust
	srl a
	srl a
	srl a
	sla a
	sla a
	sla a
	ld b, a
	ld a, (ix+spr_y)
	add y_adjust
	sub b
	ld (x_pos_offset), a
	

	ret




handle_state:
	

	ld a, (harry_state)
	cp STATE_IDLE
	jp z, harry_idle

	cp STATE_FALLING
	jp z, harry_falling

	cp STATE_JUMPING
	jp z, harry_jumping

	cp STATE_WALKING
	jp z, harry_walking

	cp STATE_CLIMBING
	jp z, harry_climbing


	ret



harry_climbing:

	ld a, (frame_counter)
	and %00000011
	cp 2
	ret nz
	call sfx_climb


	ret

harry_walking:
	
	ld a, (mode)
	cp game_mode
	ret nz
	
	ld a, (frame_counter)
	and %00000011
	cp 1
	ret nz
	call sfx_walk


	ret


harry_jumping:

	;ld b, gravity_force

	;ld a, (y_speed_frac)
	;sub b
	;ld (y_speed_frac), a

	;ld a, (y_speed_pixel)
	;sbc 0
	;ld (y_speed_pixel), a
	;jp p, notFallingNow

	;call harry_make_fall
	;ret

notFallingNow:

	ld a, (y_speed_pixel)
    ld c, a

	ld a, (y_speed_frac)
    ld b, a
    ld a, (y_pos_frac)
    add b
    ld (y_pos_frac), a

    ld a, (sprite0+spr_x)
    ld b, a
    sbc a, c
    ld (sprite0+spr_x), a
    sub b
    neg
    ld b, a

    ld a, (jump_counter)
    add a, b
    ld (jump_counter), a
    cp jump_height
    jp c, noFall

    jp harry_make_fall

noFall:


	ret



harry_falling:

	ld a, (gravity_applies)
	cp 0
	jp z, notMaxFall
	
	ld a, (gravity)
	ld b, a

	ld a, (y_speed_frac)
	add a, b
	ld (y_speed_frac), a

	ld a, (y_speed_pixel)
	adc 0
	ld (y_speed_pixel), a
	cp 0
	jp z, notMaxFall

	ld a, (y_speed_frac)
	cp 100
	jp c, notMaxFall

	ld a, 1
	ld (y_speed_pixel), a

	ld a, 100
	ld (y_speed_frac), a

notMaxFall:

	ld a, (y_speed_pixel)
    ld c, a

	ld a, (y_speed_frac)
    ld b, a
    ld a, (y_pos_frac)
    add b
    ld (y_pos_frac), a


    ld a, (sprite0+spr_x)
    ld b, a
    adc a, c
    ld (sprite0+spr_x), a
    sub b
    ld b, a

    ld a, (gravity_applies)
    cp 1
    jp z, noStop

    ld a, (jump_counter)
    add a, b
    ld (jump_counter), a
    cp jump_height
    jp c, noStop

    ld a, 1

    ld (gravity_applies), a

	;call checkFire

noStop:


harry_idle: 

	

	ret