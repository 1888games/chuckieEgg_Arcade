

lookup_3bb0:    defm 01, 02, 04, 08, $10, $20, $40, $80

lookup_3bb8:    defm 00, $57, $5C, $61, $67, $6D, $74, $7B
                defm $82, $8A, $92, $9A, $A3, $AD, $B8, $C3



channel_1_3BC8: defw song_1_ch1, song_2_ch1, song_3_ch1, song_1_ch1
channel_2_3BCC: defw song_1_ch2, song_2_ch1, song_3_ch1, song_1_ch1
channel_3_3CD0: defw song_1_ch3, song_2_ch3, song_2_ch3, song_2_ch3




song_1_ch1:     
                

                defm $F4, $08, $f2, $02, $f3, $0f, $f4, $06

                defm $f3, $0
                defm note_length * 5 + pause


  

                defm $f3, $0C
                defm note_length * 2 + 3
                defm $f3, $0
                defm note_length * 2 + pause
                defm $f3, $0D
                defm note_length * 2 + 4
                defm $f3, $0
                defm note_length * 2 + pause
                defm $f3, $0E
                defm note_length * 2 + 5
                defm $f3, $0
                defm note_length * 2 + pause
                defm $f3, $0E
                defm note_length * 2 + 6
                defm $f3, $0
                defm note_length * 2 + pause

                 defm $f3, $0C
                defm note_length * 2 + 8
                defm $f3, $0
                defm note_length * 2 + pause
                defm $f3, $0D
                defm note_length * 2 + 9
                defm $f3, $0
                defm note_length * 2 + pause
                defm $f3, $0E
                defm note_length * 2 + 10
                defm $f3, $0
                defm note_length * 2 + pause
                defm $f3, $0E
                defm note_length * 2 + 12
                defm $f3, $0
                defm note_length * 2 + pause

                defm $f3, $0E
                defm note_length * 3 + 13
                defm $f3, $0
                defm note_length * 3 + pause


              


                defm $ff, 0, 0


        
song_1_ch2:     defm $F1, $00, $F2, $02, $F3, $08, $F4, $03
song_1_loop_2:     
           
               defm $f3, $0
                defm note_length * 3 + pause

                defm $f3, $08

                defm note_length * 4 + 12
                defm note_length * 4 + 11
                defm note_length * 3 + 10
                 defm note_length * 3 + 10
                defm note_length * 4+ 9
                defm note_length * 5 + 4
                
                defm $f3, $0
                defm note_length * 6 + pause
                defm $ff, 0, 0

               





song_2_ch1:     


                defm $F1, $08, $f2, $02, $f3, $0f, $f4, $06

                defm $f3, $0
                defm note_length * 3 + pause

                defm $f3, $0C
                defm note_length * 2 + 12
                defm $f3, $0
                defm note_length * 1 + pause
                defm $f3, $0D
                defm note_length * 2 + 11
                defm $f3, $0
                defm note_length * 1 + pause
                defm $f3, $0E
                defm note_length * 2 + 10
                defm $f3, $0
                defm note_length * 1 + pause
                defm $f3, $0E
                defm note_length * 5 + 9
                defm $f3, $0
                defm note_length * 3 + pause



                defm $f3, $0E
                defm note_length * 2 + 8
                defm $f3, $0
                defm note_length * 1 + pause


                defm $f3, $0F
                defm note_length * 2 + 7
                defm $f3, $0
                defm note_length * 1 + pause

                defm $f3, $0F
                defm note_length * 2+ 6
                defm $f3, $00
                defm note_length * 1 + pause

                 defm $f3, $0F
                defm note_length * 5+ 3
                defm $f3, $00
                defm note_length * 1 + pause

               
                defm $ff, 0, 0


        
song_2_ch2:     defm $F1, $00, $F2, $02, $F3, $08, $F4, $03
song_2_loop_2:     
           
               defm $f3, $0
                defm note_length * 3 + pause

                defm $f3, $08

                defm note_length * 4 + 12
                defm note_length * 4 + 7
                defm note_length * 3 + 11
                 defm note_length * 3 + 14
                defm note_length * 4+ 3
                defm note_length * 5 + 4
                defm $f3, $0
                defm note_length * 6 + pause
                defm $ff, 0, 0

               






song_1_ch3:     
song_2_ch3:     
                defm $FF, 0, 0


pause       equ 16


note_length equ 32


bass_vol    equ $4

song_3_ch1:     


                defm $F1, $04, $f2, $02, $f3, $0f, $f4, $06

song_3_loop:    
      

