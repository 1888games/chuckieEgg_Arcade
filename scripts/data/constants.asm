


start_lives:		equ 5

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
spr_num:                equ $0            ;sprite number from rom 5f most significant 6 bits bit 1 x flip, bit 0 y flip
spr_pal:                equ $1             ;palette for sprite - lower nibble only 
spr_x:                  equ $10             ;x position of sprite
spr_y:                  equ $11             ;y position of sprite
spr_vel_x:              equ $18              ;x velocity of sprite
spr_vel_y:              equ $19             ;y velocty of sprite
spr_tile_addr:          equ $24              ;tile address sprite occupies (2 bytes)
spr_tile_x:             equ $30              ;x tile position (0,0) is top right corner
spr_tile_y:             equ $31               ;y tile position (27,31) is bottom left corner
flipx:                  equ 1                                                                ;x flip bit for sprites
flipy:                  equ 0

NUM_LEVELS:      equ 8

snd_en:       	equ         $5001  ; 0x9041 for Pengo


invincible_time:	equ 	80
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; colour pallete constants for pen 3 colour
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
black:               	equ 0;                (hidden)
red:                 	equ 1;                (blinky)
pink:                	equ 3;                (pinky)
cyan:                	equ 5;                (inky)
orange:              	equ 7;                (clyde)
yellow:              	equ 9;                (pac-man)
grey:                	equ $f;                (off-white)
blue:                	equ $10;        (scared ghost)
brown:               	equ $15;        (poo ghost)

palette_white_blue_red 		equ 1
palette_white_blue_pink 	equ 3
palette_white_blue_cyan 	equ 5
palette_white_blue_orange	equ 7
palette_blue_red_yellow		equ 9
palette_white_black_pink	equ 14
palette_red_green_white		equ 15
palette_pink_black_blue		equ 16
palette_green_blue_pink		equ 17
palette_green_white_red		equ 18
palette_red_orange_white	equ 20
palette_orange_green_orange equ 21
palette_yellow_blue_white  equ 22
palette_dgreen_green_white  equ 23
palette_cyan_pink_yellow	equ 24
palette_white_blue_black 	equ 25

palette_white_pink_red		equ 29
palette_pink_black_white	equ 31

walk_speed_pixel	equ	 1
walk_speed_frac equ	    7

air_speed_frac equ		 201

start_hen_speed  equ 16

hen_walk_sprite equ 9 * 4
hen_climb_sprite  equ 11 * 4
hen_eat_sprite equ 10 *4
 
gravity_force equ			20

jump_height equ 11

jump_left_state equ 1
jump_right_state equ 2
jump_up_state equ 0

time_frames		equ 8

;some constants for mode setting
title_mode:                equ $1
game_mode:                equ $2
game_over:                equ $4
life_lost:				equ $8
complete_mode:		equ 16
number_mode:				equ 32
high_score_mode 	equ 64


MAX_ENEMIES:                    equ 5
GHOST_FRAME_TIME:               equ 6
BAT_FRAME_TIME:                 equ 40
SPIDER_FRAME_TIME:              equ 3
MAX_MACHINES:					equ 4

colour_girder:		equ palette_blue_red_yellow

LEFT:				 equ $0
RIGHT:				 equ $1
UP:					 equ $2
DOWN:				 equ $6

tile_af_logo:		equ $10
tile_cage:			equ $90
tile_platform:  	equ $F0
tile_ladder_left	equ $F1
tile_ladder_right:	equ $F2
tile_seed:			equ $F3
tile_egg:			equ $E3

tile_bonus:			equ $E5
tile_level:			equ $E8
tile_score:			equ $F5
tile_player:		equ $F8
tile_time:			equ $FD

tile_arlasoft:	    equ $A4

tile_logo_c:		equ $C4
tile_logo_h:		equ $C6
tile_logo_u:		equ $C8
tile_logo_k:		equ $CA
tile_logo_e:		equ $CC
tile_logo_g:		equ $CE
tile_logo_i:		equ $AE

tile_copyright:		equ $0A

tile_egg_1:			equ $60
tile_egg_2:			equ $62


transition_delay 	equ 4

mother_speed_change  equ 3


tile_lift_start  = $94
tile_lift_end = $9E

tile_roof:				equ $9B
tile_wall:				equ $63
tile_wall_end:			equ $60
tile_wall_down:			equ $66
tile_wood_floor:		equ $92
tile_wood_floor_end:	equ $93
tile_girder:			equ $90
tile_girder_end:		equ $91
tile_back_wall:			equ $80
tile_back_wall_end:	    equ $A2
tile_winch_support:		equ $88
tile_winch_top_left:	equ $6E
tile_winch_top_right:	equ $6F
tile_winch_bot_left:	equ $7E
tile_winch_bot_right:	equ $7F
tile_winch_cable:		equ $B0
tile_basket_top_left:	equ $96
tile_basket_top_right:	equ $97
tile_basket_bot_left:	equ $98
tile_basket_bot_right:	equ $99

