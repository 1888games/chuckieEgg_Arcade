                               org $38                                                                                ;assemble from $38 (where the vblank interrupt will jump to)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; vertical blank interrupt routine
; interrupt generated when screen has finished drawing
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
vblank:             
            
        di                                          ;disable any interrupts (so we don't get interrupted)
        push        af                                        ;save accumulator, flags and registers we are going to destroy
        push        ix                                                                         
        push        hl                                                                        
        push        de                                                                        
        push        bc   
        push        iy                                                                     
                                
        xor        a                                ;clear accumulator
        ld        (irq_enable),a                   ;disable ints on the board
        ld        (watchdog),a                       ;reset the watchdog
                
        ;increment frame counter                                                
        ld a,(frame_counter)                          ;get current value
        inc a                                          ;increment 
        ld (frame_counter),a                           

        ;sort out frame counter
        ld hl,(frame_number)                             ;get 16 bit frame counter - l holds frame, h holds seconds
        dec l                                                 ;reduce number of frames by 1
        jp p,dont_reset_frame_counter                      ;only reset if it goes negative


        ld l,$3b                                          ;load back up with 59
        inc h                                           ;add one to seconds


dont_reset_frame_counter:
        ld (frame_number),hl                           ;store new counter

       

        call vblank1

        ld a, (is_attract_mode)
        cp 1
        jp z, skipSound

        call process_effect
        call process_wave
        jp useSound
        
      

skipSound:
        ;call process_effect

useSound:

        
      

        ; main vblank routines
        call set_sprite_data                              ;copy sprite data over to registers
        call input_manager                              ;update input states
        ;call flip_input                                  ;check for screen flip inputs
vbend:                        
        xor a                                               ;clear a
        ld        (watchdog),a                             ;and reset the watchdog
        inc a                                              ;enable interrupts again
        ld (irq_enable),a                                  ; enable ints on the board
        pop        iy
        pop        bc                                      ;restore registers in reverse order of push
        pop        de
        pop        hl
        pop        ix
        pop        af
        ei                                                ;enable interrupts again
        reti                                               ;return from interrupt


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; rest frame number to start second counting from 0 frame
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
reset_framenumber:

        ld a,$39                                                                        ;set up frame number for 0 so seconds are reset
        ld (frame_number),a                                                        ;reset frame number
        ret




