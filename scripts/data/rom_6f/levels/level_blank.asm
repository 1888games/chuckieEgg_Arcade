level_2:
    

// platforms 
   defm tile_platform, palette_orange_green_orange, horizontal

    defm  0, 0, 6
    defm  6, 0, 26
   
    defm - 1
   

// ladders
   defm  tile_ladder_left, palette_orange_green_orange, vertical

 ;  defm 10, 1, 18
 


   defm -1

// ladders
    defm  tile_ladder_right, palette_orange_green_orange, vertical
  
   ; defm 11, 1, 18
   
    defm - 1

// eggs
    defm  tile_egg, palette_white_pink_red, horizontal
   ; defm  3, 5, 1
    


 


    defm - 1

// seeds
   defm tile_seed, palette_orange_green_orange, vertical

  ; defm  22,17,1
  
    defm -1

    defm -2

// hens
    
    defm 85, 160        ;sprite 2
    defm 118, 192        ;sprite 3
    defm 150, 206       ;sprite 4
    defm 150, 188      ;sprite 5
    defm 214, 116       ;sprite 6

    defm -3

    defw tile_ram_start + row_0 + column_0
    defw tile_ram_start + row_0 + column_0

    defm -4