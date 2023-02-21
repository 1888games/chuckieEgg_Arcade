
lift_speed 		equ 1


lifts_update:
	
		
	;ret
	;'ret
	ld ix, lift_data

	ld hl, (ix)

	ld a, h
	cp 0
	ret z

;	ld hl, tile_ram_start + row_0 + column_4
;	inc (hl)
	
	ld a, (lift_timer)
	cp 0
	jp z, moveLifts

	dec a
	ld (lift_timer), a

	ret


moveLifts:
	
	ld a, lift_speed
	ld (lift_timer), a

	call delete_lifts

	ld ix, lift_data
	ld a, (ix + lift_sprite_x)
	dec a
	ld (ix + lift_sprite_x), a

	ld a, (ix + 4 + lift_sprite_x)
	dec a
	ld (ix + 4 + lift_sprite_x), a

	ld a, (harry_on_lift)
	cp 0
	jp z, notOnLift

	ld a, (sprite0 + spr_x)
	dec a
	ld (sprite0 + spr_x), a


notOnLift:


	ld a, (lift_y_offset)
	inc a
	cp 8
	jp c, noMoveTile



	call shift_lifts

	ld a, 0
noMoveTile:	
	
	ld (lift_y_offset), a

	call draw_lifts




	ret





shift_lifts:

	
	ld b, 2
	ld ix, lift_data

shift_loop:

	ld hl, (ix)
	call moveTileUpHL
	ld (ix), hl

	ld a, h
	cp $40
	jp nz, nextLiftShift

	ld a, l
	and %11110000
	cp $E0
	jp z, wrapLiftBottom

	cp $F0
	jp z, wrapLiftBottom


	jp nextLiftShift


wrapLiftBottom:

	ld de, $0280
	add hl, de
	ld (ix), hl

	ld a, (ix+lift_sprite_x)
	add 160
	ld (ix+lift_sprite_x), a

	
nextLiftShift:

	inc ix
	inc ix
	inc ix
	inc ix
	
	djnz shift_loop

	ret



draw_lifts:


	ld b, 2
	ld ix, lift_data
	ld iy, bot_char

draw_loop:

	ld hl, (ix)

	ld a, (lift_y_offset)
	ld e, a
	ld d, 0
	ld c, palette_blue_red_yellow

	ld iy, bot_char
	add iy, de

	ld a, (iy)
	call draw_and_colour

	inc hl
	call draw_and_colour

	dec hl

	call moveTileUpHL
	
	ld iy, top_char
	add iy, de

	ld a, (iy)
	call draw_and_colour

	inc hl
	call draw_and_colour

	
	inc ix
	inc ix
	inc ix
	inc ix
	
	
	djnz draw_loop

	ret


draw_and_colour:

	ld (hl), a

	set 2, h
	ld (hl),c 

	res 2, h

	ret



delete_lifts:

	ld b, 2
	ld ix, lift_data

delete_loop:

	ld hl, (ix)

	ld a, blank_tile
	ld (hl), a

	inc hl
	ld (hl), a

	dec hl

	call moveTileUpHL

	ld a, blank_tile
	ld (hl), a

	inc hl
	ld (hl), a

	
	inc ix
	inc ix
	inc ix
	inc ix
	
	djnz delete_loop

	ret


top_char:		defm $40, $40, $40, $40, $40, $9C, $9D, $9E 
bot_char:		defm $94, $95, $96, $97, $98, $99, $9A, $9B

lifts_init2:
	
	

	inc hl

	ld de, (hl)

	ld ix, lift_data


	ld (ix), de

	inc hl
	inc hl

	ld de, (hl)

	
	inc ix
	inc ix
	inc ix
	inc ix
	

	ld (ix), de



	ld a, 0
	ld (lift_timer), a
	ld (lift_y_offset), a


	call draw_lifts


	ret


lifts_init:
	
	// 0A63
	

	ld iy, lift_data
	
	inc hl
	ld ix, hl

	ld a, (hl)
	cp 0
	jp nz, notDisabled

	ld (iy + 0), a
	ld (iy + 1), a
	ld (iy + 5), a
	ld (iy + 6), a
	ret

notDisabled:

	ld (iy + lift_sprite_x), a
	
	inc hl
	ld a, (hl)
	ld (iy + lift_sprite_y), a

	ld (temp_address), hl
	
	ld de, -$10

	add ix, de

	call convert_sprite_to_tile

	ld (iy), hl

	inc iy
	inc iy
	inc iy
	inc iy

	ld hl, (temp_address)

	inc hl
	ld ix, hl

	ld a, (hl)
	ld (iy + lift_sprite_x), a
	
	inc hl
	ld a, (hl)
	ld (iy + lift_sprite_y), a

	ld (temp_address), hl
	
	ld de, -$10

	add ix, de

	call convert_sprite_to_tile

	ld (iy), hl

	ld a, 0
	ld (lift_timer), a
	ld (lift_y_offset), a


	call draw_lifts


	ret