round_1:

                defm $f3, bass_vol
                defm note_length * 4 + 3
                defm $f3, $0
                defm note_length * 4 + pause
                defm $f3, bass_vol
                defm note_length * 4 + 4
                defm $f3, $0
                defm note_length * 4 + pause
                defm $f3, bass_vol
                defm note_length * 4 + 11
                defm $f3, $0
                defm note_length * 4 + pause
                defm $f3, bass_vol
                defm note_length * 4 + 12
                defm $f3, $0
                defm note_length * 4 + pause
                
                defm $f3, bass_vol
                defm note_length * 4 + 3
                defm $f3, $0
                defm note_length * 4 + pause
                defm $f3, bass_vol
                defm note_length * 4 + 4
                defm $f3, $0
                defm note_length * 4 + pause
                defm $f3, bass_vol
                defm note_length * 4 + 11
                defm $f3, $0
                defm note_length * 4 + pause
                defm $f3, bass_vol
                defm note_length * 4 + 12
                 ;defm $f3, $0
                defm note_length * 4 + 11


                defm $f3, bass_vol
                defm note_length * 4 + 3
                defm $f3, $0
                defm note_length * 4 + pause
                defm $f3, bass_vol
                defm note_length * 4 + 4
                defm $f3, $0
                defm note_length * 4 + pause
                defm $f3, bass_vol
                defm note_length * 4 + 11
                 defm $f3, $0
                defm note_length * 4 + pause
                 defm $f3, bass_vol
                defm note_length * 4 + 12
                 defm $f3, $0
                defm note_length * 4 + pause
                
                defm $f3, bass_vol
                defm note_length * 4 + 3
                defm $f3, $0
                defm note_length * 4 + pause
                defm $f3, bass_vol
                defm note_length * 4 + 4
                defm $f3, $0
                defm note_length * 4 + pause
                defm $f3, bass_vol
                defm note_length * 4 + 12
                 defm $f3, $0
                defm note_length * 4 + pause
                 defm $f3, bass_vol
                defm note_length * 4 + 11
                defm note_length * 4 + 10
                
                defm $f0
                defw song_3_ch1

song_3_ch3:     defm $F1, $00, $F2, $03, $F3, $08, $F4, $04
                defm $F0
                defw song_3_loop_2
        
song_3_ch2:     defm $F1, $00, $F2, $02, $F3, $08, $F4, $03
song_3_loop_2:     
                
                defm $f3, 0
                BLOCK 64, note_length * 4 + pause     
                defm note_length * 4 + 4
                defm note_length * 4 + 3
                defm note_length * 4 + 2
                defm note_length * 6 + 1
                
                defm $f3, 0
                defm note_length * 4 + pause
                 defm $f3, 8

                defm note_length * 4 + 1
                defm note_length * 4 + 2
                defm note_length * 4 + 3
                defm note_length * 6 + 4

                defm $f3, 0
                defm note_length * 4 + pause
                 defm $f3, 8


                defm note_length * 4 + 4
                defm note_length * 4 + 3
                defm note_length * 4 + 2
                defm note_length * 6 + 1
               
                 defm $f3, 0
                defm note_length * 4 + pause
                 defm $f3, 8


                defm note_length * 4 + 6
                defm note_length * 4 + 5
                defm note_length * 4 + 4
                defm note_length * 4 + 3

                defm note_length * 4 + pause
                defm note_length * 4 + 4
                defm note_length * 4 + 3

                defm note_length * 4 + pause


                defm $F1, $00, $F2, $02, $F3, $08, $F4, $02

                defm note_length * 4 + 4
                defm note_length * 4 + 3
                defm note_length * 4 + 4
                defm note_length * 6 + 1
                
                defm $f3, 0
                defm note_length * 4 + pause
                 defm $f3, 8

                defm note_length * 4 + 1
                defm note_length * 4 + 2
                defm note_length * 4 + 3
                defm note_length * 6 + 2

                defm $f3, 0
                defm note_length * 4 + pause
                 defm $f3, 8


                defm note_length * 4 + 4
                defm note_length * 4 + 3
                defm note_length * 4 + 4
                defm note_length * 6 + 1
               
                 defm $f3, 0
                defm note_length * 4 + pause
                 defm $f3, 8


                defm note_length * 4 + 6
                defm note_length * 4 + 5
                defm note_length * 4 + 4
                defm note_length * 4 + 3

                defm note_length * 4 + pause
                defm note_length * 4 + 4
                defm note_length * 4 + 3

                 defm $f3, 0
                defm note_length * 4 + pause





                defm $f0
                defw song_3_loop_2