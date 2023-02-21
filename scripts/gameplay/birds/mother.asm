mother_move_speed = 16
mother_frame_time = 10

mother_update:
	
	ld iy, sprite0  // iy = player
	ld ix, sprite1  // ix = mother

	call check_mother_harry
	

	ld a, (mother_timer)
	cp 0
	jp z, motherReady

	dec a
	ld (mother_timer), a

	ret

motherReady:

	ld a, (mother_frame)
	xor %00000001
	ld (mother_frame), a
	sla a
	sla a

	add 64
	ld (ix + spr_num), a

	ld a, mother_move_speed
	ld (mother_timer), a

	ld a, (mother_active)
	cp 0
	ret z

	call checkMoveMotherX
	call checkMoveMotherY
	call moveMotherX
	call moveMotherY


moveMotherX:
	
	ld a, (mother_speed_x_pixel)
	ld b, a
	ld a, (ix + spr_y)
	add b
	ld (ix + spr_y), a
	cp 20
	jp c, bounceX

	cp 252
	jp nc, bounceX

	ret

bounceX:
	
	ld a, (mother_speed_x_pixel)
	neg
	ld (mother_speed_x_pixel), a

	ret

moveMotherY:
	
	ld a, (mother_speed_y_pixel)
	ld b, a
	ld a, (ix + spr_x)
	add b
	ld (ix + spr_x), a
	cp 40
	jp c, bounceY

	cp 240
	jp nc, bounceY

	ret

bounceY:
	
	ld a, (mother_speed_y_pixel)
	neg
	ld (mother_speed_y_pixel), a

	ret

checkMoveMotherY:

		

	ld a, (ix + spr_x)  // bird
	sub 4
	cp (iy +spr_x)   // player
	jp c, moveMotherDown



moveMotherUp:

	ld a, (mother_speed_y_pixel)
	sub 1
	ld (mother_speed_y_pixel), a
	cp 5
	jp c, okRight2
	cp -4
	jp nc, okRight2

	ld a, -4
	ld (mother_speed_y_pixel), a


okRight2:
		

	ret

moveMotherDown:

	ld a, (mother_speed_y_pixel)
	add 1
	ld (mother_speed_y_pixel), a
	cp -4
	jp nc, okLeft2

	cp 5
	jp c, okLeft2

	ld a, 4
	ld (mother_speed_y_pixel), a


okLeft2:

	ret




checkMoveMotherX:

	ld a, (ix + spr_y)  // bird
	sub 4
	cp (iy +spr_y)   // player
	jp c, moveMotherLeft



moveMotherRight:

	ld a, (mother_speed_x_pixel)
	sub 1
	ld (mother_speed_x_pixel), a
	cp 5
	jp c, okRight
	cp -5
	jp nz, okRight




	ld a, -4
	ld (mother_speed_x_pixel), a

okRight:
		

	res flipy, (ix)

	ret

moveMotherLeft:


	ld a, (mother_speed_x_pixel)
	add 1
	ld (mother_speed_x_pixel), a
	cp -5
	jp nc, okLeft

	cp 5
	jp c, okLeft

	ld a, 4
	ld (mother_speed_x_pixel), a


okLeft:


	set flipy, (ix)

	ret



;.movebigbird
	
	; Save facing direction
;	LDA bigbirdanim:AND #2:STA temp4		; temp4 = facing direction

	;; If there's no big bird flying, skip the movement code
	;LDA bigbirdflag:BEQ animatebigbird
	
	; Move big bird horizontally
	;LDA bigbirdxpos:CLC:ADC #4
	;CMP playerx:BCS movebigbirdleft
	
	;.movebigbirdright
	;INC bigbirdxspeed						; Increment xspeed, to a maximum of 5
	;LDA bigbirdxspeed:CMP #6
	;BMI P%+4:DEC bigbirdxspeed
	;LDA #0:STA temp4						; Bird faces right
	;JMP movebigbirdvertically
	
;	.movebigbirdleft
	;DEC bigbirdxspeed						; Decrement xspeed, to a minimum of -5
	;LDA bigbirdxspeed:CMP #256-5
	;BPL P%+4:INC bigbirdxspeed
	;LDA #2:STA temp4						; Bird faces left
	
	; Move big bird vertically
	;.movebigbirdvertically
	;LDA playery:CLC:ADC #4
	;CMP bigbirdypos:BCC movebigbirddown
	
	;.movebigbirdup
	;INC bigbirdyspeed						; Increment yspeed, to a maximum of 5
	;LDA bigbirdyspeed:CMP #6
	;BMI P%+4:DEC bigbirdyspeed
	;JMP bigbirdbounce
	
	;.movebigbirddown
	;DEC bigbirdyspeed						; Decrement yspeed, to a minimum of -5
	;LDA bigbirdyspeed:CMP #256-5
	;BPL P%+4:INC bigbirdyspeed
	
	; Bounce big bird off the bottom of the screen
	;.bigbirdbounce
	;LDA bigbirdypos:CLC:ADC bigbirdyspeed
	;CMP #40
	;BCS dontbounceoffbottom
	
	;LDA bigbirdyspeed:EOR #255:STA bigbirdyspeed
	;INC bigbirdyspeed
	;.dontbounceoffbottom
	
	; Bounce big bird off the sides of the screen
	;LDA bigbirdxpos:CLC:ADC bigbirdxspeed
	;CMP #160-16
	;BCC animatebigbird
	
	;LDA bigbirdxspeed:EOR #255:STA bigbirdxspeed
	;INC bigbirdxspeed

	
;.animatebigbird
	
;	LDA bigbirdanim
;	JSR plotbigbird							; Unplot old bird
	
;	LDA bigbirdxpos:CLC:ADC bigbirdxspeed:STA bigbirdxpos
;	LDA bigbirdypos:CLC:ADC bigbirdyspeed:STA bigbirdypos
	
	;LDA bigbirdanim:AND #1:EOR #1:ORA temp4:STA bigbirdanim
	;JSR plotbigbird							; Plot new bird
	
	;RTS
	


init_mother:

    ld a, 0
    ld (mother_speed_x_frac), a
    ld (mother_speed_x_pixel), a
    ld (mother_speed_y_frac), a
    ld (mother_speed_y_pixel), a
    ld (mother_x_pos_frac), a
    ld (mother_y_pos_frac), a
 	ld (mother_frame), a

    ld a, 1
    ld (mother_going_right), a
    ld (mother_going_down), a

    ld a, mother_frame_time
    ld (mother_frame_timer), a

    ld a, mother_move_speed
    ld (mother_timer), a

    ld ix, sprite1

    ld a, 16*4
    ld (ix + spr_num), a

    ld a, palette_blue_red_yellow 
    ld (ix + spr_pal), a

    ld a, 85
    ld (ix + spr_x), a

    ld a, 248
    ld (ix + spr_y), a


	ret


check_mother_harry:

	//ld a, (alex_invincible_timer)
	//cp 0
	//ret nz

	ld a, (sprite0 + spr_x)
	ld c, a

	ld a, (ix + spr_x)
	cp 0
	ret z

	sub c
	add 10
	cp 20
	ret nc

	ld a, (sprite0 + spr_y)
	cp 2
	;ret c
	ld c, a

	ld a, (ix + spr_y)
	sub c
	add 11
	cp 22
	ret nc
	

	jp lose_set


