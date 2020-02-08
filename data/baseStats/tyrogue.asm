db TYROGUE ; pokedex id
db 35 ; base hp
db 35 ; base attack
db 35 ; base defense
db 35 ; base speed
db 35 ; base special attack
;db 35 ; base special defense
db FIGHTING ; species type 1
db FIGHTING ; species type 2
db 75 ; catch rate
db 42 ; base exp yield
INCBIN "pic/mon/tyrogue.pic",0,1 ; 77, sprite dimensions
dw TyroguePicFront
dw TyroguePicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 																				TM_ROCK_SLIDE
	tmlearn 								TM_TOXIC,										TM_BULK_UP
	tmlearn 0
	tmlearn TM_EARTHQUAKE
	tmlearn 0
;	tmlearn 0

db BANK(TyroguePicFront)
