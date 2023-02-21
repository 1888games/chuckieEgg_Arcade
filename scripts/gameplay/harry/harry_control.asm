checkJoystick:
		
		xor a
		ld (went_down_ladder), a
		ld (went_up_ladder), a
		ld (possible_jump_direction), a


		ld a, (jump_direction)
		cp jump_left_state
		jp nz, .notForceLeft

		call go_left
		jp .notForceRight

.notForceLeft:

		ld a, (jump_direction)
		cp jump_right_state
		jp nz, .notForceRight

		call go_right

		jp .check_upndown

.notForceRight:

	  	                      ;it's non zero so isn't pressed
         ld a, (harry_state)
        cp STATE_FALLING
        jp z, .check_upndown

        cp STATE_JUMPING
       jp z, .check_upndown             

		ld a,(joystick_state)                                                ;get joystick state
        ld b,a                                                                                ;and save in b
        and inp_chk_left                                                        ;examine left
       ; and a                                                                                ;check for pressed 
        jp nz, joy_left    
		
		ld a,b           	                                                                     ;get state again
        and inp_chk_right                                                        ;examine right
       ; and a                                                                                ;check if pressed
        jp nz, joy_right   
                                     

.check_upndown:   
		
	


 		call check_stop_walk
         	
        ld a, (joystick_state)                                                       ;get state again
        and inp_chk_up                                                                ;examine up
       ; and a                                                                                ;check if pressed
        jp nz, go_up                                                                      ;it's non zero so isn't pressed

.check_down:  

		ld a, 0
		ld (moving_up_down), a

		ld a,(joystick_state)                                                                                  ;get state again
        and inp_chk_down                                                        ;examine down
       ; and a                                                                                ;check if pressed
        jp nz, go_down                                                                               ;it's non zero so isn't pressed so finish

       
        ret


checkFire:
		
		ld a, (fire_override)
		cp 0
		jp z, check_jump

		ld a,(start_state)	                                                                             ;get state again
        and inp_p1_fire                                                   ;examine down

        cp 0                                                                        ;check if pressed
        jp nz, check_jump                                                                             ;it's non zero so isn't pressed so finish	

.exit:
     


	ret

check_jump:

	ld a, (harry_state)
	cp STATE_WALKING
	jp z, harry_make_jump

	cp STATE_IDLE
	jp z, harry_make_jump

	cp STATE_CLIMBING
	jp z, harry_make_jump

	ret



check_stop_walk:
	

	ld a, (harry_state)
	cp STATE_WALKING
	jp z, stop_anim

	cp STATE_PUSHING
	jp z, stop_anim

	ret

stop_anim:
     jp harry_make_idle 
      

joy_left:

	
	ld a, 0
	ld (harry_face_right), a

	ld a, jump_left_state
	ld (possible_jump_direction), a


	ld a, (harry_state)
	cp STATE_JUMPING
	ret z

	cp STATE_FALLING
	ret z

go_left:

	ld a, (harry_state)
	cp STATE_JUMPING
	jp z, jumping_left

	cp STATE_FALLING
	jp z, falling_left


	ld a, (blocked_left)
	cp 1
	jp nz, not_blocked_L



	ld a, (harry_state)
	cp STATE_WALKING
	jp z, harry_make_idle

	ret

not_blocked_L:
	


	ld a, (harry_state)
	cp STATE_IDLE
	jp z, makeWalkLeft

	cp STATE_WALKING
	jp z, walkLeft

	cp STATE_FALLING
	jp z, jumpLeft

	cp STATE_JUMPING
	jp z, jumpLeft

	cp STATE_CLIMBING
	jp z,check_jump_off_left


makeWalkLeft:


	call harry_make_walk

walkLeft:

	ld a, 0
	ld (harry_face_right), a

	ld a, (ix + spr_y)
	cp 2
	jp c, StopLeft


	ld a, walk_speed_frac
	call increaseFracX
		
	ld a, (ix + spr_y)
	adc walk_speed_pixel
	ld (ix + spr_y), a

	cp 2
	jp c, StopLeft

	ret
	;cp edgeLeftX
	;jp c, notEdgeL

StopLeft:
	ld a, edgeLeftX
	ld (ix + spr_y), a


	jp harry_make_idle


notEdgeL:

	ret




edgeRightX:		equ 17
edgeLeftX:		equ 255


jumpLeft: 
	

	ld a, (x_pos_offset)
	cp 4
	jp c, noBounceL

	ld a, (y_pos_offset)
	cp 4
	jp nc, noBounceL
	
	ld a, (blocked_jump_left)
	cp 1
	jp z, bounce_left

noBounceL:

	ld a, air_speed_frac
	call increaseFracX
	
	ld a, (ix + spr_y)
	adc 0
	ld (ix + spr_y), a

	cp 2
	jp c, StopLeftJ

	ret
	;cp edgeLeftX
	;jp c, notEdgeL

StopLeftJ:
	ld a, edgeLeftX
	ld (ix + spr_y), a

	ret



joy_right:
	
	
	ld a, 1
	ld (harry_face_right), a

	ld a, jump_right_state
	ld (possible_jump_direction), a

	ld a, (harry_state)
	cp STATE_JUMPING
	ret z

	cp STATE_FALLING
	ret z


