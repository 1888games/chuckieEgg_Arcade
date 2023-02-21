                                                                                                ;fall through to game over setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; performs logic for game over mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;constants

                                                        ;address of bottom blank
start_complete:
    

        ld a,complete_mode                                                                ;set mode to game over
        ld (mode),a


        ld a, 30
        ld (transition_timer), a

        ld a, 0
        ld (transition_progress), a       
        ld (level_complete), a

      
        ld a, 1
        ld (busy), a
     ;   call play_song

        ld b, 20

wait_for_sound:
        
        ld        (watchdog),a   
        halt 


        djnz wait_for_sound

        
    
        ;ld a, $90
        ;ld (bonus_remaining + 1), a                                                                ;and store


per_frame:

        ld b, 10
        
time_loop:
    
        ld a, b
        ld (game_time), a

        ld a, (bonus_remaining)
        cp 0
        jp nz, notExpired

        ld d, a
        ld a, (bonus_remaining + 1)
        add d
        cp 0
        jp z, noBonus

notExpired:

        ld a, (bonus_remaining)
        sub 10
        daa 
        ld (bonus_remaining), a

        ld a, (bonus_remaining + 1)
        sbc 0
        daa
        ld (bonus_remaining + 1), a

        ld a, $10
        call score_points
        call show_score
        call show_bonus

       

        ld a, (game_time)
        ld b, a

        djnz time_loop

        ld        (watchdog),a   
        halt

         call sfx_got_key

        jp per_frame


noBonus:        
    

        ld a, 0
        ld (busy), a     


        ld a, 3
        call play_song  
 

        jp wait                                                                                ;wait for next game loop


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; performs logic for game over mode
; just a countdown timer so no other functions needed
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
complete_update:
        
    ld a, (busy)
    cp 1
    jp z, wait

    ld a, (transition_timer)
    cp 0
    jp z, ready_next_box

    dec a
    ld (transition_timer), a

    jp exit_update


ready_next_box:

    ld a, (transition_progress)
   
    call draw_rectangles
    call hide_sprites

    ld a, transition_delay + 1
    ld (transition_timer), a

    ld a, (transition_progress)
    inc a
    ld (transition_progress), a
    cp 12
    jp z, start_level_number

    cp 6
    jp nz, exit_update

    ld a, black
    ld (force_colour), a



    jp exit_update

    ;call quit_to_title                                                        ;see if we want to get back to title screen
   ; call show_lives  

    ;ld a,(frame_number)                                                        ;get frame number
    ;and a                                                                                ;see if it is zero
    ;jp nz,wait                                                                        ;if not then second is not up yet


    ld a,(game_time)                                                        ;get game time
    dec a                                                                                ;reduce by one
    ld (game_time),a                                                        ;store new time
    jp z, next_level                                           ;if zero then go back to title                                




exit_update:

    jp wait                                                                                ;finished setup goto wait section
    




