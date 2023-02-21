

checkLift:

	ld a, 0
	ld (harry_on_lift), a

	ld a, (harry_state)
	cp STATE_JUMPING
	ret z

	ld iy, lift_data
	ld b, 2

landLoop:
	
	ld a, (ix + spr_y)
	ld c, a

	ld a, (iy + lift_sprite_y)
	sub c
	add 8
	cp 18
	
	
	jp nc, noLand

	
	ld a, (ix + spr_x)
	ld c, a

	ld a, (iy + lift_sprite_x)
	sub c
	cp 6
	jp nc, noLand

	;ld de, tile_ram_start + row_0 + column_20
	;;ld (de), a

	ld b, a

	ld a, 1	
	ld (harry_on_lift), a

	ld a, (harry_state)
	cp STATE_IDLE
	ret z

	cp STATE_WALKING
	ret z

	ld a, 5
	sub b
	ld b, a

	ld a, (ix + spr_x)
	sub b
	ld (ix + spr_x), a

	

	call harry_make_idle

	


noLand:


	inc iy
	inc iy
	inc iy
	inc iy

	djnz landLoop









checkStillOn:
	




	ret