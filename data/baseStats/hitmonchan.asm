db HITMONCHAN ; pokedex id
db 50 ; base hp
db 105 ; base attack
db 79 ; base defense
db 76 ; base speed
db 35 ; base special attack
;db 110 ; base special defense
db FIGHTING ; species type 1
db FIGHTING ; species type 2
db 45 ; catch rate
db 159 ; base exp yield
INCBIN "pic/mon/hitmonchan.pic",0,1 ; 66, sprite dimensions
dw HitmonchanPicFront
dw HitmonchanPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 																				TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,										TM_BULK_UP,		TM_FIRE_PUNCH
	tmlearn 								TM_ICE_PUNCH
	tmlearn TM_EARTHQUAKE
	tmlearn 0
;	tmlearn 0

db BANK(HitmonchanPicFront)
