db SANDSHREW ; pokedex id
db 50 ; base hp
db 75 ; base attack
db 85 ; base defense
db 40 ; base speed
db 20 ; base special attack
;db 30 ; base special defense
db GROUND ; species type 1
db GROUND ; species type 2
db 255 ; catch rate
db 60 ; base exp yield
INCBIN "pic/mon/sandshrew.pic",0,1 ; 55, sprite dimensions
dw SandshrewPicFront
dw SandshrewPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 								TM_IRON_TAIL,									TM_ROCK_SLIDE,					TM_X_SCISSOR
	tmlearn 				TM_POISON_JAB,	TM_TOXIC
	tmlearn 0
	tmlearn TM_EARTHQUAKE
	tmlearn 																												TM_STEALTH_ROCK
;	tmlearn 0

db BANK(SandshrewPicFront)
