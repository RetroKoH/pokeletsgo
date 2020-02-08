db SANDSLASH ; pokedex id
db 75 ; base hp
db 100 ; base attack
db 110 ; base defense
db 65 ; base speed
db 45 ; base special attack
;db 55 ; base special defense
db GROUND ; species type 1
db GROUND ; species type 2
db 90 ; catch rate
db 158 ; base exp yield
INCBIN "pic/mon/sandslash.pic",0,1 ; 66, sprite dimensions
dw SandslashPicFront
dw SandslashPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 								TM_IRON_TAIL,									TM_ROCK_SLIDE,					TM_X_SCISSOR
	tmlearn 				TM_POISON_JAB,	TM_TOXIC
	tmlearn 0
	tmlearn TM_EARTHQUAKE,																									TM_HYPER_BEAM
	tmlearn 																												TM_STEALTH_ROCK
;	tmlearn 				TM_DRILL_RUN

db BANK(SandslashPicFront)
