db GOLEM ; pokedex id
db 80 ; base hp
db 120 ; base attack
db 130 ; base defense
db 45 ; base speed
db 55 ; base special attack
;db 55 ; base special defense
db ROCK ; species type 1
db GROUND ; species type 2
db 45 ; catch rate
db 223 ; base exp yield
INCBIN "pic/mon/golem.pic",0,1 ; 66, sprite dimensions
dw GolemPicFront
dw GolemPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 																				TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 																TM_FLAMETHROWER
	tmlearn TM_EARTHQUAKE,	TM_SELFDESTRUCT,												TM_FIRE_BLAST,					TM_HYPER_BEAM
	tmlearn TM_SUPERPOWER,																									TM_STEALTH_ROCK
;	tmlearn 0

db BANK(GolemPicFront)
