db GEODUDE ; pokedex id
db 40 ; base hp
db 80 ; base attack
db 100 ; base defense
db 20 ; base speed
db 30 ; base special attack
;db 30 ; base special defense
db ROCK ; species type 1
db GROUND ; species type 2
db 255 ; catch rate
db 60 ; base exp yield
INCBIN "pic/mon/geodude.pic",0,1 ; 55, sprite dimensions
dw GeodudePicFront
dw GeodudePicBack

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

db BANK(GeodudePicFront)
