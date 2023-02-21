	org $10

	add a, l
	ld l, a
	ld a, 0
	adc a, h
	ld h, a
	ld a, (hl)
	ret

	org $18
	
	ld a, b
	add a, a
	rst $10
	ld e, a
	inc hl
	ld d, (hl)
	ex de, hl
	ret

	org $20

	pop hl
	add a, a
	rst $10
	ld e, a
	inc hl
	ld d, (hl)
	ex de, hl
	jp (hl)

	