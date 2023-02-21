;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; sets up title screen
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

title_location:                         equ tile_ram_start + 0 + column_7
author_location:                        equ tile_ram_start + 2 + column_5

title_seq_time = 50

start_title_mode:
        
 
        ld a,title_mode                                                                ;pick title mode
        ld (mode),a        

        ld a, 255
        ld (high_score_index), a                                                                ;and store

        ld a, title_seq_time
        ld (game_time), a

        ld a, 0
        ld (is_attract_mode), a
        ld ($5001), a

        ld a, (last_score)
        ld (current_score), a

        ld a, (last_score + 1)
        ld (current_score + 1), a

        ld a, (last_score + 2)
        ld (current_score + 2), a

           


;Title_Author:

        call clear_tile_ram

        call hide_sprites

      ;  jp start_game


              ;clear any data on second to top line
        ld de,msg_blank                                                                ;store text addr for instruction message
        ld hl,tile_ram_top_vis_line2                                ;vram address for second line of tiles
        call borders_blit_text_only                                        ;write text to border

        ld de,msg_blank                                                                ;store text addr for instruction message
        ld hl,tile_ram_top_vis_line1                               ;vram address for second line of tiles
        call borders_blit_text_only                                        ;write text to border

        ld de,msg_blank                                                                ;store text addr for instruction message
        ld hl,tile_ram_bot_vis_line1                               ;vram address for second line of tiles
        call borders_blit_text_only                                        ;write text to border
       
        ld de,msg_blank                                                                ;store text addr for instruction message
        ld hl,tile_ram_bot_vis_line2                               ;vram address for second line of tiles
        call borders_blit_text_only                                        ;write text to border


        call logo_text
        call draw_score_hud
        call draw_eggs





        ld de,arla_1                                                     ;get text addr for game message
        ld hl, tile_ram_start + row_12 + column_4                                   ;vram address for text
        ld c,palette_blue_red_yellow                                                ;colour red
        call main_blit_text_and_colour  

        ld de,arla_2                                                  ;get text addr for game message
        ld hl,tile_ram_start + row_12 + column_3                                  ;vram address for text
        ld c,palette_blue_red_yellow                                                     ;colour red
        call main_blit_text_and_colour  

         ld de,af_1                                                   ;get text addr for game message
        ld hl, tile_ram_start + row_8 + column_7                                ;vram address for text
        ld c,palette_cyan_pink_yellow                          ;colour red
        call main_blit_text_and_colour  

        ld de,af_2                                                  ;get text addr for game message
        ld hl,tile_ram_start + row_8 + column_6                                   ;vram address for text
        ld c,palette_cyan_pink_yellow                            ;colour red
        call main_blit_text_and_colour  

        ld de,msg_presents                                                      ;store text addr for scoring message
        ld hl, tile_ram_start + row_12 + column_6                  ;vram address for first of bottom line of tiles
        ld c,pink                                                                 ;colour (yellow)
        ;call main_blit_text_and_colour               


        ld de,msg_nigel                                                      ;store text addr for scoring message
        ld hl, tile_ram_start + row_3 + column_9                         ;vram address for first of bottom line of tiles
        ld c,grey                                                                    ;colour (yellow)
        call main_blit_text_and_colour               


         ld de,msg_ins_1                                                   ;store text addr for scoring message
        ld hl, tile_ram_start + row_0 + column_14                        ;vram address for first of bottom line of tiles
        ld c,palette_orange_green_orange                                                         ;colour (yellow)
        call main_blit_text_and_colour 

        ld de,msg_ins_2                                                   ;store text addr for scoring message
        ld hl, tile_ram_start + row_0 + column_13                    ;vram address for first of bottom line of tiles
        ld c,palette_orange_green_orange                                                                     ;colour (yellow)
        call main_blit_text_and_colour 


        ld hl,bottom_list                                        ;point to last item in the list for bottom text drawing routine so we cycle round straight away
        ld (msg_bot_addr),hl    

     ;  jp start_high_score
        jp wait
       
// PUT IN TITLE ANIM?

        ;call reset_sound
        
        ;call sfx_life
        ;call playSound

      
        ;ld hl,spr_initial_game_data                                        ;addr of game sprite data
        ;call set_sprites  

        ;call harry_make_walk
 

        ;ld ix, sprite0
       ; ld a, 10
        ;ld (ix+spr_x), a

        ;ld a, 130
        ;ld (ix+spr_y), a

Instructions:
        
    

        jp wait  


     
draw_eggs:


        ld b, tile_egg_1
        ld hl, tile_ram_start + row_6 + column_19
        ld c, palette_yellow_blue_white
        call draw2x2tile

         ld b, tile_egg_2
        ld hl, tile_ram_start + row_24 + column_19
        ld c, palette_yellow_blue_white
        call draw2x2tile
    

        ret                                                                         ;finished setup goto wait section


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; performs logic for title mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
title_logic:
        
        ld a, (cooldown)
        cp 0
        jp z, readyStart

        dec a
        ld (cooldown), a

        jp notUserStart
        
readyStart:

        ld a,(start_state)                                                        ;get state
        and inp_chk_p1st                                                        ;examine p1 start
        cp inp_p1_presd                                                                ;check for pressed 
        jp nz,notUserStart     

        xor a
        ld (is_attract_mode), a

        jp start_game
                                                             ;0 means pressed so start game

notUserStart: 
        
        ld a, (frame_counter)
        and %00001111
        jp nz, noCountdown

        ld a, (game_time)
        dec a
        ld (game_time), a
        cp 0
        jp nz, noCountdown

        ;ld a, 1
        ;ld (is_attract_mode), a

      

        jp start_high_score

noCountdown:

        call bot_display_upd  
       ; call harry_update  
        call show_score


        jp wait                                                                                ;finished setup goto wait section


logo_column  = column_22


logo_text:

        ld b, tile_logo_c
        ld hl, tile_ram_start + row_6 + logo_column
        ld c, palette_blue_red_yellow
        call draw2x2tile

        ld b, tile_logo_h
        ld hl, tile_ram_start + row_9 + logo_column
        ld c, palette_blue_red_yellow
        call draw2x2tile

        ld b, tile_logo_u
        ld hl, tile_ram_start + row_12 + logo_column
        ld c, palette_blue_red_yellow
        call draw2x2tile

        ld b, tile_logo_c
        ld hl, tile_ram_start + row_15 + logo_column
        ld c, palette_blue_red_yellow
        call draw2x2tile

        ld b, tile_logo_k
        ld hl, tile_ram_start + row_18 + logo_column
        ld c, palette_blue_red_yellow
        call draw2x2tile

         ld b, tile_logo_i
        ld hl, tile_ram_start + row_21 + logo_column
        ld c, palette_blue_red_yellow
        call draw2x2tile

         ld b, tile_logo_e
        ld hl, tile_ram_start + row_24 +  logo_column
        ld c, palette_blue_red_yellow
        call draw2x2tile


         ld b, tile_logo_e
        ld hl, tile_ram_start + row_12 +  column_19
        ld c, palette_blue_red_yellow
        call draw2x2tile

        ld b, tile_logo_g
        ld hl, tile_ram_start + row_15 +   column_19
        ld c, palette_blue_red_yellow
        call draw2x2tile

        ld b, tile_logo_g
        ld hl, tile_ram_start + row_18 +  column_19
        ld c, palette_blue_red_yellow
        call draw2x2tile



        ret