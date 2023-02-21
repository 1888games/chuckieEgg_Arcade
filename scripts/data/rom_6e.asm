
        

spr_initial_game_data:
        ;sprite number * 4 to but into top 6 bits (0-63) flips then in bit 0 and 1, and pallete byte
        defm harry_idle_frame*4, palette_blue_red_yellow ; sprite 0, flipped in x, palette 1
        defm 16*4, palette_blue_red_yellow ; sprite 1
        defm 9*4, cyan ; sprite 2 
        defm 9*4, cyan
        defm 9*4,cyan ; sprite 4    
        defm 9*4, cyan               ;bullet sprite invisible
        defm 9*4,cyan; sprite 4    
        defm spider_sprite*4, 0                ;bullet sprite invisible
      
      

        ;starting positions x,y
       ; defm 214, 120       ;sprite 0
        defm 214, 155       ;sprite 0
        defm 85, 248       ;sprite 1

        defm 0, 144       ;sprite 2
        defm 0, 236        ;sprite 3
        defm 0, 36       ;sprite 4
        defm 0, 0      ;sprite 5
        defm 0, 156       ;sprite 6
    
       
        defm 85, 156       ;sprite 2
        defm 118, 188        ;sprite 3
        defm 150, 200       ;sprite 4
        defm 182, 184      ;sprite 5
        defm 214, 112       ;sprite 6
        defm 0, 140       ;sprite 7
    

high_score_defaults:

 

        defm "ARL", $00, $50, $02
        defm "COR", $00, $00, $02
        defm "SAM", $00, $50, $01
        defm "NIC", $00, $00, $01
        defm "KEV", $00, $75, $00
        defm "DAN", $00, $50, $00
       

