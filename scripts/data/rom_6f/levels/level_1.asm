

    ;align $100

level_1:
    

// platforms 
   defm tile_platform, palette_orange_green_orange, horizontal

    defm  0, 0, 32
    defm  2, 4, 28
    defm  4, 8, 11
    defm  15, 9, 3
    defm  18, 10, 3
    defm  21, 11, 3
    defm  24, 12, 3
    defm  23, 8, 7
    defm  6, 12, 4
    defm  8, 16, 8
    defm  15, 13, 4
    defm  18, 16, 9
    defm  29, 16, 3

    ; defm  14, 17, 1
    ; defm  8, 17, 1

   ; defm  20, 2, 3

   ; defm  20, 1, 4
   ; defm  12, 1, 4
    


    defm - 1
   

// ladders
   defm  tile_ladder_left, palette_orange_green_orange, vertical

   defm 10, 1, 18
   defm 5, 5, 6
  defm 16, 1, 6
   defm 26, 1, 6
  


   defm -1

// ladders
    defm  tile_ladder_right, palette_orange_green_orange, vertical
  
    defm 11, 1, 18
    defm 6, 5, 6
    defm 17, 1, 6
    defm 27, 1, 6
  
    defm - 1

// eggs
    defm  tile_egg, palette_white_pink_red, horizontal
    defm  3, 5, 1
    defm  4, 9, 1
    defm  7, 13, 1
    defm  9, 17, 1
    defm  20, 17, 1
    defm  30, 17, 1
    defm  28, 9, 1
    defm  16, 10, 1
    defm  16, 14, 1
    defm  6, 1, 1
   defm  20, 5, 1
   defm  29, 5, 1

   

    defm - 1

// seeds
   defm tile_seed, palette_orange_green_orange, vertical

   defm  22,17,1
   defm  8,5,1
   defm  8,9,1
   defm  17,14,1
   defm  25,13,1
   defm  24,9,1
   defm  4, 1, 1
   defm  21, 1, 1
   defm  23, 5, 1
   defm  15, 17, 1
  

    
    defm -1

    defm -2

// hens
    
    defm 86, 160     ;sprite 2
    defm 119, 192        ;sprite 3
    defm 151, 204       ;sprite 4
    defm 183, 188      ;sprite 5
    defm 215, 116       ;sprite 6

    defm -3


    defm 0, 0
    defm 0, 0

    defm -4