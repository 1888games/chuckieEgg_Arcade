

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; generic text blitting routine for normal areas of screen (28x32 main playfield)
; text strings MUST be zero terminated
; on entry
; de points to text string
; hl points to address in vram to print at
; c = palette colour of tile
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
main_blit_text_and_colour:        
        ld        a,(de)                                                                        ;get the byte at de
        inc        de                                                                                ;increment the text pointer
        or        a                                                                                ;test for string terminator 
        ret z                                                                                ;return if we've finished this string
        
        ld        (hl),a                                                                        ;write the byte to vram
        set        2,h                                                                                ;point hl at colour ram by setting bit 2 of h
        ld        a,c                                                                                ;get colour byte into a
        ld        (hl),a
        inc hl                                                                              ;write the byte to colour ram
       ; ld        a,l                                                                                ;low byte of vram/colour address into A
       ; sub        32                                                                                ;subtract 32 to move across the screen by 1 char position
       ; ld        l,a                                                                                ;store back to l
        res        2,h                                                                                ;point hl back at vram by clearing bit 2 of h
      ;  ld        a,h                                                                                ;handle the carry from the SUB instruction (if there was one)
      ;  sbc        a,0                                                                                ;subtract zero and the carry flag from a
       ; ld        h,a                                                                                ;store back to d
        jp        main_blit_text_and_colour                                ;loop until we read a zero terminating byte
        ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; generic text blitting routine for normal areas of screen (28x32 main playfield)
; text strings MUST be zero terminated
; on entry
; de points to text string
; hl points to address in vram to print at
; can do this as we don't have mess about with pallette ram
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
main_blit_text_only:        
        push bc                                                                                ;save bc as we are gonna nuke it
        ld bc,32                                                                        ;column skip amount
.char_loop:
        ld        a,(de)                                                                        ;get the byte at de
        
        inc        de                                                                                ;increment the text pointer
        or        a                                                                                ;test for string terminator 
        jp z,.finish                                                                ;return if we've finished this string
        
        ld        (hl),a                                                                        ;write the byte to vram
        sbc hl,bc                                                                        ;move to next column
        jp        .char_loop                                                                ;loop until we read a zero terminating byte
.finish:
        pop bc                                                                                ;retrieve bc
        ret





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; writes text to the top or bottom two rows
; on entry
; de points to text string
; hl points to address in vram to print at
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
borders_blit_text:        
        ld b,$1d                                                                        ;maximum number of chars to draw in a line (28)
.blit_loop:
        ld        a,(de)                                                                        ;get the byte at HL
        inc        de                                                                                ;increment the text pointer
        or        a                                                                                ;test for string terminator (0)
        ret z                                                                                ;return if we've finished this string
                
        dec b                                                                                ;check maximum characters has not been met
        ret z                                                                                ;return if we have

        ld        (hl),a                                                                        ;write the byte to vram
        set        2,h                                                                                ;point DE at colour ram by setting bit 2 of D
        ld        a,c                                                                                ;get colour byte into A
        ld        (hl),a                                                                        ;write the byte to colour ram
        res        2,h                                                                                ;point DE back at vram by clearing bit 2 of D
                dec hl                                                                                ;move to next column
        jp .blit_loop                                                                ;loop until we read a zero terminating byte


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; writes text to the top or bottom two rows
; hl contains vram address to write to
; de holds address of zero terminated string
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
borders_blit_text_only:        
        ld b,$1d                                                                        ;maximum number of chars to draw in a line (28)
.blit_loop:
        ld        a,(de)                                                                        ;get the byte at HL
        inc        de                                                                                ;increment the text pointer
        or        a                                                                                ;test for string terminator (0)
        ret z                                                                                ;return if we've finished this string
        
        dec b                                                                                ;check maximum characters has not been met
        ret z                                                                                ;return if we have

        ld        (hl),a                                                                        ;write the byte to vram
        dec hl                                                                                ;move to next column
        jp        .blit_loop                                                                ;loop until we read a zero terminating byte                



