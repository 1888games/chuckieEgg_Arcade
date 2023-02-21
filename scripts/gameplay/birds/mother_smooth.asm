mother_update:
	
	ld iy, sprite0  // iy = player
	ld ix, sprite1  // ix = mother
	
	
	ld a, (mother_timer)
	cp 0
	jp z, motherReady

	dec a
	ld (mother_timer), a

	jp checkMoveMotherX


motherReady:

	ld a, 15
	ld (mother_timer), a

	ld a, (mother_frame)
	xor %00000001
	ld (mother_frame), a

	sla a
	sla a

	add 64
	ld (ix + spr_num), a


checkMoveMotherX:

	ld a, (mother_active)
	cp 0
	ret z

	ld a, (iy + spr_y)
	cp (ix + spr_y)
	jp c, playerToRight

playerToLeft:


	ld a, (mother_going_right)
	cp 0
	jp z, doIncreaseLX

	call decreaseXSpeed
	jp ChooseDirectionL

doIncreaseLX:
	
	call increaseXSpeed

ChooseDirectionL:
	
	ld a, (mother_going_right)
	cp 1
	jp z, moveMotherRight

	jp MoveMotherLeft




playerToRight:


	ld a, (mother_going_right)
	cp 1
	jp z, doIncreaseRX

	call decreaseXSpeed
	jp ChooseDirectionR

doIncreaseRX:
	
	call increaseXSpeed

ChooseDirectionR:
	
	ld a, (mother_going_right)
	cp 1
	jp z, moveMotherRight

	jp MoveMotherLeft





moveMotherRight:
	
	ld a, (mother_speed_x_frac)
	ld b, a
	ld a, (mother_x_pos_frac)
	add b
	ld (mother_x_pos_frac), a

	ld a, (ix + spr_y)
	sbc 0
	ld (ix + spr_y), a

	jp checkMoveMotherY

	

MoveMotherLeft:

	ld a, (mother_speed_x_frac)
	ld b, a
	ld a, (mother_x_pos_frac)
	sub b
	ld (mother_x_pos_frac), a

	ld a, (ix + spr_y)
	adc 0
	ld (ix + spr_y), a

	jp checkMoveMotherY



maxMotherSpeed = 192


increaseXSpeed:

	ld de, tile_ram_start + row_0 + column_6


	ld a, (mother_speed_x_frac)
	add mother_speed_change
	ld (mother_speed_x_frac), a
	cp maxMotherSpeed

	jp c, noWrapXI

	ld a, maxMotherSpeed
	ld (mother_speed_x_frac), a

noWrapXI:

	ret


decreaseXSpeed:

	ld a, (mother_speed_x_frac)
	sub mother_speed_change
	ld (mother_speed_x_frac), a
	jp nc, noWrapXD

	ld a, 1
	ld (mother_speed_x_frac), a

	ld a, (mother_going_right)
	xor %00000001
	ld (mother_going_right), a
	

noWrapXD:
	
	ret





checkMoveMotherY:


	ld a, (iy + spr_x)
	cp (ix + spr_x)
	jp c, playerAbove

playerBelow:


	ld a, (mother_going_down)
	cp 1
	jp z, doIncreaseLY

	call decreaseYSpeed
	jp ChooseDirectionY

doIncreaseLY:
	
	call increaseYSpeed

ChooseDirectionY:
	
	ld a, (mother_going_down)
	cp 1
	jp z, MoveMotherDown

	jp MoveMotherUp



playerAbove:


	ld a, (mother_going_down)
	cp 0
	jp z, doIncreaseRY

	call decreaseYSpeed
	jp ChooseDirectionRY

doIncreaseRY:
	
	call increaseXSpeed

ChooseDirectionRY:
	
	ld a, (mother_going_down)
	cp 1
	jp z, MoveMotherDown

	jp MoveMotherUp





MoveMotherUp:
	
	ld a, (mother_speed_y_frac)
	ld b, a
	ld a, (mother_y_pos_frac)
	add b
	ld (mother_y_pos_frac), a

	ld a, (ix + spr_x)
	sbc 0
	ld (ix + spr_x), a



	ret

MoveMotherDown:

	ld a, (mother_speed_y_frac)
	ld b, a
	ld a, (mother_y_pos_frac)
	sub b
	ld (mother_y_pos_frac), a

	ld a, (ix + spr_x)
	adc 0
	ld (ix + spr_x), a

	ret



maxMotherSpeed = 192


increaseYSpeed:

	;ld de, tile_ram_start + row_0 + column_7


	ld a, (mother_speed_y_frac)
	add mother_speed_change
	ld (mother_speed_y_frac), a
	cp maxMotherSpeed

	jp c, noWrapXI2

	ld a, maxMotherSpeed
	ld (mother_speed_y_frac), a

noWrapXI2:

	ret


decreaseYSpeed:

	ld a, (mother_speed_y_frac)
	sub mother_speed_change
	ld (mother_speed_y_frac), a
	jp nc, noWrapXD2

	ld a, 1
	ld (mother_speed_y_frac), a

	ld a, (mother_going_down)
	xor %00000001
	ld (mother_going_down), a
	

noWrapXD2:
	
	ret


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