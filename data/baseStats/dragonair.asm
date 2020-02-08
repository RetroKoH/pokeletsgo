db DRAGONAIR ; pokedex id
db 61 ; base hp
db 84 ; base attack
db 65 ; base defense
db 70 ; base speed
db 70 ; base special attack
;db 70 ; base special defense
db DRAGON ; species type 1
db DRAGON ; species type 2
db 45 ; catch rate
db 147 ; base exp yield
INCBIN "pic/mon/dragonair.pic",0,1 ; 66, sprite dimensions
dw DragonairPicFront
dw DragonairPicBack

; rare encounter moves
db AQUA_JET, HAZE, MIST, SUPERSONIC

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,														TM_THUNDER_WAVE
	tmlearn TM_DRAGON_TAIL,					TM_IRON_TAIL
	tmlearn TM_WATERFALL,					TM_TOXIC
	tmlearn 				TM_DRAGON_PULSE,				TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER,		TM_OUTRAGE
	tmlearn 																				TM_FIRE_BLAST,	TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(DragonairPicFront)
