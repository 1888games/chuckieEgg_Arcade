level_4:
    

// platforms 
   defm tile_platform, palette_orange_green_orange, horizontal

    defm  0, 0, 8
    defm  9, 0, 8
    defm  21, 0, 11

    defm 0, 4, 8
    defm 10, 4, 7
    defm 21, 4, 7
    defm 30, 4, 2

    defm 0, 8, 3
    defm 4, 9, 2
    defm 7, 10, 2
    defm 10, 11, 2
    defm 14, 12, 3
    defm 21, 12, 1
    defm 25, 12, 7

    defm 10, 8, 1
    defm 21, 8, 7
    defm 29, 7, 3

    defm 0, 12, 4
    defm 5, 13, 1
    defm 6, 14, 1
    defm 7, 15, 1
    defm 8, 16, 2
    defm 11, 16, 6
    defm 21, 16, 11



    defm - 1

   

// ladders
   defm  tile_ladder_left, palette_orange_green_orange, vertical

   defm 4, 1, 6
   defm 12, 1, 18
   defm 24, 1, 6
   defm 22, 9, 10
   defm 29, 12, 7





 ;  defm 10, 1, 18
 


   defm -1

// ladders
    defm  tile_ladder_right, palette_orange_green_orange, vertical
  	
  	defm 5, 1, 6
  	defm 13, 1, 18
  	defm 25, 1, 6
  	defm 23, 9, 10
  	defm 30, 12, 7
   ; defm 11, 1, 18
   
    defm - 1

// eggs
    defm  tile_egg, palette_white_pink_red, horizontal
   ; defm  3, 5, 1
    
    defm 1, 1, 1
    defm 1, 9, 1
    defm 1, 13, 1
    defm 10, 5, 1
    defm 21, 1, 1


    defm 15, 13, 1
    defm 21, 9, 1

    defm 26, 19, 1
    defm 26, 16, 1
    defm 27, 12, 1


    defm 27, 5, 1
    defm 30, 8, 1




 


    defm - 1

// seeds
   defm tile_seed, palette_orange_green_orange, vertical

  ; defm  22,17,1

  	defm 1, 5, 1
  	defm 8, 11, 1
  	defm 14, 17, 1
  	defm  21, 17, 1
  	defm  16, 1, 1
  	defm 29, 1, 1
  
    defm -1

    defm -2

// hens
    
    defm 86, 132        ;sprite 2
    defm 87, 40        ;sprite 3
    defm 215, 40       ;sprite 4
    defm 215, 208      ;sprite 5
    defm 183, 132       ;sprite 6

    defm -3

    defw 0
    defw 0

    defm -4