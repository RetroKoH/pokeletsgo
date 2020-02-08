db DRATINI ; pokedex id
db 41 ; base hp
db 64 ; base attack
db 45 ; base defense
db 50 ; base speed
db 50 ; base special attack
;db 50 ; base special defense
db DRAGON ; species type 1
db DRAGON ; species type 2
db 45 ; catch rate
db 60 ; base exp yield
INCBIN "pic/mon/dratini.pic",0,1 ; 55, sprite dimensions
dw DratiniPicFront
dw DratiniPicBack

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

db BANK(DratiniPicFront)
