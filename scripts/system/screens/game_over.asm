                                                                                                  ;fall through to game over setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; performs logic for game over mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;constants

   
                                                        ;address of bottom blank
start_game_over:

    ld a,game_over                                                            ;set mode to game over
    ld (mode),a


    ld a, 1
    call play_song 

    call clear_tile_ram
    call hide_sprites

    call check_high_score

    ld a, 35 * 4
    ld (sprite3 + spr_num), a

    ld a, 36 * 4
    ld (sprite4 + spr_num), a

    ld a, 37 * 4
    ld (sprite5 + spr_num), a

    ld a, 38 * 4
    ld (sprite6 + spr_num), a

    ld a, 34 * 4
    ld (sprite0 + spr_num), a
    ld (sprite1+ spr_num), a

    ld a, 16
    ld (sprite0 + spr_y), a

    add 16
    ld (sprite1 + spr_y), a

    ld a, 0
    ld (sprite7 + spr_x), a


    ld a, 124
    ld (harry_land_timer) , a

    ld a, palette_white_black_pink
    ;ld a, 1
    ld (sprite0 + spr_pal),a 
    ld (sprite1 + spr_pal),a 


    ld a, start_x
    ld (sprite3 + spr_y), a

    sub 16
    ld (sprite4 + spr_y), a

    sub 24
    ld (sprite5 + spr_y), a

    sub 16
    ld (sprite6 + spr_y), a


    ld a, level_y
    ld (sprite3 + spr_x), a
    dec a
    ld (sprite4 + spr_x), a
    ld (sprite5 + spr_x), a
    ld (sprite6 + spr_x), a

    sub 2
    ld (sprite0 + spr_x), a
    ld (sprite1 + spr_x), a
  
    ld a, palette_green_white_red
   ; ld (sprite3 + spr_pal), a
   ; ld (sprite4 + spr_pal), a
   ; ld (sprite5 + spr_pal), a
   ; ld (sprite6 + spr_pal), a
   ; ld (sprite7 + spr_pal), a

   

    jp wait                                                                                ;wait for next game loop


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; performs logic for game over mode
; just a countdown timer so no other functions needed
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
game_over_logic:

    ld a, (harry_land_timer)
    cp 0
    jp z, noMore2

    dec a
    ld (harry_land_timer), a

noMore2:

        
    ld ix, sprite3

    ld b, 4

scroll_loop2:
        
    ld a, (ix + spr_y)
    inc a
    inc a
    ld (ix + spr_y), a
    cp 40
    jp c, hide2

    cp 250
    jp c, noHide2


hide2:
    ld a, 0
    ld (ix +spr_pal),a

    ld a, (harry_land_timer)
    cp 0
    jp nz, nextSprite2

    ld a, b
    cp 1
    jp z, finish_game_over

    jp nextSprite2 

noHide2:

    ld a, (harry_land_timer)
    cp 0
    jp nz, okToColour

    ld a, (ix+spr_y)
    cp 60
    jp c, hide2

okToColour2:

    ld a, palette_green_white_red
    ld (ix +spr_pal),a 

nextSprite2:

    inc ix
    inc ix

    djnz scroll_loop2



exit_game_over_update:




    jp wait                                                                                ;finished setup goto wait section
    

finish_game_over:
    
    ld a, viewing_high_score
    ld (high_score_state), a

    ld a, (high_score_index)
    cp 255
    jp z, start_title_mode


    ld a, entering_high_score
    ld (high_score_state), a

    jp start_high_score



