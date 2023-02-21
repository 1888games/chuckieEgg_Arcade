


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; fills an entire row in either the top or
; bottom border with the value in a
; a contains tile/pallete number to write
; b contains number of tiles to fill
; hl contains tile ram or palette
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
fill_border_area_row:
.write                         ld        (hl),a                                                                        ;store value at current address
        dec hl                                                                                ;move right one column
            djnz .write                                                                        ;loop back if we have more to do
        ret
        
clear_tile_ram:

        ld  a,$40                                                                    ;tile number of empty tile
        ld  hl,tile_ram_start                                                ;clear video ram
        ld  de,tile_ram_start + 1
        ld  bc,$3ff                                                                        ;1k of tile ram
        ld  (hl),a                                                                        ;clear (hl), which then gets copied through to de
        ldir     
        ret   


clear_colour_ram:

                                                                       ;pallete 1
        ld  hl,pallete_ram_start                                        ;set all colour ram to palette 1
        ld  de,pallete_ram_start + 1
        ld  bc,$3ff                                                                        ;1k of palette ram
        ld  (hl),a                                                                        ;clear (hl), which then gets copied through to de
        ldir                                                                                ;copy from hl to de, decrementing bc, keep doing until bc = 0

        ret

moveTileDownHL:
moveTileLeftHL:
        
        ld a, l
        add 32
        ld l, a

        ld a, h
        adc 0
        ld h, a

        ret

moveTileRightHL:
moveTileUpHL:
        
        ld a, l
        sub 32
        ld l, a

        ld a, h
        sbc 0
        ld h, a

        ret


moveTwoTilesLeftHL:
moveTwoTilesDownHL:
        
        ld a, l
        add 64
        ld l, a

        ld a, h
        adc 0
        ld h, a

        ret

moveTwoTilesRightHL:
moveTwoTilesUpHL:
        
        ld a, l
        sub 64
        ld l, a

        ld a, h
        sbc 0
        ld h, a

        ret


    MACRO SetColourC

    set 2, h
    ld (hl), c
    res 2, h

    ENDM



draw2x2tile:

    ld a, b
    ld (hl), a

    SetColourC

    inc b
    inc hl

    ld a, b
    ld (hl), a

    SetColourC

    call moveTileDownHL

    ld a, b
    add 16
    ld b, a

    ld (hl), a

    SetColourC

    dec hl
    dec b

    ld a, b
    ld (hl), a

    SetColourC

    ret

     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; xor's an entire row in either the top or
; bottom border with the a value
; b contains number of tiles to fill
; c contains value to xor
; hl contains tile ram or palette
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
xor_border_area_row:
.write                         
        ld a,c                                                                                ;load xor mask
        xor (hl)                                                                        ;xor with current tile/pallete addr contents
        ld        (hl),a                                                                        ;write new value
        dec hl                                                                                ;move right one column
            djnz .write                                                                        ;loop back if we have more to do
        ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; fills the entire screen pallete ram with given pallete number
; a contains pen colour to fill tiles with
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
fill_screen_area_colour:
        ld        hl,pallete_ram_main                                                ;colour ram
            ld        de,pallete_ram_main + 1                                        ;one on from hl so we effectively drag the value at hl through vram
            ld        bc,$37f                                                                        ;all but one address needed as we manually set the first one below
            ld        (hl),a                                                                        ;write first value to hl
            ldir                                                                                ;copy (hl) -> (de), inc hl, inc de, dec bc, loop until bc = 0
        ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; a contains tile number
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
fill_screen_area_working_slow:
        ld        hl,tile_ram_play_area                                        ;tile ram
            ld        de,tile_ram_play_area + 1                                ;one on from hl so we effectively drag the value at hl through vram
            ld        bc,$37f                                                                        ;all but one address needed as we manually set the first one below
            ld        (hl),a                                                                        ;write first value to hl
            ldir                                                                                ;copy (hl) -> (de), inc hl, inc de, dec bc, loop until bc = 0
        ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; fills a row with given tile/pallete
; hl holds start address to fill
; a holds the tile/palette colour to use
; b holds number of tiles/palettes to draw
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
fill_screen_area_row:
        ld de,-32                                                                        ;skip between columns 32 bytes down to move right
.write_loop:        
        ld (hl),a                                                                        ;store tile/pallete value 
        add hl,de                                                                        ;move right (back 32 bytes)
        djnz .write_loop                                                        ;have we done the correct number of writes?
        ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; xor's a row with given value - useful for flashing tiles
; hl holds start address to fill
; b holds number of tiles/palettes to draw
; c holds value to xor with tile/pallete
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
xor_screen_area_row:
        ld de,-32                                                                        ;skip between columns 32 bytes down to move right
.write_loop:        
        ld a,c                                                                                ;load c into
        xor (hl)                                                                        ;and xor value at hl with a
        ld (hl),a                                                                        ;store tile/pallete value 
        add hl,de                                                                        ;move right (back 16 bytes)
        djnz .write_loop                                                        ;have we done the correct number of writes?
        ret




calc_tile_location:

        // a = x
        // b = y

        push ix

        ld ixl, b
        sla a
       
        ld e, a
        ld d, 0
        ld hl, tile_column_lookup
        add hl, de

        ld a, (hl)
        inc hl
        ld h, (hl)
        ld l, a
          
        ld bc, tile_ram_start
        add hl, bc


        ld d, 0
        ld e, ixl

        add hl, de

       ; ld hl, tile_ram_play_area + column_4 + row_4

        ;ld a, 4
      ;  ld (hl), a

        pop ix

        ret

convert_hen_sprite_to_tile:

                
         ld h, 0
        ld a, (ix+spr_x)
        add 4
        ld l, a


      
        ld de, sprite_column_lookup

        add de, hl
        ld a, (de)

        //ld hl, time_location + 4
       // ld (hl), a
        ld c, a
        ld (temp_byte), a

        ld h, 0
        ld a, (ix+spr_y)
        add 7
        ld l, a

        ld de, sprite_row_lookup

        add de, hl
        ld a, (de)

       // ld hl, time_location + 2
       // ld (hl), a
        ld (temp_byte2), a
        ld b, a

        ld a, c

        call calc_tile_location


        ret




        ret

convert_sprite_to_tile:

        
        ld h, 0
        ld a, (ix+spr_x)
        add 4
        ld l, a


      
        ld de, sprite_column_lookup

        add de, hl
        ld a, (de)

        //ld hl, time_location + 4
       // ld (hl), a
        ld c, a
        ld (temp_byte), a

        ld h, 0
        ld a, (ix+spr_y)
        add 7
        ld l, a

        ld de, sprite_row_lookup

        add de, hl
        ld a, (de)

       // ld hl, time_location + 2
       // ld (hl), a
        ld (temp_byte2), a
        ld b, a

        ld a, c

        call calc_tile_location


        ret


random:
        push    hl
        push    de
        ld      hl,(rand_data)
        ld      a,$74
        ld      d,a
        ld      e,(hl)
        add     hl,de
        add     a,l
        xor     h
        ld      (rand_data),hl
        pop     de
        pop     hl
    
        ret

get_random_colour:

        call random

        and %00001111
        ld b, a

        push de
     

        ld de, valid_colours
        ld a, e
        add a, b
        ld e, a

        ld a, d
        adc 0
        ld d, a

        ld a, (de)

        pop de


        ret