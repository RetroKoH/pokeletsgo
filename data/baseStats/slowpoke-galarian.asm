db SLOWPOKE ; pokedex id
db 90 ; base hp
db 65 ; base attack
db 65 ; base defense
db 15 ; base speed
db 40 ; base special attack
;db 40 ; base special defense
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 190 ; catch rate
db 63 ; base exp yield
INCBIN "pic/mon/slowpoke-g.pic",0,1 ; 55, sprite dimensions
dw SlowpokeGPicFront
dw SlowpokeGPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,									TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK,	TM_SCALD
	tmlearn TM_CALM_MIND,													TM_FLAMETHROWER,								TM_PSYCHIC
	tmlearn TM_EARTHQUAKE,					TM_SHADOW_BALL,									TM_FIRE_BLAST,	TM_SURF
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn TM_PAY_DAY,						TM_DREAM_EATER

db BANK(SlowpokeGPicFront)
