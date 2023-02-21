

// ixh = width
// iyl = tile_type
// iyh = colour
// a = x
// b = y
// 

// ixl used in tile lookup

get_next_bytes2:


	ld b, a

	inc hl // y
	ld a, (hl)
	add 2
	ld c, a

	inc hl
	ld a, (hl)
	ld ixh, a

	ret

draw_map:

	sla  a
	ld l, a
	ld h, 0
	ld de, level_data
	add hl, de

	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a

draw_transition:

draw_tile_type:
	
	ld a, (hl)
	cp -3
	ret z
	
	cp -2
	jp z, initialise_hens

	ld iyl, a  // tile

	inc hl 
	ld a, (hl)
	ld iyh, a  // colour

	ld a, (force_colour)
	cp 255
	jp z, noForce

	ld iyh, a

noForce:

	inc hl 
	ld a, (hl)
	ld (tile_direction), a  // direction

	inc hl


draw_platforms:
	
	ld a, (hl) // x
	cp -1
	jp nz, continue_platforms

	inc hl
	jp draw_tile_type

continue_platforms:


	call get_next_bytes2

	ld (map_address), hl
	
	ld a, c

	call calc_tile_location

	ld a, (tile_direction)
	cp 0
	jp nz, vertical_tiles

	call first_loop
	jp draw_platforms

vertical_tiles:
	
	call first_loop_v
	jp draw_platforms


vertical_tile_loop:
	
	ld ixh, b

first_loop_v:

	call draw_map_tile


	ld a, l
	add 1
	ld l, a

	ld a, h
	adc 0
	ld h, a


	ld b, ixh

	djnz vertical_tile_loop

        // a = x
        // b = y
   	ld hl, (map_address)
    inc hl

    ret




horizontal_tile_loop:
	
	ld ixh, b

first_loop:

	call draw_map_tile


	ld a, l
	sub 32
	ld l, a

	ld a, h
	sbc 0
	ld h, a


	ld b, ixh

	djnz horizontal_tile_loop

        // a = x
        // b = y
   	ld hl, (map_address)
    inc hl

    ret


draw_map_tile:

	ld a, iyl
	ld (hl), a
	cp tile_egg
	jp nz, notEggPlaced

	ld a, (eggs_remaining)
	inc a
	ld (eggs_remaining), a


notEggPlaced:

	set 2,h       

	ld a, iyh
	ld (hl), a

	res 2, h


	ret


two_by_two_tiles:
	
	;ret

	ld a, (mode)
	cp title_mode
	ret z
	
	inc hl

	ld a, (hl)
	cp -4
	ret z

	ld c, a

	inc hl
	ld a, (hl)
	ld b, a

	inc hl
	ld a, (hl)
	ld iyl, a

	inc hl
	ld a, (hl)
	ld iyh, a

	ld (map_address), hl

	ld a, c

	
	call calc_tile_location
	call draw_map_tile

	call moveDownTile
	call draw_map_tile

	call moveUpRightTile
	call draw_map_tile

	call moveDownTile
	call draw_map_tile

	ld hl, (map_address)

	jp two_by_two_tiles




	ret


moveDownTile:

	ld a, iyl
	add 16
	ld iyl, a

	inc hl

	ret


moveUpRightTile:

	ld a, iyl
	sub 15
	ld iyl, a

	ld a, l
	sub 33
	ld l, a

	ld a, h
	sbc 0
	ld h, a

	ret


