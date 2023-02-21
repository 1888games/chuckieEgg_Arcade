


EffectTable1:
    
    defm $72, $20, $fb, $87, $00, $02, $0F, $00
    defm $73, $30, $FF, $0c, $00, $0A, $1F, $00



 //   0 : upper 3 bits = frequency shift, lower 3 bits = wave select
//1 : initial base frequency
//2 : frequency increment (added to base freq)
//3 : upper bit = reverse lower 7 bits = duration
//4 : frequency increment (added to initial base frequency). Used when repeat > 1
//5 : repeat
//6 : upper 4 bits = volume adjust type lower 4 bits = volume
//7 : volume increment


                                    // 1=coin
   // set 1, (hl)                 // 2=background hum
                            // 3=background hum med
                                // 4=background hum high1
                                // 5=background him higher
                                // 6=background hum even higher
                                // 7=extra life ding

                                // 1=endless med chirps
                                // 2=endless low chirps
                                // 3=endless high chirps
                                // 4=four med chirps
                                // 5=rising tone endless
                                // 6=c64 space loop
                                // 7=long tone unused


                                // 1=med blip (good for key?)
                                // 2=eat ghost
                                // 3=quick rising bloop
                                // 4=died
                                // 5=rising tone endless
                                // 6=higher blip
                                // 7=nothing


EffectTable2:

    

EffectTable3:
    

// WALK

    defm %00000011      //0 : upper 3 bits = frequency shift, lower 3 bits = wave select
    defm %00010001      //1 : initial base frequency
    defm %01100111   //2 : frequency increment (added to base freq)
    defm %00000011      //3 : upper bit = reverse lower 7 bits = duration
    defm -1              //4 : frequency increment (added to initial base frequency). Used when repeat > 1
    defm 1          //5 : repeat
    defm %00010011      //6 : upper 4 bits = volume adjust type lower 4 bits = volume
    defm 0              //7 : volume increment
   

// OPEN DOOR

    defm $1C, $70, $8B, $08, $00, $01, $06, $00


// JUMP

    defm %01000111      //0 : upper 3 bits = frequency shift, lower 3 bits = wave select
    defm %00000000      //1 : initial base frequency
    defm %00000011   //2 : frequency increment (added to base freq)
    defm %00001111      //3 : upper bit = reverse lower 7 bits = duration
    defm 5             //4 : frequency increment (added to initial base frequency). Used when repeat > 1
    defm 1           //5 : repeat
    defm %00011001      //6 : upper 4 bits = volume adjust type lower 4 bits = volume
    defm 0              //7 : volume increment


// CORN

    defm %00011111      //0 : upper 3 bits = frequency shift, lower 3 bits = wave select
    defm %00010011      //1 : initial base frequency
    defm %10100011   //2 : frequency increment (added to base freq)
    defm %00011111      //3 : upper bit = reverse lower 7 bits = duration
    defm -1              //4 : frequency increment (added to initial base frequency). Used when repeat > 1
    defm 1           //5 : repeat
    defm %00011001      //6 : upper 4 bits = volume adjust type lower 4 bits = volume
    defm 0              //7 : volume increment


// DEAD
    
    defm %00000110
    defm %00111000
    defm %11111110
    defm %00010000 //3 : upper bit = reverse lower 7 bits = duration
    defm %11111001
    defm %00000100
    defm %00001111
    defm 251




    ;defm $26, $38, $FE, $14, $F9, $04, $0F, $fb

  // EGG

    defm $3A, $01, $02, $07, $00, $01, $07, $FF

 // BLOOP HIGH

    defm %01000011      //0 : upper 3 bits = frequency shift, lower 3 bits = wave select
    defm %11110001      //1 : initial base frequency
    defm %01100111   //2 : frequency increment (added to base freq)
    defm %00000011      //3 : upper bit = reverse lower 7 bits = duration
    defm -1              //4 : frequency increment (added to initial base frequency). Used when repeat > 1
    defm 1          //5 : repeat
    defm %00010011      //6 : upper 4 bits = volume adjust type lower 4 bits = volume
    defm 0           

// CLIMB

    defm %00000001      //0 : upper 3 bits = frequency shift, lower 3 bits = wave select
    defm %00001111      //1 : initial base frequency
    defm %10000111   //2 : frequency increment (added to base freq)
    defm %00000010      //3 : upper bit = reverse lower 7 bits = duration
    defm -2              //4 : frequency increment (added to initial base frequency). Used when repeat > 1
    defm 1          //5 : repeat
    defm %00010011      //6 : upper 4 bits = volume adjust type lower 4 bits = volume
    defm 0              //7 : volume increment
    
    


// 0

