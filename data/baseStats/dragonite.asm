db DRAGONITE ; pokedex id
db 91 ; base hp
db 134 ; base attack
db 95 ; base defense
db 80 ; base speed
db 100 ; base special attack
;db 100 ; base special defense
db DRAGON ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 255 ; (270) base exp yield
INCBIN "pic/mon/dragonite.pic",0,1 ; 77, sprite dimensions
dw DragonitePicFront
dw DragonitePicBack

; rare encounter moves
db AQUA_JET, HAZE, MIST, SUPERSONIC

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,		TM_BRICK_BREAK,	TM_FLY,							TM_THUNDER_WAVE
	tmlearn TM_DRAGON_TAIL,					TM_IRON_TAIL,									TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn TM_WATERFALL,					TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 				TM_DRAGON_PULSE,TM_ICE_PUNCH,	TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER,		TM_OUTRAGE
	tmlearn TM_EARTHQUAKE,																	TM_FIRE_BLAST,	TM_SURF,		TM_HYPER_BEAM
	tmlearn TM_SUPERPOWER,	TM_ROOST,		TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(DragonitePicFront)