tile_jammy_dodger:		equ $87
tile_arcade_1:			equ $10
tile_arcade_2:			equ $18
tile_peek:				equ $A4
tile_nail:				equ $7B
tile_key:				equ $77
tile_arcade_left:		equ $9C
tile_arcade_left2:		equ $FE

tile_richard:			equ $8C

tile_arcade_right:		equ $9D
tile_arcade_right2:		equ $FF

tile_spider:			equ $F8

tile_door_right:		equ $25
tile_handle_right:		equ $24
tile_door_left:			equ $27
tile_handle_left:		equ $26
tile_big_key:			equ $6C
tile_big_key_icon:		equ $A6

tile_web_only_R:    equ $CE
tile_web_only_L:	equ $2E

tile_web_1:			equ $E8
tile_web_2:			equ $E9
tile_web_3:			equ $F8
tile_web_4:			equ $99

tile_web_5:			equ $EA
tile_web_6:			equ $EB
tile_web_7:			equ $FA
tile_web_8:			equ $FB
tile_neil:			equ $EC

web_colour:				equ palette_white_blue_red

copyright_symbol 		equ $3A

bat_sprite:				equ 48
ghost_sprite:			equ 8
spider_sprite:			equ 0


base_push_time:				equ 12


STATE_IDLE:						EQU 0
STATE_WALKING:					EQU 1
STATE_JUMPING:					EQU 2
STATE_FALLING:					EQU 3
STATE_CLIMBING:					EQU 4
STATE_CROUCHING:				EQU 5
STATE_PUSHING:					EQU 6

right_screen_edge:				equ 54

horizontal:	equ 1
vertical:	equ 0


one_floor:      equ 5
two_floors:     equ 10
three_floors:   equ 15
four_floors:    equ 20
five_floors:    equ 25

floor_1:        equ 27
floor_2:        equ 22
floor_3:        equ 17
floor_4:        equ 12
floor_5:        equ 7
floor_0:		equ 32


harry_idle_frame:	 	equ 0

harry_walk_frame:		equ 0

harry_crouch_frame:		equ 40
harry_fall_frame:		equ 1
harry_jump_frame:		equ 1
harry_climb_frame:		equ 2

harry_push_frame:		equ 52

blank_tile:					equ $40



column_27					equ $040
column_26					equ $060
column_25					equ $080
column_24					equ $0A0
column_23					equ $0C0
column_22					equ $0E0
column_21					equ $100
column_20					equ $120
column_19					equ $140
column_18					equ $160
column_17					equ $180
column_16					equ $1A0
column_15					equ $1C0
column_14					equ $1E0
column_13					equ $200
column_12					equ $220
column_11					equ $240
column_10					equ $260
column_9					equ $280
column_8					equ $2A0
column_7					equ $2C0
column_6					equ $2E0
column_5					equ $300
column_4					equ $320
column_3					equ $340
column_2					equ $360
column_1					equ $380
column_0					equ $3A0


row_0	equ 0
row_1	equ 1
row_2	equ 2
row_3	equ 3
row_4	equ 4
row_5	equ 5
row_6	equ 6
row_7	equ 7
row_8	equ 8
row_9	equ 9
row_10	equ 10
row_11	equ 11
row_12  equ 12
row_13	equ 13
row_14	equ 14
row_15	equ 15
row_16	equ 16
row_17	equ 17
row_18	equ 18
row_19	equ 19
row_20	equ 20
row_21	equ 21
row_22	equ 22
row_23	equ 23
row_24	equ 24
row_25	equ 25
row_26	equ 26
row_27	equ 27
row_28	equ 28
row_29	equ 29
row_30	equ 30
row_31	equ 31
row_32	equ 32
row_33	equ 33
row_34	equ 34
row_35	equ 35
row_36	equ 36
row_37	equ 37



title_legend_column 	equ column_10
title_key_column 		equ column_7
title_legend_row		equ 16


grid_rows				equ 29
grid_columns			equ 20


EFFECT_TABLE_1  EQU     EffectTable1    ; channel 1 effects. 8 bytes per effect
EFFECT_TABLE_2  EQU     EffectTable2    ; channel 2 effects. 8 bytes per effect
EFFECT_TABLE_3  EQU     EffectTable3    ; channel 3 effects. 8 bytes per effect

