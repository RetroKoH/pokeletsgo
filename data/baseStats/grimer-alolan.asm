db GRIMER ; pokedex id
db 80 ; base hp
db 80 ; base attack
db 50 ; base defense
db 25 ; base speed
db 40 ; base special attack
;db 50 ; base special defense
db POISON ; species type 1
db DARK ; species type 2
db 190 ; catch rate
db 65 ; base exp yield
INCBIN "pic/mon/grimer-a.pic",0,1 ; 55, sprite dimensions
dw GrimerAPicFront
dw GrimerAPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,		TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE
	tmlearn 																				TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 				TM_POISON_JAB,	TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 								TM_ICE_PUNCH,					TM_FLAMETHROWER
	tmlearn 				TM_SELFDESTRUCT,TM_SHADOW_BALL,									TM_FIRE_BLAST
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 0

db BANK(GrimerAPicFront)
