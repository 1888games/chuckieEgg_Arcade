;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; performs logic for game mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
game_logic:
        
     
        call quit_to_title    

        ;call check_song_restart                                                    ;see if we want to get back to title screen



        ld a, (pal_timer)
        inc a
        ld (pal_timer), a
        cp 1
       ; jp z, skipUpdate

        cp 6
        jp nz, noReset

        ld a, 0
        ld (pal_timer), a

noReset:

        ld a, (level_complete)
        cp 1
        jp z, start_complete

        ld a, (is_attract_mode)
        cp 1
        call z, do_attract_mode 
        
        call lifts_update
        call harry_update

        call hens_update
        call mother_update


skipUpdate:
       
        call update_timers
        call show_score
        call show_lives

        jp wait                                                                                ;finished setup goto wait section



update_timers:

    ld a, (stop_timer)
    cp 0
    jp z, noStopTime

    dec a
    ld (stop_timer), a

    ret

noStopTime:

    ld a, (time_remaining)
    ld b, a
    ld a, (time_remaining + 1)
    add b
    cp 0
    jp nz, noLoseTime

  ;  ld hl, tile_ram_start + row_0 + column_9
    ;inc (hl)

    jp lose_set


noLoseTime:

    ld a, (time_reduce_timer)
    cp 0
    jp z, reduceTime

    dec a
    ld (time_reduce_timer), a
    ret


reduceTime:
    
    ld a, time_frames
   ; ld a, 0
    ld (time_reduce_timer), a

    ld a, (time_remaining)
    dec a
    daa
    ld (time_remaining), a

    ld a, (time_remaining + 1)
    sbc 0
    daa
    ld (time_remaining + 1), a



    ld a, (bonus_reduce_counter)
    inc a 
    ld (bonus_reduce_counter), a
    cp 5
    ret nz

    ld a, 0
    ld (bonus_reduce_counter),a 

    ld a, (bonus_remaining + 1)
    ld b, a
    ld a, (bonus_remaining)
    add b
    cp 0
    jp z, zeroBonus

    ld a, (bonus_remaining)
    sub $10
    daa
    ld (bonus_remaining), a
    ld b, a
   

    ld a, (bonus_remaining + 1)
    sbc 0
    daa
    ld (bonus_remaining + 1), a

zeroBonus:

        


    



    ret


check_song_restart:

        ld a, (song_number)
        cp 0
        jp nz, soundNotPause

        ld a, (attract_mode_timer)
        cp 0
        jp z, restart_song

        dec a
        ld (attract_mode_timer), a

        jp soundNotPause

restart_song:

       ; jp restart_song

        ld a, 2
        ;call play_song

soundNotPause:


        ret

do_attract_mode:
        

        ld a, (attract_mode_timer)
        cp 0
        jp nz, noNewControl

        ld hl, (attract_mode_address)
        inc hl
        inc hl
        ld (attract_mode_address), hl

        ld a, (hl)
        cp 255
        jp nz, notRunOut

        ld hl, attract_mode_data
        ld (attract_mode_address), hl

notRunOut:
        
        inc hl
        ld a, (hl)
      
noNewControl:
        
        dec a
        ld (attract_mode_timer), a

        ld a, $ff
        ld (joystick_state), a
        ld (fire_override), a

        ld hl, (attract_mode_address)
        ld a, (hl)
        cp 0 
        jp z, isFire
        ld (joystick_state),a

        ret



isFire:

        ld a, 0
        ld (fire_override), a


        ret




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; checks to see if player pressed p2 start so they can get
; quickly back to title screen
;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
quit_to_title:
        ld a,(start_state)                                                       ;get state
        and inp_chk_p2st                                                        ;examine p2 start
        cp inp_p2_presd                                                                ;check for pressed 
        jp nz,time_tick

        ld a, (is_attract_mode)
        cp 1
        jp z, start_title_mode    

       ; jp lose_set

      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; checks to see if whole second has passed
; if so reduces time, if it's zero goes to game over
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
time_tick:

        ld a,(start_state)                                                       ;get state
        and inp_chk_p1st                                                        ;examine p2 start
        cp inp_p1_presd                                                                ;check for pressed 
        jp nz,noQuit

        ld a, (is_attract_mode)
        cp 1
        jp z, start_title_mode    


noQuit:

        ld a,(frame_number)                                                        ;get frame number
        and a                                                                                ;see if it is zero
        ret nz                                                                                ;if not then second is not up yet

        ld a,(game_time)
        cp 0
        ret z
                                                                ;get game time
        dec a                                                                                ;reduce by one
        daa                                                                                        ;correct for bcd
        ld (game_time),a  

        ld a, (seconds_left)
        dec a 
        ld (seconds_left), a
                                                             ;store new time
        ret          