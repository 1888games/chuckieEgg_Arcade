
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; data to be held in ram defined here                                 ;
; allocation of bytes for ram area assembler calculates                              ;
; addresses based on org statement and user_ram_start ($4c00)                  ;
; these are in affect our variables                                                                          ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; db define byte (8 bit value) creates space and sets value
; dw define word (16 bit value) creates space and sets value
; ds declares space for a number of bytes (often specified using a calculation for the assembler)
; defm defines a byte
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        org user_ram_start                             ;allocate this data at user_ram_start $4c00





NUM_SPRITES:                    equ 8
NUM_HIGH_SCORES                 equ 6
ENEMY_DATA_SIZE:                equ 8



hen_tile_address:               equ 0
hen_centred_x:                   equ 2
hen_direction:                  equ 3  
hen_state:                      equ 4
hen_timer:                      equ 5 
hen_frame:                      equ 6  
hen_centred_y:                 equ 7      

HEN_DEAD:                       equ 0
HEN_WALKING:                    equ 1
HEN_CLIMBING:                   equ 2
HEN_EATING:                     equ 3

enemy_frac:                     equ 0
enemy_direction:                equ 1
enemy_speed_frac:               equ 2
enemy_speed_pixel:              equ 3
enemy_y:                        equ 4
enemy_type:                     equ 5
high_score_low_byte:            equ 3
high_score_med_byte:            equ 4
high_score_high_byte:           equ 5
high_score_init_1:              equ 0
high_score_init_2:              equ 1
high_score_init_3:              equ 2

viewing_high_score              equ 0
checking_high_score             equ 1
entering_high_score             equ 2


LIFT_DATA_SIZE = 4
NUM_LIFTS = 2

lift_tile_address               equ 0
lift_sprite_x                   equ 2
lift_sprite_y                   equ 3

lift_data                       ds LIFT_DATA_SIZE * NUM_LIFTS

harry_sprite_y                    ds 1
harry_sprite_x                     ds 1

hens:                           ds ENEMY_DATA_SIZE * (5)

joystick_state:                 db 0 
start_state:                    db 0 
attract_mode_address			ds 2
attract_mode_timer				ds 1
lives_lost_level				ds 1

time_remaining					ds 2
bonus_remaining					ds 2

pal_timer                       ds 1
busy 							ds 1
hen_data_address                ds 2

mother_speed_x_frac				ds 1
mother_speed_x_pixel			ds 1
mother_speed_y_frac				ds 1
mother_speed_y_pixel			ds 1
mother_x_pos_frac               ds 1
mother_y_pos_frac               ds 1
mother_going_right              ds 1
mother_going_down               ds 1
mother_frame_timer:				ds 1

hen_over_ladder:                ds 1
hen_can_go_up_ladder:           ds 1
hen_can_go_down_ladder:         ds 1
hen_blocked:                    ds 1
hen_speed:                      ds 1
hen_can_get_off_left:           ds 1
hen_can_get_off_right:          ds 1
cooldown:                       ds 1


lift_timer                      ds 1
lift_y_offset                   ds 1


hen_first_ladder:               ds 1

HIGH_SCORE_DATA_SIZE = 6

high_scores:					ds NUM_HIGH_SCORES * HIGH_SCORE_DATA_SIZE

high_score_state:				ds 1
high_score_address:				ds 2
high_score_index:				ds 1

high_score_colour				ds 1

force_colour:					ds 1
eggs_remaining:                 ds 4
gravity:                        ds 1

gravity_applies:                ds 1
jump_counter:                   ds 1
fire_override:					ds 1
is_attract_mode:				ds 1
seconds_left:                   ds 1
harry_land_timer                 ds 1
possible_jump_direction:         ds 1
jump_direction:                 ds 1
stop_timer:						ds 1
current_bonus_level				ds 1

level_left:                     ds 1
level_right:                    db 0

level_type_id:					ds 1
level_time_counter:				ds 1
current_level_time:				ds 1
level_hex:						ds 1

transition_timer				ds 1
transition_progress				ds 1

number_hens						ds 1
hens_to_spawn                   ds 1
mother_active					ds 1
mother_timer                    ds 1

ladder_off_chance               ds 1
ladder_half_chance              ds 1


MOTHER_CAGE         equ 0
MOTHER_FLYING       equ 1

mother_frame                    ds 1


jump_climb_straight				ds 1
bonus_reduce_counter			ds 1
time_reduce_timer				ds 1

last_score:                     ds 3
harry_invincible_timer:			ds 1

starting_lives                  ds 1
waitvsync:                      db 0                   ;if 1 then interrupt is finished and main loop can continue 
frame_counter:                  db 255                  ;value that increments every frame for stable animation and frame counts - doesn't reset just wraps so mods work consistently
frame_number:                   db 0                      ;holds a frame number in lsB and second counter in msB 60 to 0 resets to 60 when gets to zero 
seconds_counter:                db 0                      ;quick ref to seconds part

