start_high_score:

	  ld a,high_score_mode                                                                ;set mode to game over
      ld (mode),a


      ld a, title_seq_time
      ld (game_time), a

      call clear_tile_ram
      call hide_sprites

       ld  a,palette_white_blue_red 
      call clear_colour_ram


 	  call logo_text
 	  call draw_eggs

 	  ld de,msg_high_table                                                  ;get text addr for game message
      ld hl,tile_ram_start + row_8 + column_16                                 ;vram address for text
      ld c,palette_orange_green_orange                       ;colour red
      call main_blit_text_and_colour  
      



	jp wait



check_high_score: 
	

	ld b, NUM_HIGH_SCORES
	ld ix, high_scores + 6

	ld hl,high_scores + 6      

check_row_loop:

	ld a, b
	ld (temp_byte2), a
	

	ld (temp_address), hl
      ;now check high score to see if bigger start with high bytes
       ld b,3
       ld de,current_score + 3                                                ;get high byte first (point one too far as we dec straight away)
                                                ;get high byte first (point one too far as we dec straight away)
.check_loop2:
        dec de                                                                                ;move to next most significant bytes
        dec hl     
        ld a, (hl)                                                                           ;for score and high score
        ld a,(de)                                                                        ;load score byte
        cp (hl)                                                                                ;compare with highscore byte (does subtract but doesn't affect a register)
        ;daa                                                                                        ;correct for bcd numbers (in case we have 80 and above as these would appear as -ve numbers)
        jp z, .nextByte2
        jp c, .nextScore                                                                             ;not bigger so stop checking
        jp nz,.found_high_score
.nextByte2:                                           ;if numbers not the same then we have a new high score so stop checking
        djnz .check_loop2:                                                        ;do for all 4 bytes if necessary (until b = 0)


.nextScore:
     ld a, (temp_byte2)
     ld b, a

     ld hl, (temp_address)
     inc hl
     inc hl
     inc hl
     inc hl
     inc hl
     inc hl


     djnz check_row_loop

     ld a, 255
     ld (high_score_index), a


     ret

.found_high_score:

	ld a, (temp_byte2)
	ld (high_score_index), a

	
	ld a, (high_score_index)
	cp 0
	jp z, noShiftDown

	ld b, a

 	ld de, high_scores + (NUM_HIGH_SCORES * 6)
 	ld hl, high_scores + ((NUM_HIGH_SCORES - 1) * 6)
	
shift_loop2:
   	
   	dec de                                                                                ;move to next most significant bytes
    dec hl 
    ld a,(hl)                                                                           ;for score and high score
    ld (de), a 

    dec de                                                                                ;move to next most significant bytes
    dec hl 
    ld a,(hl)                                                                           ;for score and high score
    ld (de), a 

    dec de                                                                                ;move to next most significant bytes
    dec hl 
    ld a,(hl)                                                                           ;for score and high score
    ld (de), a 

    dec de                                                                                ;move to next most significant bytes
    dec hl 
    ld a,(hl)                                                                           ;for score and high score
    ld (de), a 

    dec de                                                                                ;move to next most significant bytes
    dec hl 
    ld a,(hl)                                                                           ;for score and high score
    ld (de), a 

    dec de                                                                                ;move to next most significant bytes
    dec hl 
    ld a,(hl)                                                                           ;for score and high score
    ld (de), a 

    djnz shift_loop2
   
noShiftDown:
	

	ld hl, (temp_address)
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	ld (high_score_address), hl

	ld a, $41
	ld (hl), a

	ld a, $40
	inc hl
	ld (hl), a
	inc hl
	ld (hl), a

	ld a, (current_score)
	inc hl
	ld (hl), a

	ld a, (current_score + 1)
	inc hl
	ld (hl), a

	ld a, (current_score + 2)
	inc hl
	ld (hl), a



	ret





high_score_update:

	ld a, (frame_counter)
	and %00000011
	jp nz, noDraw

	call draw_scores

noDraw:

	ld a, (high_score_state)
	cp viewing_high_score
	jp z, noEdit


editing:
	
	ld a, (cooldown)
	cp 0
	jp z, readyEnter

	dec a
	ld (cooldown), a
	jp noAttract

readyEnter:	

	ld a, 6
	ld (cooldown), a
	
	ld a,(joystick_state)                                                                                  ;get state again
    and inp_chk_up                                                       ;examine down                                                                                ;check if pressed
    jp nz, init_up

    ld a,(joystick_state)
    and inp_chk_down
    jp nz, init_down

    ld a, (start_state)
	and inp_p1_fire                                                   ;examine down                                                                     ;check if pressed
    jp z, noAttract

    ld hl, (high_score_address)
    inc hl
    ld (high_score_address), hl

    ld a, (hl)
    cp $40
    jp z, isSpace

    ld a, 50
    ld (cooldown), a

    ld a, viewing_high_score
    ld (high_score_state), a
    jp noAttract

isSpace:

 	inc a
 	ld (hl), a

   jp noAttract


init_down:
	
	ld hl, (high_score_address)
	ld a, (hl)

	cp $5A
	jp z, noAttract

	inc a
	ld (hl), a


	jp noAttract


init_up:  

	ld hl, (high_score_address)
	ld a, (hl)

	cp $41
	jp z, noAttract

	dec a
	ld (hl), a



noEdit:
	
	ld a, (cooldown)
	cp 0
	jp z, readyEnter2

	dec a
	ld (cooldown), a
	jp noAttract

readyEnter2:

	ld a,(start_state)                                                        ;get state
    and inp_chk_p1st                                                        ;examine p1 start
    cp inp_p1_presd                                                                ;check for pressed 
    jp nz,noCountdown2

    xor a
    ld (is_attract_mode), a

    jp start_game
                              
   

noCountdown2:

    ld a, (frame_counter)
    and %00001111
    jp nz, noAttract

    ld a, (game_time)
    dec a
    ld (game_time), a
    cp 0
    jp nz, noAttract

    ld a, 1
    ld (is_attract_mode), a

	jp start_game

noAttract:

	
	jp wait

;high_score_low_byte:			equ 2
;high_score_med_byte:			equ 1
;high_score_high_byte:			equ 0
;high_score_init_1:				equ 3
;high_score_init_2:				equ 4
;high_score_init_3:				equ 5

draw_scores:

	ld b, NUM_HIGH_SCORES
	ld ix, high_scores
    ld hl, tile_ram_start + row_10 + column_14

draw_score_loop:


	ld a, b
	ld (temp_byte2), a

	ld iyl, grey

	ld a, (high_score_state)
	cp viewing_high_score
	jp z, flash_names

	ld a, (high_score_index)
	cp b
	jp nz, now_draw_row

flash_names:

    call get_random_colour
    ld iyl, a

now_draw_row:

    call draw_score_row

    ld a, l
    sub 12
    ld l, a




   ; call moveTileDownHL
    call moveTwoTilesDownHL
   	
   	inc ix
   	inc ix
   	inc ix
   	inc ix
   	inc ix
   	inc ix

   

   	ld a, (temp_byte2)
   	ld b, a

   	djnz draw_score_loop

	ret


draw_score_row:
	
	;call get_random_colour
	;ld a, grey
	;ld iyl, a

	ld a, (ix+high_score_init_1)

	call draw_init_colour

	inc hl
	ld a, (ix+high_score_init_2)
	call draw_init_colour


	inc hl
	ld a, (ix+high_score_init_3)
	call draw_init_colour

	inc hl
	inc hl
	inc hl
	inc hl

	ld a, (ix+high_score_high_byte)
	ld c, a
	call show_hex

	ld a, (ix+high_score_med_byte)
	ld c, a
	call show_hex

	

	ld a, (ix+high_score_low_byte)
	ld c, a
	call show_hex
	
	
	ret

draw_init_colour:

	ld (hl), a

	set 2, h
	ld a, iyl

	ld (hl), a

	res 2, h

	ret