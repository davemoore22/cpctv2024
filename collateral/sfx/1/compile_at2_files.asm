;Compiles the player, the music and sfxs, using RASM.
;No ORG needed.

;This is the music, and its config file.
include "music.asm" 
include "music_playerconfig.asm" ;Optional.

;This is the sfxs, and its config file.  
include "sfx.asm" 
include "sfx_playerconfig.asm"  ;Optional.

;What hardware? Uncomment the right one.
;PLY_AKG_HARDWARE_MSX = 1        
;PLY_AKG_HARDWARE_SPECTRUM = 1
;PLY_AKG_HARDWARE_PENTAGON = 1
PLY_AKG_HARDWARE_CPC = 1

;Comment/delete this line if not using sound effects.
PLY_AKG_MANAGE_SOUND_EFFECTS = 1

;This is the player.
include "player_akm_music.asm"
include "player_akm_sfx.asm"