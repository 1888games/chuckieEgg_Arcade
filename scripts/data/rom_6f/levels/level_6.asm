level_6:
    

// platforms 
   defm tile_platform, palette_orange_green_orange, horizontal

    defm  0, 0, 5
    defm  9, 0, 5
    defm  18, 0, 6

    defm  0, 4, 4
    defm  5, 4, 5
    defm  19, 4, 6

    defm  4, 8, 8
    defm  19, 8, 8
    defm  29, 7, 3

    defm 0, 12, 10
    defm 26, 12, 6

    defm 09, 16, 2
    defm 12, 16, 2

    defm 19, 15, 8

    defm 29, 17, 3
   
    defm - 1
   

// ladders
   defm  tile_ladder_left, palette_orange_green_orange, vertical

   defm 1, 1, 6
   defm 6, 3, 12
   defm 27, 1, 10
   defm 27, 12, 8
   defm 22, 5, 6
   defm 22, 14, 4

 ;  defm 10, 1, 18
 


   defm -1

// ladders
    defm  tile_ladder_right, palette_orange_green_orange, vertical
  	
  	defm 2, 1, 6
  	defm 7, 3, 12
   defm 28, 1, 10
   defm 28, 12, 8
   defm 23, 5, 6
   defm 23, 14, 4
   ; defm 11, 1, 18
   
    defm - 1

// eggs
    defm  tile_egg, palette_white_pink_red, horizontal
   ; defm  3, 5, 1
    
    defm 4, 1, 1
    defm 8, 5, 1
    defm 19, 5, 1
    defm 19, 9, 1
    defm 25, 9, 1
    defm 26, 1, 1

    defm 30, 18, 1
    defm 19, 16, 1
    defm 5, 16, 1
    defm 9, 17, 1
    defm 11, 13, 1
    defm 30, 13, 1


 


    defm - 1

// seeds
   defm tile_seed, palette_orange_green_orange, horizontal

   defm 1, 13, 4
   defm 11, 9, 1
   defm 19, 1, 4
   defm 30, 8, 1
  ; defm  22,17,1
  
    defm -1

    defm -2

// hens
    
    defm 214, 236        ;sprite 2
    defm 119, 192        ;sprite 3
    defm 159, 28       ;sprite 4
  
    defm 183, 94       ;sprite 6
    defm 119, 28      ;sprite 5

    defm -3

    defm 208, 136
    defm 144, 136
    defm -4