go_right:

	ld a, (harry_state)

	cp STATE_JUMPING
	jp z, jumping_right

	cp STATE_FALLING
	jp z, falling_right


	ld a, (blocked_right)
	cp 1
	jp nz, not_blocked_R

	cp STATE_WALKING
	jp z, harry_make_idle

	ret

not_blocked_R:

	ld a, (harry_state)
	
	cp STATE_IDLE
	jp z, makeWalkRight

	cp STATE_WALKING
	jp z, walkRight

	cp STATE_CLIMBING
	jp z,check_jump_off_right

makeWalkRight:

	call harry_make_walk

walkRight:
	
	

	ld a, walk_speed_pixel
	ld c, a

	ld a, walk_speed_frac
	call increaseFracX
	
	ld a, (ix + spr_y)
	sbc a, walk_speed_pixel
	ld (ix + spr_y), a

	;cp edgeRightX
	;jp nc, noEdgeR

	;ld a, edgeRightX
	;ld (ix + spr_y), a
;
	;jp harry_make_idle



noEdgeR:


	ret





go_up:
	
	;ld a, (ix + spr_x)
	;dec a
	;ld (ix+spr_x), a
	

	xor a
	ld (went_up_ladder), a
	ld (moving_up_down), a

	ld a, (harry_state)
	cp STATE_CLIMBING
	jp z, alreadyOnLadder


	ld a, (harry_over_ladder)
	cp 0
	ret z

	ld a, (harry_ladder_above)
	cp 0
	ret z


	ld a, (harry_can_climb_ladder)
	cp 0
	ret z

	ld a, (harry_ladder_two_above)
	cp 0
	ret z

	ld a, 1
	ld (went_up_ladder), a
	ld (moving_up_down), a

	call harry_make_climb

	ret


alreadyOnLadder:
	
	ld a, (harry_ladder_above)
	cp 0
	ret z

	ld a, (harry_ladder_two_above)
	cp 1
	jp z, canDefinitelyClimb

	ld a, (y_pos_offset)
	cp 5
	ret c

canDefinitelyClimb:

	ld a, (ix+spr_x)
 	dec a
	ld (ix+spr_x), a

	ld a, 1
	ld (went_up_ladder), a
	ld (moving_up_down), a


	ret



go_down:

	;ld a, (ix + spr_x)
	;inc a
	;ld (ix+spr_x), a
	
	
	ld a, 1
	ld (moving_up_down), a

	ld a, (harry_ladder_below)
	cp 1
	jp z, checkDownLadder


	ld a, (harry_snap_ground)
	cp 1
	jp z, check_crouch

	ld a, (harry_over_ladder)
	cp 1
	jp z, checkDownLadder

	ret
	
checkDownLadder:

	ld a, (harry_state)
	cp STATE_CLIMBING
	jp nz, check_join_down




moveDown:

	ld a, (ix+spr_x)
	inc a
	ld (ix+spr_x), a


	ret
		


jumpRight: 

   ; ld a, 1
	;ld (harry_face_right), a



	ld a, (blocked_jump_right)
	cp 1
	jp z, bounce_right


		
	ld a, air_speed_frac
	call increaseFracX
	
	ld a, (ix + spr_y)
	sbc 0
	ld (ix + spr_y), a


	ret

check_jump_off_left:

	
    ld a, (harry_exit_left)
	cp 0 
	ret z

	;ld a, (ix + spr_y)
	;add 2
	;ld (ix + spr_y), a

	;ld a, (y_pos_offset)
	;ld b, a

	;ld a, (ix + spr_x)
	;sub b
	;add 4
	;ld (ix + spr_x), a

	jp harry_make_idle

check_jump_off_right:

	ld a, (harry_exit_right)
	cp 0 
	ret z

	;ld a, (ix + spr_y)
	;sub 2
	;ld (ix + spr_y), a

	;ld a, (y_pos_offset)
	;ld b, a

	;ld a, (ix + spr_x)
	;sub b
	;add 4
	;ld (ix + spr_x), a

	jp harry_make_idle
	
	ret


increaseFracX:

	ld b, a
	ld a, (x_pos_frac)
	add a, b
	ld (x_pos_frac), a

	ret



	

check_join_down:

	ld a, (harry_ladder_below)
	cp 0
	jp z, check_fall_ladder

	ld a, (harry_can_climb_ladder)
	cp 0
	ret z


	ld a, (ix+spr_x)
	inc a
	ld (ix+spr_x), a


	jp harry_make_climb

check_crouch:

	ld a, (harry_over_ladder)
	cp 1
	jp z, check_ladder_off

crouch_ladder:


	ret

check_ladder_off:

	ld a, (harry_ladder_below)
	cp 1
 	ret z


check_fall_ladder:

	ld a, (harry_state)
	cp STATE_CLIMBING
	jp nz, crouch_in_front_ladder

	;ld a, 10
	;ld (alex_land_timer), a

	ld a, (blocked_below)
	cp 0
	jp nz, bottom_of_ladder

	ld a, (ix + spr_x)
	inc a
	ld (ix + spr_x), a

	ld a, (y_pos_offset)
	
	cp 5
	ret nz


	ld a, (ix + spr_x)
	inc a
	inc a
	ld (ix + spr_x), a

	jp harry_make_fall



	ret

horse:

	
	;jp harry_make_fall

bottom_of_ladder:



	jp harry_make_idle

crouch_in_front_ladder:
	
	;ld a, (alex_land_timer)
	cp 0
	ret nz

	;jp crouch_ladder

	ret