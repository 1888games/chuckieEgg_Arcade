level_8:
    

// platforms 
   defm tile_platform, palette_orange_green_orange, horizontal

    defm  0, 0, 32
  	defm  2, 4, 5
  	defm  10, 4, 12
  	defm  25, 4, 5

  	defm 3, 8, 7
  	defm 13, 8, 6
  	defm 22, 8, 7

  	defm 4, 12, 6
  	defm 13, 12, 6
  	defm 22, 12, 6

  	defm 5, 16, 2
  	defm 10, 16, 12
  	defm 25, 16, 2
   
    defm - 1


// seeds
   defm tile_seed, palette_orange_green_orange, horizontal

   defm 1, 1, 30
   defm 10, 3, 12
   
  ; defm  22,17,1
  
    defm -1

   

// ladders
   defm  tile_ladder_left, palette_orange_green_orange, vertical

   defm 3, 1, 6
   defm 27, 1, 6
   defm 5, 9, 6

   defm 25, 9, 6

   defm 15, 5, 6
   defm 15, 13, 6

 ;  defm 10, 1, 18
 


   defm -1

// ladders
    defm  tile_ladder_right, palette_orange_green_orange, vertical
  
  	defm 4, 1, 6
  	defm 28, 1, 6

  	defm 6, 9, 6
  	defm 26, 9, 6

  	defm 16, 5, 6
   defm 16, 13, 6
   ; defm 11, 1, 18
   
    defm - 1

// eggs
    defm  tile_egg, palette_white_pink_red, horizontal
   ; defm  3, 5, 1
    
   defm 8, 4, 1
   defm 8, 16, 1
   defm 6, 19, 1
   defm 12, 16, 1
   defm 19, 16, 1
   defm 23, 16, 1
   defm 25, 19, 1

   defm 20, 8, 1
   defm 20, 12, 1

   defm 11, 8, 1
   defm 11, 12, 1

   defm 23, 4, 1
 


    defm - 1

    defm -2

// hens
    
    defm 86, 136       ;sprite 2
    defm 215, 40        ;sprite 3
    defm 151, 136       ;sprite 4
    defm 119, 216      ;sprite 5
    defm 119, 56       ;sprite 6

    defm -3

    defw 0
    defw 0

    defm -4