db MUNCHLAX ; pokedex id
db 135 ; base hp
db 85 ; base attack
db 40 ; base defense
db 5 ; base speed
db 40 ; base special attack
;db 85 ; base special defense
db NORMAL ; species type 1
db NORMAL ; species type 2
db 50 ; catch rate
db 78 ; base exp yield
INCBIN "pic/mon/munchlax.pic",0,1 ; 77, sprite dimensions
dw MunchlaxPicFront
dw MunchlaxPicBack

; rare encounter moves (Charm, Zen Headbutt)
db DOUBLE_EDGE, LICK, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,		TM_BRICK_BREAK
	tmlearn 																				TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 								TM_ICE_PUNCH,	TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER,						TM_PSYCHIC
	tmlearn TM_EARTHQUAKE,					TM_SHADOW_BALL,					TM_SOLARBEAM,	TM_FIRE_BLAST,	TM_SURF
	tmlearn TM_SUPERPOWER,					TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn TM_PAY_DAY

db BANK(MunchlaxPicFront)
