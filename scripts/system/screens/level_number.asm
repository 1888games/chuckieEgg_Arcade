                                                                                               ;fall through to game over setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; performs logic for game over mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;constants

start_x = 48
level_y = 130    
                                                        ;address of bottom blank
start_level_number:

    ld a,number_mode                                                                ;set mode to game over
    ld (mode),a



    call clear_tile_ram

    
    ld a, (level_hex)
    add 1
    daa 
    ld (level_hex), a

    ld a, (level_right)
    inc a
    ld (level_right), a
    cp 10
    jp nz, noTens

    ld a, 0
    ld (level_right), a

    ld a, (level_left)
    inc a
    ld (level_left), a
    cp 10
    jp nz, noTens

    ld a, 0
    ld (level_left), a

noTens:

    ld a, (is_attract_mode)
    cp 0
    jp z, notAttractSkip

    jp next_level

notAttractSkip:


    ld a, 18 * 4
    ld (sprite3 + spr_num), a

    ld a, 19 * 4
    ld (sprite4 + spr_num), a

    ld a, 20 * 4
    ld (sprite5 + spr_num), a

    ld a, 34 * 4
    ld (sprite0 + spr_num), a
    ld (sprite1+ spr_num), a

    ld a, 16
    ld (sprite0 + spr_y), a

    add 16
    ld (sprite1 + spr_y), a

    ld a, 0
    ld (sprite7 + spr_x), a


    ld a, 100
    ld (harry_land_timer) , a

    ld a, palette_white_black_pink
    ;ld a, 1
    ld (sprite0 + spr_pal),a 
    ld (sprite1 + spr_pal),a 


    ld a, start_x
    ld (sprite3 + spr_y), a

    sub 16
    ld (sprite4 + spr_y), a

    sub 16
    ld (sprite5 + spr_y), a

    sub 16
    ld (sprite6 + spr_y), a

    sub 8
    ld (sprite7 + spr_y), a

    ld a, level_y
    ld (sprite3 + spr_x), a
    ld (sprite4 + spr_x), a
    ld (sprite5 + spr_x), a
    add 1
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

    ld a, (level_left)
    cp 0
    jp nz, useTens

    ld a, (level_right)       

useTens:

    add 24
    sla a
    sla a
    ld (sprite6 + spr_num), a

    ld a, (level_left)
    cp 0
    jp z, skipTens

    ld a, (level_right)
    add 24
    sla a
    sla a
    ld (sprite7 + spr_num), a

    ld a, (level_left)
    cp 0
    jp z, skipTens

    ld a, level_y
    add 1
    ld (sprite7 + spr_x), a


skipTens:

    
   

    jp wait                                                                                ;wait for next game loop


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; performs logic for game over mode
; just a countdown timer so no other functions needed
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
number_update:

  ; jp next_level
        
    ld a, (harry_land_timer)
    cp 0
    jp z, noMore

    dec a
    ld (harry_land_timer), a

noMore:

        
    ld ix, sprite3

    ld b, 5

scroll_loop:
        
    ld a, (ix + spr_y)
    inc a
    inc a
    ld (ix + spr_y), a
    cp 40
    jp c, hide

    cp 250
    jp c, noHide


hide:
    ld a, 0
    ld (ix +spr_pal),a

    ld a, (harry_land_timer)
    cp 0
    jp nz, nextSprite

    ld a, b
    cp 1
    jp z, next_level

    jp nextSprite 

noHide:

    ld a, (harry_land_timer)
    cp 0
    jp nz, okToColour

    ld a, (ix+spr_y)
    cp 60
    jp c, hide

okToColour:

    ld a, palette_green_white_red
    ld (ix +spr_pal),a 

nextSprite:

    inc ix
    inc ix

    djnz scroll_loop



exit_number_update:




    jp wait                                                                                ;finished setup goto wait section
    




