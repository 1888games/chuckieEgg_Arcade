     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; not being used just a little mess at flipping screen tiles and also flipping sprites to maintain
; there relative position and velocities 
; check player 2 start button test this with up
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

flip_input:                        
        ld a,(start_state)                                                        ;get state
        and inp_chk_p2st                                                        ;examine p2 start
        cp inp_p2_presd                                                                ;check for pressed 
        ret nz                                                                                ;not held held 0 means pressed
        ld a,(flip_screen)                                                        ;get flip screen status value
        cpl                                                                                        ;flip bit
        ld (flip_screen),a                                                        ;store again
        ld (flip_screen_addr),a
                                                        ;write to flip screen ram - this is a write only location so we need to maintain state ourselves
;Notes 
; sprites have to be flipped manually
; this loop works through each sprite it needs to:
; flip the x and y flip bits
; negate (*-1) the x and y velocities
; adjust and compliment the x and y positions

flip_all_sprites:

        ld de,$0d11                                                                        ;amount to subtract from positions 0d for x and $11 for y
        ld c,$03                                                                        ;mask for toggling flip bits (bits 1 and 0)
        
        ld ix,sprite_data                                                        ;load up sprite number data
        ld b,NUM_SPRITES  
                                                                                      ;need to do 6 sprites
.flip_bits:               
		
		ld a,c                                                                                ;load up flip mask for x and y flip bits
        xor (ix + spr_num)
        ld (ix + spr_num),a                                                        ;store flipped version
        
        ;addjust position
        ld a,(ix + spr_x)                                                        ;get x position
        sub d                                                                                ;subtract offset
        cpl                                                                                        ;flip bits
        ld (ix + spr_x),a                                                        ;and store
        
        ld a,(ix + spr_y)                                                        ;get y position
        sub e                                                                                ;subtract offset
        cpl                                                                                        ;flip bits
        ld (ix + spr_y),a                                                        ;and store


        ;adjust velocities
        ld a,(ix + spr_vel_x)                                                ;get x velocity
        neg                                                                                        ;and negate
        ld (ix + spr_vel_x),a                                                ;and store


        ld a,(ix + spr_vel_y)                                                ;get y velocity
        neg                                                                                        ;and negate
        ld (ix + spr_vel_y),a                                                ;and store


        inc ix
        inc ix                                                                                ;skip two bytes to move to next sprite block
        djnz .flip_bits                                                                ;perform loop until b is zero
        ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; copies sprite data from ram to the sprite registers
; places data from sprite variables into the sprite registers
; this happens once a frame, but for efficiency you could just manage this manually
; for each sprite using custom code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

set_sprite_data:        
        ;first block of data is sprite number(+flip data) and pallete number
        ld hl,sprite_data                                                        ;point to sprite data in ram
        ld de,sprite_reg                                                        ;point to sprite registers
        ld bc,NUM_SPRITES*2                                                                       ;do for all 6 sprites 2 bytes of data
        ldir                                                                                ;copy byte (hl) -> (de) inc de and hl, dec bc stop when bc is 0
        
        
        ;second block of data is the position data
        ld de,spriteXY_reg                                                        ;point to xy position regsiters
        ld bc,NUM_SPRITES*2                                                                        ;do for all 6 sprites 2 bytes of data
        ldir                                                                                ;copy byte (hl) -> (de) inc de and hl, dec bc stop when bc is 0


        ret



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; hides a sprite (by setting it's colour palette to 0)
; ix contains base address of sprite data 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
hide_sprite:
        xor a                                                                                ;set a to zero
        ld (ix + spr_pal), a                                                ;store 0 palette for sprite
        ret

hide_sprites:

        ld ix, sprite0
        call hide_sprite

        ld ix, sprite1
        call hide_sprite

        ld ix, sprite2
        call hide_sprite

        ld ix, sprite3
        call hide_sprite

        ld ix, sprite4
        call hide_sprite

        ld ix, sprite5
        call hide_sprite

        ld ix, sprite6
        call hide_sprite

        ld ix, sprite7
        call hide_sprite

        ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; checks to see if a sprite is visible (it's colour is not 0)
; ix contains base address of sprite data 
; sets status register, zero indicates sprite is hidden
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
is_sprite_hidden:                                                                                        
        ld a,(ix + spr_pal)                                                        ;pick up palette
        and a                                                                                ;test for zero
        ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; checks to see if a sprite is visible (it's colour is not 0)
; ix contains base address of sprite data 
; sets status register, non zero indicates sprite is visible
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
is_sprite_visible:
        ld a,(ix + spr_pal)                                                        ;pick up pallete in use
        cpl                                                                                        ;compliment
        and a                                                                                ;set flags
        ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; shows a sprite (by setting it's colour palette to a)
; ix contains base address of sprite data 
; a contains colour pallete to use
;
; to be honest this is written for clarity, you'd do this inline in reality
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
show_sprite:
        ld (ix + spr_pal), a                                                ;store chosen palette for given sprite
        ret



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; performs intial copy of sprite data over
; to the sprite ram area for game mode
; hl holds address to copy sprite data from
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
set_sprites:
        ld de,sprite_data                                                        ;address of sprite data in ram
        ld bc,4 * NUM_SPRITES                                                                       ;get ready to copy all bytes (6 on hardware)
        ldir  
                                                                                      ;copy data to ram
        ret

set_player:
        
        ld de,sprite_data                                                        ;address of sprite data in ram
        ld bc,4 * 1                                                                       ;get ready to copy all bytes (6 on hardware)
        ldir                                                                                ;copy data to ram

        ret

