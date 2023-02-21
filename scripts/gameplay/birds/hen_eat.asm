

hen_eating:

	ld a, HEN_WALKING
	ld (iy + hen_state), a
	
	ld hl, (iy + hen_tile_address)

	ld a, (iy + hen_direction)
	cp LEFT
	jp z, eatSeedLeft
	
eatSeedRight:
	
	inc hl
	inc hl

	ld a, blank_tile
	ld (hl), a

	ld a, (ix + spr_y)
	add 4
	ld (ix + spr_y), a

	call setWalkFrame

	jp hen_walking


eatSeedLeft:
	
	dec hl

	ld a, blank_tile
	ld (hl), a


	ld a, (ix + spr_y)
	sub 4
	ld (ix + spr_y), a

	call setWalkFrame
	
	jp hen_walking




hen_check_seed:
	

		
	ld a, (iy + hen_state)
	cp HEN_WALKING
	ret nz

	ld a, (iy + hen_centred_x)
	cp 0
	ret nz

	ld hl, (iy + hen_tile_address)

	ld a, (iy + hen_direction)
	cp LEFT
	jp z, checkSeedLeft
	
checkSeedRight:
	
	inc hl
	inc hl
	ld a, (hl)
	cp tile_seed
	ret nz

	ld a, (ix + spr_y)
	sub 4
	ld (ix + spr_y), a


	ld a, hen_eat_sprite
	ld (ix +spr_num), a

	jp makeEat

checkSeedLeft:
	
	dec hl
	ld a, (hl)
	cp tile_seed
	ret nz

	ld a, (ix + spr_y)
	add 4
	ld (ix + spr_y), a


	ld a, hen_eat_sprite
	ld (ix +spr_num), a

	set flipy, (ix)


makeEat:
	
	ld a, 30
	ld (iy + hen_timer), a


	ld a, HEN_EATING
	ld (iy + hen_state), a




	ret


