


logo_1:                 BLOCK 24, $A3
                        defm 0

logo_2:                 defm $A3, $C0,$C1,$C2,$C3,$C4,$C5,$C0,$C1,$C6,$C7,$C8,$C9,$A3,$A3,$C0,$C1,$CA,$CB,$C8,$C9,$CC,$CD,$A3,0
logo_3:                 defm $A3, $D0,$D1,$D2,$D3,$D4,$D5,$D0,$D1,$D6,$D7,$D8,$D9,$A3,$A3,$D0,$D1,$DA,$DB,$D8,$D9,$DC,$DD,$A3,0


arla_1:                 defm $A4,$A5,$A6,$A7,$A8,$A9,$AA,$AB, 0
arla_2:                 defm $B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB, 0

af_1:                 defm 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, $3E, 0
af_2:                 defm $3D, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, $3F, 0
                                           ;0123456789012345678901234567 - for alignment purposes
;msg_instruction:        defm        "WELCOME TO  THIS LITTLE GAME",0
;msg_quit_game:                defm    " 2P START  TO QUIT TO TITLE ",0
msg_scoring:                defm        " SCORE    TIME LEVEL   HIGH",0
msg_scoring_t:                defm      " SCORE                 HIGH",0
msg_brick_floor:           

    BLOCK   32, tile_wall
                        defm 0


msg_written_for:                defm " PRODUCED EXCLUSIVELY", 0
msg_written_for_1:              defm "FOR THE ARCADE ARCHIVE ", 0
msg_written_for_2:              defm "BELVEDERE MILL, STROUD", 0

msg_game_over:                defm        "  GAME    OVER  ",0
msg_gameover_blank:        defm        "                 ",0
msg_blank:                        defm        "                            ",0 ;use this label to also refer to a blank message
msg_level_complete:              defm      " LEVEL COMPLETE ", 0
msg_jammy                        defm       "JAMMY DODGERS   0000",0
msg_machine                      defm       "MACHINES SAVED  0000" ,0
msg_lives_lost                     defm     "NO LIVES LOST   0000",0
msg_time_bonus                     defm     "TIME BONUS      0000",0

msg_nigel:					defm  "DESIGNED BY NIGEL ALDERTON",0
msg_presents:				defm  "PRESENTS", 0

msg_ins_1:					defm "GUIDE HEN HOUSE HARRY AROUND THE",0
msg_ins_2:					defm "SCREENS TO COLLECT A DOZEN EGGS!",0

msg_high_table:					defm "HIGH SCORE TABLE",0


msg_score:			defm $F5, $F6, $F7, 0
msg_high:			defm $EB, $EC, $ED, 0
msg_player:			defm $F8, $F9, $FA, $FB, $FC, 0
msg_level:			defm $E8, $E9, $EA, $3A, $3A, $3A, 0
msg_bonus:			defm $E5, $E6, $E7, $3A, $3A, $3A, $3A, $3A, 0
msg_time:			defm $FD, $FE, $FF, $3A, $3A, $3A, $3A, 0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; a list of message width of the screen (28 columns)
; to display
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
bot_mess_seconds:        defm 0        ; change every second
bot_mess_1:              defm "    PRESS FIRE TO PLAY    ",0
bot_mess_2:                     
                         defm "ARCADE VERSION BY ARLASOFT",0
                               ; defm    copyright_symbol 
                               ; defm        " ARLASOFT ",0

                                        ;                 0123456789012345678901234567 - for alignment purposes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; this is the addressess of the messages to display (above), 
; the code looks for an address of zero to restart the list
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
bottom_list:                defw        bot_mess_1,msg_blank,0

