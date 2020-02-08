db MACHOKE ; pokedex id
db 80 ; base hp
db 100 ; base attack
db 70 ; base defense
db 45 ; base speed
db 50 ; base special attack
;db 60 ; base special defense
db FIGHTING ; species type 1
db FIGHTING ; species type 2
db 90 ; catch rate
db 142 ; base exp yield
INCBIN "pic/mon/machoke.pic",0,1 ; 77, sprite dimensions
dw MachokePicFront
dw MachokePicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 																				TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 				TM_POISON_JAB,	TM_TOXIC,										TM_BULK_UP,		TM_FIRE_PUNCH
	tmlearn 								TM_ICE_PUNCH,					TM_FLAMETHROWER
	tmlearn TM_EARTHQUAKE,																	TM_FIRE_BLAST
	tmlearn TM_SUPERPOWER
;	tmlearn 0

db BANK(MachokePicFront)
