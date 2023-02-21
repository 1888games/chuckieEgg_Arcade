
lose_update:
   

     ld ix, sprite0

     call update_frame
     call calculate_frame
     call harry_jumping
    


     ld a, (harry_state)
     cp STATE_FALLING
     jp nz, skipFall

     ld a, (ix+spr_x)
     cp 14
     jp c, lose_reset

    ; set flipy,(ix)
        
     ld a, (temp_byte)
     add 2
     ld (temp_byte), a
     srl a
     srl a
     srl a
     srl a
     srl a
     add 1
     ld b, a

     ld ix, sprite0
     ld a, (ix+spr_x)
     add b

     ld (ix+spr_x), a


skipFall:

	 jp wait


lose_reset:
    

    
    ld a, 255
    ld (mode), a

     set flipy,(ix)

      ld b, 50

stopabit:

      halt
      djnz stopabit

      ld a, (is_attract_mode)
      cp 0
      jp z, noReturn

      ld a, 0

      ld hl, CH3_E_NUM
      ld (hl), a

      ld hl, CH2_E_NUM
      ld (hl), a

        ld hl, CH1_E_NUM
      ld (hl), a
      
      jp start_title_mode

noReturn:

	  ld a,(player_lives)  
	  dec a
	  ld (player_lives), a
	  cp 0
	  jp nz, NotGameOver

	  jp start_game_over

NotGameOver:
  
    ld ix, sprite0
    res flipy,(ix)                              ;flip x - set to 1

            
    ld ix, sprite0
    ld a, (spawn_x)
    ld (ix+spr_x), a

    ld a, (spawn_y)
    ld (ix+spr_y), a

     ld a, invincible_time
     ld (harry_invincible_timer), a

    ld a, (current_level_time)
    ld (time_remaining + 1), a

     ld a, (hens_to_spawn)
     ;ld de, tile_ram_start + row_0 + column_19
     ;ld (de), a
     ld (number_hens), a

    call delete_lifts 
  
    ld hl, (hen_data_address)

    call initialise_hens
    call init_mother


     ld a, game_mode
     ld (mode), a

	jp wait


lose_set: 

    //call SFX_died_died

 
    call harry_jump_no_sound

	ld a, life_lost
   	ld (mode),a  

    ld a, 50
    ld (life_lost_counter), a

    call sfx_died

   // ld ix, sprite0
                        ;flip x - set to 1

    ld a, 0
    ld (temp_byte), a

    ld a, 1
    ld (lives_lost_level), a

    ret

	



