db CHARMANDER ; pokedex id
db 39 ; base hp
db 52 ; base attack
db 43 ; base defense
db 65 ; base speed
db 60 ; base special attack
;db 50 ; base special defense
db FIRE ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 62 ; base exp yield
INCBIN "pic/mon/charmander.pic",0,1 ; 55, sprite dimensions
dw CharmanderPicFront
dw CharmanderPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,			TM_WILL_O_WISP,	TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 								TM_IRON_TAIL,									TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 				TM_DRAGON_PULSE,								TM_FLAMETHROWER,				TM_OUTRAGE
	tmlearn 																				TM_FIRE_BLAST
	tmlearn 0
;	tmlearn 0

db BANK(CharmanderPicFront)
