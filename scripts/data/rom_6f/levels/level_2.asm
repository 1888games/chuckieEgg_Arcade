

    ;align $100

level_2:
    

// platforms 
   defm tile_platform, palette_orange_green_orange, horizontal

    defm  0, 0, 6
    defm  8, 0, 24

    defm  0, 4, 12
    defm  14, 4, 4
    defm  20, 4, 4
    defm  26, 4, 6

    defm  0, 8, 6
    defm  8, 8, 16
    defm  26, 8, 6

    defm  0, 12, 18
    defm  20, 12, 12

    defm  8, 16, 10
    defm  20, 16, 12

   
    defm - 1
   

// ladders
   defm  tile_ladder_left, palette_orange_green_orange, vertical

   defm  3, 1, 14
   defm  6, 13, 6
   defm  9, 5, 10
   defm  15, 1, 6
   defm 15, 9, 10
   defm 21, 9, 6
   defm 27, 1, 10
   defm 27, 13, 6





   defm -1

// ladders
    defm  tile_ladder_right, palette_orange_green_orange, vertical
  	
  	defm 4, 1, 14
  	defm  7, 13, 6
  	defm  10, 5, 10
  	defm 16, 1, 6
  	defm 16, 9, 10
  	defm 22, 9, 6
  	defm 28, 1, 10
  	defm 28, 13, 6

  
   
    defm - 1

// eggs
    defm  tile_egg, palette_white_pink_red, horizontal
   ; defm  3, 5, 1

   defm 1, 5, 1
   defm 1, 9, 1
   defm 6, 5, 1
   defm 8, 1, 1
   defm 20, 1, 1
   defm 21, 5, 1
   defm 12, 9, 1
   defm 12, 13, 1
   defm 12, 17, 1
   defm 24, 17, 1
   defm 30, 17, 1
   defm 30, 9, 1
    


 


    defm - 1

// seeds
   defm tile_seed, palette_orange_green_orange, vertical

    defm  1, 1, 1
    defm 5, 1, 1
    defm 25, 1, 1
    defm 1, 13, 1
    defm 20, 17, 1
    defm 17, 13, 1
    defm 26, 5, 1
  
    defm -1

    defm -2

// hens
    
    defm 86, 176        ;sprite 2
    defm 215, 244        ;sprite 3
    defm 151, 28       ;sprite 4
    defm 151, 112      ;sprite 5
    defm 87, 92       ;sprite 6

    defm -3

    defm 0, 0
    defm 0, 0

    defm -4