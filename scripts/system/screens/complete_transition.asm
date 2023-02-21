




t1:
    
    defm $3a, blue, horizontal

    defm  5, 6, 2
    defm  5, 5, 2
    defm  5, 17, 10
    defm  5, 18, 10
    defm  25, 17, 2
    defm  25, 18, 2

    defm -1

    defm $3A, red, horizontal

    defm  17, 6, 10
    defm  17, 5, 10

    defm -1
    defm -3
   

t2:
    
    defm $3a, red, horizontal

    defm  4, 7, 4
    defm  4, 4, 4

    defm  4, 16, 12
    defm  4, 19, 12

    defm  24, 16, 4
    defm  24, 19, 4

    defm -1

    defm $3a, red, vertical

    defm 4, 5, 2
    defm 7, 5, 2

    defm 4, 17, 2
    defm 15, 17, 2

    defm 24, 17, 2
    defm 27, 17, 2

    defm -1

    defm $3A, palette_white_blue_orange, horizontal

    defm  16, 4, 12
    defm  16, 7, 12

    defm -1

    defm $3A, palette_white_blue_orange, vertical

    defm  16, 5, 2
    defm  27, 5, 2

    defm -1
    defm -3





t3:
    
    defm $3a, palette_white_blue_orange, horizontal

    defm  3, 8, 6
    defm  3, 3, 6


    defm  23, 15, 6
    defm  23, 20, 6

    defm  3, 15, 14
    defm  3, 20, 14


    defm -1

    defm $3a, palette_white_blue_orange, vertical

    defm 3, 4, 4
    defm 8, 4, 4

    defm 23, 16, 4
    defm 28, 16, 4

    defm 3, 16, 4
    defm 16, 16, 4

    defm -1

    defm $3b, palette_orange_green_orange, horizontal

    defm  15, 3, 14
    defm  15, 8, 14

    defm -1

    defm $3B, palette_orange_green_orange, vertical
    
    defm  15, 4, 4
    defm  28, 4, 4

    defm -1
    defm -3




t4:
    
    defm $3b, palette_orange_green_orange, horizontal

    defm  2, 9, 8
    defm  2, 2, 8


    defm  22, 14, 8
    defm  22, 21, 8

    defm  2, 14, 16
    defm  2, 21, 16


    defm -1

    defm $3b, palette_orange_green_orange, vertical

    defm 2, 3, 6
    defm 9, 3, 6

    defm 22, 15, 6
    defm 29, 15, 6

    defm 2, 15, 6
    defm 17, 15, 6

    defm -1

    defm $3a, cyan, horizontal

    defm  14, 2, 16
    defm  14, 9, 16

    defm -1

    defm $3a, cyan, vertical
    
    defm  14, 3, 6
    defm  29, 3, 6

    defm -1
    defm -3



t5:
    
    defm $3a, cyan, horizontal

    defm  1, 10, 10
    defm  1, 1, 10


    defm  21, 13, 10
    defm  21, 22, 10

    defm  1, 13, 18
    defm  1, 22, 18


    defm -1

    defm $3a, cyan, vertical

    defm 1, 2, 8
    defm 10, 2, 8

    defm 21, 14, 8
    defm 30, 14, 8

    defm 1, 14, 8
    defm 18, 14, 8

    defm -1

    defm $3a, yellow, horizontal

    defm  13, 1, 18
    defm  13, 10, 18

    defm -1

    defm $3a, yellow, vertical
    
    defm  13, 2, 8
    defm  30, 2, 8

    defm -1
    defm -3


t6:
    
    defm $3a, yellow, horizontal

    defm  0, 11, 12
    defm  0, 0, 12


    defm  20, 12, 12
    defm  20, 23, 12

    defm  0, 12, 20
    defm  0, 23, 20


    defm -1

    defm $3a, yellow, vertical

    defm 0, 1, 10
    defm 11, 1, 10

    defm 20, 13, 10
    defm 31, 13, 10

    defm 0, 13, 10
    defm 19, 13, 10

    defm -1

    defm $3a, palette_yellow_blue_white, horizontal

    defm  12, 0, 20
    defm  12, 11, 20

    defm -1

    defm $3a,palette_yellow_blue_white, vertical
    
    defm  12, 1, 10
    defm  31, 1, 10

    defm -1
    defm -3

transition_data:	defw t1, t2, t3, t4, t5, t6, t1, t2, t3, t4, t5, t6


draw_rectangles:
	
	// a = set id



	sla  a
	ld l, a
	ld h, 0
	ld de, transition_data
	add hl, de

	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a

	call draw_transition





	ret