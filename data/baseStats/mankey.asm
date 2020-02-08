db MANKEY ; pokedex id
db 40 ; base hp
db 80 ; base attack
db 35 ; base defense
db 70 ; base speed
db 35 ; base special attack
;db 45 ; base special defense
db FIGHTING ; species type 1
db FIGHTING ; species type 2
db 190 ; catch rate
db 61 ; base exp yield
INCBIN "pic/mon/mankey.pic",0,1 ; 55, sprite dimensions
dw MankeyPicFront
dw MankeyPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,		TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 				TM_U_TURN,		TM_IRON_TAIL,									TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 				TM_POISON_JAB,	TM_TOXIC,										TM_BULK_UP,		TM_FIRE_PUNCH
	tmlearn 								TM_ICE_PUNCH,	TM_THUNDERBOLT,					TM_THUNDER,		TM_OUTRAGE
	tmlearn TM_EARTHQUAKE
	tmlearn 0
;	tmlearn TM_PAY_DAY

db BANK(MankeyPicFront)