map_address:                    ds 2
map_byte:                     ds 1
map_byte2:                     ds 1


save_reg:                       db 0                   ;temp storage for an 8 bit register
save_sp:                        dw 0                    ;storage area for stack when messing about with it
                    ;holds previous state in upper nibble and current state in lower nibble  IN1 $5000
                        ;holds current state of input byte IN1 - player 2 joystick and start buttons $5040
flip_screen:                    db 0                       ;holds status of flip screen (as i think the location $5003 is write only - it always reads back as ff)


temp_address:                   dw 0

msg_top_addr                    dw 0                    ;holds address of top changing display text 
msg_one_pos:                    dw 0                     ;start addr of top text
msg_bot_addr:                   dw 0                     ;holds index of in bottom_list text to display at bottom of screen
bot_counter:                    db 0                     ;counter for bottom scrolling message display

sprite_data:                    ds 4*NUM_SPRITES + 2*NUM_SPRITES + 2*NUM_SPRITES + 2*NUM_SPRITES                       ;space for the 6 sprites to store their sprite data 
                                                            ;4 bytes for sprite, pallete, x and y


mode:                           db 0                      ;what mode is the system in 1 - title screen, 2 is game, 4 is end of game
high_score:                     ds 4                      ;current high score (again 4 bcd bytes)
current_score:                  ds 4                       ;space for current players score 4 bytes in bcd format (8 digits)
game_time:                      db 0                       ;holds the game time

level_complete:                 ds 1
player_lives:					db 0 

life_lost_counter:				ds 1
rand_data:						ds 2
temp_byte:                     ds 1
temp_byte2:						ds 1

x_speed_pixel:					ds 1
x_speed_frac:					ds 1

y_speed_pixel:					ds 1
y_speed_frac:					ds 1

y_pos_frac:						ds 1
x_pos_frac:						ds 1
x_pos_offset:					ds 1
y_pos_offset:					ds 1
fire_last_frame:				ds 1

harry_going_right:				ds 1

spawn_x:						ds 1
spawn_y:						ds 1

harry_state:						ds 1
harry_start_frame:				ds 1
harry_frame:						ds 1
harry_special_frame:				ds 1
harry_face_right:				ds 1
harry_frame_timer:				ds 1
harry_frame_time:				ds 1
harry_max_frame:					ds 1
harry_frame_loop:                                ds 1
harry_over_ladder:				ds 1
harry_can_climb_ladder          ds 1
ladder_join_x:					ds 1
moving_up_down:					ds 1
harry_ladder_below				ds 1
harry_ladder_above              ds 1
harry_ladder_two_above            ds 1
harry_exit_left:					ds 1
harry_exit_right:				ds 1
harry_tile_y:					ds 1
harry_tile_x:					ds 1
walking_across_ladder			ds 1
harry_on_lift                   ds 1

harry_left_foot_block           ds 1
harry_right_foot_block          ds 1
harry_can_fall                  ds 1
harry_snap_ground               ds 1
harry_land_ladder			    ds 1

blocked_jump_right:				ds 1
blocked_jump_left:				ds 1


tile_direction:                                 ds 1


blocked_above:                                  ds 1
blocked_below:                                  ds 1
blocked_left:                                   ds 1
blocked_right:                                  ds 1


went_up_ladder:					ds 1
went_down_ladder:				ds 1
harry_tile_address:				ds 2
song_number:                ds 1

                                                   ;y flip bit for sprites
sprite0:                                equ sprite_data                                                ;quick reference constants to load index registers with for sprite access
sprite1:                                equ sprite_data + 2
sprite2:                                equ sprite_data + 4
sprite3:                                equ sprite_data + 6
sprite4:                                equ sprite_data + 8
sprite5:                                equ sprite_data + $a
sprite6:                                equ sprite_data + $C
sprite7:                                equ sprite_data + $E
sprite_pos:                             equ sprite_data + spr_x
sprite_vels:                            equ sprite_data + spr_vel_x

        
 org $4e8c
 
SoundDataStart:


CH1_FREQ0       ds 1   ; 20 bits
CH1_FREQ1      ds 1
CH1_FREQ2       ds 1
CH1_FREQ3       ds 1
CH1_FREQ4      ds 1
CH1_VOL         ds 1
CH2_FREQ1       ds 1    ; 16 bits
CH2_FREQ2       ds 1
CH2_FREQ3       ds 1
CH2_FREQ4      ds 1
CH2_VOL        ds 1
CH3_FREQ1       ds 1    ; 16 bits
CH3_FREQ2      ds 1
CH3_FREQ3       ds 1
CH3_FREQ4       ds 1
CH3_VOL         ds 1

