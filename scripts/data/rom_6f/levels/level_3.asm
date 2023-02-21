    ;align $100

level_3:

// gaps  
   defm tile_platform, palette_orange_green_orange, horizontal

    defm  0, 0, 4
    defm  4, 1, 3
    defm  11, 0, 5
    defm  0, 8, 7
    defm  18, 0, 14
    defm  0, 12, 4
    defm  6, 15, 1
    defm  11, 15, 7
    defm  18, 14, 3
    defm  21, 17, 5
    defm  26, 16, 1
    defm  29, 16, 3
    defm  22, 13, 2
    defm  25, 12, 2
    defm  27, 11, 2
    defm  28, 8, 3
    defm  26, 7, 2
    defm  25, 3, 4
    defm  11, 4, 6
    defm  18, 4, 2
    defm  21, 5, 2
    defm  23, 6, 2
    defm  18, 9, 3
    defm  22, 9, 2


    defm - 1
   

// ladders
   defm  tile_ladder_left, palette_orange_green_orange, vertical

   defm 1, 1, 10
   defm 4, 9, 9
   defm 12, 5, 13
   defm 15, 5, 13
   defm 19, 15, 5
   defm 29, 9, 5
   defm 29, 1, 5


   defm -1

// ladders
    defm  tile_ladder_right, palette_orange_green_orange, vertical
    defm 2, 1, 10
    defm 5, 9, 9
    defm 13, 5, 13
    defm 16, 5, 13
    defm 20, 15, 5
    defm 30, 9, 5
    defm 30, 1, 5


  
    defm - 1

// eggs
    defm  tile_egg, palette_white_pink_red, horizontal
    defm  6, 2, 1
    defm  6, 9, 1
    defm  6, 16, 1
    defm  25, 1, 1
    defm  24, 7, 1
    defm  23, 10, 1
    defm  26, 13, 1
    defm  29, 14, 1
    defm  30, 17, 1
    defm  14, 5, 1
    defm  1, 13, 1
    defm  26, 4, 1
   

    defm - 1

// seeds
   defm tile_seed, palette_orange_green_orange, vertical
   defm  11,16,1
   defm  11,5,1
   defm  22,1,1
   defm  20,10,1
   defm  22,14,1
   defm  29,17,1
   defm  18,15,1
   defm  3,9,1
   defm  3,1,1
    defm  0, 13, 1

    
    defm -1

    defm -2

   // hens

   defm 94, 148       ;sprite 2
   defm 119, 240        ;sprite 3
   defm 191, 40      ;sprite 4
   defm 215, 4      ;sprite 5
   defm 183, 160       ;sprite 6
    
    defm -3

    // lifts

    ;defw tile_ram_start + row_8 + column_2
    ;defw tile_ram_start + row_8 + column_10

    //    Y    X
    defm 224, 192
    defm 160, 192

    defm -4


    defm -5
