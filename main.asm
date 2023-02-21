// TOOO:

    ; can you step off platform onto a lift?
    ; can you jump up to ladder gap?
    ; how much leeway on platform jumps? extra pixel of snap?

    device zxspectrum48                                                                              ;allows savebin to work for creating the binaries - at the end of the file
                                                                                                                    ;instead of using OUTPUT before each org - just slightly easier to manage
    include "scripts/data/memory.asm"
    include "scripts/data/constants.asm"
    include "scripts/data/ram.asm"
                     
    org     $0000
                                                                                  
    jp      start                                                                     

    include "scripts/system/sound/rst.asm"
    include "scripts/system/vblank.asm"
    include "scripts/system/startup.asm"            // jumps to title.start_title_mode
    include "scripts/system/screens/title.asm"
    include "scripts/gameplay/start_game.asm" 
    include "scripts/system/sound/sound.asm"    
    include "scripts/system/screens/lost_life.asm"
    include "scripts/system/display/map.asm"
    include "scripts/system/screens/high_score.asm"
    include "scripts/gameplay/objects/lifts.asm"
    include "scripts/gameplay/harry/harry_lift.asm"


    include "scripts/data/rom_6e.asm"

    org $2000

    include "scripts/system/display/score.asm"
    include "scripts/system/display/text.asm"
    include "scripts/system/utility.asm"      
    include "scripts/system/display/hud.asm"
    include "scripts/system/screens/game_over.asm"
    include "scripts/system/input.asm"
    include "scripts/system/display/sprite.asm" 
    include "scripts/system/display/debug.asm" 

    include "scripts/system/sound/sound_wave.asm"   
    include "scripts/system/screens/complete_transition.asm"  
    include "scripts/system/screens/level_number.asm"  
    include "scripts/gameplay/birds/hens.asm"  
    include "scripts/gameplay/birds/hen_collision.asm"  
    include "scripts/gameplay/birds/hen_walking.asm" 
    include "scripts/gameplay/birds/hen_ladder.asm"
    include "scripts/gameplay/birds/hen_eat.asm"
    include "scripts/gameplay/birds/mother.asm"  


    org $3000 


    include "scripts/gameplay/game_loop.asm"
    include "scripts/system/screens/level_complete.asm"
    include "scripts/data/text.asm"
    include "scripts/gameplay/harry/harry.asm"
    include "scripts/gameplay/harry/harry_collision.asm"
    include "scripts/gameplay/harry/harry_new_state.asm"
    include "scripts/gameplay/harry/harry_control.asm"
    include "scripts/gameplay/harry/harry_anim.asm"
    include "scripts/gameplay/harry/harry_ladder.asm"
    include "scripts/gameplay/harry/harry_floor.asm"
    include "scripts/gameplay/harry/harry_left_right.asm"
    include "scripts/gameplay/harry/harry_jump.asm"
    include "scripts/gameplay/harry/harry_fall.asm"



mainloop:    

    ld a,(mode)                                                                        ;get mode
    cp title_mode                                                                ;is it title mode
    jp z,title_logic                                                        ;yes
    cp game_mode                                                                ;is it game mode
    jp z,game_logic                                                                ;yes
    cp game_over                                                                ;is it game over
    jp z,game_over_logic                                                ;yes
    cp life_lost
    jp z,lose_update
    cp complete_mode
    jp z, complete_update
    cp number_mode
    jp z, number_update
    cp high_score_mode
    jp z, high_score_update
wait:
    halt                                                                                ;finished processing let's wait for vsync
    jp mainloop      

    org  $1000

     include "scripts/data/rom_6f/rom_6f.asm"

 savebin "C:/Dropbox/Dropbox/Channel F/Chuckie Egg/MAME/roms/ponpoko/ppokoj1.bin",$0000, $1000
 savebin "C:/Dropbox/Dropbox/Channel F/Chuckie Egg/MAME/roms/ponpoko/ppokoj2.bin",$1000, $1000
 savebin "C:/Dropbox/Dropbox/Channel F/Chuckie Egg/MAME/roms/ponpoko/ppokoj3.bin",$2000, $1000
 savebin "C:/Dropbox/Dropbox/Channel F/Chuckie Egg/MAME/roms/ponpoko/ppokoj4.bin",$3000, $1000

 ; savebin "C:/Users/NickSherman/Dropbox/Channel F/Chuckie Egg/MAME/roms/ponpoko/ppokoj1.bin",$0000, $1000
 ; savebin "C:/Users/NickSherman/Dropbox/Channel F/Chuckie Egg/MAME/roms/ponpoko/ppokoj2.bin",$1000, $1000
 ; savebin "C:/Users/NickSherman/Dropbox/Channel F/Chuckie Egg/MAME/roms/ponpoko/ppokoj3.bin",$2000, $1000
 ; savebin "C:/Users/NickSherman/Dropbox/Channel F/Chuckie Egg/MAME/roms/ponpoko/ppokoj4.bin",$3000, $1000
;

