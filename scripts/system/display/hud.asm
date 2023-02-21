

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; displays time
; in sensible locations on 2nd row
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;constants
time_location:                equ $4024                                                                ;address in vram to place time

show_lives:
        
        call show_life_icons
       ; call show_keys
       ; call show_dodger
       ; call show_arcade
        call show_time
       call show_level

        call show_bonus
        call show_time

        ld hl, tile_ram_start + row_2 + column_4
        ld a, (eggs_remaining)
        ;ld (hl), a
                       

        inc hl
        ld a, (ix + spr_y)
       ; ld (hl), a                                                       ;use hex display as this is a bcd number (so it just works)
        ret
    


show_bonus:

        ld hl,tile_ram_start + hud_bot_row + row_19
        ld a, (bonus_remaining + 1)
        ld c, a
        call show_hex_small


        ld hl,tile_ram_start + hud_bot_row + row_21
        ld a, (bonus_remaining + 0)
        ld c, a
        call show_hex_small

    

        ret

show_time:

        ld hl,tile_ram_start + hud_bot_row + row_29
        ld a, (time_remaining + 1)
        ld (hl), a
     
        ld hl,tile_ram_start + hud_bot_row + row_30
        ld a, (time_remaining + 0)
        ld c, a
        call show_hex_small

    

        ret
        

show_level:

        ld hl,tile_ram_start + hud_bot_row + row_11
        ld a, (level_hex)
        ld c, a
        call show_hex_small
       


        ret

show_life_icons:

             
live_icons: 

        ld hl,tile_ram_start + column_24 + row_5
        ld a, (player_lives)
        dec a
        ld c, a
        ld b, 9

lives_loop:


        ld a, c
        cp 0
        jp m, no_life
    
        ld a, $E2
        jp draw_and_loop_lives

no_life:
        
        ld a, blank_tile
 
draw_and_loop_lives:
        ld (hl), a

        set 2, h

        ld a, palette_blue_red_yellow
        ld (hl), a

        res 2, h

        inc hl
        dec c
        djnz lives_loop

        ret 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; displays player score and high score
; in sensible locations on 2nd row
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;constants
hi_score_location:                equ tile_ram_start + column_27 + row_4

show_score:


        ld hl,tile_ram_start + hud_top_row  + row_5

        ;ld a,(current_score + 3)                                        ;get player score (hi byte first - little endian)
        ;ld c,a
        ;call show_hex                                                                ;output hi byte of score
        ld a,(current_score + 2)                                        ;get player score (hi byte first - little endian)
        ld c,a
        call show_hex                                                                ;output hi byte of score
        ld a,(current_score + 1)                                        ;get player score (hi byte first - little endian)
        ld c,a
        call show_hex                                                                ;output hi byte of score
        ld a,(current_score)                                                ;get player score (hi byte first - little endian)
        ld c,a
        call show_hex                                                                ;output hi byte of score

        ld hl,tile_ram_start + hud_top_row  + row_26                                  ;output on right hand side
       ; ld a,(high_score + 3)                                                ;get player score (hi byte first - little endian)
      ; ld c,a
       ;call show_hex                                                                ;output hi byte of score
        ld a,(high_scores + 5)                                                ;get player score (hi byte first - little endian)
        ld c,a
        call show_hex                                                                ;output hi byte of score
        ld a,(high_scores + 4)                                                ;get player score (hi byte first - little endian)
        ld c,a
        call show_hex                                                                ;output hi byte of score
        ld a,(high_scores +3)                                                        ;get player score (hi byte first - little endian)
        ld c,a
        call show_hex                                                                ;output hi byte of score


        ret

bot_display_upd:        
        ld hl,(frame_number)                                                ;get frame number see if it's 60
        ld a,l                                                                                ;check frame number
        and a                                                                                ;to see if it's zero
        ret nz                                                                                ;don't update if not frame 0
        
        ld a,(bot_mess_seconds)                                                ;get seconds interval for message change
        and h                                                                                ;and with number of seconds gone by
        ret nz                                                                                ;only update if on a 2 second interval, jump onto top display text
        
        ld hl,(msg_bot_addr)                                                ;get addr of message to display
        ld e,(hl)                                                                        ;remember lo-byte first in memory
        inc hl                                                                                ;move to hi-byte
        ld d,(hl)                                                                        ;place in d
        inc hl                                                                                ;point to next addr in array of addresses
        ld a,d                                                                                ;load hi-byte into for or'ing with the lo-byte
        or e                                                                                ;see if address is zero (if we or we can test full zero easy)
        jp nz,process_text_bot_text                                        ;if it isn't display the message

        ld hl,bottom_list                                                        ;reset to first item and re-load into de
        ld e,(hl)                                                                        ;remember lo-byte first in memory
        inc hl                                                                                ;move to hi-byte
        ld d,(hl)                                                                        ;place in d
        inc hl                                                                                ;point to next addr in array of addresses


process_text_bot_text:
        ld (msg_bot_addr),hl
                                                    ;store next message to display
        ld    hl,tile_ram_start +column_1 +row_3                               ;tile address to start writing at
        ld        c,red                                                         ;palette 21 (third colour tan)
        call main_blit_text_and_colour                               ;write text to border area
        ret

 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; displays a portion of text from a message at the top of the screen
; updates every 8 frames
; address of start position is loaded into hl
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