CH1_E_NUM       ds 1    ; effects to play sequentially (bitmask)
CH1_E_1         ds 1    ; unused
CH1_E_CUR_BIT   ds 1   ; current effect
CH1_E_TABLE0   ds 1    ; table of parameters, initially copied from ROM
CH1_E_TABLE1    ds 1
CH1_E_TABLE2    ds 1
CH1_E_TABLE3    ds 1
CH1_E_TABLE4    ds 1
CH1_E_TABLE5    ds 1
CH1_E_TABLE6    ds 1
CH1_E_TABLE7    ds 1
CH1_E_TYPE      ds 1
CH1_E_DURATION  ds 1
CH1_E_DIR       ds 1
CH1_E_BASE_FREQ ds 1
CH1_E_VOL       ds 1

CH2_E_NUM       ds 1    ; effects to play sequentially (bitmask)
CH2_E_1         ds 1    ; unused
CH2_E_CUR_BIT   ds 1   ; current effect
CH2_E_TABLE0   ds 1    ; table of parameters, initially copied from ROM
CH2_E_TABLE1    ds 1
CH2_E_TABLE2    ds 1
CH2_E_TABLE3    ds 1
CH2_E_TABLE4    ds 1
CH2_E_TABLE5    ds 1
CH2_E_TABLE6    ds 1
CH2_E_TABLE7    ds 1
CH2_E_TYPE      ds 1
CH2_E_DURATION  ds 1
CH2_E_DIR       ds 1
CH2_E_BASE_FREQ ds 1
CH2_E_VOL       ds 1

CH3_E_NUM       ds 1    ; effects to play sequentially (bitmask)
CH3_E_1         ds 1    ; unused
CH3_E_CUR_BIT   ds 1   ; current effect
CH3_E_TABLE0   ds 1    ; table of parameters, initially copied from ROM
CH3_E_TABLE1    ds 1
CH3_E_TABLE2    ds 1
CH3_E_TABLE3    ds 1
CH3_E_TABLE4    ds 1
CH3_E_TABLE5    ds 1
CH3_E_TABLE6    ds 1
CH3_E_TABLE7    ds 1
CH3_E_TYPE      ds 1
CH3_E_DURATION  ds 1
CH3_E_DIR       ds 1
CH3_E_BASE_FREQ ds 1
CH3_E_VOL       ds 1


CH1_W_NUM       ds 1   ; wave to play (bitmask)
CH1_W_1        ds 1    ; unused
CH1_W_CUR_BIT ds 1    ; current wave
CH1_W_SEL       ds 1 
CH1_W_4         ds 1 
CH1_W_5         ds 1 
CH1_W_OFFSET1   ds 1     ; address in ROM to find the next byte
CH1_W_OFFSET2  ds 1     ; (16 bits)
CH1_W_8         ds 1 
CH1_W_9        ds 1 
CH1_W_A         ds 1 
CH1_W_TYPE      ds 1 
CH1_W_DURATION  ds 1 
CH1_W_DIR      ds 1 
CH1_W_BASE_FREQ ds 1 
CH1_W_VOL       ds 1 

CH2_W_NUM       ds 1   ; wave to play (bitmask)
CH2_W_1        ds 1    ; unused
CH2_W_CUR_BIT ds 1    ; current wave
CH2_W_SEL       ds 1 
CH2_W_4         ds 1 
CH2_W_5         ds 1 
CH2_W_OFFSET1   ds 1     ; address in ROM to find the next byte
CH2_W_OFFSET2  ds 1     ; (16 bits)
CH2_W_8         ds 1 
CH2_W_9        ds 1 
CH2_W_A         ds 1 
CH2_W_TYPE      ds 1 
CH2_W_DURATION  ds 1 
CH2_W_DIR      ds 1 
CH2_W_BASE_FREQ ds 1 
CH2_W_VOL       ds 1 

CH3_W_NUM       ds 1   ; wave to play (bitmask)
CH3_W_1        ds 1    ; unused
CH3_W_CUR_BIT ds 1    ; current wave
CH3_W_SEL       ds 1 
CH3_W_4         ds 1 
CH3_W_5         ds 1 
CH3_W_OFFSET1   ds 1     ; address in ROM to find the next byte
CH3_W_OFFSET2  ds 1     ; (16 bits)
CH3_W_8         ds 1 
CH3_W_9        ds 1 
CH3_W_A         ds 1 
CH3_W_TYPE      ds 1 
CH3_W_DURATION  ds 1 
CH3_W_DIR      ds 1 
CH3_W_BASE_FREQ ds 1 
CH3_W_VOL       ds 1 

SOUND_COUNTER   ds 1    ; counter, incremented each VBLANK
                ds 1



