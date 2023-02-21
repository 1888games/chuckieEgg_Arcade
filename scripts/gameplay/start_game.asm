
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; sets up game screen
; clears screen 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
start_game:
        
        
        ld a, 0
        ld (level_complete), a
        ld (level_right), a
        ld (pal_timer), a
        ld (level_hex), a
        ld (level_time_counter), a
        ld (level_left), a
        ld (stop_timer), a

        call sfx_open_door

      
        ld a, 255
        ld (level_type_id), a 
        ld (high_score_index), a


     
        ld a, (starting_lives)
        ld (player_lives), a

        ld a, start_hen_speed
       ; ld a, 1
        ld (hen_speed), a

        ld hl,0                                                                                ;clear
        ld (current_score),hl                                                ;reset player score
        ld (current_score + 2),hl  

        ld a, $10
        ld (current_bonus_level), a

        ld a, $09
        ;ld a, $01
        ld (current_level_time), a   

        ld a, (is_attract_mode)
        cp 1
        ld a, 3
        call nz, play_song                                    ;reset player score

        call hide_sprites
        
        ;ld a, (is_attract_mode)
        ;cp 0
        jp start_level_number



next_level:
        
        ld b, 30

wait_a_bit
        ld        (watchdog),a                       ;reset the watchdog
        halt

        djnz wait_a_bit

finishedWaiting:

                     
        ld a, 255
        ld (force_colour), a     
        
        ld hl,spr_initial_game_data                                        ;addr of game sprite data
        call set_sprites  
                                   ;and store

        ld ix, sprite0
        ld a, (ix + spr_x)
        ld (spawn_x), a

        ld a, (ix + spr_y)
        ld (spawn_y), a
                                
        ld  a,palette_white_blue_red                                                          
        call fill_screen_area_colour                               

        call clear_tile_ram
        call harry_initialise
        call init_mother

        ld a, game_mode
        ld (mode), a

        ld a, 0
        ld (eggs_remaining), a
        
        halt

        ld a, (level_time_counter)
        inc a
        ld (level_time_counter), a
        cp 17
        jp c, noTimeDecrease

        ld a, 0
        ld (level_time_counter), a

        ld a, (current_level_time)
        dec a
        daa
        ld (current_level_time), a

noTimeDecrease:

        ld a, (level_type_id)
        inc a
        cp 40
        jp c, noLevelWrap

        ld a, 0

noLevelWrap:

        ld (level_type_id), a
        
        ld ixl, a
        ld ixh, 0
        ld de, level_hens
        add ix, de

        ld a, (ix)
        ld (number_hens), a
        ld (hens_to_spawn), a

      ;  ld hl, tile_ram_start + row_5 +column_5
       ; ld (hl), a

        ld a, (level_type_id)
        ld ixl, a
        ld ixh, 0
        ld de, level_mother
        add ix, de

        ld a, (ix)
        ld (mother_active), a

       ; ld hl, tile_ram_start + row_0 + column_8
     ;   ld (hl), a

        ld a, (level_type_id)
        call draw_map

        call draw_hud
        call draw_cage



        ld a,$99                                                              ;set game counter to 60 (in bcd)
        ld (game_time),a 

        ld a, 99
        ld (seconds_left), a       

        ld a, 4
        ld (bonus_reduce_counter), a

        ld a, time_frames
        ld (time_reduce_timer), a                                               ;and store

        call reset_framenumber                                                ;set frame number to 0 so we start at a whole second

        ld a, (current_level_time)
        ld (time_remaining + 1), a

        ld a, (current_bonus_level)
        ld (bonus_remaining + 1), a

        add 10
        daa
        ld (current_bonus_level), a
        cp 0
        jp nz, noMaxBonus

        ld a, $10
        ld (current_bonus_level), a

noMaxBonus:


        ld a, $00
        ld (time_remaining + 0), a
        ld (bonus_remaining + 0), a


        ld a, 0
     
        ld (attract_mode_timer), a
        ld (lives_lost_level), a
        ld (jump_counter), a
        

        ld a, $ff
        ld (fire_override), a

        ld hl, attract_mode_data
        ld (attract_mode_address), hl

        inc hl
        ld a, (hl)
        ld (attract_mode_timer), a

     

        ld a, 40
        ld (harry_invincible_timer), a

waitEnough:

setRandom:
        ld a, (level_type_id)
        and %00000111
        add 106
        ld (rand_data), a

        neg
        ld (rand_data + 1), a

        ld a, (is_attract_mode)
        cp 1
        jp z, wait

        ld a, 2
       ; call play_song




        jp wait                                                                                ;finished setup goto wait section


hud_top_row = column_25
hud_bot_row = column_23

draw_hud:
    
        ld de,msg_player                                              ;get text addr for game message
        ld hl,tile_ram_start + row_0 + hud_bot_row                                    ;vram address for text
        ld c,palette_white_blue_red                                                   ;colour red
        call main_blit_text_and_colour  

        ld de,msg_level                                              ;get text addr for game message
        ld hl,tile_ram_start + row_7 + hud_bot_row                                    ;vram address for text
        ld c,palette_white_blue_red                                                   ;colour red
        call main_blit_text_and_colour  



        ld de,msg_bonus                                              ;get text addr for game message
        ld hl,tile_ram_start + row_15 + hud_bot_row                                    ;vram address for text
        ld c,palette_white_blue_red                                                   ;colour red
        call main_blit_text_and_colour  

        
        ld de,msg_time                                          ;get text addr for game message
        ld hl,tile_ram_start + row_25 + hud_bot_row                                    ;vram address for text
        ld c,palette_white_blue_red                                                   ;colour red
        call main_blit_text_and_colour  

draw_score_hud:

        ld de,msg_score                                                 ;get text addr for game message
        ld hl,tile_ram_start + row_0 + hud_top_row                                    ;vram address for text
        ld c,palette_white_blue_red                                                   ;colour red
        call main_blit_text_and_colour  


        ld de,msg_high                                         ;get text addr for game message
        ld hl,tile_ram_start + row_21 + hud_top_row                                ;vram address for text
        ld c,palette_white_blue_red                                                   ;colour red
        call main_blit_text_and_colour  





     ret


draw_cage: 



        ld b, $90
        ld hl, tile_ram_start + column_22 + row_0
        ld c, palette_yellow_blue_white
        call draw2x2tile

        ld b, $92
        ld hl, tile_ram_start + column_22 + row_2
        ld c, palette_yellow_blue_white
        call draw2x2tile

          ld b, $B0
        ld hl, tile_ram_start + column_20 + row_0
        ld c, palette_yellow_blue_white
        call draw2x2tile

        ld b, $B2
        ld hl, tile_ram_start + column_20 + row_2
        ld c, palette_yellow_blue_white
        call draw2x2tile

        ld b, $C0
        ld hl, tile_ram_start + column_19 + row_0
        ld c, palette_yellow_blue_white
        call draw2x2tile

        ld b, $C2
        ld hl, tile_ram_start + column_19 + row_2
        ld c, palette_yellow_blue_white
        call draw2x2tile

        ret