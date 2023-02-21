
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; THIS IS THE ENTRY POINT FROM THE JUMP AT ADDRESS 0;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; sets up z80 interrupt mode and clears all RAM                ;
; then initialises code to display screen                        ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

                                                                        ;copy from hl to de, decrementing bc, keep doing until bc = 0

start:    

        di                                                                                        ;disable ints on the CPU      
        ld  sp,ram_top                                                                ;set up a new stack at the top of ram
        im  1                                                                            ;set interrupt mode 1
        ld  a,RST_38H                                                                ;$ff is RST 38H instruction opcode
        out (0),a                                                                        ;set up the interrupt vector through port 0

        xor a                                                                                ;clear accumulator quickly 4 t-states rather than lda a,0 which is 7
        ld  (watchdog),a                                                        ;reset the watchdog

clear_user_ram:

        ld  hl,user_ram_start                                                ;addr to copy from
        ld  de,user_ram_start + 1                                        ;addr to copy to
        ld  bc,$3ef                                                                        ;gonna loop this many times (size of RAM 1007 bytes)
        ld  (hl),a                                                                        ;clear (hl), which then gets copied through to de
        ldir        

        ld hl,high_score_defaults
        ld de, high_scores
        ld bc, NUM_HIGH_SCORES * HIGH_SCORE_DATA_SIZE
        ldir



        ld a, ($5080)
        rrca
        rrca
        and #3
        inc a
        cp #4
        jr nz, set_lives

        inc a
set_lives:
        
        ld a, 5
        ld (starting_lives), a

        ld a, 30
        ld (cooldown), a
                                                         ;copy from (hl) to (de) and increment hl and de, decrementing bc, keep doing until bc = 0

        call clear_tile_ram

        ld  a,palette_white_blue_red 
        call clear_colour_ram

        xor a                                                                                ;quickly clear accumulator
        ld  hl,sprite_reg                                                        ;clear sprite ram
        ld  b,16                                                               ;16 bytes need clearing
clear_spr_ram:   

        ld  (hl),a                                                                        ;store (zero)
        inc hl                                                                                ;move to next address
        djnz clear_spr_ram                                                        ;decrement b and branch if not zero yet
    
        ld  hl,hardware_io_area                                                ;clear hardware mapped memory from $5000 to $5007
        ld  b,8  
                                                                                      ;do 8 bytes worth
clear_loop1:  

        ld  (hl),a                                                                        ;store a at location
        inc hl                                                                                ;increment to next location
        djnz clear_loop1                                                        ;loop until b is zero


set_highscore:

        ld hl, $5000                                                                ;set the 4 low bcd digits
        ld (high_score),hl

        ld a, 0
       
        ld (high_score + 3),a
        ld (high_score + 2), a
                               ;low bytes are here                
        ld a,0                                                                                ;clear h
        ld (high_score + 3),a                                               ;set the upper 4 bcd digits to zero


        xor a                                                                                ;clear a
        ld (watchdog),a              
          
        ld a, 254 
        ld (SOUND_COUNTER), a                                        ;reset the watchdog, to stop it barking
                                                  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; end of hardware initialisation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        ; enable interrupts and start main loop
        ld a,1
        ld (irq_enable),a                                                        ;enable ints on the board by writing 1 to this address
        ei       

        

       ; ld a, $00
        ;ld (current_score + 2), a

        ;ld a, $45
       ; ld (current_score + 1), a

      ;  ld a, $00
        ;ld (current_score), a

   
        ;call check_high_score

        ;jp finish_game_over        

      
       ; jp start_high_score
        jp start_title_mode          


