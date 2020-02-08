db GRAVELER ; pokedex id
db 55 ; base hp
db 95 ; base attack
db 115 ; base defense
db 35 ; base speed
db 45 ; base special attack
;db 45 ; base special defense
db ROCK ; species type 1
db GROUND ; species type 2
db 120 ; catch rate
db 137 ; base exp yield
INCBIN "pic/mon/graveler.pic",0,1 ; 66, sprite dimensions
dw GravelerPicFront
dw GravelerPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 																				TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 																TM_FLAMETHROWER
	tmlearn TM_EARTHQUAKE,	TM_SELFDESTRUCT,												TM_FIRE_BLAST
	tmlearn TM_SUPERPOWER,																									TM_STEALTH_ROCK
;	tmlearn 0

db BANK(GravelerPicFront)
