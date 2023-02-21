;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; input manager packages the input data from the two io ports
; so it can be used to track button/joystick state in a nice format
;
; keeps stack of current and previous state of inputs
; so we can test whether they are just pressed, held or released
; input manager constants 0 is down 1 is up
; mask status byte first using these
; for joystick_state
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
inp_chk_up:                                equ $11                                                                ;mask for looking at up (bits 4 and 0)
inp_chk_left:                        equ $22                                                                ;mask for looking at left (bits 5 and 1)
inp_chk_right:                        equ $44                                                                ;mask for looking at right (bits 6 and 2)
inp_chk_down:                        equ $88                                                                ;mask for looking at down (bits 7 and 3)
;for start_state
inp_chk_p1st:                        equ $50                                                                ;mask for looking at p1 start (bits 6 and 4)
inp_chk_p2st:                        equ $a0                                                                ;mask for looking at p2 start (bits 7 and 5)

CPU_UP         equ %00010001

CPU_LEFT       equ %00100010

CPU_RIGHT      equ %01000100

CPU_DOWN         equ %10001000
CPU_FIRE       equ 0



;comparison constants for player 1 and 2 start buttons
inp_p1_presd:                        equ $40                                                                ;check for p1 start pressed bit 6 previous 1 -up bit 4 current down 0 )
inp_p2_presd:                        equ $80                                                                ;check for p2 start pressed


inp_p1_relsd:                        equ $10                                                                ;check for p1 start released bit 6 previous 0 -down bit 4 current up 1 )
inp_p2_relsd:                        equ $20                                                                ;check for p2 start released

inp_p1_fire:    equ %00010000

;comparison constants to check wether just pressed or released
inp_up_presd:                        equ $10                                                                ;check for up pressed
inp_left_presd:                        equ $20                                                                ;check for left pressed
inp_right_presd:                equ $40                                                                ;check for right pressed
inp_down_presd:                        equ $80                                                                ;check for down pressed


inp_up_relsd:                        equ $01                                                                ;check for up released
inp_left_relsd:                        equ $02                                                                ;check for left released
inp_right_relsd:                equ $04                                                                ;check for right released
inp_down_relsd:                        equ $08                                                                ;check for down released




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; manages processing of previous and current states, for pressed and released behaviour checking
; as well as allowing standard up and down checking
; gets new state and packs this into a byte with the previous state in the upper nibble
; uses a byte for joystick direction and a separate byte for the start buttons
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
input_manager:
                                ;bit 0 - 3 up,left,right,down
                                ld a,(joystick_state)                                                ;get joystick state
                                add a,a
                                add a,a
                                add a,a
                                add a,a                                                                                ;shift lower nibble to upper nibble to move to previous state location
                                and $f0                                                                                ;clear lower nibble
                                ld b,a                                                                                ;store temporarily
                                ld a,($5000)                                                                ;get IN0
                                and $0f                                                                                ;clear upper nibble
                                or b                                                                                ;combine current state with previous state PPPP CCCC
                               ld (joystick_state),a                                                ;and store new previous and current state
                           

                                ;bit 5 is 1p start, bit 6 is 2pstart
                                ;do start button states - PPCC xxxx upper hi bits of upper nibble contain previous state, low bits of upper nibble contain current state
                                ld a,(start_state)                                                        ;get start button state
                                add a,a
                                add a,a                                                                                ;shift current two bits to previous position
                                and $c0                                                                                ;clear lower 2 bits of upper nibble - and the lower nibble
                                ld b,a                                                                                ;store temporaily
                                ld a,($5040)                                                                ;get IN1
                                rra                                                                                        ;shift two bits to low bits of upper nibble
                                and $30                                                                                ;clear all bits other than 4 and 5
                                or b                                                                                ;combine previous with current PP CC XXXX
                                ld (start_state),a                                                        ;store previous and new states
                                ret
