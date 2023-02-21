RST_38H:                              equ $ff            ;constant for RST 38H instruction for setting vsync interrupt
irq_enable:                           equ $5000           ;irq enable location in memory map, set 1 to enable 0 to disable
watchdog:                             equ $50c0           ;watchdog - if not reset every few frames cpu resets - forcing a re-boot known as the watchdog barking
flip_screen_addr:                     equ $5003            ;if value 0 then normal tilemap, 1 forces flipped tilemap (does not affect sprites)
hardware_io_area:                     equ $5000             ;hardware mapped memory i/o base

tile_ram_play_area:                   equ $4040            ;main tilemap area starts here (top right)-  addr increase vertically down from top - top right tile
tile_ram_play_area_left:       		  equ $43a0            ;main tilemap area top left tile
tile_ram_top_area:                    equ $43c0            ;top two rows above tilemap area- addr increase horizontally left from right 
tile_ram_play_area_last:        	  equ $43bf            ;last address of main player area (bottom left corner)
tile_ram_top_vis:                     equ $43c2             ;first two and last two tiles not visible in each of 2 rows
tile_ram_top_vis_line1:               equ $43dd              ;top left of visible top row sub to move to next column to right
tile_ram_top_vis_line2:               equ $43fd             ;second text row at top
tile_ram_start:                       equ $4000           ;base address of tile ram
pallete_ram_start:                    equ $4400           ;base address of pallete ram
pallete_ram_main:                     equ $4440           ;main video area pallete start (after first two rows)
tile_ram_bot_area:                    equ $4000           ;bottom two rows below tilemap area- addr increase horizontally left from right
tile_ram_bot_vis:                     equ $4002           ;first two and last two tiles not visible in each of 2 rows
tile_ram_bot_vis_line1:               equ $401d           ;top left of visible bottom row sub to move to next column to right
tile_ram_bot_vis_line2:               equ $403d           ;top left of last border row
user_ram_start:                       equ $4c00            ;start of user allocated RAM
ram_top:                              equ $4ff0            ;this is where the stack needs to start at


;-note 8 sprite registers exist but only the middle 6 are actually used by the hardware
; $4ff2-3,$4ff4-5,$4ff6-7,$4ff8-9,$4ffa-b,$4ffc-d - for the spritenum, flip and palette
; $5062-3,$5064-5,$5066-7,$5068-9,$506a-b,$506c-d - for the x and y positions


sprite_reg:                           equ $4ff0          ;sprite registers start here first byte is number bits 7-2, bit 1 is x flip, bit 0 is y flip                                                                                                                      ;second byte lower nibble is pallete to use for sprite
spriteXY_reg:                         equ $5060          ;2 bytes starting here for each sprite holding x and y positions on screen



lives_location:						  equ $4030
level_location:						  equ $403B
flowers_location:					  equ $43F0
