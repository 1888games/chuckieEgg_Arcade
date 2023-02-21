

    include "scripts/data/rom_6f/levels/level_1.asm"
    include "scripts/data/rom_6f/levels/level_2.asm"
    include "scripts/data/rom_6f/levels/level_3.asm"
    include "scripts/data/rom_6f/levels/level_4.asm"
    include "scripts/data/rom_6f/levels/level_5.asm"
    include "scripts/data/rom_6f/levels/level_6.asm"
    include "scripts/data/rom_6f/levels/level_7.asm"
    include "scripts/data/rom_6f/levels/level_8.asm"


level_data:     defw level_1, level_2, level_3, level_4, level_5, level_6, level_7, level_8
				defw level_1, level_2, level_3, level_4, level_5, level_6, level_7, level_8
				defw level_1, level_2, level_3, level_4, level_5, level_6, level_7, level_8
				defw level_1, level_2, level_3, level_4, level_5, level_6, level_7, level_8
				defw level_1, level_2, level_3, level_4, level_5, level_6, level_7, level_8


level_hens:		defm 2, 2, 3, 4, 4, 4, 3, 3
				defm 0, 0, 0, 0, 0, 0, 0, 0
				defm 2, 2, 3, 4, 4, 4, 3, 3
				defm 5, 5, 5, 5, 5, 5, 5, 5
				defm 5, 5, 5, 5, 5, 5, 5, 5


level_mother:	defm 0, 0, 0, 0, 0, 0, 0, 0
				defm 1, 1, 1, 1, 1, 1, 1, 1
				defm 0, 0, 0, 0, 0, 0, 0, 0
				defm 1, 1, 1, 1, 1, 1, 1, 1
				defm 1, 1, 1, 1, 1, 1, 1, 1
