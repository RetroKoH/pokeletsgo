db MUK ; pokedex id
db 105 ; base hp
db 105 ; base attack
db 75 ; base defense
db 50 ; base speed
db 65 ; base special attack
;db 100 ; base special defense
db POISON ; species type 1
db POISON ; species type 2
db 75 ; catch rate
db 175 ; base exp yield
INCBIN "pic/mon/muk.pic",0,1 ; 77, sprite dimensions
dw MukPicFront
dw MukPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,		TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK
	tmlearn 												TM_DARK_PULSE,					TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 				TM_POISON_JAB,	TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 								TM_ICE_PUNCH,	TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER
	tmlearn 				TM_SELFDESTRUCT,TM_SHADOW_BALL,									TM_FIRE_BLAST,					TM_HYPER_BEAM
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 0

db BANK(MukPicFront)
