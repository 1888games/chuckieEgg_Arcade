level_5:
    

// platforms 
   defm tile_platform, palette_orange_green_orange, horizontal

    defm  0, 0, 3
    defm  4, 0, 14
    defm  20, 0, 4
    defm  28, 0, 4

    defm  0, 4, 10
    defm  14, 4, 10

    defm  0, 8, 10
    defm 14, 8, 10
    defm 30, 8, 2

    defm 0, 12, 10
    defm 21, 13, 2

    defm 6, 16, 8
    defm 15, 15, 1
    defm 17, 14, 4
    defm 20, 17, 4

    defm 28, 16, 4

   
    defm - 1
   

// ladders
   defm  tile_ladder_left, palette_orange_green_orange, vertical

   defm 4, 1, 6
   defm 11, 1, 5
   defm 15, 1, 6
   defm 11, 7, 7
   defm 3, 9, 6
   defm 7, 9, 10
   defm 18, 15, 5

   defm 21, 1, 6
   defm 18, 5, 6





 ;  defm 10, 1, 18
 


   defm -1

// ladders
    defm  tile_ladder_right, palette_orange_green_orange, vertical

    defm 5, 1, 6
    defm 12, 1, 5
    defm 16, 1, 6
    defm 12, 7, 7
    defm 4, 9, 6
    defm 8, 9, 10
    defm 19, 15, 5
    defm 22, 1, 6
    defm 19, 5, 6
  
   ; defm 11, 1, 18	
   
    defm - 1

// eggs
    defm  tile_egg, palette_white_pink_red, horizontal

    defm 1, 1, 1
    defm 1, 5, 1
    defm 1, 9, 1
    defm 1, 13, 1
    defm 8, 5, 1
    defm 9, 17, 1

    defm 17, 15, 1
    defm 21, 18, 1
    defm 30, 17, 1
    defm 30, 9, 1
    defm 14, 8, 1
    defm 20, 4, 1
   ; defm  3, 5, 1
    


 


    defm - 1

// seeds
   defm tile_seed, palette_orange_green_orange, horizontal

  ; defm  22,17,1

  	defm 7, 1, 3
  	defm 20, 1, 1
  	defm 23, 1, 1
  	defm 28, 1, 1
  	defm 23, 9, 1
  	defm 16, 9, 1
  	defm 6, 17, 1
  	defm 11, 17, 1
  	defm 12, 17, 1
  	defm 23, 18, 1
  	defm 28, 17, 1

  
    defm -1

    defm -2

// hens
    
     defm 182, 88       ;sprite 6
    defm 119, 244       ;sprite 2
    defm 183, 244        ;sprite 3
    defm 151, 216      ;sprite 4
    defm 151, 92      ;sprite 5
   

    defm -3

  
    //    Y    X
    defm 208, 56
    defm 144, 56


    defm -4